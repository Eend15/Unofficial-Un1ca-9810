.class public final Lr3/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/ListIterator;
.implements LG3/a;


# instance fields
.field public final d:Ljava/util/ListIterator;

.field public final synthetic e:Lr3/x;


# direct methods
.method public constructor <init>(Lr3/x;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/w;->e:Lr3/x;

    iget-object v0, p1, Lr3/x;->d:Ljava/util/ArrayList;

    invoke-static {p1, p2}, Lr3/j;->n0(Lr3/x;I)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lr3/w;->d:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->add(Ljava/lang/Object;)V

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    return-void
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final nextIndex()I
    .locals 1

    iget-object v0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->previousIndex()I

    move-result v0

    iget-object p0, p0, Lr3/w;->e:Lr3/x;

    invoke-static {p0}, Lr3/k;->c0(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public final previous()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final previousIndex()I
    .locals 1

    iget-object v0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    iget-object p0, p0, Lr3/w;->e:Lr3/x;

    invoke-static {p0}, Lr3/k;->c0(Ljava/util/List;)I

    move-result p0

    sub-int/2addr p0, v0

    return p0
.end method

.method public final remove()V
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0}, Ljava/util/ListIterator;->remove()V

    return-void
.end method

.method public final set(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lr3/w;->d:Ljava/util/ListIterator;

    invoke-interface {p0, p1}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    return-void
.end method
