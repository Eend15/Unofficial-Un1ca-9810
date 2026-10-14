.class public Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "ProxyMaker"


# instance fields
.field private mRemoteStub:Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall;


# direct methods
.method private constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->mRemoteStub:Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/IBinder;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;-><init>(Landroid/os/IBinder;)V

    return-void
.end method

.method public static bridge synthetic a(Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static createProxyFromBinder(Landroid/os/IBinder;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/IBinder;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/BundleBasedRemoteInterface;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    new-instance v1, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker$1;-><init>(Landroid/os/IBinder;)V

    invoke-static {v0, p1, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private invoke(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    const-string v0, "invoke : failed to create return object from bundle. return type = "

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, ", paramCnt="

    const/4 v4, 0x0

    if-eqz p2, :cond_1

    array-length v5, p2

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    sget-object p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->TAG:Ljava/lang/String;

    const-string p1, "invoke : too many method params. method="

    invoke-static {p1, v1, v3}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v4

    :cond_0
    array-length v5, p2

    if-ne v5, v6, :cond_1

    aget-object v5, p2, v2

    check-cast v5, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;->toBundle()Landroid/os/Bundle;

    move-result-object v5

    goto :goto_1

    :cond_2
    move-object v5, v4

    :goto_1
    sget-object v6, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->TAG:Ljava/lang/String;

    const-string v7, "invoke : method="

    invoke-static {v7, v1, v3}, LB/a;->r(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez p2, :cond_3

    goto :goto_2

    :cond_3
    array-length v2, p2

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->mRemoteStub:Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall;

    invoke-interface {p0, v1, v5}, Lcom/samsung/android/wallpaper/live/editor/sdk/aidl/BundleBasedRemoteCall;->call(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v4

    :cond_4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p1

    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eq p1, p2, :cond_5

    :try_start_1
    const-class p2, Landroid/os/Bundle;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p2, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", e="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception p0

    sget-object p1, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/ProxyMaker;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "invoke : method = "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", e = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/samsung/android/wallpaper/live/editor/sdk/utils/SdkLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_3
    return-object v4
.end method
