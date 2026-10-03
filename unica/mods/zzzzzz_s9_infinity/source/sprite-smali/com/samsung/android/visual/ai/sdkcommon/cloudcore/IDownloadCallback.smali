.class public interface abstract Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadCallback;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadCallback$_Parcel;,
        Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadCallback$Stub;,
        Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadCallback$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.visual.ai.sdkcommon.cloudcore.IDownloadCallback"


# virtual methods
.method public abstract onError(JLandroid/net/Uri;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onSuccess(JLandroid/net/Uri;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
