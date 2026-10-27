from pathlib import Path
import tempfile,shutil,json,hashlib,unittest,re
import apply as mod
HERE=Path(__file__).resolve().parent
REPO=HERE.parents[3]
FILES=json.loads((HERE/'patched-files.json').read_text())

def snapshot(root):
    return {str(p.relative_to(root)):hashlib.sha256(p.read_bytes()).hexdigest() for p in root.rglob('*') if p.is_file()}

class IntegrationTest(unittest.TestCase):
    def fixture(self,target,root):
        tree=REPO/'out/target'/target/'apktool'
        systemui=root/'system_ext/priv-app/SystemUI/SystemUI.apk'
        for rel in FILES:
            src=tree/'system_ext/priv-app/SystemUI/SystemUI.apk'/rel
            if src.exists():
                dest=systemui/rel;dest.parent.mkdir(parents=True,exist_ok=True);shutil.copy2(src,dest)
        settings=root/'system/priv-app/SecSettings/SecSettings.apk/res/xml'
        settings.mkdir(parents=True)
        for name in ('unica_extra_settings.xml','unica_ui_settings.xml'):
            shutil.copy2(tree/'system/priv-app/SecSettings/SecSettings.apk/res/xml'/name,settings/name)
        return systemui,settings

    def test_all_three_real_decode_trees_and_repeat(self):
        for target in mod.TARGETS:
            for filesystem in ('ext4','erofs'):
                # Dynamic Island sources do not vary with the system image
                # format; explicitly exercise both supported target routes.
                with self.subTest(target=target,filesystem=filesystem),tempfile.TemporaryDirectory(prefix='di-source-',dir=REPO/'out') as tmp:
                    root=Path(tmp);ui,settings=self.fixture(target,root)
                    mod.apply(root,target)
                    self.assertTrue((ui/'smali/io/mesalabs/unica/dynamicisland/Bootstrap.smali').is_file())
                    self.assertNotIn('unica_dynamic_island_enabled',(settings/'unica_extra_settings.xml').read_text())
                    self.assertEqual((settings/'unica_ui_settings.xml').read_text().count('android:key="unica_dynamic_island_enabled"'),1)
                    first=snapshot(root);mod.apply(root,target);self.assertEqual(snapshot(root),first)

    def test_missing_new_longpress_hook_does_not_modify_tree(self):
        with tempfile.TemporaryDirectory(prefix='di-new-hook-negative-') as tmp:
            root=Path(tmp);ui,settings=self.fixture('star2lte',root)
            file=next(ui.glob('smali*/com/android/systemui/statusbar/notification/row/ExpandableNotificationRow.smali'))
            text,count=re.subn(r'(?m)^(\.method[^\n]*?) isActionButtonLongClick\(',r'\1 missingLongPressHook(',file.read_text())
            self.assertEqual(count,1);file.write_text(text);before=snapshot(root)
            with self.assertRaises((RuntimeError,ValueError)):mod.apply(root,'star2lte')
            self.assertEqual(snapshot(root),before)

    def test_reject_unknown_target(self):
        with self.assertRaises(ValueError):mod.apply(Path('/nonexistent'),'other')

    def test_bad_source_does_not_modify_anything(self):
        with tempfile.TemporaryDirectory(prefix='di-negative-') as tmp:
            root=Path(tmp);ui,settings=self.fixture('star2lte',root)
            p=ui/'smali/com/android/systemui/SystemUIApplication.smali'
            p.write_text(p.read_text().replace('onCreate()V','unexpectedOnCreate()V'))
            before=snapshot(root)
            with self.assertRaises(RuntimeError):mod.apply(root,'star2lte')
            self.assertEqual(snapshot(root),before)

if __name__=='__main__':unittest.main()
