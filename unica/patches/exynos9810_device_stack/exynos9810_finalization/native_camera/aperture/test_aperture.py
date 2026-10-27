#!/usr/bin/env python3
"""Exercise the real Java controller with a small deterministic Android facade."""
from pathlib import Path
import subprocess
import tempfile
import importlib.util

HERE = Path(__file__).resolve().parent
STUBS = {
'android/content/Context.java': '''package android.content; public class Context { public static final String CAMERA_SERVICE="camera"; public Object getSystemService(String n){return new android.hardware.camera2.CameraManager();} public String getPackageName(){return "camera";} }''',
'android/content/res/Resources.java': '''package android.content.res; public class Resources { public static class Metrics { public float density=1; } public int getIdentifier(String a,String b,String c){return 1;} public Metrics getDisplayMetrics(){return new Metrics();} }''',
'android/hardware/camera2/CameraCharacteristics.java': '''package android.hardware.camera2; public class CameraCharacteristics { public static class Key<T>{} public static final Key<Integer> LENS_FACING=new Key<>(); public static final Key<float[]> LENS_INFO_AVAILABLE_APERTURES=new Key<>(); public static final int LENS_FACING_BACK=1; String id; public CameraCharacteristics(String id){this.id=id;} @SuppressWarnings("unchecked") public <T>T get(Key<T> k){return (T)(k==LENS_FACING ? Integer.valueOf(id.equals("0")?1:0) : id.equals("0")?new float[]{1.5f,2.4f}:new float[]{1.7f});} }''',
'android/hardware/camera2/CameraManager.java': '''package android.hardware.camera2; public class CameraManager { public CameraCharacteristics getCameraCharacteristics(String id){return new CameraCharacteristics(id);} }''',
'android/hardware/camera2/CaptureRequest.java': '''package android.hardware.camera2; public class CaptureRequest { public static class Key<T>{} public static final Key<Float> LENS_APERTURE=new Key<>(); }''',
'android/os/Handler.java': '''package android.os; public class Handler { public void removeCallbacks(Runnable r){} }''',
'android/util/Log.java': '''package android.util; public class Log {public static int i(String a,String b){return 0;} public static int w(String a,String b,Throwable t){return 0;} }''',
'android/view/View.java': '''package android.view; public class View { public interface OnClickListener {void onClick(View v);} public OnClickListener listener; public View child; public boolean enabled=true,clickable,focusable; public CharSequence description; public android.content.Context getContext(){return new android.content.Context();} public android.content.res.Resources getResources(){return new android.content.res.Resources();} public View findViewById(int id){return child;} public void setOnClickListener(OnClickListener l){listener=l;} public void setClickable(boolean b){clickable=b;} public void setFocusable(boolean b){focusable=b;} public void setEnabled(boolean b){enabled=b;} public void setContentDescription(CharSequence c){description=c;} public void setMinimumWidth(int n){} public void setMinimumHeight(int n){} public void removeCallbacks(Runnable r){} public boolean postDelayed(Runnable r,long ms){return true;} }''',
'android/widget/TextView.java': '''package android.widget; public class TextView extends android.view.View {}''',
'Test.java': '''import io.mesalabs.unica.camera.ApertureControl; import android.hardware.camera2.CaptureRequest; import android.view.View; import android.widget.TextView;
public class Test {
 public static class Device {String id="0"; public String n(){return id;}}
 public static class Maker {public Device mCamDevice=new Device(); int changes,restarts; float requested; public void setPublicSetting(CaptureRequest.Key<?> key,Object v){if(key!=CaptureRequest.LENS_APERTURE)throw new AssertionError();changes++;requested=(Float)v;} public int restartPreviewRepeating(){restarts++;return 1;}}
 public static class Settings {public Maker mMaker=new Maker();}
 public static class Holder {public Settings settings=new Settings(); public Settings getMakerPublicSettings(){return settings;}}
 public static class Engine {public Holder mMakerHolder=new Holder();}
 public static class CameraContext {boolean busy; public boolean isCapturing(){return busy;} public boolean isCaptureRequested(){return false;} public boolean isRecording(){return false;} public boolean isRecordingProcessStarted(){return false;}}
 public static class Base {public Engine mEngine=new Engine(); public CameraContext mCameraContext=new CameraContext();}
 public static class Presenter extends Base {public android.os.Handler mHandler=new android.os.Handler(); public Runnable mHideApertureIndicatorRunnable=()->{};}
 static void check(boolean b){if(!b)throw new AssertionError();}
 public static void main(String[] args){
  Presenter p=new Presenter(); View root=new View(); TextView text=new TextView();root.child=text; Maker m=p.mEngine.mMakerHolder.settings.mMaker;
  check(ApertureControl.bind(p,root,1.5f));check(text.clickable);text.listener.onClick(text);check(m.changes==1&&m.requested==2.4f&&m.restarts==1&&!text.enabled);
  text.listener.onClick(text);check(m.changes==1); // duplicate click while pending
  check(ApertureControl.bind(p,root,2.4f));check(text.enabled);text.listener.onClick(text);check(m.changes==2&&m.requested==1.5f);
  ApertureControl.bind(p,root,1.5f);p.mCameraContext.busy=true;text.listener.onClick(text);check(m.changes==2);p.mCameraContext.busy=false;
  m.mCamDevice.id="1";check(!ApertureControl.bind(p,root,1.7f));check(!text.clickable&&!text.focusable&&text.listener==null&&text.description==null);
  m.mCamDevice.id="0";check(ApertureControl.bind(p,root,1.5f));text.listener.onClick(text);check(m.changes==3);
  check(!ApertureControl.bind(new Object(),root,1.5f));check(!ApertureControl.bind(p,new Object(),1.5f));
  System.out.println("PASS real aperture controller: two-way requests, callback acknowledgement, duplicate-click guard, busy capture, fixed front lens, rebind and safe fallback");
 }
}''',
}

