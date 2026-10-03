.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field private static final KEY_CALLBACK_BINDER:Ljava/lang/String; = "callbackBinder"


# instance fields
.field private final engineInterface:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

.field private final iEditor:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 5
    const-string v0, "callbackBinder"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 6
    const-class v0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;

    invoke-static {p1, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->createProxyFromBinder(Landroid/os/IBinder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;->iEditor:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;

    const/4 p1, 0x0

    .line 7
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;->engineInterface:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;->engineInterface:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;->iEditor:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;

    return-void
.end method


# virtual methods
.method public getEngineInterface()Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;->iEditor:Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/IDailyGradientEditor;

    return-object p0
.end method

.method public toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/callback/OnEditorInterfaceReady$Params;->engineInterface:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->getBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string v1, "callbackBinder"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-object v0
.end method
