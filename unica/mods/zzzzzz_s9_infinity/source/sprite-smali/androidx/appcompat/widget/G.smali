.class public final Landroidx/appcompat/widget/G;
.super Landroidx/appcompat/widget/m0;
.source "SourceFile"


# instance fields
.field public final synthetic m:Landroidx/appcompat/widget/N;

.field public final synthetic n:Landroidx/appcompat/widget/P;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/P;Landroidx/appcompat/widget/P;Landroidx/appcompat/widget/N;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/G;->n:Landroidx/appcompat/widget/P;

    iput-object p3, p0, Landroidx/appcompat/widget/G;->m:Landroidx/appcompat/widget/N;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lk/z;
    .locals 0

    iget-object p0, p0, Landroidx/appcompat/widget/G;->m:Landroidx/appcompat/widget/N;

    return-object p0
.end method

.method public final c()Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/G;->n:Landroidx/appcompat/widget/P;

    iget-object v0, p0, Landroidx/appcompat/widget/P;->i:Landroidx/appcompat/widget/O;

    invoke-interface {v0}, Landroidx/appcompat/widget/O;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getTextDirection()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getTextAlignment()I

    move-result v1

    iget-object p0, p0, Landroidx/appcompat/widget/P;->i:Landroidx/appcompat/widget/O;

    invoke-interface {p0, v0, v1}, Landroidx/appcompat/widget/O;->e(II)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
