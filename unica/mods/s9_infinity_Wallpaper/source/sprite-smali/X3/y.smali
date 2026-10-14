.class public final LX3/y;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX3/z;


# direct methods
.method public synthetic constructor <init>(LX3/z;I)V
    .locals 0

    iput p2, p0, LX3/y;->d:I

    iput-object p1, p0, LX3/y;->e:LX3/z;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LX3/y;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LX3/y;->e:LX3/z;

    iget-object v0, p0, LX3/z;->i:LI4/i;

    sget-object v1, LX3/z;->k:[LL3/l;

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v0, v2}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LC4/n;->b:LC4/n;

    goto :goto_1

    :cond_0
    iget-object v0, p0, LX3/z;->h:LI4/i;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/B;

    invoke-interface {v2}, LU3/B;->l0()LC4/o;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v0, LX3/Q;

    iget-object v2, p0, LX3/z;->f:LX3/D;

    iget-object p0, p0, LX3/z;->g:Ls4/c;

    invoke-direct {v0, v2, p0}, LX3/Q;-><init>(LU3/x;Ls4/c;)V

    invoke-static {v1, v0}, Lr3/j;->H0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "package view scope for "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " in "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, v0}, Lw0/f;->n(Ljava/lang/String;Ljava/util/List;)LC4/o;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    iget-object p0, p0, LX3/y;->e:LX3/z;

    iget-object v0, p0, LX3/z;->f:LX3/D;

    invoke-virtual {v0}, LX3/D;->G0()V

    iget-object v0, v0, LX3/D;->n:Lq3/j;

    invoke-virtual {v0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/o;

    iget-object p0, p0, LX3/z;->g:Ls4/c;

    invoke-static {v0, p0}, LR3/f;->W(LU3/C;Ls4/c;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LX3/y;->e:LX3/z;

    iget-object v0, p0, LX3/z;->f:LX3/D;

    invoke-virtual {v0}, LX3/D;->G0()V

    iget-object v0, v0, LX3/D;->n:Lq3/j;

    invoke-virtual {v0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX3/o;

    iget-object p0, p0, LX3/z;->g:Ls4/c;

    invoke-static {v0, p0}, LR3/f;->Q(LU3/C;Ls4/c;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