with tempfile.TemporaryDirectory(prefix='unica-aperture-tests-') as directory:
    root = Path(directory)
    files = []
    for name, text in STUBS.items():
        file = root / name
        file.parent.mkdir(parents=True, exist_ok=True)
        file.write_text(text)
        files.append(file)
    subprocess.run(['javac', '-d', str(root / 'classes'), str(HERE / 'ApertureControl.java'), *map(str, files)], check=True)
    subprocess.run(['java', '-cp', str(root / 'classes'), 'Test'], check=True)

spec = importlib.util.spec_from_file_location('aperture_patch', HERE / 'patch_aperture.py')
patch = importlib.util.module_from_spec(spec)
spec.loader.exec_module(patch)
fixture = '.method private showApertureIndicator(F)V\n    .locals 2\n' + patch.CALL + '    return-void\n.end method\n'
for target in ('starlte', 'star2lte', 'crownlte'):
    for fs in ('ext4', 'erofs'):
        with tempfile.TemporaryDirectory(prefix='unica-aperture-fixture-') as directory:
            root = Path(directory)
            folder = root / 'smali_classes4/com/sec/android/app/camera/shootingmode/pro'
            folder.mkdir(parents=True)
            for name in ('ProPresenter', 'ProVideoPresenter'):
                (folder / (name + '.smali')).write_text(fixture)
            quick = root / 'smali_classes4/com/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingView.smali'
            quick.parent.mkdir(parents=True)
            quick.write_text(''.join('.method ' + signature + '\n    .locals 1\n    ' + ('return v0' if signature.endswith('Z') else 'return-void') + '\n.end method\n' for signature in ('public showMainList(Z)V', 'private showMainListWithGestureAnimation()V', 'private hideMainListWithGestureAnimation()V', 'public hideMainList(Z)V', 'public hideList(Z)Z')))
            quick.with_name('QuickSettingView$24.smali').write_text('.method public onAnimationStart(Landroid/animation/Animator;)V\n    .locals 1\n    return-void\n.end method\n')
            quick.with_name('QuickSettingPresenter.smali').write_text('.method public start()V\n    .locals 1\n    return-void\n.end method\n.method public stop()V\n    .locals 1\n    return-void\n.end method\n')
            lens = root / 'smali_classes3/com/sec/android/app/camera/engine/core/callback/LensInfoCallback.smali'
            lens.parent.mkdir(parents=True)
            lens.write_text('.method public onLensInfoChanged(Ljava/lang/Long;Lcom/samsung/android/camera/core2/callback/LensInfoCallback$LensInfo;Lcom/samsung/android/camera/core2/CamDevice;)V\n    .locals 1\n    return-void\n.end method\n')
            engine = root / 'smali_classes3/com/sec/android/app/camera/engine/CommonEngine.smali'
            engine.parent.mkdir(parents=True, exist_ok=True)
            engine.write_text(''.join('.method ' + signature + '\n    .locals 1\n    return-void\n.end method\n' for signature in ('public switchCamera(Lcom/sec/android/app/camera/interfaces/CameraId;)V', 'public changeShootingMode(IZ)V', 'public stopEngine()V')))
            patch.apply(root)
            before = {str(f.relative_to(root)): f.read_bytes() for f in root.rglob('*.smali')}
            patch.apply(root)
            after = {str(f.relative_to(root)): f.read_bytes() for f in root.rglob('*.smali')}
            assert before == after
            print('PASS aperture source patch/idempotence', target, fs)
try:
    patch.patched('.method private missing()V\n.end method')
    raise AssertionError('Unsupported Camera donor was silently accepted')
except ValueError:
    pass

# Exercise AUTO restoration with both absent and vendor-specified defaults.
with tempfile.TemporaryDirectory(prefix='unica-aperture-auto-') as directory:
    root = Path(directory)
    test = root / 'AutoTest.java'
    test.write_text("""import io.mesalabs.unica.camera.ApertureMode;
public class AutoTest {
 static void check(boolean b) { if(!b) throw new AssertionError(); }
 public static void main(String[] ignored) {
  int mode=ApertureMode.AUTO;
  Object defaultValue=Float.valueOf(0f);
  check(ApertureMode.request(mode,defaultValue)==defaultValue);
  check(ApertureMode.request(mode,null)==null);
  check(ApertureMode.label(mode,2.4f).equals("AUTO"));
  mode=ApertureMode.next(mode); check(mode==ApertureMode.F15);
  check(ApertureMode.request(mode,null).equals(1.5f));
  check(ApertureMode.label(mode,2.4f).equals("F2.4")); // actual feedback, not requested value
  mode=ApertureMode.next(mode); check(mode==ApertureMode.F24);
  check(ApertureMode.request(mode,null).equals(2.4f));
  mode=ApertureMode.next(mode); check(mode==ApertureMode.AUTO);
  check(ApertureMode.request(mode,defaultValue)==defaultValue);
  for(int i=0;i<30;i++) mode=ApertureMode.next(mode);
  check(mode==ApertureMode.AUTO);
  System.out.println("PASS AUTO/manual cycle, exact native default restoration and reported lens labels");
 }
}""")
    subprocess.run(['javac','-d',str(root/'classes'),str(HERE/'ApertureMode.java'),str(test)],check=True)
    subprocess.run(['java','-cp',str(root/'classes'),'AutoTest'],check=True)
