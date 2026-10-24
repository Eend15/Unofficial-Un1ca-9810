import unittest
from stage_runtime import disable_competing_service


class RuntimeResumeTest(unittest.TestCase):
    stanza = 'service faced /system/bin/faced\n    class late_start\n    user system\n    group system\n'

    def test_repeat_preserves_result_and_unrelated_content(self):
        source = '# before\n' + self.stanza + '\non boot\n    start unrelated\n'
        result = disable_competing_service(source)
        self.assertEqual(disable_competing_service(result), result)
        self.assertTrue(result.endswith('\non boot\n    start unrelated\n'))

    def test_missing_duplicate_and_modified_stanzas_fail(self):
        for source in ('', self.stanza * 2,
                       self.stanza.replace('user system', 'user root'),
                       self.stanza + '\nservice faced /other\n'):
            with self.subTest(source=source), self.assertRaises(RuntimeError):
                disable_competing_service(source)


if __name__ == '__main__':
    unittest.main()
