.class public final Landroidx/appcompat/widget/u0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# instance fields
.field public final synthetic a:Landroidx/appcompat/widget/w0;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/w0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/appcompat/widget/u0;->a:Landroidx/appcompat/widget/w0;

    return-void
.end method


# virtual methods
.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 0

    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0

    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    iget-object p0, p0, Landroidx/appcompat/widget/u0;->a:Landroidx/appcompat/widget/w0;

    iget-object p1, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getInputMethodMode()I

    move-result p1

    const/4 p2, 0x2

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/appcompat/widget/w0;->B:Landroidx/appcompat/widget/A;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Landroidx/appcompat/widget/w0;->x:Landroid/os/Handler;

    iget-object p0, p0, Landroidx/appcompat/widget/w0;->t:Landroidx/appcompat/widget/s0;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Landroidx/appcompat/widget/s0;->run()V

    :cond_1
    :goto_0
    return-void
.end method
