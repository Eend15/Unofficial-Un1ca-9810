.class public final Landroidx/fragment/app/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic d:Landroidx/fragment/app/Q;

.field public final synthetic e:Landroidx/fragment/app/A;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/A;Landroidx/fragment/app/Q;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/A;

    iput-object p2, p0, Landroidx/fragment/app/z;->d:Landroidx/fragment/app/Q;

    return-void
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Landroidx/fragment/app/z;->d:Landroidx/fragment/app/Q;

    invoke-virtual {p1}, Landroidx/fragment/app/Q;->k()V

    iget-object p1, p1, Landroidx/fragment/app/Q;->c:Landroidx/fragment/app/r;

    iget-object p1, p1, Landroidx/fragment/app/r;->H:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p0, p0, Landroidx/fragment/app/z;->e:Landroidx/fragment/app/A;

    iget-object p0, p0, Landroidx/fragment/app/A;->d:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->D()Landroidx/fragment/app/G;

    move-result-object p0

    invoke-static {p1, p0}, Landroidx/fragment/app/h;->f(Landroid/view/ViewGroup;Landroidx/fragment/app/G;)Landroidx/fragment/app/h;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/h;->e()V

    return-void
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    return-void
.end method
