"""Exercise the production recovery transaction on an isolated host fixture."""
from pathlib import Path
import hashlib
import os
import re
import subprocess
import tempfile
import unittest

SCRIPT = Path(__file__).with_name('recovery') / 'install.sh'

def sha(data):
    return hashlib.sha256(data).hexdigest()

class RecoveryPatchTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory(prefix='spen-recovery-')
        self.addCleanup(self.tmp.cleanup)
        self.root = Path(self.tmp.name)
        system = self.root / 'system_root/system'
        self.notes = system / 'app/Notes33/Notes33.apk'
        self.air = system / 'priv-app/AirCommand/AirCommand.apk'
        self.build = system / 'build.prop'
        self.old_notes = b'old-notes-fixture'
        for path, data in ((self.notes, self.old_notes), (self.air, b'old-air-fixture'),
                           (self.build, b'ro.unica.version=1.5 test\nro.build.version.sdk=36\nro.build.version.incremental=S901BXXSOGZH3\n')):
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(data)
        self.before = {p: p.read_bytes() for p in (self.notes, self.air, self.build)}
        (self.root / 'data/media/0').mkdir(parents=True)
        payload = self.root / 'tmp/unica-note9-spen-20261025'
        payload.mkdir(parents=True)
        self.payload = payload
        for name in ('Notes33.apk', 'AirCommand.apk'):
            (payload / name).write_bytes(('new-'+name).encode())
        (payload / 'payload.sha256').write_text(''.join(
            f'{sha((payload / n).read_bytes())}  {n}\n' for n in ('Notes33.apk', 'AirCommand.apk')))
        self.block = self.root / 'dev/block/platform/11120000.ufs/by-name/SYSTEM'
        self.block.parent.mkdir(parents=True)
        header = bytearray(4096)
        header[1080:1082] = bytes.fromhex('53ef')
        self.block.write_bytes(header)
        # Model the reported mismatch: stale EROFS recovery label, real EXT4.
        (self.root / 'recovery.fstab').write_text('/system_root erofs ignored-device\n')
        self.mounts = self.root / 'proc-mounts'
        self.mounts.write_text(f'{self.block} {self.root}/system_root ext4 rw 0 0\n/dev/testdata {self.root}/data f2fs rw 0 0\n')
        self.bin = self.root / 'bin'
        self.bin.mkdir()
        for name, body in {
            'mount': 'exit 0', 'chown': 'exit 0', 'chcon': 'exit 0',
            'getprop': 'echo "${TEST_BOOTLOADER:-N960NKSU3FVG4}"',
            'mv': '''case "$*" in
  *AirCommand.apk.spen-tmp*) if [ "${FAIL_MOVE:-0}" = 1 ]; then exit 1; fi;;
esac
exec /bin/mv "$@"''',
        }.items():
            p = self.bin / name
            p.write_text('#!/bin/sh\n'+body+'\n')
            p.chmod(0o755)
        # Redirect filesystem and property access only. The real transaction,
        # backup, checksums, failure handling and metadata calls remain intact.
        text = SCRIPT.read_text()
        text = re.sub(r'/(?:system_root|system|vendor|data|dev/block|tmp/unica-note9-spen-20261025)(?:/[A-Za-z0-9_.-]+)*',
                      lambda m: str(self.root)+m.group(0), text)
        text = text.replace('/proc/mounts', str(self.mounts))
        # Regular file superblock fixture replaces only the block-device type
        # check; dd/od, signature parsing and mounted-source comparison are real.
        text = text.replace('[ -b "$candidate" ]', '[ -f "$candidate" ]')
        text = text.replace('7efba32e183e6ace5291f7d80c8cf00022c6374a4c7e5e5c8d1d03aad917239f', sha(self.old_notes))
        text = text.replace('daed1eff8c8ee9dfb8afe2771e39e893a8808f3230d6d522a8aa647db09b8667', sha((payload/'Notes33.apk').read_bytes()))
        self.script = self.root / 'install.sh'
        self.script.write_text(text)

    def run_patch(self, mode='install', **extra):
        env = dict(os.environ, PATH=str(self.bin)+':'+os.environ['PATH'], **extra)
        return subprocess.run(['sh', str(self.script), mode], env=env, text=True, capture_output=True)

    def unchanged(self):
        for p, data in self.before.items():
            self.assertEqual(p.read_bytes(), data, str(p))

    def test_install_reinstall_and_restore_preserve_originals(self):
        first = self.run_patch()
        self.assertEqual(first.returncode, 0, first.stdout+first.stderr)
        self.assertEqual(self.notes.read_bytes(), (self.payload/'Notes33.apk').read_bytes())
        self.assertIn('ro.smps.enable=true', self.build.read_text())
        second = self.run_patch()
        self.assertEqual(second.returncode, 0, second.stdout+second.stderr)
        result = self.run_patch('restore')
        self.assertEqual(result.returncode, 0, result.stdout+result.stderr)
        self.unchanged()

    def test_wrong_twrp_label_does_not_block_proven_ext4(self):
        result = self.run_patch()
        self.assertEqual(result.returncode, 0, result.stdout+result.stderr)
        self.assertIn('on-disk EXT signature and actual EXT4 mount agree', result.stdout)
        self.assertEqual(self.block.read_bytes()[1080:1082], bytes.fromhex('53ef'))

    def test_real_erofs_superblock_is_rejected_without_writes(self):
        header = bytearray(4096)
        header[1024:1028] = bytes.fromhex('e2e1f5e0')
        self.block.write_bytes(header)
        result = self.run_patch()
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('partition itself has an EROFS superblock', result.stderr)
        self.unchanged()

    def test_mount_from_different_block_device_is_rejected(self):
        self.mounts.write_text(self.mounts.read_text().replace(str(self.block), '/dev/other-system'))
        result = self.run_patch()
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('mount source differs', result.stderr)
        self.unchanged()

    def test_wrong_phone_is_rejected_before_writes(self):
        result = self.run_patch(TEST_BOOTLOADER='G965FXXUHFVG4')
        self.assertNotEqual(result.returncode, 0)
        self.unchanged()

    def test_erofs_is_rejected_before_writes(self):
        self.mounts.write_text(self.mounts.read_text().replace(' ext4 ', ' erofs '))
        self.assertNotEqual(self.run_patch().returncode, 0)
        self.unchanged()

    def test_corrupted_payload_is_rejected_before_writes(self):
        (self.payload/'AirCommand.apk').write_bytes(b'corrupted')
        self.assertNotEqual(self.run_patch().returncode, 0)
        self.unchanged()

    def test_failed_second_rename_rolls_back_first_replacement(self):
        result = self.run_patch(FAIL_MOVE='1')
        self.assertNotEqual(result.returncode, 0)
        self.assertIn('restoring originals', result.stderr)
        self.unchanged()

    def test_unknown_notes_version_is_rejected(self):
        self.notes.write_bytes(b'different-notes-apk')
        self.before[self.notes] = self.notes.read_bytes()
        self.assertNotEqual(self.run_patch().returncode, 0)
        self.unchanged()

if __name__ == '__main__':
    unittest.main()
