.class Lcom/samsung/android/nexus/video/ThreadTask$1;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/nexus/video/ThreadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/nexus/video/ThreadTask;


# direct methods
.method public constructor <init>(Lcom/samsung/android/nexus/video/ThreadTask;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/nexus/video/ThreadTask$1;->this$0:Lcom/samsung/android/nexus/video/ThreadTask;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p0, p0, Lcom/samsung/android/nexus/video/ThreadTask$1;->this$0:Lcom/samsung/android/nexus/video/ThreadTask;

    iget-object p1, p0, Lcom/samsung/android/nexus/video/ThreadTask;->mResult:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/samsung/android/nexus/video/ThreadTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
