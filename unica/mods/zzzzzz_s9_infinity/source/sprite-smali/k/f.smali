.class public final Lk/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/v;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public d:Landroid/content/Context;

.field public e:Landroid/view/LayoutInflater;

.field public f:Lk/j;

.field public g:Landroidx/appcompat/view/menu/ExpandedMenuView;

.field public final h:I

.field public i:Lk/u;

.field public j:Lk/e;


# direct methods
.method public constructor <init>(Landroid/content/ContextWrapper;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lk/f;->h:I

    iput-object p1, p0, Lk/f;->d:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lk/f;->e:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public final a(Lk/j;Z)V
    .locals 0

    iget-object p0, p0, Lk/f;->i:Lk/u;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lk/u;->a(Lk/j;Z)V

    :cond_0
    return-void
.end method

.method public final c(Lk/l;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final d(Lk/B;)Z
    .locals 7

    invoke-virtual {p1}, Lk/j;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance v0, Lk/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object p1, v0, Lk/k;->d:Lk/B;

    new-instance v1, LH/k;

    iget-object v2, p1, Lk/j;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, LH/k;-><init>(Landroid/content/Context;)V

    new-instance v3, Lk/f;

    iget-object v4, v1, LH/k;->e:Ljava/lang/Object;

    check-cast v4, Landroidx/appcompat/app/e;

    iget-object v5, v4, Landroidx/appcompat/app/e;->a:Landroid/view/ContextThemeWrapper;

    sget v6, Lf/g;->abc_list_menu_item_layout:I

    invoke-direct {v3, v5, v6}, Lk/f;-><init>(Landroid/content/ContextWrapper;I)V

    iput-object v3, v0, Lk/k;->f:Lk/f;

    iput-object v0, v3, Lk/f;->i:Lk/u;

    invoke-virtual {p1, v3, v2}, Lk/j;->b(Lk/v;Landroid/content/Context;)V

    iget-object v2, v0, Lk/k;->f:Lk/f;

    iget-object v3, v2, Lk/f;->j:Lk/e;

    if-nez v3, :cond_1

    new-instance v3, Lk/e;

    invoke-direct {v3, v2}, Lk/e;-><init>(Lk/f;)V

    iput-object v3, v2, Lk/f;->j:Lk/e;

    :cond_1
    iget-object v2, v2, Lk/f;->j:Lk/e;

    iput-object v2, v4, Landroidx/appcompat/app/e;->g:Ljava/lang/Object;

    iput-object v0, v4, Landroidx/appcompat/app/e;->h:Landroid/content/DialogInterface$OnClickListener;

    iget-object v2, p1, Lk/j;->o:Landroid/view/View;

    if-eqz v2, :cond_2

    iput-object v2, v4, Landroidx/appcompat/app/e;->e:Landroid/view/View;

    goto :goto_0

    :cond_2
    iget-object v2, p1, Lk/j;->n:Landroid/graphics/drawable/Drawable;

    iput-object v2, v4, Landroidx/appcompat/app/e;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, p1, Lk/j;->m:Ljava/lang/CharSequence;

    iput-object v2, v4, Landroidx/appcompat/app/e;->d:Ljava/lang/CharSequence;

    :goto_0
    iput-object v0, v4, Landroidx/appcompat/app/e;->f:Lk/k;

    invoke-virtual {v1}, LH/k;->b()Landroidx/appcompat/app/h;

    move-result-object v1

    iput-object v1, v0, Lk/k;->e:Landroidx/appcompat/app/h;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v1, v0, Lk/k;->e:Landroidx/appcompat/app/h;

    invoke-virtual {v1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x3eb

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget-object v0, v0, Lk/k;->e:Landroidx/appcompat/app/h;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object p0, p0, Lk/f;->i:Lk/u;

    if-eqz p0, :cond_3

    invoke-interface {p0, p1}, Lk/u;->b(Lk/j;)Z

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public final e(Lk/l;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final g(Landroid/content/Context;Lk/j;)V
    .locals 1

    iget-object v0, p0, Lk/f;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    iput-object p1, p0, Lk/f;->d:Landroid/content/Context;

    iget-object v0, p0, Lk/f;->e:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lk/f;->e:Landroid/view/LayoutInflater;

    :cond_0
    iput-object p2, p0, Lk/f;->f:Lk/j;

    iget-object p0, p0, Lk/f;->j:Lk/e;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lk/e;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public final h()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final i()V
    .locals 0

    iget-object p0, p0, Lk/f;->j:Lk/e;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lk/e;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public final k(Lk/u;)V
    .locals 0

    const/4 p0, 0x0

    throw p0
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    iget-object p1, p0, Lk/f;->f:Lk/j;

    iget-object p2, p0, Lk/f;->j:Lk/e;

    invoke-virtual {p2, p3}, Lk/e;->b(I)Lk/l;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lk/j;->q(Landroid/view/MenuItem;Lk/v;I)Z

    return-void
.end method
