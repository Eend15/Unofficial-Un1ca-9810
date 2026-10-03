.class public final Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sivs/ai/sdkcommon/language/n0;


# instance fields
.field public b:Landroid/os/IBinder;


# virtual methods
.method public final a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;ILcom/samsung/android/sivs/ai/sdkcommon/language/A;Ljava/util/Map;)V
    .locals 5

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    :try_start_0
    const-string v2, "com.samsung.android.sivs.ai.sdkcommon.language.IWritingComposerService"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-nez p1, :cond_0

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    new-instance v3, Lcom/samsung/android/sivs/ai/sdkcommon/language/S;

    const/16 v4, 0x12

    invoke-direct {v3, v0, v4}, Lcom/samsung/android/sivs/ai/sdkcommon/language/S;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p1, v3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_0
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 p2, 0x0

    if-eqz p4, :cond_1

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p4, v0, p2}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p8}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    if-nez p9, :cond_2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2

    :cond_2
    invoke-interface {p9}, Ljava/util/Map;->size()I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    new-instance p3, Lcom/samsung/android/sivs/ai/sdkcommon/language/S;

    const/16 p4, 0x13

    invoke-direct {p3, v0, p4}, Lcom/samsung/android/sivs/ai/sdkcommon/language/S;-><init>(Landroid/os/Parcel;I)V

    invoke-interface {p9, p3}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    :goto_2
    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;->b:Landroid/os/IBinder;

    invoke-interface {p0, p1, v0, v1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-void

    :goto_3
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
.end method

.method public final asBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sivs/ai/sdkcommon/language/l0;->b:Landroid/os/IBinder;

    return-object p0
.end method
