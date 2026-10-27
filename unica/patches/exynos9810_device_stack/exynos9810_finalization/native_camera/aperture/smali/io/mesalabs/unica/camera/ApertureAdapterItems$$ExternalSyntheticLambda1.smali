.class public final synthetic Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic f$0:Landroid/widget/ImageView;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/ImageView;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    .line 0
    iget-object p0, p0, Lio/mesalabs/unica/camera/ApertureAdapterItems$$ExternalSyntheticLambda1;->f$0:Landroid/widget/ImageView;

    invoke-static {p0, p1, p2}, Lio/mesalabs/unica/camera/ApertureAdapterItems;->lambda$bind$1(Landroid/widget/ImageView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method
