.class public final Landroidx/appcompat/widget/f;
.super Lk/t;
.source "SourceFile"


# instance fields
.field public final synthetic l:I

.field public final synthetic m:Landroidx/appcompat/widget/l;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/l;Landroid/content/Context;Lk/B;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/f;->l:I

    .line 9
    iput-object p1, p0, Landroidx/appcompat/widget/f;->m:Landroidx/appcompat/widget/l;

    .line 10
    sget v2, Lf/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 11
    invoke-direct/range {v1 .. v6}, Lk/t;-><init>(ILandroid/content/Context;Landroid/view/View;Lk/j;Z)V

    .line 12
    iget-object p2, p3, Lk/B;->A:Lk/l;

    .line 13
    invoke-virtual {p2}, Lk/l;->f()Z

    move-result p2

    if-nez p2, :cond_1

    .line 14
    iget-object p2, p1, Landroidx/appcompat/widget/l;->l:Landroidx/appcompat/widget/j;

    if-nez p2, :cond_0

    .line 15
    iget-object p2, p1, Landroidx/appcompat/widget/l;->k:Lk/x;

    .line 16
    check-cast p2, Landroid/view/View;

    .line 17
    :cond_0
    iput-object p2, p0, Lk/t;->e:Landroid/view/View;

    .line 18
    :cond_1
    iget-object p1, p1, Landroidx/appcompat/widget/l;->x:Landroidx/appcompat/widget/g;

    .line 19
    iput-object p1, p0, Lk/t;->h:Lk/u;

    .line 20
    iget-object p0, p0, Lk/t;->i:Lk/r;

    if-eqz p0, :cond_2

    .line 21
    invoke-interface {p0, p1}, Lk/v;->k(Lk/u;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(Landroidx/appcompat/widget/l;Landroid/content/Context;Lk/j;Landroid/view/View;)V
    .locals 7

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/f;->l:I

    .line 1
    iput-object p1, p0, Landroidx/appcompat/widget/f;->m:Landroidx/appcompat/widget/l;

    .line 2
    sget v2, Lf/a;->actionOverflowMenuStyle:I

    const/4 v6, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lk/t;-><init>(ILandroid/content/Context;Landroid/view/View;Lk/j;Z)V

    const p2, 0x800005

    .line 4
    iput p2, p0, Lk/t;->f:I

    .line 5
    iget-object p1, p1, Landroidx/appcompat/widget/l;->x:Landroidx/appcompat/widget/g;

    .line 6
    iput-object p1, p0, Lk/t;->h:Lk/u;

    .line 7
    iget-object p0, p0, Lk/t;->i:Lk/r;

    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0, p1}, Lk/v;->k(Lk/u;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/f;->l:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Landroidx/appcompat/widget/f;->m:Landroidx/appcompat/widget/l;

    iget-object v1, v0, Landroidx/appcompat/widget/l;->f:Lk/j;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lk/j;->c(Z)V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/appcompat/widget/l;->t:Landroidx/appcompat/widget/f;

    invoke-super {p0}, Lk/t;->c()V

    return-void

    :pswitch_0
    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/widget/f;->m:Landroidx/appcompat/widget/l;

    iput-object v0, v1, Landroidx/appcompat/widget/l;->u:Landroidx/appcompat/widget/f;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-super {p0}, Lk/t;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
