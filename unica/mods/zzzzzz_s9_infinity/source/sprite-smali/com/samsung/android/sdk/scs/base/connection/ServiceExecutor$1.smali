.class Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onConnected"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-interface {v0, p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;->onConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    const/4 p1, 0x1

    const-string p2, "connected, signal all"

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->a(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;ZLjava/lang/String;)V

    return-void
.end method

.method public onDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onDisconnected"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-interface {v0, p1}, Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;->onDisconnected(Landroid/content/ComponentName;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    const/4 p1, 0x0

    const-string v0, "disconnected, signal all"

    invoke-static {p0, p1, v0}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->a(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;ZLjava/lang/String;)V

    return-void
.end method

.method public onError()V
    .locals 2

    const-string v0, "ScsApi@ServiceExecutor"

    const-string v1, "onError"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    invoke-interface {v0}, Lcom/samsung/android/sdk/scs/base/connection/InternalServiceConnectionListener;->onError()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;

    const/4 v0, 0x0

    const-string v1, "onError, signal all"

    invoke-static {p0, v0, v1}, Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;->a(Lcom/samsung/android/sdk/scs/base/connection/ServiceExecutor;ZLjava/lang/String;)V

    return-void
.end method
