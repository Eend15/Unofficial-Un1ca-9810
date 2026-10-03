.class public final Landroidx/appcompat/widget/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/w0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/v0;->d:Landroidx/appcompat/widget/w0;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    float-to-int p2, p2

    iget-object p0, p0, Landroidx/appcompat/widget/v0;->d:Landroidx/appcompat/widget/w0;

    if-nez p1, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    if-ltz v0, :cond_0

    iget-object v1, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_0

    if-ltz p2, :cond_0

    iget-object v0, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v0

    if-ge p2, v0, :cond_0

    iget-object p1, p0, Landroidx/appcompat/widget/w0;->x:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->t:Landroidx/appcompat/widget/s0;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/w0;->x:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->t:Landroidx/appcompat/widget/s0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
