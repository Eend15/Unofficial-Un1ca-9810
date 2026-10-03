.class Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceConnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScsApi@ConnectionManager"

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    const/4 v0, 0x1

    invoke-static {p0, v0, p1, p2}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->a(Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onServiceDisconnected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ScsApi@ConnectionManager"

    invoke-static {v0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager$1;->this$0:Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;

    const/4 p1, 0x2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;->a(Lcom/samsung/android/sdk/scs/base/connection/ConnectionManager;ILandroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method
