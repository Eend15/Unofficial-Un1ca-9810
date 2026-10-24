"""Run the actual manager registration function with isolated command stubs."""
from pathlib import Path
import subprocess
import tempfile
import unittest

SOURCE = Path(__file__).with_name("unica_ksunext_installer.sh")


class ManagerLifecycleTests(unittest.TestCase):
    def run_registration(self, uid="10001", repair=False, registered=False):
        with tempfile.TemporaryDirectory() as directory:
            root = Path(directory)
            events = root / "events"
            for name in ("crown", "ksud"):
                command = root / name
                check = ('if [ "$1" = "--check" ]; then exit '
                         + ("0" if registered else "1") + '; fi\n') if name == "crown" else ""
                command.write_text(f'#!/bin/sh\necho "{name} $*" >> "{events}"\n' + check)
                command.chmod(0o755)
            script = SOURCE.read_text().split('\nif [ "${1:-}" = "--repair" ]; then')[0]
            script = script.replace("/system/bin/ksu_crown", str(root / "crown"))
            script = script.replace("/data/adb/ksud", str(root / "ksud"))
            script += f'\ncmd() {{ return 0; }}\napp_process() {{ echo "{uid}"; }}\n'
            script += 'log() { :; }\n'
            script += f'am() {{ echo "am $*" >> "{events}"; }}\n'
            script += "crown_manager" + (" --repair" if repair else "") + "\n"
            result = subprocess.run(["sh"], input=script, text=True, capture_output=True)
            return result, events.read_text() if events.exists() else ""

    def test_boot_and_unlock_registration_do_not_replay_module_boot(self):
        for unused in range(2):
            result, events = self.run_registration()
            self.assertEqual(result.returncode, 0, result.stderr)
            self.assertIn("crown 10001", events)
            self.assertNotIn("ksud", events)

    def test_guard_checks_registration_without_module_replay(self):
        result, events = self.run_registration(repair=True, registered=True)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(events.strip(), "crown --check 10001")

    def test_ce_unlock_preserves_an_already_working_manager(self):
        result, events = self.run_registration(registered=True)
        self.assertEqual(result.returncode, 0, result.stderr)
        self.assertEqual(events.strip(), "crown --check 10001")

    def test_invalid_manager_uid_cannot_be_registered(self):
        result, events = self.run_registration(uid="0")
        self.assertNotEqual(result.returncode, 0)
        self.assertEqual(events, "")


if __name__ == "__main__":
    unittest.main()
