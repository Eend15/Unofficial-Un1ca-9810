.class public interface abstract Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback$_Parcel;,
        Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback$Stub;,
        Lcom/samsung/android/visual/ai/sdkcommon/IC2paManifestsCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.visual.ai.sdkcommon.IC2paManifestsCallback"


# virtual methods
.method public abstract onError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPfdCreation(Landroid/os/ParcelFileDescriptor;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onResult(Ljava/lang/String;ZZ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
