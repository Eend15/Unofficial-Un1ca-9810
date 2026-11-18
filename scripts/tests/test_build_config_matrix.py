#!/usr/bin/env python3
"""Exercise six configuration selections in an isolated source export, without building images."""
import argparse,os,subprocess
from pathlib import Path
p=argparse.ArgumentParser(description=__doc__);p.add_argument('--root',type=Path,required=True);a=p.parse_args()
env={k:v for k,v in os.environ.items() if not k.startswith(('TARGET_','SOURCE_','EXYNOS9810_')) and k not in ('SRC_DIR','OUT_DIR','FW_DIR','TOOLS_DIR','WORK_DIR','APKTOOL_DIR','TMP_DIR','ODIN_DIR')}
script='''source ./buildenv.sh --fs-type "$1" "$2" >/dev/null || exit
test "$TARGET_CODENAME" = "$2" || exit 1
test "$TARGET_OS_FILE_SYSTEM_TYPE" = "$1" || exit 1
test "$TARGET_PLATFORM" = exynos9810 || exit 1
test "$FW_DIR" = "$PWD/out/fw" || exit 1
test -f "$SRC_DIR/platform/exynos9810/installer/customize.sh" || exit 1
'''
for target in ('starlte','star2lte','crownlte'):
    for fs in ('erofs','ext4'):
        subprocess.run(['bash','-c',script,'config-test',fs,target],cwd=a.root,env=env,check=True)
        print('PASS isolated target/filesystem configuration:',target,fs)
