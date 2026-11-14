"""Restore Samsung Photo identification and Photo-mode preview-surface QR detection."""
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

# The Camera2 onCaptureStarted callback already delivers the Photo shutter.
# AutoBeautyPhotoMaker's capture-available fallback sends it a second time,
# which turns SHUTTER_RECEIVED -> SHUTTER_RECEIVED into camera error -10.
# Keep PictureCallbackHelper.a (onCaptureAvailable) below this block intact.
DUPLICATE_PHOTO_SHUTTER = """    instance-of v0, p0, Lcom/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/maker/MakerBase;->getMakerTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;->mPictureCallback:Lcom/samsung/android/camera/core2/callback/PictureCallback;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/maker/MakerBase;->mCamDevice:Lcom/samsung/android/camera/core2/CamDevice;

    invoke-static {v0, v1, p1, p2, v2}, Lcom/samsung/android/camera/core2/callback/helper/CallbackHelper$PictureCallbackHelper;->g(Ljava/lang/String;Lcom/samsung/android/camera/core2/callback/PictureCallback;ILjava/lang/Long;Lcom/samsung/android/camera/core2/CamDevice;)V

    :cond_0
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

QR_PREVIEW_RESULT_ORIGINAL = """.method private synthetic lambda$onPreviewResult$12(Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;)V
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->enablePreviewDetection(Z)V

    return-void
