import os
from pathlib import Path
import subprocess
import tempfile
import unittest

SCRIPT = Path(__file__).with_name('unica_gms_data_repair.sh').read_text()


class GmsOwnershipRepairTest(unittest.TestCase):
    def run_repair(self, uid='10213', bad_parent=False, symlink=False):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            app = root / 'app'
            dbdir = app / 'databases'
            dbdir.mkdir(parents=True)
            database = dbdir / 'gservices.db'
            other = dbdir / 'unrelated.db'
            other.write_bytes(b'account data')
            if symlink:
                database.symlink_to(other)
            else:
                database.write_bytes(b'configuration')
            binpath = root / 'bin'
            binpath.mkdir()
            stubs = {
                'cmd': 'echo "package:com.google.android.gms.location.history uid:10219"\necho "package:com.google.android.gms uid:$TEST_UID"',
                'stat': '''case "$2" in
%h) echo 1 ;;
%u:%g) echo 10169:10169 ;;
%u) if [ "$BAD_PARENT" = 1 ]; then echo 10169; else echo "$TEST_UID"; fi ;;
*) exit 1 ;;
esac''',
                'chown': 'printf "%s\\n" "$*" >> "$CALLS"',
                'restorecon': ':',
                'log': ':',
            }
            for name, body in stubs.items():
                command = binpath / name
                command.write_text('#!/bin/sh\n' + body + '\n')
                command.chmod(0o755)
            script = root / 'repair.sh'
            script.write_text(SCRIPT.replace('APP=/data/user/0/com.google.android.gms', f'APP="{app}"'))
            calls = root / 'calls'
            env = dict(os.environ, PATH=f'{binpath}:{os.environ["PATH"]}', TEST_UID=uid,
                       BAD_PARENT='1' if bad_parent else '0', CALLS=str(calls))
            result = subprocess.run(['sh', str(script)], env=env, capture_output=True)
            self.assertEqual(other.read_bytes(), b'account data')
            changes = calls.read_text().splitlines() if calls.exists() else []
            return result.returncode, changes

    def test_uses_current_package_uid_and_only_repairs_configuration(self):
        for uid in ('10213', '10451'):
            code, changes = self.run_repair(uid)
            self.assertEqual(code, 0)
            self.assertEqual(len(changes), 1)
            self.assertTrue(changes[0].startswith(f'{uid}:{uid} '))
            self.assertTrue(changes[0].endswith('/databases/gservices.db'))

    def test_mismatched_parent_is_rejected(self):
        code, changes = self.run_repair(bad_parent=True)
        self.assertNotEqual(code, 0)
        self.assertEqual(changes, [])

    def test_symlinks_are_not_followed(self):
        code, changes = self.run_repair(symlink=True)
        self.assertEqual(code, 0)
        self.assertEqual(changes, [])


if __name__ == '__main__':
    unittest.main()
