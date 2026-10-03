.class public final Lj0/g;
.super Lj0/m;
.source "SourceFile"


# instance fields
.field public final synthetic a:I

.field public b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const/4 v0, 0x2

    iput v0, p0, Lj0/g;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 2
    iput p1, p0, Lj0/g;->a:I

    iput-object p2, p0, Lj0/g;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 1

    iget v0, p0, Lj0/g;->a:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object p0, p0, Lj0/g;->b:Ljava/lang/Object;

    check-cast p0, Lj0/a;

    iget-boolean v0, p0, Lj0/a;->C:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj0/l;->D()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lj0/a;->C:Z

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Lj0/l;)V
    .locals 2

    iget v0, p0, Lj0/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj0/g;->b:Ljava/lang/Object;

    check-cast v0, Lj0/a;

    iget v1, v0, Lj0/a;->B:I

    add-int/lit8 v1, v1, -0x1

    iput v1, v0, Lj0/a;->B:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lj0/a;->C:Z

    invoke-virtual {v0}, Lj0/l;->l()V

    :cond_0
    invoke-virtual {p1, p0}, Lj0/l;->u(Lj0/k;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj0/g;->b:Ljava/lang/Object;

    check-cast v0, Lj0/l;

    invoke-virtual {v0}, Lj0/l;->w()V

    invoke-virtual {p1, p0}, Lj0/l;->u(Lj0/k;)V

    return-void

    :pswitch_1
    sget-object v0, Lj0/r;->a:Landroidx/appcompat/widget/G0;

    iget-object v0, p0, Lj0/g;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setTransitionAlpha(F)V

    invoke-virtual {p1, p0}, Lj0/l;->u(Lj0/k;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
