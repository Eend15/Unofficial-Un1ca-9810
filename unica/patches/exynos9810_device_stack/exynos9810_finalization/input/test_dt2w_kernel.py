import subprocess
import tempfile
import unittest
from pathlib import Path
from patch_dt2w_kernel import HANDLER, patched


class WakeCommandTests(unittest.TestCase):
    def test_clean_checkout_patch_matches_built_source(self):
        root = Path('/home/admin1/exynos9810-kernel')
        for name in ('sec_ts_fn.c', 'y771/sec_ts_fn.c'):
            relative = 'drivers/input/touchscreen/sec_ts/' + name
            original = subprocess.check_output(['git', 'show', 'HEAD:' + relative], cwd=root, text=True)
            self.assertEqual(patched(original), (root / relative).read_text())

    def test_real_command_tables_compile_with_and_without_backend(self):
        for name in ('sec_ts_fn.c', 'y771/sec_ts_fn.c'):
            text = (Path('/home/admin1/exynos9810-kernel/drivers/input/touchscreen/sec_ts') / name).read_text()
            table = text[text.index('static struct sec_cmd sec_cmds[] = {'):]
            table = table[:table.index('};') + 2]
            harness = '#define SEC_CMD(...) 0\n#define SEC_CMD_H(...) 0\nstruct sec_cmd {int command;};\n' + table
            with tempfile.TemporaryDirectory() as folder:
                source = Path(folder) / 'table.c'
                source.write_text(harness)
                for enabled in (False, True):
                    options = ['-DCONFIG_WAKE_GESTURES=1'] if enabled else []
                    subprocess.run(['gcc', '-Werror', '-fsyntax-only', *options, str(source)], check=True)

    def test_real_handler_transitions(self):
        # Compile and execute the exact handler inserted into both drivers.
        harness = r'''
#include <assert.h>
#include <stdbool.h>
#include <string.h>
#define CONFIG_WAKE_GESTURES 1
#define SEC_CMD_STATUS_OK 1
#define SEC_CMD_STATUS_FAIL 2
struct sec_cmd_data {int cmd_param[1]; int cmd_state;};
int dt2w_switch, dt2w_switch_temp;
bool dt2w_switch_changed, suspended;
int defaults, exits;
char response[8];
bool scr_suspended(void) {return suspended;}
void sec_cmd_set_default_result(struct sec_cmd_data *s) {defaults++;}
void sec_cmd_set_cmd_exit(struct sec_cmd_data *s) {exits++;}
void sec_cmd_set_cmd_result(struct sec_cmd_data *s, const char *b, int len) {
    memcpy(response, b, len); response[len] = 0;
}
'''
        harness += HANDLER + r'''
int main(void) {
    struct sec_cmd_data s = {{1}, 0};
    aot_enable(&s);
    assert(dt2w_switch == 1 && !dt2w_switch_changed);
    assert(s.cmd_state == SEC_CMD_STATUS_OK && !strcmp(response, "OK"));
    suspended = true; s.cmd_param[0] = 0; aot_enable(&s);
    assert(dt2w_switch == 1 && dt2w_switch_temp == 0 && dt2w_switch_changed);
    suspended = false; aot_enable(&s);
    assert(dt2w_switch == 0 && !dt2w_switch_changed);
    s.cmd_param[0] = 1; aot_enable(&s);
    s.cmd_param[0] = 2; aot_enable(&s);
    assert(dt2w_switch == 1 && dt2w_switch_temp == 1);
    assert(s.cmd_state == SEC_CMD_STATUS_FAIL && !strcmp(response, "NG"));
    s.cmd_param[0] = -1; aot_enable(&s);
    assert(dt2w_switch == 1 && defaults == 6 && exits == 6);
    return 0;
}
'''
        with tempfile.TemporaryDirectory() as folder:
            source = Path(folder) / 'test.c'
            binary = Path(folder) / 'test'
            source.write_text(harness)
            subprocess.run(['gcc', '-Werror', '-o', str(binary), str(source)], check=True)
            subprocess.run([str(binary)], check=True)

    def test_both_actual_drivers_idempotent(self):
        for name in ('sec_ts_fn.c', 'y771/sec_ts_fn.c'):
            path = Path('/home/admin1/exynos9810-kernel/drivers/input/touchscreen/sec_ts') / name
            text = path.read_text()
            self.assertEqual(patched(text), text)
            self.assertIn(HANDLER, text)

    def test_unknown_or_incomplete_source_rejected(self):
        for text in ('unknown', '/* UN1CA_DT2W_AOT */'):
            with self.assertRaises(ValueError):
                patched(text)


if __name__ == '__main__':
    unittest.main()
