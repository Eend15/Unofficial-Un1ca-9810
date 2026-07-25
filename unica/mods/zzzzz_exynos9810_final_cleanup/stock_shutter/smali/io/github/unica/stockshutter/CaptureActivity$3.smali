.class Lio/github/unica/stockshutter/CaptureActivity$3;
.super Landroid/hardware/camera2/CameraCaptureSession$StateCallback;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/unica/stockshutter/CaptureActivity;->createSession()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lio/github/unica/stockshutter/CaptureActivity;

.field final synthetic val$device:Landroid/hardware/camera2/CameraDevice;

.field final synthetic val$h:Landroid/os/Handler;

.field final synthetic val$preview:Landroid/hardware/camera2/CaptureRequest$Builder;


# direct methods
.method constructor <init>(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraDevice;Landroid/hardware/camera2/CaptureRequest$Builder;Landroid/os/Handler;)V
    .locals 0

    .line 363
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    iput-object p2, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->val$device:Landroid/hardware/camera2/CameraDevice;

    iput-object p3, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->val$preview:Landroid/hardware/camera2/CaptureRequest$Builder;

    iput-object p4, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->val$h:Landroid/os/Handler;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$StateCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigureFailed(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 1

    .line 390
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    const-string p1, "Legacy HAL rejected helper session"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$700(Lio/github/unica/stockshutter/CaptureActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
    .locals 3

    .line 365
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$200(Lio/github/unica/stockshutter/CaptureActivity;)Landroid/hardware/camera2/CameraDevice;

    move-result-object v0

    iget-object v1, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->val$device:Landroid/hardware/camera2/CameraDevice;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$300(Lio/github/unica/stockshutter/CaptureActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 366
    :cond_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->access$402(Lio/github/unica/stockshutter/CaptureActivity;Landroid/hardware/camera2/CameraCaptureSession;)Landroid/hardware/camera2/CameraCaptureSession;

    .line 368
    :try_start_0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->val$preview:Landroid/hardware/camera2/CaptureRequest$Builder;

    invoke-virtual {v0}, Landroid/hardware/camera2/CaptureRequest$Builder;->build()Landroid/hardware/camera2/CaptureRequest;

    move-result-object v0

    new-instance v1, Lio/github/unica/stockshutter/CaptureActivity$3$1;

    invoke-direct {v1, p0}, Lio/github/unica/stockshutter/CaptureActivity$3$1;-><init>(Lio/github/unica/stockshutter/CaptureActivity$3;)V

    iget-object v2, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->val$h:Landroid/os/Handler;

    invoke-virtual {p1, v0, v1, v2}, Landroid/hardware/camera2/CameraCaptureSession;->setRepeatingRequest(Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;Landroid/os/Handler;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 386
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    const-string v0, "Preview request failed"

    invoke-static {p0, v0, p1}, Lio/github/unica/stockshutter/CaptureActivity;->access$700(Lio/github/unica/stockshutter/CaptureActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void

    .line 365
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/camera2/CameraCaptureSession;->close()V

    return-void
.end method
