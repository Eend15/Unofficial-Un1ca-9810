.class public final Lcom/samsung/android/sivs/ai/sdkcommon/language/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sivs/ai/sdkcommon/language/g;


# instance fields
.field public b:Landroid/os/IBinder;


# virtual methods
.method public final a(Ljava/util/Map;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sivs.ai.sdkcommon.language.IConfigurationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v2, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->b:Landroid/os/IBinder;

    const/4 p1, 0x2

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->b:Landroid/os/IBinder;

    return-object p0
.end method

.method public final b(Ljava/util/Map;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sivs.ai.sdkcommon.language.IConfigurationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v2, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->b:Landroid/os/IBinder;

    const/4 p1, 0x3

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final c(Ljava/util/Map;Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/language/A;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sivs.ai.sdkcommon.language.IConfigurationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v2, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->b:Landroid/os/IBinder;

    const/4 p1, 0x4

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final d(Ljava/util/Map;Lcom/samsung/android/sivs/ai/sdkcommon/language/B;)V
    .locals 4

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sivs.ai.sdkcommon.language.IConfigurationService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 p1, -0x1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v2, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;

    const/4 v3, 0x4

    invoke-direct {v2, v0, v3}, Lcom/samsung/android/sivs/ai/sdkcommon/language/a;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p1, v2}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/e;->b:Landroid/os/IBinder;

    const/4 p1, 0x1

    const/4 p2, 0x0

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method
