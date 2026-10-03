.class public final LH4/j;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LH4/j;->d:I

    iput-object p1, p0, LH4/j;->e:Ljava/lang/Object;

    iput-object p3, p0, LH4/j;->f:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    iget v0, p0, LH4/j;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget-object v0, p0, LH4/j;->e:Ljava/lang/Object;

    check-cast v0, Lk4/t;

    iget-object v0, v0, Lk4/t;->a:Ljava/util/LinkedHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lk4/e;

    if-nez v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iget-object p0, p0, LH4/j;->f:Ljava/lang/Object;

    check-cast p0, LF4/a;

    invoke-virtual {p0, p1}, LF4/a;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lk4/e;

    :cond_0
    return-object v0

    :pswitch_0
    check-cast p1, Lh4/o;

    const-string v0, "request"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ls4/b;

    iget-object v1, p0, LH4/j;->e:Ljava/lang/Object;

    check-cast v1, Lh4/s;

    iget-object v2, v1, Lh4/s;->o:Lh4/n;

    iget-object v2, v2, LX3/F;->h:Ls4/c;

    iget-object v3, p1, Lh4/o;->a:Ls4/f;

    invoke-direct {v0, v2, v3}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    iget-object p0, p0, LH4/j;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    const/4 v2, 0x0

    iget-object v3, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lg4/a;

    iget-object p1, p1, Lh4/o;->b:La4/n;

    if-eqz p1, :cond_3

    iget-object v4, v3, Lg4/a;->c:LZ3/b;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, La4/n;->e()Ls4/c;

    move-result-object v5

    invoke-virtual {v5}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v5

    iget-object v4, v4, LZ3/b;->a:Ljava/lang/ClassLoader;

    invoke-static {v5, v4}, LR3/f;->b0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    if-nez v4, :cond_1

    :goto_0
    move-object v5, v2

    goto :goto_1

    :cond_1
    invoke-static {v4}, LR3/f;->r(Ljava/lang/Class;)LZ3/c;

    move-result-object v4

    if-nez v4, :cond_2

    goto :goto_0

    :cond_2
    new-instance v5, Landroidx/recyclerview/widget/y;

    const/16 v6, 0xb

    invoke-direct {v5, v6, v4}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    iget-object v4, v3, Lg4/a;->c:LZ3/b;

    invoke-virtual {v4, v0}, LZ3/b;->a(Ls4/b;)Landroidx/recyclerview/widget/y;

    move-result-object v5

    :goto_1
    if-nez v5, :cond_4

    move-object v4, v2

    goto :goto_2

    :cond_4
    iget-object v4, v5, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v4, LZ3/c;

    :goto_2
    if-nez v4, :cond_5

    move-object v5, v2

    goto :goto_3

    :cond_5
    iget-object v5, v4, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {v5}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_6

    iget-object v6, v5, Ls4/b;->b:Ls4/c;

    invoke-virtual {v6}, Ls4/c;->e()Ls4/c;

    move-result-object v6

    invoke-virtual {v6}, Ls4/c;->d()Z

    move-result v6

    if-eqz v6, :cond_12

    iget-boolean v5, v5, Ls4/b;->c:Z

    if-eqz v5, :cond_6

    goto/16 :goto_9

    :cond_6
    sget-object v5, Lh4/q;->a:Lh4/q;

    if-nez v4, :cond_7

    goto :goto_5

    :cond_7
    iget-object v6, v4, LZ3/c;->b:Lm4/b;

    sget-object v7, Lm4/a;->g:Lm4/a;

    iget-object v6, v6, Lm4/b;->a:Lm4/a;

    if-ne v6, v7, :cond_9

    iget-object v6, v1, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object v6, v6, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v6, Lg4/a;

    iget-object v6, v6, Lg4/a;->d:Ll4/c;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6, v4}, Ll4/c;->f(LZ3/c;)LF4/d;

    move-result-object v7

    if-nez v7, :cond_8

    move-object v4, v2

    goto :goto_4

    :cond_8
    invoke-virtual {v6}, Ll4/c;->c()LF4/i;

    move-result-object v6

    iget-object v4, v4, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {v4}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v4

    iget-object v6, v6, LF4/i;->s:LF4/g;

    invoke-virtual {v6, v4, v7}, LF4/g;->a(Ls4/b;LF4/d;)LU3/e;

    move-result-object v4

    :goto_4
    if-eqz v4, :cond_a

    new-instance v5, Lh4/p;

    invoke-direct {v5, v4}, Lh4/p;-><init>(LU3/e;)V

    goto :goto_5

    :cond_9
    sget-object v5, Lh4/r;->a:Lh4/r;

    :cond_a
    :goto_5
    instance-of v4, v5, Lh4/p;

    if-eqz v4, :cond_b

    check-cast v5, Lh4/p;

    iget-object v2, v5, Lh4/p;->a:LU3/e;

    goto/16 :goto_9

    :cond_b
    instance-of v4, v5, Lh4/r;

    if-eqz v4, :cond_c

    goto/16 :goto_9

    :cond_c
    instance-of v4, v5, Lh4/q;

    if-eqz v4, :cond_13

    if-nez p1, :cond_f

    iget-object p1, v3, Lg4/a;->b:LZ3/b;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ls4/b;->g()Ls4/c;

    move-result-object v4

    const-string v5, "classId.packageFqName"

    invoke-static {v4, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Ls4/b;->h()Ls4/c;

    move-result-object v0

    invoke-virtual {v0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v0

    const/16 v5, 0x2e

    const/16 v6, 0x24

    invoke-static {v0, v5, v6}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4}, Ls4/c;->d()Z

    move-result v6

    if-eqz v6, :cond_d

    goto :goto_6

    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_6
    iget-object p1, p1, LZ3/b;->a:Ljava/lang/ClassLoader;

    invoke-static {v0, p1}, LR3/f;->b0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_e

    new-instance v0, La4/n;

    invoke-direct {v0, p1}, La4/n;-><init>(Ljava/lang/Class;)V

    move-object p1, v0

    goto :goto_7

    :cond_e
    move-object p1, v2

    :cond_f
    :goto_7
    if-nez p1, :cond_10

    move-object v0, v2

    goto :goto_8

    :cond_10
    invoke-virtual {p1}, La4/n;->e()Ls4/c;

    move-result-object v0

    :goto_8
    if-eqz v0, :cond_12

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v4

    if-nez v4, :cond_12

    invoke-virtual {v0}, Ls4/c;->e()Ls4/c;

    move-result-object v0

    iget-object v1, v1, Lh4/s;->o:Lh4/n;

    iget-object v4, v1, LX3/F;->h:Ls4/c;

    invoke-static {v0, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_9

    :cond_11
    new-instance v0, Lh4/h;

    invoke-direct {v0, p0, v1, p1, v2}, Lh4/h;-><init>(Landroidx/recyclerview/widget/b;LU3/j;La4/n;LU3/e;)V

    iget-object p0, v3, Lg4/a;->s:Ld4/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    :cond_12
    :goto_9
    return-object v2

    :cond_13
    new-instance p0, LW4/m;

    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    throw p0

    :pswitch_1
    move-object v2, p1

    check-cast v2, Ls4/f;

    const-string p1, "name"

    invoke-static {v2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LH4/j;->e:Ljava/lang/Object;

    check-cast p1, Lh4/l;

    iget-object v0, p1, Lh4/l;->r:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, LH4/j;->f:Ljava/lang/Object;

    check-cast p0, Landroidx/recyclerview/widget/b;

    const/4 v1, 0x0

    if-nez v0, :cond_14

    iget-object v0, p1, Lh4/l;->s:LI4/i;

    invoke-virtual {v0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, La4/t;

    if-eqz v0, :cond_18

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v1, v1, Lg4/a;->a:LI4/l;

    new-instance v3, Lh4/k;

    const/4 v4, 0x2

    invoke-direct {v3, p1, v4}, Lh4/k;-><init>(Lh4/l;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, LI4/i;

    invoke-direct {v4, v1, v3}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iget-object v1, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lg4/a;

    iget-object v3, v1, Lg4/a;->a:LI4/l;

    invoke-static {p0, v0}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object p0

    iget-object v1, v1, Lg4/a;->j:LZ3/e;

    invoke-virtual {v1, v0}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v5

    iget-object v1, p1, Lh4/l;->n:LU3/e;

    move-object v0, v3

    move-object v3, v4

    move-object v4, p0

    invoke-static/range {v0 .. v5}, LX3/t;->m0(LI4/o;LU3/e;Ls4/f;LI4/i;LV3/h;LU3/L;)LX3/t;

    move-result-object v1

    goto :goto_c

    :cond_14
    iget-object v0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object p1, p1, Lh4/l;->n:LU3/e;

    invoke-static {p1}, Lz4/e;->f(LU3/g;)Ls4/b;

    move-result-object v3

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v3, v2}, Ls4/b;->d(Ls4/f;)Ls4/b;

    move-result-object v2

    iget-object v0, v0, Lg4/a;->b:LZ3/b;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ls4/b;->g()Ls4/c;

    move-result-object v3

    const-string v4, "classId.packageFqName"

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Ls4/b;->h()Ls4/c;

    move-result-object v2

    invoke-virtual {v2}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v2

    const/16 v4, 0x2e

    const/16 v5, 0x24

    invoke-static {v2, v4, v5}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Ls4/c;->d()Z

    move-result v5

    if-eqz v5, :cond_15

    goto :goto_a

    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_a
    iget-object v0, v0, LZ3/b;->a:Ljava/lang/ClassLoader;

    invoke-static {v2, v0}, LR3/f;->b0(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_16

    new-instance v2, La4/n;

    invoke-direct {v2, v0}, La4/n;-><init>(Ljava/lang/Class;)V

    goto :goto_b

    :cond_16
    move-object v2, v1

    :goto_b
    if-nez v2, :cond_17

    goto :goto_c

    :cond_17
    new-instance v0, Lh4/h;

    invoke-direct {v0, p0, p1, v2, v1}, Lh4/h;-><init>(Landroidx/recyclerview/widget/b;LU3/j;La4/n;LU3/e;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->s:Ld4/m;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v1, v0

    :cond_18
    :goto_c
    return-object v1

    :pswitch_2
    check-cast p1, Ls4/f;

    const-string v0, "accessorName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LH4/j;->e:Ljava/lang/Object;

    check-cast v0, LX3/P;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v1

    invoke-static {v1, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-static {v0}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_d

    :cond_19
    iget-object p0, p0, LH4/j;->f:Ljava/lang/Object;

    check-cast p0, Lh4/l;

    invoke-static {p0, p1}, Lh4/l;->v(Lh4/l;Ls4/f;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, p1}, Lh4/l;->w(Lh4/l;Ls4/f;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {v0, p0}, Lr3/j;->G0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    :goto_d
    return-object p0

    :pswitch_3
    check-cast p1, Ljava/lang/Throwable;

    iget-object p1, p0, LH4/j;->e:Ljava/lang/Object;

    check-cast p1, LX4/c;

    iget-object p1, p1, LX4/c;->f:Landroid/os/Handler;

    iget-object p0, p0, LH4/j;->f:Ljava/lang/Object;

    check-cast p0, LH/a;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_4
    move-object v2, p1

    check-cast v2, Ls4/f;

    const-string p1, "name"

    invoke-static {v2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, LH4/j;->e:Ljava/lang/Object;

    check-cast p1, Lw0/i;

    iget-object v0, p1, Lw0/i;->e:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln4/t;

    if-nez v0, :cond_1a

    const/4 p0, 0x0

    goto :goto_e

    :cond_1a
    iget-object p0, p0, LH4/j;->f:Ljava/lang/Object;

    move-object v1, p0

    check-cast v1, LH4/l;

    iget-object p0, v1, LH4/l;->o:LF4/k;

    iget-object p0, p0, LF4/k;->a:LF4/i;

    iget-object p0, p0, LF4/i;->a:LI4/o;

    iget-object p1, p1, Lw0/i;->g:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, LI4/i;

    new-instance v4, LH4/a;

    iget-object p1, v1, LH4/l;->o:LF4/k;

    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object p1, p1, LF4/i;->a:LI4/o;

    new-instance v5, LF4/C;

    const/4 v6, 0x1

    invoke-direct {v5, v1, v6, v0}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-direct {v4, p1, v5}, LH4/a;-><init>(LI4/o;LE3/a;)V

    sget-object v5, LU3/L;->a:LU3/M;

    move-object v0, p0

    invoke-static/range {v0 .. v5}, LX3/t;->m0(LI4/o;LU3/e;Ls4/f;LI4/i;LV3/h;LU3/L;)LX3/t;

    move-result-object p0

    :goto_e
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
