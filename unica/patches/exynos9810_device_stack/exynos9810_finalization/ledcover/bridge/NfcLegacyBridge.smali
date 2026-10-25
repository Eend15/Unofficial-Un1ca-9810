.class public final Lcom/samsung/android/app/ledcover/common/NfcLegacyBridge;
.super Ljava/lang/Object;
.source "NfcLegacyBridge"

# Samsung's legacy NfcAdapter.sem* methods disappeared in One UI 8. The
# ISamsungNfcAdapter service remains available under the samsungnfc name.
# Reuse the tested Binder proxy from the ROM's bundled LedCoverService.

.method private static service()La/a/a/a/a/a;
    .locals 1

    const-string v0, "samsungnfc"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, La/a/a/a/a/a$a;->a(Landroid/os/IBinder;)La/a/a/a/a/a;

    move-result-object v0

    return-object v0
.end method

.method public static start(Landroid/nfc/NfcAdapter;)[B
    .locals 2

    :try_start
    invoke-static {}, Lcom/samsung/android/app/ledcover/common/NfcLegacyBridge;->service()La/a/a/a/a/a;
    move-result-object v0

    if-eqz v0, :unavailable

    invoke-interface {v0}, La/a/a/a/a/a;->f()[B
    move-result-object v0

    return-object v0
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :error

    :error
    move-exception v0
    const-string v1, "LedIconNfcBridge"
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :unavailable
    # The Samsung cover service returns status 3 on NFC transport failure.
    const/4 v0, 0x1
    new-array v0, v0, [B
    const/4 v1, 0x3
    const/4 p0, 0x0
    aput-byte v1, v0, p0
    return-object v0
.end method

.method public static stop(Landroid/nfc/NfcAdapter;)Z
    .locals 2

    :try_start
    invoke-static {}, Lcom/samsung/android/app/ledcover/common/NfcLegacyBridge;->service()La/a/a/a/a/a;
    move-result-object v0

    if-eqz v0, :unavailable

    invoke-interface {v0}, La/a/a/a/a/a;->g()Z
    move-result v0

    return v0
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :error

    :error
    move-exception v0
    const-string v1, "LedIconNfcBridge"
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :unavailable
    const/4 v0, 0x0
    return v0
.end method

.method public static transceive(Landroid/nfc/NfcAdapter;[B)[B
    .locals 2

    :try_start
    invoke-static {}, Lcom/samsung/android/app/ledcover/common/NfcLegacyBridge;->service()La/a/a/a/a/a;
    move-result-object v0

    if-eqz v0, :unavailable

    invoke-interface {v0, p1}, La/a/a/a/a/a;->a([B)[B
    move-result-object v0

    return-object v0
    :try_end
    .catch Ljava/lang/Exception; {:try_start .. :try_end} :error

    :error
    move-exception v0
    const-string v1, "LedIconNfcBridge"
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :unavailable
    const/4 v0, 0x1
    new-array v0, v0, [B
    const/4 v1, 0x3
    const/4 p0, 0x0
    aput-byte v1, v0, p0
    return-object v0
.end method
