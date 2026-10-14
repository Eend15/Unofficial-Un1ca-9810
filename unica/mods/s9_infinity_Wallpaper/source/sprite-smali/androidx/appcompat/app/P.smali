.class public final Landroidx/appcompat/app/P;
.super LK/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/appcompat/app/S;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/app/S;I)V
    .locals 0

    iput p2, p0, Landroidx/appcompat/app/P;->a:I

    iput-object p1, p0, Landroidx/appcompat/app/P;->b:Landroidx/appcompat/app/S;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/appcompat/app/P;->b:Landroidx/appcompat/app/S;

    iget p0, p0, Landroidx/appcompat/app/P;->a:I

    packed-switch p0, :pswitch_data_0

    iput-object v0, v1, Landroidx/appcompat/app/S;->s:Lj/j;

    iget-object p0, v1, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    return-void

    :pswitch_0
    iget-boolean p0, v1, Landroidx/appcompat/app/S;->o:Z

    if-eqz p0, :cond_0

    iget-object p0, v1, Landroidx/appcompat/app/S;->g:Landroid/view/View;

    if-eqz p0, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    iget-object p0, v1, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    invoke-virtual {p0, v2}, Landroid/view/View;->setTranslationY(F)V

    :cond_0
    iget-object p0, v1, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Landroidx/appcompat/widget/ActionBarContainer;->setVisibility(I)V

    iget-object p0, v1, Landroidx/appcompat/app/S;->d:Landroidx/appcompat/widget/ActionBarContainer;

    const/4 v2, 0x0

    iput-boolean v2, p0, Landroidx/appcompat/widget/ActionBarContainer;->d:Z

    const/high16 v2, 0x40000

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    iput-object v0, v1, Landroidx/appcompat/app/S;->s:Lj/j;

    iget-object p0, v1, Landroidx/appcompat/app/S;->k:Lw0/c;

    if-eqz p0, :cond_1

    iget-object v2, v1, Landroidx/appcompat/app/S;->j:Landroidx/appcompat/app/Q;

    invoke-virtual {p0, v2}, Lw0/c;->f(Lj/b;)V

    iput-object v0, v1, Landroidx/appcompat/app/S;->j:Landroidx/appcompat/app/Q;

    iput-object v0, v1, Landroidx/appcompat/app/S;->k:Lw0/c;

    :cond_1
    iget-object p0, v1, Landroidx/appcompat/app/S;->c:Landroidx/appcompat/widget/ActionBarOverlayLayout;

    if-eqz p0, :cond_2

    sget-object v0, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LK/v;->c(Landroid/view/View;)V

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
