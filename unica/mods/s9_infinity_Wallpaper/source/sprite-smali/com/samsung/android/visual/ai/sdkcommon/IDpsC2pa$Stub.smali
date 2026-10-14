.class public abstract Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$Stub;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_clearAllManifestsFromCache:I = 0x5

.field static final TRANSACTION_clearManifestsFromCache:I = 0x4

.field static final TRANSACTION_embedManifestToFile:I = 0x2

.field static final TRANSACTION_embedManifestToPfd:I = 0x8

.field static final TRANSACTION_getManifestsAsString:I = 0x1

.field static final TRANSACTION_getManifestsAsStringWithPfd:I = 0x7

.field static final TRANSACTION_isC2paInfoExist:I = 0x6

.field static final TRANSACTION_isC2paInfoExistWithPfd:I = 0xa

.field static final TRANSACTION_saveManifestsToCache:I = 0x3

.field static final TRANSACTION_saveManifestsToCacheWithPfd:I = 0x9


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.visual.ai.sdkcommon.IDpsC2pa"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.visual.ai.sdkcommon.IDpsC2pa"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.samsung.android.visual.ai.sdkcommon.IDpsC2pa"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->isC2paInfoExistWithPfd(Landroid/os/Bundle;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    :pswitch_1
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-interface {p0, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->saveManifestsToCacheWithPfd(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->embedManifestToPfd(Landroid/os/Bundle;Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    :pswitch_3
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa$_Parcel;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->getManifestsAsStringWithPfd(Landroid/os/Bundle;Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->isC2paInfoExist(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_5
    invoke-interface {p0}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->clearAllManifestsFromCache()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->clearManifestsFromCache(Ljava/lang/String;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :pswitch_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->saveManifestsToCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_8
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;

    move-result-object v7

    move-object v2, p0

    invoke-interface/range {v2 .. v7}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->embedManifestToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->getManifestsAsString(Ljava/lang/String;Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
