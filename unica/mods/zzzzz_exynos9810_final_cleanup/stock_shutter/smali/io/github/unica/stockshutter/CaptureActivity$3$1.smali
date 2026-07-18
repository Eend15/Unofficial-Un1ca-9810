.class Lio/github/unica/stockshutter/CaptureActivity$3$1;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/unica/stockshutter/CaptureActivity$3;->onConfigured(Landroid/hardware/camera2/CameraCaptureSession;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private first:Z

.field final synthetic this$1:Lio/github/unica/stockshutter/CaptureActivity$3;


# direct methods
.method constructor <init>(Lio/github/unica/stockshutter/CaptureActivity$3;)V
    .locals 0

    .line 368
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->this$1:Lio/github/unica/stockshutter/CaptureActivity$3;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    const/4 p1, 0x1

    .line 369
    iput-boolean p1, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->first:Z

    return-void
.end method


# virtual methods
.method public onCaptureCompleted(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/TotalCaptureResult;)V
    .locals 1

    .line 372
    iget-boolean p1, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->first:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 373
    iput-boolean p1, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->first:Z

    .line 374
    sget-object p1, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p1}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    .line 375
    sget-object p2, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-virtual {p3, p2}, Landroid/hardware/camera2/TotalCaptureResult;->get(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 377
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Active capture camera="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->this$1:Lio/github/unica/stockshutter/CaptureActivity$3;

    iget-object v0, v0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$000(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " physical="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " focalLength="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " zoom="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->this$1:Lio/github/unica/stockshutter/CaptureActivity$3;

    iget-object p2, p2, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    .line 380
    invoke-static {p2}, Lio/github/unica/stockshutter/CaptureActivity;->access$500(Lio/github/unica/stockshutter/CaptureActivity;)F

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 377
    const-string p2, "StockShutterBridge"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$3$1;->this$1:Lio/github/unica/stockshutter/CaptureActivity$3;

    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$3;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p0}, Lio/github/unica/stockshutter/CaptureActivity;->access$600(Lio/github/unica/stockshutter/CaptureActivity;)V

    :cond_0
    return-void
.end method
