.class public final LO3/m;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/p;


# direct methods
.method public synthetic constructor <init>(LO3/p;I)V
    .locals 0

    iput p2, p0, LO3/m;->d:I

    iput-object p1, p0, LO3/m;->e:LO3/p;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 11

    iget v0, p0, LO3/m;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LO3/m;->e:LO3/p;

    invoke-virtual {p0}, LO3/p;->f()LU3/b;

    move-result-object v0

    invoke-interface {v0}, LU3/a;->q()Ljava/util/List;

    move-result-object v0

    const-string v1, "descriptor.typeParameters"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/O;

    new-instance v3, LO3/h0;

    const-string v4, "descriptor"

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v2}, LO3/h0;-><init>(LO3/i0;LU3/O;)V

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1

    :pswitch_0
    new-instance v0, LO3/g0;

    iget-object v1, p0, LO3/m;->e:LO3/p;

    invoke-virtual {v1}, LO3/p;->f()LU3/b;

    move-result-object v1

    invoke-interface {v1}, LU3/a;->k()LJ4/C;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    new-instance v2, LC4/g;

    const/16 v3, 0xc

    invoke-direct {v2, v3, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    invoke-direct {v0, v1, v2}, LO3/g0;-><init>(LJ4/C;LE3/a;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, LO3/m;->e:LO3/p;

    invoke-virtual {p0}, LO3/p;->f()LU3/b;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, LO3/p;->h()Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    invoke-static {v0}, LO3/r0;->d(LU3/b;)LU3/J;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v5, LO3/L;

    sget-object v6, LL3/g;->d:LL3/g;

    new-instance v7, LO3/n;

    const/4 v8, 0x0

    invoke-direct {v7, v2, v8}, LO3/n;-><init>(LU3/J;I)V

    invoke-direct {v5, p0, v4, v6, v7}, LO3/L;-><init>(LO3/p;ILL3/g;LE3/a;)V

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v3

    goto :goto_1

    :cond_1
    move v2, v4

    :goto_1
    invoke-interface {v0}, LU3/a;->Y()LU3/J;

    move-result-object v5

    if-eqz v5, :cond_3

    new-instance v6, LO3/L;

    add-int/lit8 v7, v2, 0x1

    sget-object v8, LL3/g;->e:LL3/g;

    new-instance v9, LO3/n;

    const/4 v10, 0x1

    invoke-direct {v9, v5, v10}, LO3/n;-><init>(LU3/J;I)V

    invoke-direct {v6, p0, v2, v8, v9}, LO3/L;-><init>(LO3/p;ILL3/g;LE3/a;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v2, v7

    goto :goto_2

    :cond_2
    move v2, v4

    :cond_3
    :goto_2
    invoke-interface {v0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v5

    const-string v6, "descriptor.valueParameters"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result v5

    :goto_3
    if-ge v4, v5, :cond_4

    new-instance v6, LO3/L;

    add-int/lit8 v7, v2, 0x1

    sget-object v8, LL3/g;->f:LL3/g;

    new-instance v9, LO3/o;

    invoke-direct {v9, v0, v4}, LO3/o;-><init>(LU3/b;I)V

    invoke-direct {v6, p0, v2, v8, v9}, LO3/L;-><init>(LO3/p;ILL3/g;LE3/a;)V

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    move v2, v7

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, LO3/p;->g()Z

    move-result p0

    if-eqz p0, :cond_5

    instance-of p0, v0, Lf4/a;

    if-eqz p0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-le p0, v3, :cond_5

    new-instance p0, LO3/x;

    const/4 v0, 0x2

    invoke-direct {p0, v0}, LO3/x;-><init>(I)V

    invoke-static {v1, p0}, Lr3/o;->k0(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    return-object v1

    :pswitch_2
    iget-object p0, p0, LO3/m;->e:LO3/p;

    invoke-virtual {p0}, LO3/p;->f()LU3/b;

    move-result-object p0

    invoke-static {p0}, LO3/r0;->b(LV3/a;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