.end method"""

QR_PREVIEW_RESULT_PATCHED = """.method private synthetic lambda$onPreviewResult$12(Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/camera/core2/maker/ProcessingPhotoMakerBase;->mIsIPPCapturing:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->enablePreviewDetection(Z)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->processPreviewSurface(Lcom/samsung/android/camera/core2/maker/MakerBase;)V

    return-void
.end method"""

SAIV_QR_HEADER_ORIGINAL = """.class public Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;
.super Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;
.source "SourceFile\""""

SAIV_QR_HEADER_PATCHED = """.class public Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;
.super Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;
.source "SourceFile"

# interfaces
.implements Landroid/view/PixelCopy$OnPixelCopyFinishedListener;
.implements Ljava/lang/Runnable;"""

SAIV_QR_FIELD_ORIGINAL = ".field private final mPreviewSize:Landroid/util/Size;"
SAIV_QR_FIELD_PATCHED = """.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private final mPreviewSize:Landroid/util/Size;"""

SAIV_QR_SURFACE_METHODS = """
.method public onPixelCopyFinished(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/Node;->isInitialized()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->mThreadPool:Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;

    invoke-virtual {p1, p0}, Lcom/samsung/android/camera/core2/util/ExecutorServiceEx;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->mFuture:Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public processPreviewSurface(Lcom/samsung/android/camera/core2/maker/MakerBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->needProcessBackgroundPreview()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/camera/core2/maker/MakerBase;->getMainPreviewSurface()Landroid/view/Surface;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;->b(Lcom/samsung/android/camera/core2/node/BackgroundPreviewNodeBase;)Lcom/samsung/android/camera/core2/util/TimeChecker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/util/TimeChecker;->checkTime()V

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mPreviewSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-ne v3, v0, :cond_3

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-eq v3, v1, :cond_4

    :cond_3
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :try_start_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {p1, v2, p0, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_5
    :goto_0
    return-void
.end method

.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mBarcodeRecognizerLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mBarcodeRecognizer:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    iget-object v2, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->process(Landroid/graphics/Bitmap;)I

    move-result v3

    if-ltz v3, :cond_3

    invoke-virtual {v1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectCount()I

    move-result v3

    if-lez v3, :cond_3

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectType(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectText(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x8

    new-array v5, v5, [I

    invoke-virtual {v1, v3, v5}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectPoint(I[I)Z

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v5, v6, v2}, Lcom/samsung/android/camera/core2/util/CalculationUtils;->convertRectImageBaseToNormalizeArrayBase([III)Z

    move v2, v3

    :goto_0
    const/16 v6, 0x8

    if-ge v2, v6, :cond_0

    aget v6, v5, v2

    add-int/lit8 v7, v2, 0x1

    aget v8, v5, v7

    neg-int v6, v6

    aput v8, v5, v2

    aput v6, v5, v7

    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mIsCroppedQRImgCbEnabled:Z

    if-eqz v2, :cond_1

    invoke-virtual {v1, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectImage(I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode;->mNodeCallback:Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode$SaivQRCodeNodeCallback;

    invoke-interface {p0, v4, v5, v1}, Lcom/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode$SaivQRCodeNodeCallback;->onQRCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    :try_start_1
    const-string v1, "SaivQRCodeNode"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "processPreviewSurface fail - "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
"""


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

    # The later capture-available helper needs to notify only capture
    # availability; Camera2 has already notified the shutter for this frame.
    if photo.count(DUPLICATE_PHOTO_SHUTTER) > 1:
        raise ValueError('Ambiguous duplicate Photo shutter callbacks')
    photo = photo.replace(DUPLICATE_PHOTO_SHUTTER, '', 1)
    available = re.search(
        r'(?ms)^\.method public sendCaptureAvailable\(ILjava/lang/Long;\)V\n.*?^\.end method', photo
    )
    if available and 'PictureCallbackHelper;->g' in available.group(0):
        raise ValueError('Unknown duplicate shutter in Photo capture-available path')

    # Keep MAIN_PREVIEW_CALLBACK repeating stream disabled in AutoBeautyPhotoMaker
    # so UniHAL does not stall, and route preview frames via SaivQRCodeNode.processPreviewSurface.
    if auto_beauty:
        original_count = auto_beauty.count(QR_REPEATING_ORIGINAL)
        if original_count == 1:
            auto_beauty = auto_beauty.replace(QR_REPEATING_ORIGINAL, QR_REPEATING_PATCHED, 1)
        elif original_count != 0:
            raise ValueError('Ambiguous QR repeating executor')
        else:
            method = re.search(
                r'(?ms)^\.method private synthetic lambda\$getSupportedRepeatingKeyExecutorMap\$47\(Ljava/lang/Object;\)Ljava/lang/Integer;\n(.*?)^\.end method',
                auto_beauty,
            )
            if method is None or re.fullmatch(r'\s*\.locals [01]\s*' + re.escape(QR_REPEATING_PATCHED) + r'\s*', method.group(1)) is None:
                raise ValueError('Unknown QR executor; refusing to silently leave a starving stream')
        if QR_PREVIEW_RESULT_ORIGINAL in auto_beauty:
            auto_beauty = auto_beauty.replace(QR_PREVIEW_RESULT_ORIGINAL, QR_PREVIEW_RESULT_PATCHED, 1)

    return maker, photo, auto_beauty


def patch_saiv_qr_node(saiv_qr: str) -> str:
    if 'processPreviewSurface' not in saiv_qr:
        if SAIV_QR_HEADER_ORIGINAL not in saiv_qr or SAIV_QR_FIELD_ORIGINAL not in saiv_qr:
            raise ValueError('Unexpected SaivQRCodeNode layout')
        saiv_qr = saiv_qr.replace(SAIV_QR_HEADER_ORIGINAL, SAIV_QR_HEADER_PATCHED, 1)
        saiv_qr = saiv_qr.replace(SAIV_QR_FIELD_ORIGINAL, SAIV_QR_FIELD_PATCHED, 1)
        saiv_qr = saiv_qr.rstrip() + '\n' + SAIV_QR_SURFACE_METHODS
    return saiv_qr


def main(root: Path):
    def locate(rel_glob):
        matches = list(root.glob(rel_glob))
        if len(matches) != 1:
            raise ValueError(f'Expected one match for {rel_glob}, found {len(matches)}')
        return matches[0]
    maker_p = locate('smali*/com/samsung/android/camera/core2/maker/MakerBase.smali')
    photo_p = locate('smali*/com/samsung/android/camera/core2/maker/PhotoMakerBase.smali')
    beauty_p = locate('smali*/com/samsung/android/camera/core2/maker/AutoBeautyPhotoMaker.smali')
    saiv_p = locate('smali*/com/samsung/android/camera/core2/node/qrCode/SaivQRCodeNode.smali')
    m, p, b = restore(maker_p.read_text(), photo_p.read_text(), beauty_p.read_text())
    s = patch_saiv_qr_node(saiv_p.read_text())
    maker_p.write_text(m)
    photo_p.write_text(p)
    beauty_p.write_text(b)
    saiv_p.write_text(s)


if __name__ == '__main__':
    main(Path(sys.argv[1]))
