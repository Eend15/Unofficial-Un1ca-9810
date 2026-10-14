.class Lio/github/unica/stockshutter/CaptureActivity$1;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;
.source "CaptureActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/github/unica/stockshutter/CaptureActivity;
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

    .line 87
    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$1;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraAvailable(Ljava/lang/String;)V
    .locals 1

    .line 89
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$1;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {v0}, Lio/github/unica/stockshutter/CaptureActivity;->access$000(Lio/github/unica/stockshutter/CaptureActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$1;->this$0:Lio/github/unica/stockshutter/CaptureActivity;

    invoke-static {p0}, Lio/github/unica/stockshutter/CaptureActivity;->access$100(Lio/github/unica/stockshutter/CaptureActivity;)V

    :cond_0
    return-void
.end method
