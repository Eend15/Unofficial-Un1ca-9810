"""Adapt One UI 8 Super Slow-Mo to the Exynos9810 sensor-DRAM protocol.

The recording session retains its 960-fps vendor keys. Only this maker's
standard AE range uses the 60-fps sensor transport. Ordinary Slow Motion and
other Camera2 clients are unaffected. Keep the stock HAL result/error callbacks.
"""
from pathlib import Path
import re
import sys

FRC_METHOD = '''.method private isFrcSupported()Z
    .locals 1

    # Exynos9810 captures a native sensor-DRAM burst; it does not use FRC.
    const/4 v0, 0x0
    return v0
.end method'''

AE_METHOD = '''.method public setPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 2

    # Exynos9810 native DRAM burst preview: AE runs at 60, recording stays 960.
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;
    if-ne p1, v0, :unica_ssm_setting
    const/16 v0, 0x3c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v0
    new-instance v1, Landroid/util/Range;
    invoke-direct {v1, v0, v0}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V
    move-object p2, v1

    :unica_ssm_setting
    invoke-super {p0, p1, p2}, Lcom/samsung/android/camera/core2/maker/VideoMakerBase;->setPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    return-void
.end method'''


def patch(presenter: str, maker: str) -> tuple[str, str]:
    pattern = r'(?ms)^\.method private isFrcSupported\(\)Z\n.*?^\.end method'
    matches = re.findall(pattern, presenter)
    if len(matches) != 1:
        raise ValueError('Expected exactly one Super Slow-Mo FRC selector')
    if matches[0] != FRC_METHOD and 'SUPPORT_SUPER_SLOW_MOTION_FRC_FIXED' not in matches[0]:
        raise ValueError('Unknown FRC selector; refusing replacement')
    presenter = re.sub(pattern, lambda _: FRC_METHOD, presenter)
    signature = '.method public setPublicSetting(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V'
    if signature in maker:
        if maker.count(AE_METHOD) != 1 or maker.count(signature) != 1:
            raise ValueError('Unknown Super Slow-Mo public-setting override')
    else:
        if '.super Lcom/samsung/android/camera/core2/maker/VideoMakerBase;' not in maker:
            raise ValueError('Unexpected Super Slow-Mo superclass')
        maker += '\n' + AE_METHOD + '\n'
    return presenter, maker


def main(root: Path) -> None:
    paths = []
    for name in ('SuperSlowMotionPresenter.smali', 'SuperSlowMotionVideoMaker.smali'):
        found = list(root.glob('smali*/**/' + name))
        if len(found) != 1:
            raise ValueError(f'Expected exactly one {name}, got {len(found)}')
        paths.append(found[0])
    original = tuple(path.read_text() for path in paths)
    updated = patch(*original)
    assert patch(*updated) == updated, 'Patch must be idempotent'
    for path, text in zip(paths, updated):
        path.write_text(text)
    print('Native Super Slow-Mo: SINGLE burst, AE 60 fps, vendor recording FPS unchanged')


if __name__ == '__main__':
    main(Path(sys.argv[1]))
