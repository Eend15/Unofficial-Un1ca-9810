.class public final Ls3/g;
.super Lr3/e;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final e:Ls3/f;


# direct methods
.method public constructor <init>(Ls3/f;I)V
    .locals 0

    iput p2, p0, Ls3/g;->d:I

    packed-switch p2, :pswitch_data_0

    const-string p2, "backing"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr3/e;-><init>()V

    iput-object p1, p0, Ls3/g;->e:Ls3/f;

    return-void

    :pswitch_0
    const-string p2, "backing"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lr3/e;-><init>()V

    iput-object p1, p0, Ls3/g;->e:Ls3/f;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Ls3/g;->d:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    check-cast p1, Ljava/util/Map$Entry;

    const-string p0, "element"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 0

    iget p0, p0, Ls3/g;->d:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "elements"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    :pswitch_0
    const-string p0, "elements"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final clear()V
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->clear()V

    return-void

    :pswitch_0
    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->clear()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0, p1}, Ls3/f;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0, p1}, Ls3/f;->h(Ljava/util/Map$Entry;)Z

    move-result p0

    :goto_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0, p1}, Ls3/f;->g(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final g()I
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    iget p0, p0, Ls3/f;->l:I

    return p0

    :pswitch_0
    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    iget p0, p0, Ls3/f;->l:I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final isEmpty()Z
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->isEmpty()Z

    move-result p0

    return p0

    :pswitch_0
    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->isEmpty()Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls3/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ls3/d;-><init>(Ls3/f;I)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls3/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ls3/d;-><init>(Ls3/f;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 3

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->d()V

    invoke-virtual {p0, p1}, Ls3/f;->j(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ls3/f;->n(I)V

    const/4 p0, 0x1

    :goto_0
    return p0

    :pswitch_0
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    check-cast p1, Ljava/util/Map$Entry;

    const-string v0, "element"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ls3/f;->d()V

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ls3/f;->j(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Ls3/f;->e:[Ljava/lang/Object;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    aget-object v2, v2, v0

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Ls3/f;->n(I)V

    const/4 v1, 0x1

    :goto_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    iget v0, p0, Ls3/g;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    :pswitch_0
    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/g;->e:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
