.class Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector$1;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector$1;->this$0:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    invoke-direct {p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector$1;->this$0:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    invoke-static {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->a(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method
