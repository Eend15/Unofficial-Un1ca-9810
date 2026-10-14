.class public abstract Lt4/m;
.super Lt4/p;
.source "SourceFile"


# instance fields
.field public final d:Lt4/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lt4/b;-><init>()V

    .line 2
    new-instance v0, Lt4/j;

    invoke-direct {v0}, Lt4/j;-><init>()V

    .line 3
    iput-object v0, p0, Lt4/m;->d:Lt4/j;

    return-void
.end method

.method public constructor <init>(Lt4/l;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lt4/b;-><init>()V

    .line 5
    iget-object v0, p1, Lt4/l;->e:Lt4/j;

    .line 6
    invoke-virtual {v0}, Lt4/j;->f()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p1, Lt4/l;->f:Z

    .line 8
    iget-object p1, p1, Lt4/l;->e:Lt4/j;

    .line 9
    iput-object p1, p0, Lt4/m;->d:Lt4/j;

    return-void
.end method


# virtual methods
.method public final i()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lt4/m;->d:Lt4/j;

    iget-object v2, v2, Lt4/j;->a:Lt4/C;

    iget-object v3, v2, Lt4/C;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    iget-object v2, v2, Lt4/C;->e:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-static {v2}, Lt4/j;->e(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lt4/C;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-static {v1}, Lt4/j;->e(Ljava/util/Map$Entry;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public final j()I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lt4/m;->d:Lt4/j;

    iget-object v2, v2, Lt4/j;->a:Lt4/C;

    iget-object v3, v2, Lt4/C;->e:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    iget-object v2, v2, Lt4/C;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lt4/n;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lt4/j;->d(Lt4/n;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lt4/C;->c()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/n;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v2, v0}, Lt4/j;->d(Lt4/n;Ljava/lang/Object;)I

    move-result v0

    add-int/2addr v1, v0

    goto :goto_1

    :cond_1
    return v1
.end method

.method public final k(Lt4/o;)Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0, p1}, Lt4/m;->o(Lt4/o;)V

    iget-object p0, p0, Lt4/m;->d:Lt4/j;

    iget-object p0, p0, Lt4/j;->a:Lt4/C;

    iget-object v0, p1, Lt4/o;->d:Lt4/n;

    invoke-virtual {p0, v0}, Lt4/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    iget-object p0, p1, Lt4/o;->b:Ljava/lang/Object;

    return-object p0

    :cond_0
    iget-boolean v1, v0, Lt4/n;->f:Z

    if-eqz v1, :cond_2

    iget-object v0, v0, Lt4/n;->e:Lt4/O;

    iget-object v0, v0, Lt4/O;->d:Lt4/P;

    sget-object v1, Lt4/P;->l:Lt4/P;

    if-ne v0, v1, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Lt4/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    goto :goto_1

    :cond_2
    invoke-virtual {p1, p0}, Lt4/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :cond_3
    :goto_1
    return-object p0
.end method

.method public final l(Lt4/o;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lt4/m;->o(Lt4/o;)V

    iget-object p0, p0, Lt4/m;->d:Lt4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lt4/o;->d:Lt4/n;

    iget-boolean v0, p1, Lt4/n;->f:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lt4/j;->a:Lt4/C;

    invoke-virtual {p0, p1}, Lt4/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "hasField() can only be called on non-repeated fields."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final m()V
    .locals 0

    iget-object p0, p0, Lt4/m;->d:Lt4/j;

    invoke-virtual {p0}, Lt4/j;->f()V

    return-void
.end method

.method public final n(Lt4/f;Ll5/e;Lt4/i;I)Z
    .locals 8

    const/4 v0, 0x7

    invoke-interface {p0}, Lt4/x;->a()Lt4/b;

    move-result-object v1

    and-int/lit8 v2, p4, 0x7

    ushr-int/lit8 v3, p4, 0x3

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lt4/h;

    invoke-direct {v4, v3, v1}, Lt4/h;-><init>(ILt4/b;)V

    iget-object v1, p3, Lt4/i;->a:Ljava/util/Map;

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lt4/o;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_1

    :cond_0
    move v5, v3

    move v2, v4

    goto :goto_0

    :cond_1
    iget-object v5, v1, Lt4/o;->d:Lt4/n;

    iget-object v6, v5, Lt4/n;->e:Lt4/O;

    sget-object v7, Lt4/j;->c:Lt4/j;

    iget v7, v6, Lt4/O;->e:I

    if-ne v2, v7, :cond_2

    move v2, v3

    move v5, v2

    goto :goto_0

    :cond_2
    iget-boolean v5, v5, Lt4/n;->f:Z

    if-eqz v5, :cond_0

    invoke-virtual {v6}, Lt4/O;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v3

    move v5, v4

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1, p4, p2}, Lt4/f;->q(ILl5/e;)Z

    move-result v4

    goto/16 :goto_5

    :cond_3
    const/4 p2, 0x0

    iget-object p0, p0, Lt4/m;->d:Lt4/j;

    if-eqz v5, :cond_7

    invoke-virtual {p1}, Lt4/f;->k()I

    move-result p3

    invoke-virtual {p1, p3}, Lt4/f;->d(I)I

    move-result p3

    iget-object p4, v1, Lt4/o;->d:Lt4/n;

    iget-object v0, p4, Lt4/n;->e:Lt4/O;

    sget-object v1, Lt4/O;->j:Lt4/O;

    if-ne v0, v1, :cond_5

    invoke-virtual {p1}, Lt4/f;->b()I

    move-result p0

    if-gtz p0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lt4/f;->k()I

    throw p2

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lt4/f;->b()I

    move-result p2

    if-lez p2, :cond_6

    iget-object p2, p4, Lt4/n;->e:Lt4/O;

    invoke-static {p1, p2}, Lt4/j;->h(Lt4/f;Lt4/O;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p4, p2}, Lt4/j;->a(Lt4/n;Ljava/lang/Object;)V

    goto :goto_1

    :cond_6
    :goto_2
    invoke-virtual {p1, p3}, Lt4/f;->c(I)V

    goto/16 :goto_5

    :cond_7
    iget-object p4, v1, Lt4/o;->d:Lt4/n;

    iget-object p4, p4, Lt4/n;->e:Lt4/O;

    iget-object p4, p4, Lt4/O;->d:Lt4/P;

    invoke-virtual {p4}, Ljava/lang/Enum;->ordinal()I

    move-result p4

    iget-object v2, v1, Lt4/o;->d:Lt4/n;

    if-eq p4, v0, :cond_f

    const/16 v0, 0x8

    if-eq p4, v0, :cond_8

    iget-object p2, v2, Lt4/n;->e:Lt4/O;

    invoke-static {p1, p2}, Lt4/j;->h(Lt4/f;Lt4/O;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_4

    :cond_8
    iget-boolean p4, v2, Lt4/n;->f:Z

    if-nez p4, :cond_9

    iget-object p4, p0, Lt4/j;->a:Lt4/C;

    invoke-virtual {p4, v2}, Lt4/C;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lt4/b;

    if-eqz p4, :cond_9

    invoke-virtual {p4}, Lt4/b;->e()Lt4/k;

    move-result-object p2

    :cond_9
    if-nez p2, :cond_a

    iget-object p2, v1, Lt4/o;->c:Lt4/p;

    invoke-virtual {p2}, Lt4/b;->d()Lt4/k;

    move-result-object p2

    :cond_a
    sget-object p4, Lt4/O;->h:Lt4/L;

    iget-object v0, v2, Lt4/n;->e:Lt4/O;

    const-string v5, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    const/16 v6, 0x40

    if-ne v0, p4, :cond_c

    iget p4, p1, Lt4/f;->i:I

    if-ge p4, v6, :cond_b

    add-int/2addr p4, v4

    iput p4, p1, Lt4/f;->i:I

    invoke-virtual {p2, p1, p3}, Lt4/k;->d(Lt4/f;Lt4/i;)Lt4/k;

    iget p3, v2, Lt4/n;->d:I

    shl-int/lit8 p3, p3, 0x3

    or-int/lit8 p3, p3, 0x4

    invoke-virtual {p1, p3}, Lt4/f;->a(I)V

    iget p3, p1, Lt4/f;->i:I

    sub-int/2addr p3, v4

    iput p3, p1, Lt4/f;->i:I

    goto :goto_3

    :cond_b
    new-instance p0, Lt4/s;

    invoke-direct {p0, v5}, Lt4/s;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_c
    invoke-virtual {p1}, Lt4/f;->k()I

    move-result p4

    iget v0, p1, Lt4/f;->i:I

    if-ge v0, v6, :cond_e

    invoke-virtual {p1, p4}, Lt4/f;->d(I)I

    move-result p4

    iget v0, p1, Lt4/f;->i:I

    add-int/2addr v0, v4

    iput v0, p1, Lt4/f;->i:I

    invoke-virtual {p2, p1, p3}, Lt4/k;->d(Lt4/f;Lt4/i;)Lt4/k;

    invoke-virtual {p1, v3}, Lt4/f;->a(I)V

    iget p3, p1, Lt4/f;->i:I

    sub-int/2addr p3, v4

    iput p3, p1, Lt4/f;->i:I

    invoke-virtual {p1, p4}, Lt4/f;->c(I)V

    :goto_3
    invoke-virtual {p2}, Lt4/k;->c()Lt4/b;

    move-result-object p1

    :goto_4
    iget-boolean p2, v2, Lt4/n;->f:Z

    if-eqz p2, :cond_d

    invoke-virtual {v1, p1}, Lt4/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lt4/j;->a(Lt4/n;Ljava/lang/Object;)V

    goto :goto_5

    :cond_d
    invoke-virtual {v1, p1}, Lt4/o;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v2, p1}, Lt4/j;->i(Lt4/n;Ljava/lang/Object;)V

    :goto_5
    return v4

    :cond_e
    new-instance p0, Lt4/s;

    invoke-direct {p0, v5}, Lt4/s;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    invoke-virtual {p1}, Lt4/f;->k()I

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    throw p2
.end method

.method public final o(Lt4/o;)V
    .locals 0

    iget-object p1, p1, Lt4/o;->a:Lt4/m;

    invoke-interface {p0}, Lt4/x;->a()Lt4/b;

    move-result-object p0

    if-ne p1, p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
