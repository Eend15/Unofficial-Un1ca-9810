"""Restore Samsung Photo identification and disable unsupported QR preview callback stream."""
from pathlib import Path
import re
import sys

QR = """    instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/QrPhotoMaker;

    if-nez v2, :cond_0

"""
PHOTO = """    instance-of v2, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    if-nez v2, :cond_0

"""
ASSIGN = "    sget-object v2, Lcom/samsung/android/camera/core2/PublicMetadata;->a:Ljava/util/List;\n"

SHUTTER_HOOK = """    # Exynos9810 legacy HAL does not publish Samsung shutter metadata.
    instance-of v0, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    if-eqz v0, :exynos9810_shutter_done

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->getMakerTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/camera/core2/callback/helper/CallbackHelper$PictureCallbackHelper;->g(Ljava/lang/String;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILjava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    :exynos9810_shutter_done
"""

QR_REPEATING_ORIGINAL = """sget-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_QR_CODE_DETECTION:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->applyRepeatingKey(Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;Z)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0"""

QR_REPEATING_PATCHED = """const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0"""

def restore(maker: str, photo: str, auto_beauty: str = "") -> tuple[str, str, str]:
    if maker.count(ASSIGN) != 1:
        raise ValueError('Expected one Samsung package identification assignment')
    if maker.count(PHOTO) > 1 or maker.count(QR) > 1:
        raise ValueError('Ambiguous Photo/QR routing guards')
    maker = maker.replace(PHOTO, '')
    if QR not in maker:
        maker = maker.replace(ASSIGN, QR + ASSIGN, 1)
    elif QR + ASSIGN not in maker:
        raise ValueError('QR bypass is not at the Samsung identification assignment')

    # Remove duplicate synthetic shutter hook in PhotoMakerBase if present
    if '# Exynos9810 legacy HAL does not publish Samsung shutter metadata.' in photo and SHUTTER_HOOK not in photo:
        raise ValueError('Unknown synthetic shutter hook; refusing partial migration')
    if SHUTTER_HOOK in photo:
        photo = photo.replace(SHUTTER_HOOK, '')

    # Disable unsupported QR preview callback stream in AutoBeautyPhotoMaker
    if auto_beauty:
        original_count = auto_beauty.count(QR_REPEATING_ORIGINAL)
        if original_count == 1:
            auto_beauty = auto_beauty.replace(QR_REPEATING_ORIGINAL, QR_REPEATING_PATCHED, 1)
        elif original_count != 0:
            raise ValueError('Ambiguous QR repeating executor')
        else:
            method = re.search(r'(?ms)^\.method private synthetic lambda\$getSupportedRepeatingKeyExecutorMap\$47\(Ljava/lang/Object;\)Ljava/lang/Integer;\n(.*?)^\.end method', auto_beauty)
            if method is None or re.fullmatch(r'\s*\.locals [01]\s*' + re.escape(QR_REPEATING_PATCHED) + r'\s*', method.group(1)) is None:
                raise ValueError('Unknown QR executor; refusing to silently leave a starving stream')

    return maker, photo, auto_beauty

def main(root: Path):
    def locate(name):
        matches = list(root.glob(f'smali*/com/samsung/android/camera/core2/maker/{name}.smali'))
        if len(matches) != 1:
            raise ValueError(f'Expected one {name}.smali, found {len(matches)}')
        return matches[0]
    maker_p = locate('MakerBase')
    photo_p = locate('PhotoMakerBase')
    beauty_p = locate('AutoBeautyPhotoMaker')
    m, p, b = restore(maker_p.read_text(), photo_p.read_text(), beauty_p.read_text())
    maker_p.write_text(m)
    photo_p.write_text(p)
    beauty_p.write_text(b)

if __name__ == '__main__':
    main(Path(sys.argv[1]))
