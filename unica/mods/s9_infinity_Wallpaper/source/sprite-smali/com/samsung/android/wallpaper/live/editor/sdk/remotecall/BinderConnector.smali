.class public Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "BinderConnector"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;

    new-instance p1, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector$1;-><init>(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;)V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->invokeImplMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private invokeImplMethod(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 6

    const-string v0, "invokeImplMethod : ret="

    const-string v1, "invokeImplMethod : "

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/ReflectionUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invokeImplMethod : unknown method name! name="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v5, v4

    if-lez v5, :cond_1

    const/4 v5, 0x0

    aget-object v4, v4, v5

    goto :goto_0

    :cond_1
    move-object v4, v3

    :goto_0
    if-eqz v4, :cond_2

    :try_start_0
    const-class v5, Landroid/os/Bundle;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v4, p2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_4

    :cond_2
    move-object p2, v3

    :goto_1
    sget-object v4, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", param="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_3

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {v2, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;

    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_2
    if-eqz p0, :cond_5

    instance-of p2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;

    if-eqz p2, :cond_4

    check-cast p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;

    invoke-virtual {p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;->toBundle()Landroid/os/Bundle;

    move-result-object v3

    goto :goto_3

    :cond_4
    const-string p0, "invokeImplMethod : result is not instance of CallResult."

    invoke-static {v4, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_3
    return-object v3

    :goto_4
    sget-object p2, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "invokeImplMethod : method = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mImpl:Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mBinder:Landroid/os/IBinder;

    return-void
.end method

.method public getBinder()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BinderConnector;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method
