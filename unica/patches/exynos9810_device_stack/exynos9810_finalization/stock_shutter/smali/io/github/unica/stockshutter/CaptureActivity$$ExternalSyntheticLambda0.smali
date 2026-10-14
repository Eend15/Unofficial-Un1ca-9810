.class public final synthetic Lio/github/unica/stockshutter/CaptureActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    check-cast p1, Landroid/util/Size;

    invoke-static {p1}, Lio/github/unica/stockshutter/CaptureActivity;->lambda$choosePreview$1(Landroid/util/Size;)Z

    move-result p0

    return p0
.end method
