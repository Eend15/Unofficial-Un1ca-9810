#!/usr/bin/env python3
"""Reject cached release Camera APKs that omit the aperture runtime."""
from pathlib import Path
import argparse
import re
import zipfile

def verify(apk):
    with zipfile.ZipFile(apk) as archive:
        if archive.testzip() is not None:
            raise ValueError('Corrupt Samsung Camera APK')
        dex = [archive.read(name) for name in archive.namelist()
               if re.fullmatch(r'classes\d*\.dex', name)]
    if not dex or any(not data.startswith(b'dex\n') for data in dex):
        raise ValueError('Missing/invalid Samsung Camera dex')
    # Presence guard, not a substitute for controller behavior/live tests.
    for token in (
        b'Lio/mesalabs/unica/camera/QuickApertureControl;',
        b'Lio/mesalabs/unica/camera/QuickApertureControl$Session;',
        b'resetEngine', b'onLensInfo', b'positionPin', b'installStockFeedback',
        b'quick_setting_indicator_list_area', b'LENS_APERTURE',
        b'Lio/mesalabs/unica/camera/ApertureMode;', b'getPublicSetting', b'AUTO',
    ):
        if not any(token in data for data in dex):
            raise ValueError('Cached Camera lacks physical aperture runtime: ' + token.decode())

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description=__doc__)
    parser.add_argument('apk', type=Path)
    args = parser.parse_args()
    verify(args.apk)
    print('PASS compiled Camera physical aperture runtime presence')
