.class public final Ln/f;
.super Ln/j;
.source "SourceFile"

# interfaces
.implements Ljava/util/Map;


# instance fields
.field public g:Ln/a;

.field public h:Ln/c;

.field public i:Ln/e;


# direct methods
.method public constructor <init>(Ln/j;)V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ln/j;-><init>(I)V

    iget v1, p1, Ln/j;->f:I

    iget v2, p0, Ln/j;->f:I

    add-int/2addr v2, v1

    invoke-virtual {p0, v2}, Ln/j;->b(I)V

    iget v2, p0, Ln/j;->f:I

    if-nez v2, :cond_0

    if-lez v1, :cond_1

    iget-object v2, p1, Ln/j;->d:[I

    iget-object v3, p0, Ln/j;->d:[I

    invoke-static {v0, v0, v1, v2, v3}, Lr3/h;->f0(III[I[I)V

    iget-object p1, p1, Ln/j;->e:[Ljava/lang/Object;

    iget-object v2, p0, Ln/j;->e:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    invoke-static {p1, v2, v0, v0, v3}, Lr3/h;->g0([Ljava/lang/Object;[Ljava/lang/Object;III)V

    iput v1, p0, Ln/j;->f:I

    goto :goto_1

    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v0}, Ln/j;->i(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public final entrySet()Ljava/util/Set;
    .locals 2

    iget-object v0, p0, Ln/f;->g:Ln/a;

    if-nez v0, :cond_0

    new-instance v0, Ln/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ln/a;-><init>(Ljava/util/Map;I)V

    iput-object v0, p0, Ln/f;->g:Ln/a;

    :cond_0
    return-object v0
.end method

.method public final j(Ljava/util/Collection;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    invoke-super {p0, v0}, Ln/j;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public final k(Ljava/util/Collection;)Z
    .locals 2

    iget v0, p0, Ln/j;->f:I

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-super {p0, v1}, Ln/j;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget p0, p0, Ln/j;->f:I

    if-eq v0, p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Ln/f;->h:Ln/c;

    if-nez v0, :cond_0

    new-instance v0, Ln/c;

    invoke-direct {v0, p0}, Ln/c;-><init>(Ln/f;)V

    iput-object v0, p0, Ln/f;->h:Ln/c;

    :cond_0
    return-object v0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2

    iget v0, p0, Ln/j;->f:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Ln/j;->b(I)V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Ln/j;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final values()Ljava/util/Collection;
    .locals 1

    iget-object v0, p0, Ln/f;->i:Ln/e;

    if-nez v0, :cond_0

    new-instance v0, Ln/e;

    invoke-direct {v0, p0}, Ln/e;-><init>(Ln/f;)V

    iput-object v0, p0, Ln/f;->i:Ln/e;

    :cond_0
    return-object v0
.end method
