.class Lio/github/unica/stockshutter/CaptureActivity$4;
.super Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/github/unica/stockshutter/CaptureActivity;->capture()V
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

    .line 410
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$4;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraCaptureSession$CaptureCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptureFailed(Landroid/hardware/camera2/CameraCaptureSession;Landroid/hardware/camera2/CaptureRequest;Landroid/hardware/camera2/CaptureFailure;)V
    .locals 0

    .line 413
    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$4;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Still request rejected: "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/hardware/camera2/CaptureFailure;->getReason()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Lio/github/unica/stockshutter/CaptureActivity;->access$700(Lio/github/unica/stockshutter/CaptureActivity;Ljava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method
