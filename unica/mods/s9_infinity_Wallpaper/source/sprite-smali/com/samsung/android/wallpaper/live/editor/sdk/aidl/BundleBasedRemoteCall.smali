.class public interface abstract Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall$_Parcel;,
        Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall$Stub;,
        Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall$Default;
    }
.end annotation


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.wallpaper.live.editor.sdk.aidl.BundleBasedRemoteCall"


# virtual methods
.method public abstract call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
