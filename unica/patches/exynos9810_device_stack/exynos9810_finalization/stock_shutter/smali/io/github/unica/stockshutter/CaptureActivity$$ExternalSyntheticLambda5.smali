.class public final synthetic Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lio/github/unica/stockshutter/CaptureActivity;

.field public final synthetic f$1:Landroid/os/Handler;


# direct methods
.method public synthetic constructor <init>(Lio/github/unica/stockshutter/CaptureActivity;Landroid/os/Handler;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;->f$0:Lio/github/unica/stockshutter/CaptureActivity;

    iput-object p2, p0, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;->f$1:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;->f$0:Lio/github/unica/stockshutter/CaptureActivity;

    iget-object p0, p0, Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda5;->f$1:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Lio/github/unica/stockshutter/CaptureActivity;->lambda$tryOpenCamera$2$io-github-unica-stockshutter-CaptureActivity(Landroid/os/Handler;)V

    return-void
.end method
