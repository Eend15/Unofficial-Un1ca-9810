import unittest
from patch_crown_charge import patch


class CrownChargeTests(unittest.TestCase):
    def setUp(self):
        self.driver = '''.method public final declared-synchronized h(Ljava/lang/String;)V
    .locals 5
    const-wide/16 v3, 0x14

    sub-long v1, v3, v1
.end method
'''
        self.continuous = '''    const-string v0, "3"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V

    const-string v0, "8"

    invoke-virtual {p0, v0}, Lj3/a;->h(Ljava/lang/String;)V'''

    def test_legacy_sequence_and_idempotence(self):
        driver, continuous = patch(self.driver, self.continuous)
        self.assertIn('const-wide/16 v3, 0xc8', driver)
        self.assertIn('const-wide/16 v3, 0x14', driver)
        self.assertNotIn('const-string v0, "8"', continuous)
        self.assertEqual([line.strip() for line in continuous.splitlines()
                          if 'const-string' in line],
                         ['const-string v0, "0"', 'const-string v0, "1"',
                          'const-string v0, "3"'])
        self.assertEqual(patch(driver, continuous), (driver, continuous))
        branch = driver.split(':unica_crown_module_interval\n    const-wide/16', 1)[0]
        for command in ('0', '1', '2', '7'):
            self.assertIn(f'const-string v0, "{command}"', branch)

    def test_existing_port_upgrades_without_repeating_continuous_patch(self):
        driver, continuous = patch(self.driver, self.continuous)
        start = driver.index('    # UN1CA_CROWN_ALL_TRANSACTION_BOUNDARIES')
        end = driver.index('    const-string v0, "1"', start)
        old_driver = driver[:start] + driver[end:]
        self.assertEqual(patch(old_driver, continuous), (driver, continuous))

    def test_unknown_donor_rejected(self):
        with self.assertRaises(ValueError):
            patch(self.driver.replace('0x14', '0x258'), self.continuous)


if __name__ == '__main__':
    unittest.main()
