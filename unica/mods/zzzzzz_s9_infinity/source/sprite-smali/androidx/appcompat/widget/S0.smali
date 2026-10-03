.class public final Landroidx/appcompat/widget/S0;
.super LK/I;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Z

.field public c:I

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/appcompat/widget/T0;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/S0;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/appcompat/widget/S0;->d:Ljava/lang/Object;

    iput p2, p0, Landroidx/appcompat/widget/S0;->c:I

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Landroidx/appcompat/widget/S0;->b:Z

    return-void
.end method

.method public constructor <init>(Lj/j;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/S0;->a:I

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object p1, p0, Landroidx/appcompat/widget/S0;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroidx/appcompat/widget/S0;->b:Z

    .line 7
    iput p1, p0, Landroidx/appcompat/widget/S0;->c:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget v0, p0, Landroidx/appcompat/widget/S0;->a:I

    packed-switch v0, :pswitch_data_0

    iget v0, p0, Landroidx/appcompat/widget/S0;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/appcompat/widget/S0;->c:I

    iget-object v1, p0, Landroidx/appcompat/widget/S0;->d:Ljava/lang/Object;

    check-cast v1, Lj/j;

    iget-object v2, v1, Lj/j;->a:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ne v0, v2, :cond_1

    iget-object v0, v1, Lj/j;->d:LK/I;

    if-eqz v0, :cond_0

    invoke-interface {v0}, LK/H;->a()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Landroidx/appcompat/widget/S0;->c:I

    iput-boolean v0, p0, Landroidx/appcompat/widget/S0;->b:Z

    iput-boolean v0, v1, Lj/j;->e:Z

    :cond_1
    return-void

    :pswitch_0
    iget-boolean v0, p0, Landroidx/appcompat/widget/S0;->b:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/appcompat/widget/S0;->d:Ljava/lang/Object;

    check-cast v0, Landroidx/appcompat/widget/T0;

    iget-object v0, v0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    iget p0, p0, Landroidx/appcompat/widget/S0;->c:I

    invoke-virtual {v0, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public b()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/S0;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/S0;->b:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()V
    .locals 1

    iget v0, p0, Landroidx/appcompat/widget/S0;->a:I

    packed-switch v0, :pswitch_data_0

    iget-boolean v0, p0, Landroidx/appcompat/widget/S0;->b:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/appcompat/widget/S0;->b:Z

    iget-object p0, p0, Landroidx/appcompat/widget/S0;->d:Ljava/lang/Object;

    check-cast p0, Lj/j;

    iget-object p0, p0, Lj/j;->d:LK/I;

    if-eqz p0, :cond_1

    invoke-interface {p0}, LK/H;->c()V

    :cond_1
    :goto_0
    return-void

    :pswitch_0
    iget-object p0, p0, Landroidx/appcompat/widget/S0;->d:Ljava/lang/Object;

    check-cast p0, Landroidx/appcompat/widget/T0;

    iget-object p0, p0, Landroidx/appcompat/widget/T0;->a:Landroidx/appcompat/widget/Toolbar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
