.class public final synthetic Landroidx/fragment/app/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/a;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroidx/fragment/app/L;


# direct methods
.method public synthetic constructor <init>(Landroidx/fragment/app/L;I)V
    .locals 0

    iput p2, p0, Landroidx/fragment/app/B;->a:I

    iput-object p1, p0, Landroidx/fragment/app/B;->b:Landroidx/fragment/app/L;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Landroidx/fragment/app/B;->a:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lz/f;

    iget-object p0, p0, Landroidx/fragment/app/B;->b:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->G()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p1, p1, Lz/f;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/L;->r(ZZ)V

    :cond_0
    return-void

    :pswitch_0
    check-cast p1, Lz/e;

    iget-object p0, p0, Landroidx/fragment/app/B;->b:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->G()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p1, Lz/e;->a:Z

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/L;->m(ZZ)V

    :cond_1
    return-void

    :pswitch_1
    check-cast p1, Ljava/lang/Integer;

    iget-object p0, p0, Landroidx/fragment/app/B;->b:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->G()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x50

    if-ne p1, v0, :cond_2

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->l(Z)V

    :cond_2
    return-void

    :pswitch_2
    check-cast p1, Landroid/content/res/Configuration;

    iget-object p0, p0, Landroidx/fragment/app/B;->b:Landroidx/fragment/app/L;

    invoke-virtual {p0}, Landroidx/fragment/app/L;->G()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/fragment/app/L;->h(Z)V

    :cond_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
