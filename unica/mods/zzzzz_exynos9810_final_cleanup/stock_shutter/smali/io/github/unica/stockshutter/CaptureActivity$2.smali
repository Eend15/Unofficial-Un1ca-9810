.class Lio/github/unica/stockshutter/CaptureActivity$2;
.super Landroid/hardware/camera2/CameraDevice$StateCallback;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/unica/stockshutter/CaptureActivity;->tryOpenCamera()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/unica/stockshutter/CaptureActivity;


# direct methods
.method constructor <init>(Lio/github/unica/stockshutter/CaptureActivity;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraDevice$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDisconnected(Landroid/hardware/camera2/CameraDevice;)V
    .locals 1

    .line 290
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 291
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$200(Lio/github/unica/stockshutter/CaptureActivity;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$202(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 292
    :cond_0
    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$802(Lio/github/unica/stockshutter/CaptureActivity;Z)Z

    .line 293
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p0}, Lio/github/unica/stockshutter/CaptureActivity;->access$1000(Lio/github/unica/stockshutter/CaptureActivity;)V

    return-void
.end method

.method public onError(Landroid/hardware/camera2/CameraDevice;I)V
    .locals 2

    .line 296
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraDevice;->close()V

    .line 297
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$200(Lio/github/unica/stockshutter/CaptureActivity;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p1, v1}, Lio/github/unica/stockshutter/CaptureActivity;->access$202(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 298
    :cond_0
    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$802(Lio/github/unica/stockshutter/CaptureActivity;Z)Z

    .line 299
    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p1}, Lio/github/unica/stockshutter/CaptureActivity;->access$1100(Lio/github/unica/stockshutter/CaptureActivity;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p1}, Lio/github/unica/stockshutter/CaptureActivity;->access$1200(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    .line 300
    invoke-static {p1}, Lio/github/unica/stockshutter/CaptureActivity;->access$1200(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$000(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 301
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p0, p2}, Lio/github/unica/stockshutter/CaptureActivity;->access$1300(Lio/github/unica/stockshutter/CaptureActivity;I)V

    return-void

    :cond_1
    const/4 p1, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    goto :goto_0

    .line 304
    :cond_2
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Camera open error "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v1}, Lio/github/unica/stockshutter/CaptureActivity;->access$700(Lio/github/unica/stockshutter/CaptureActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 303
    :cond_3
    :goto_0
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p0}, Lio/github/unica/stockshutter/CaptureActivity;->access$1000(Lio/github/unica/stockshutter/CaptureActivity;)V

    return-void
.end method

.method public onOpened(Landroid/hardware/camera2/CameraDevice;)V
    .locals 2

    .line 285
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lio/github/unica/stockshutter/CaptureActivity;->access$802(Lio/github/unica/stockshutter/CaptureActivity;Z)Z

    .line 286
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->access$202(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraDevice;)Landroid/hardware/camera2/CameraDevice;

    .line 287
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$2;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p0}, Lio/github/unica/stockshutter/CaptureActivity;->access$900(Lio/github/unica/stockshutter/CaptureActivity;)V

    return-void
.end method
