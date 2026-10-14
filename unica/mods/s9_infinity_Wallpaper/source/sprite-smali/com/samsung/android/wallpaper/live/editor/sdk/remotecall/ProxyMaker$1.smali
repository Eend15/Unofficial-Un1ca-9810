.class Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->createProxyFromBinder(Landroid/os/IBinder;Ljava/lang/Class;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private proxyMaker:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;

.field final synthetic val$binder:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker$1;->val$binder:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;-><init>(Landroid/os/IBinder;I)V

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker$1;->proxyMaker:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker$1;->proxyMaker:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;

    invoke-static {p0, p2, p3}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->a(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
