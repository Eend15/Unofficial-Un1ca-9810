.class public final LH4/h;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LH4/l;


# direct methods
.method public synthetic constructor <init>(LH4/l;I)V
    .locals 0

    iput p2, p0, LH4/h;->d:I

    iput-object p1, p0, LH4/h;->e:LH4/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    sget-object v0, Lc4/b;->j:Lc4/b;

    const/16 v1, 0x10

    const-string v2, "classProto.constructorList"

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, LH4/h;->e:LH4/l;

    iget v7, p0, LH4/h;->d:I

    packed-switch v7, :pswitch_data_0

    sget-object p0, Lr3/r;->d:Lr3/r;

    iget v0, v6, LH4/l;->l:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v6, LH4/l;->h:Ln4/j;

    iget-object v0, v0, Ln4/j;->u:Ljava/util/List;

    const-string v2, "fqNames"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, v6, LH4/l;->o:LF4/k;

    iget-object v3, v2, LF4/k;->a:LF4/i;

    const-string v4, "index"

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, v2, LF4/k;->b:Lp4/f;

    invoke-static {v2, v1}, Lw0/f;->v(Lp4/f;I)Ls4/b;

    move-result-object v1

    invoke-virtual {v3, v1}, LF4/i;->b(Ls4/b;)LU3/e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    iget v0, v6, LH4/l;->l:I

    if-eq v0, v1, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/util/LinkedHashSet;

    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v0, v6, LH4/l;->t:LU3/j;

    instance-of v1, v0, LU3/B;

    if-eqz v1, :cond_4

    check-cast v0, LU3/B;

    invoke-interface {v0}, LU3/B;->l0()LC4/o;

    move-result-object v0

    invoke-static {v6, p0, v0, v5}, Lv4/p;->c(LU3/e;Ljava/util/LinkedHashSet;LC4/o;Z)V

    :cond_4
    invoke-virtual {v6}, LX3/b;->Q()LC4/o;

    move-result-object v0

    invoke-static {v6, p0, v0, v4}, Lv4/p;->c(LU3/e;Ljava/util/LinkedHashSet;LC4/o;Z)V

    :cond_5
    :goto_1
    return-object p0

    :pswitch_0
    iget-object p0, p0, LH4/h;->e:LH4/l;

    iget v0, p0, LH4/l;->n:I

    invoke-static {v0}, LB/a;->d(I)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v10, LU3/L;->a:LU3/M;

    new-instance v0, Lv4/e;

    sget-object v7, LV3/g;->a:LV3/f;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, LX3/l;-><init>(LU3/e;LU3/i;LV3/h;ZILU3/L;)V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget v2, Lv4/f;->a:I

    const/4 v2, 0x3

    iget v4, p0, LH4/l;->n:I

    if-eq v4, v2, :cond_c

    invoke-static {v4}, LB/a;->d(I)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_2

    :cond_6
    invoke-static {p0}, Lv4/f;->q(LU3/j;)Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, LU3/o;->a:LU3/n;

    if-eqz v2, :cond_7

    goto :goto_3

    :cond_7
    const/16 p0, 0x33

    invoke-static {p0}, Lv4/f;->a(I)V

    throw v3

    :cond_8
    invoke-static {p0}, Lv4/f;->k(LU3/j;)Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, LU3/o;->j:LU3/n;

    if-eqz v2, :cond_9

    goto :goto_3

    :cond_9
    const/16 p0, 0x34

    invoke-static {p0}, Lv4/f;->a(I)V

    throw v3

    :cond_a
    sget-object v2, LU3/o;->e:LU3/n;

    if-eqz v2, :cond_b

    goto :goto_3

    :cond_b
    const/16 p0, 0x35

    invoke-static {p0}, Lv4/f;->a(I)V

    throw v3

    :cond_c
    :goto_2
    sget-object v2, LU3/o;->a:LU3/n;

    if-eqz v2, :cond_d

    :goto_3
    invoke-virtual {v0, v1, v2}, LX3/l;->U0(Ljava/util/List;LU3/n;)V

    invoke-virtual {p0}, LX3/b;->n()LJ4/G;

    move-result-object p0

    iput-object p0, v0, LX3/w;->j:LJ4/C;

    goto :goto_6

    :cond_d
    const/16 p0, 0x31

    invoke-static {p0}, Lv4/f;->a(I)V

    throw v3

    :cond_e
    iget-object v0, p0, LH4/l;->h:Ln4/j;

    iget-object v0, v0, Ln4/j;->p:Ljava/util/List;

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln4/l;

    sget-object v5, Lp4/e;->m:Lp4/b;

    iget v2, v2, Ln4/l;->g:I

    invoke-virtual {v5, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_4

    :cond_10
    move-object v1, v3

    :goto_4
    check-cast v1, Ln4/l;

    if-nez v1, :cond_11

    goto :goto_5

    :cond_11
    iget-object p0, p0, LH4/l;->o:LF4/k;

    iget-object p0, p0, LF4/k;->i:LF4/u;

    invoke-virtual {p0, v1, v4}, LF4/u;->d(Ln4/l;Z)LH4/c;

    move-result-object v3

    :goto_5
    move-object v0, v3

    :goto_6
    return-object v0

    :pswitch_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v6}, Lv4/j;->b(LU3/j;)Z

    move-result p0

    if-nez p0, :cond_12

    goto/16 :goto_e

    :cond_12
    iget-object p0, v6, LH4/l;->h:Ln4/j;

    iget v2, p0, Ln4/j;->f:I

    const/16 v7, 0x8

    and-int/2addr v2, v7

    if-ne v2, v7, :cond_13

    move v2, v4

    goto :goto_7

    :cond_13
    move v2, v5

    :goto_7
    iget-object v7, v6, LH4/l;->o:LF4/k;

    if-eqz v2, :cond_14

    iget-object v2, v7, LF4/k;->b:Lp4/f;

    iget v8, p0, Ln4/j;->w:I

    invoke-static {v2, v8}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v2

    goto :goto_8

    :cond_14
    iget-object v2, v6, LH4/l;->i:Lp4/a;

    const/4 v8, 0x5

    invoke-virtual {v2, v4, v8, v4}, Lp4/a;->a(III)Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v6}, LH4/l;->T()LU3/d;

    move-result-object v2

    if-eqz v2, :cond_1e

    check-cast v2, LX3/w;

    invoke-virtual {v2}, LX3/w;->n0()Ljava/util/List;

    move-result-object v2

    const-string v8, "constructor.valueParameters"

    invoke-static {v2, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lr3/j;->t0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX3/W;

    check-cast v2, LX3/p;

    invoke-virtual {v2}, LX3/p;->r()Ls4/f;

    move-result-object v2

    const-string v8, "{\n                // Bef\u2026irst().name\n            }"

    invoke-static {v2, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_8
    iget-object v8, v7, LF4/k;->d:LX3/C;

    const-string v9, "typeTable"

    invoke-static {v8, v9}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v9, p0, Ln4/j;->f:I

    and-int/lit8 v10, v9, 0x10

    if-ne v10, v1, :cond_15

    iget-object p0, p0, Ln4/j;->x:Ln4/Q;

    goto :goto_9

    :cond_15
    const/16 v1, 0x20

    and-int/2addr v9, v1

    if-ne v9, v1, :cond_16

    iget p0, p0, Ln4/j;->y:I

    invoke-virtual {v8, p0}, LX3/C;->a(I)Ln4/Q;

    move-result-object p0

    goto :goto_9

    :cond_16
    move-object p0, v3

    :goto_9
    if-nez p0, :cond_17

    move-object p0, v3

    goto :goto_a

    :cond_17
    iget-object v1, v7, LF4/k;->h:LF4/F;

    invoke-virtual {v1, p0, v4}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object p0

    :goto_a
    if-nez p0, :cond_1d

    invoke-virtual {v6}, LH4/l;->m0()LH4/g;

    move-result-object p0

    invoke-virtual {p0, v2, v0}, LH4/g;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move-object v0, v3

    :cond_18
    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, LX3/L;

    iget-object v7, v7, LX3/L;->v:LX3/O;

    if-nez v7, :cond_18

    if-eqz v5, :cond_19

    goto :goto_c

    :cond_19
    move-object v0, v1

    move v5, v4

    goto :goto_b

    :cond_1a
    if-nez v5, :cond_1b

    goto :goto_c

    :cond_1b
    move-object v3, v0

    :goto_c
    check-cast v3, LX3/L;

    if-eqz v3, :cond_1c

    check-cast v3, LX3/X;

    invoke-virtual {v3}, LX3/X;->j()LJ4/C;

    move-result-object p0

    check-cast p0, LJ4/G;

    goto :goto_d

    :cond_1c
    const-string p0, "Inline class has no underlying property: "

    invoke-static {v6, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    :goto_d
    new-instance v3, LU3/t;

    invoke-direct {v3, v2, p0}, LU3/t;-><init>(Ls4/f;LJ4/G;)V

    :goto_e
    return-object v3

    :cond_1e
    const-string p0, "Inline class has no primary constructor: "

    invoke-static {v6, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    const-string p0, "Inline class has no underlying property name in metadata: "

    invoke-static {v6, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_2
    iget-object p0, v6, LH4/l;->h:Ln4/j;

    iget-object p0, p0, Ln4/j;->p:Ljava/util/List;

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_20
    :goto_f
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ln4/l;

    sget-object v3, Lp4/e;->m:Lp4/b;

    iget v2, v2, Ln4/l;->g:I

    invoke-virtual {v3, v2}, Lp4/b;->c(I)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_21
    new-instance p0, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {p0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    iget-object v2, v6, LH4/l;->o:LF4/k;

    if-eqz v1, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln4/l;

    iget-object v2, v2, LF4/k;->i:LF4/u;

    const-string v3, "it"

    invoke-static {v1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1, v5}, LF4/u;->d(Ln4/l;Z)LH4/c;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_10

    :cond_22
    invoke-virtual {v6}, LH4/l;->T()LU3/d;

    move-result-object v0

    invoke-static {v0}, Lr3/k;->e0(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {p0, v0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    iget-object v0, v2, LF4/k;->a:LF4/i;

    iget-object v0, v0, LF4/i;->n:LW3/b;

    invoke-interface {v0, v6}, LW3/b;->b(LU3/e;)Ljava/util/Collection;

    move-result-object v0

    invoke-static {p0, v0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_3
    iget-object p0, v6, LH4/l;->h:Ln4/j;

    iget v1, p0, Ln4/j;->f:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_23

    goto :goto_11

    :cond_23
    move v4, v5

    :goto_11
    if-nez v4, :cond_24

    goto :goto_12

    :cond_24
    iget-object v1, v6, LH4/l;->o:LF4/k;

    iget-object v1, v1, LF4/k;->b:Lp4/f;

    iget p0, p0, Ln4/j;->i:I

    invoke-static {v1, p0}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object p0

    invoke-virtual {v6}, LH4/l;->m0()LH4/g;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, LH4/g;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object p0

    instance-of v0, p0, LU3/e;

    if-eqz v0, :cond_25

    move-object v3, p0

    check-cast v3, LU3/e;

    :cond_25
    :goto_12
    return-object v3

    :pswitch_4
    iget-object p0, v6, LH4/l;->o:LF4/k;

    iget-object p0, p0, LF4/k;->a:LF4/i;

    iget-object p0, p0, LF4/i;->e:LF4/b;

    iget-object v0, v6, LH4/l;->y:LF4/v;

    invoke-interface {p0, v0}, LF4/b;->j(LF4/v;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-static {v6}, LR3/f;->m(LU3/h;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
