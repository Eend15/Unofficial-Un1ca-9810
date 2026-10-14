.class public final LH4/p;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LH4/q;


# direct methods
.method public synthetic constructor <init>(LH4/q;I)V
    .locals 0

    iput p2, p0, LH4/p;->d:I

    iput-object p1, p0, LH4/p;->e:LH4/q;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    iget v0, p0, LH4/p;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls4/f;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/p;->e:LH4/q;

    iget-object v1, p0, LH4/q;->c:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p0, p0, LH4/q;->i:LH4/r;

    iget-object p1, p0, LH4/r;->b:LF4/k;

    iget-object p1, p1, LF4/k;->a:LF4/i;

    iget-object p1, p1, LF4/i;->p:Lt4/i;

    sget-object v3, Ln4/T;->s:Ln4/a;

    invoke-virtual {v3, v2, p1}, Lt4/c;->b(Ljava/io/ByteArrayInputStream;Lt4/i;)Lt4/b;

    move-result-object p1

    check-cast p1, Ln4/T;

    if-nez p1, :cond_1

    goto/16 :goto_5

    :cond_1
    iget-object p0, p0, LH4/r;->b:LF4/k;

    iget-object p0, p0, LF4/k;->i:LF4/u;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p1, Ln4/T;->n:Ljava/util/List;

    const-string v2, "proto.annotationList"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    iget-object v13, p0, LF4/u;->a:LF4/k;

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/g;

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, v13, LF4/k;->b:Lp4/f;

    iget-object v5, p0, LF4/u;->b:Lw0/e;

    invoke-virtual {v5, v3, v4}, Lw0/e;->r0(Ln4/g;Lp4/f;)LV3/c;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, LV3/g;->a:LV3/f;

    :goto_1
    move-object v5, p0

    goto :goto_2

    :cond_3
    new-instance p0, LV3/i;

    const/4 v0, 0x0

    invoke-direct {p0, v0, v2}, LV3/i;-><init>(ILjava/util/List;)V

    goto :goto_1

    :goto_2
    sget-object p0, Lp4/e;->d:Lp4/c;

    iget v0, p1, Ln4/T;->g:I

    invoke-virtual {p0, v0}, Lp4/c;->c(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ln4/f0;

    invoke-static {p0}, Lw0/f;->q(Ln4/f0;)LU3/n;

    move-result-object v7

    new-instance v1, LH4/v;

    iget-object p0, v13, LF4/k;->a:LF4/i;

    iget-object v3, p0, LF4/i;->a:LI4/o;

    iget p0, p1, Ln4/T;->h:I

    iget-object v0, v13, LF4/k;->b:Lp4/f;

    invoke-static {v0, p0}, Lw0/f;->B(Lp4/f;I)Ls4/f;

    move-result-object v6

    iget-object v11, v13, LF4/k;->e:Lp4/h;

    iget-object v12, v13, LF4/k;->g:Ll4/e;

    iget-object v4, v13, LF4/k;->c:LU3/j;

    iget-object v9, v13, LF4/k;->b:Lp4/f;

    iget-object v10, v13, LF4/k;->d:LX3/C;

    move-object v2, v1

    move-object v8, p1

    invoke-direct/range {v2 .. v12}, LH4/v;-><init>(LI4/o;LU3/j;LV3/h;Ls4/f;LU3/n;Ln4/T;Lp4/f;LX3/C;Lp4/h;Ll4/e;)V

    iget-object p0, p1, Ln4/T;->i:Ljava/util/List;

    const-string v0, "proto.typeParameterList"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v1, p0}, LF4/k;->b(LF4/k;LX3/q;Ljava/util/List;)LF4/k;

    move-result-object p0

    iget-object p0, p0, LF4/k;->h:LF4/F;

    iget-object v0, p0, LF4/F;->i:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    const-string v2, "typeTable"

    iget-object v3, v13, LF4/k;->d:LX3/C;

    invoke-static {v3, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget v2, p1, Ln4/T;->f:I

    and-int/lit8 v4, v2, 0x4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_4

    iget-object v2, p1, Ln4/T;->j:Ln4/Q;

    const-string v4, "underlyingType"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const/16 v4, 0x8

    and-int/2addr v2, v4

    if-ne v2, v4, :cond_7

    iget v2, p1, Ln4/T;->k:I

    invoke-virtual {v3, v2}, LX3/C;->a(I)Ln4/Q;

    move-result-object v2

    :goto_3
    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object v2

    iget v5, p1, Ln4/T;->f:I

    and-int/lit8 v6, v5, 0x10

    const/16 v7, 0x10

    if-ne v6, v7, :cond_5

    iget-object p1, p1, Ln4/T;->l:Ln4/Q;

    const-string v3, "expandedType"

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const/16 v6, 0x20

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_6

    iget p1, p1, Ln4/T;->m:I

    invoke-virtual {v3, p1}, LX3/C;->a(I)Ln4/Q;

    move-result-object p1

    :goto_4
    invoke-virtual {p0, p1, v4}, LF4/F;->c(Ln4/Q;Z)LJ4/G;

    move-result-object p0

    iget-object p1, v13, LF4/k;->a:LF4/i;

    iget-object p1, p1, LF4/i;->c:LF4/j;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    invoke-virtual {v1, v0, v2, p0, p1}, LH4/v;->K0(Ljava/util/List;LJ4/G;LJ4/G;I)V

    :goto_5
    return-object v1

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No expandedType in ProtoBuf.TypeAlias"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No underlyingType in ProtoBuf.TypeAlias"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    check-cast p1, Ls4/f;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/p;->e:LH4/q;

    iget-object v1, p0, LH4/q;->b:Ljava/util/LinkedHashMap;

    sget-object v2, Ln4/G;->v:Ln4/a;

    const-string v3, "PARSER"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget-object p0, p0, LH4/q;->i:LH4/r;

    if-nez v1, :cond_8

    const/4 v1, 0x0

    goto :goto_6

    :cond_8
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, LF4/s;

    const/4 v4, 0x1

    invoke-direct {v1, v2, v3, p0, v4}, LF4/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, LB3/h;

    new-instance v3, LF4/a;

    const/4 v4, 0x7

    invoke-direct {v3, v4, v1}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v3}, LB3/h;-><init>(LE3/a;LE3/b;)V

    new-instance v1, LU4/a;

    invoke-direct {v1, v2}, LU4/a;-><init>(LU4/i;)V

    invoke-static {v1}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object v1

    :goto_6
    if-nez v1, :cond_9

    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_9
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln4/G;

    iget-object v4, p0, LH4/r;->b:LF4/k;

    iget-object v4, v4, LF4/k;->i:LF4/u;

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4, v3}, LF4/u;->f(Ln4/G;)LH4/t;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_a
    invoke-virtual {p0, v2, p1}, LH4/r;->k(Ljava/util/ArrayList;Ls4/f;)V

    invoke-static {v2}, LS4/m;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, Ls4/f;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LH4/p;->e:LH4/q;

    iget-object v1, p0, LH4/q;->a:Ljava/util/LinkedHashMap;

    sget-object v2, Ln4/y;->v:Ln4/a;

    const-string v3, "PARSER"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    const/4 v3, 0x0

    iget-object p0, p0, LH4/q;->i:LH4/r;

    if-nez v1, :cond_b

    move-object v1, v3

    goto :goto_8

    :cond_b
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v1, LF4/s;

    const/4 v5, 0x1

    invoke-direct {v1, v2, v4, p0, v5}, LF4/s;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    new-instance v2, LB3/h;

    new-instance v4, LF4/a;

    const/4 v5, 0x7

    invoke-direct {v4, v5, v1}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v1, v4}, LB3/h;-><init>(LE3/a;LE3/b;)V

    new-instance v1, LU4/a;

    invoke-direct {v1, v2}, LU4/a;-><init>(LU4/i;)V

    invoke-static {v1}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object v1

    :goto_8
    if-nez v1, :cond_c

    sget-object v1, Lr3/r;->d:Lr3/r;

    :cond_c
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ln4/y;

    iget-object v5, p0, LH4/r;->b:LF4/k;

    iget-object v5, v5, LF4/k;->i:LF4/u;

    invoke-static {v4, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5, v4}, LF4/u;->e(Ln4/y;)LH4/u;

    move-result-object v4

    invoke-virtual {p0, v4}, LH4/r;->r(LH4/u;)Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_a

    :cond_e
    move-object v4, v3

    :goto_a
    if-eqz v4, :cond_d

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_f
    invoke-virtual {p0, v2, p1}, LH4/r;->j(Ljava/util/ArrayList;Ls4/f;)V

    invoke-static {v2}, LS4/m;->d(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
