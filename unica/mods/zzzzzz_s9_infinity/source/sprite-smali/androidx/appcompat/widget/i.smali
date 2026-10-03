.class public final Landroidx/appcompat/widget/i;
.super Landroidx/appcompat/widget/m0;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field public final synthetic n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/appcompat/view/menu/ActionMenuItemView;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/i;->m:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    .line 2
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/m0;-><init>(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/j;Landroidx/appcompat/widget/j;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/i;->m:I

    .line 3
    iput-object p1, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    invoke-direct {p0, p2}, Landroidx/appcompat/widget/m0;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final b()Lk/z;
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/i;->m:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object p0, p0, Landroidx/appcompat/view/menu/ActionMenuItemView;->n:Landroidx/appcompat/widget/g;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    iget-object p0, p0, Landroidx/appcompat/widget/g;->d:Landroidx/appcompat/widget/l;

    iget-object p0, p0, Landroidx/appcompat/widget/l;->u:Landroidx/appcompat/widget/f;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/t;->a()Lk/r;

    move-result-object v0

    :cond_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/j;

    iget-object p0, p0, Landroidx/appcompat/widget/j;->g:Landroidx/appcompat/widget/l;

    iget-object p0, p0, Landroidx/appcompat/widget/l;->t:Landroidx/appcompat/widget/f;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lk/t;->a()Lk/r;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Z
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/i;->m:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    check-cast v0, Landroidx/appcompat/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->l:Lk/i;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroidx/appcompat/view/menu/ActionMenuItemView;->i:Lk/l;

    invoke-interface {v1, v0}, Lk/i;->a(Lk/l;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/appcompat/widget/i;->b()Lk/z;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lk/z;->b()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/j;

    iget-object p0, p0, Landroidx/appcompat/widget/j;->g:Landroidx/appcompat/widget/l;

    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->l()Z

    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public d()Z
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/i;->m:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0}, Landroidx/appcompat/widget/m0;->d()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/i;->n:Landroid/view/View;

    check-cast p0, Landroidx/appcompat/widget/j;

    iget-object p0, p0, Landroidx/appcompat/widget/j;->g:Landroidx/appcompat/widget/l;

    iget-object v0, p0, Landroidx/appcompat/widget/l;->v:Landroidx/appcompat/widget/h;

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/appcompat/widget/l;->f()Z

    const/4 p0, 0x1

    :goto_0
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
