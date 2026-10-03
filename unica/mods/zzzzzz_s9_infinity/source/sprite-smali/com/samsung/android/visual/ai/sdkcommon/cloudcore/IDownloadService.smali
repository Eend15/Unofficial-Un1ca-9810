.class public interface abstract Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadService$_Parcel;,
        Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadService$Stub;,
        Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadService$Default;
    }
.end annotation


# static fields
.field public static final CHECK_RESULT_AVAILABLE:I = 0x0

.field public static final CHECK_RESULT_NEED_DOWNLOAD:I = 0x1

.field public static final CHECK_RESULT_NETWORK_UNAVAILABLE:I = -0x3

.field public static final CHECK_RESULT_NOT_SUPPORTED:I = -0x1

.field public static final CHECK_RESULT_SERVER_ERROR:I = -0x5

.field public static final CHECK_RESULT_STORE_NOT_FOUND:I = -0x4

.field public static final CHECK_RESULT_TIMEOUT:I = -0x6

.field public static final CHECK_RESULT_UNKNOWN_FEATURE:I = -0x2

.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.visual.ai.sdkcommon.cloudcore.IDownloadService"

.field public static final RESULT_ADJUST_THREASHOLD:I = 0x2328

.field public static final RESULT_ADJUST_VALUE:I = 0x2710


# virtual methods
.method public abstract cancel(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract check(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkAndDownload(Ljava/lang/String;[Ljava/lang/String;ZZ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract checkStore(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract download(Landroid/net/Uri;Landroid/os/ParcelFileDescriptor;Lcom/samsung/android/visual/ai/sdkcommon/cloudcore/IDownloadCallback;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract downloadModelPackages(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDownloadUris(Ljava/lang/String;Landroid/os/Bundle;)[Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
