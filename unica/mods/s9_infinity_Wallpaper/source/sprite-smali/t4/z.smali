.class public final Lt4/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public final d:Ljava/util/Stack;

.field public e:Lt4/w;


# direct methods
.method public constructor <init>(Lt4/e;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lt4/z;->d:Ljava/util/Stack;

    :goto_0
    instance-of v0, p1, Lt4/B;

    if-eqz v0, :cond_0

    check-cast p1, Lt4/B;

    iget-object v0, p0, Lt4/z;->d:Ljava/util/Stack;

    invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p1, Lt4/B;->f:Lt4/e;

    goto :goto_0

    :cond_0
    check-cast p1, Lt4/w;

    iput-object p1, p0, Lt4/z;->e:Lt4/w;

    return-void
.end method


# virtual methods
.method public final a()Lt4/w;
    .locals 4

    iget-object v0, p0, Lt4/z;->e:Lt4/w;

    if-eqz v0, :cond_3

    :goto_0
    iget-object v1, p0, Lt4/z;->d:Ljava/util/Stack;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v1}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/B;

    iget-object v2, v2, Lt4/B;->g:Lt4/e;

    :goto_1
    instance-of v3, v2, Lt4/B;

    if-eqz v3, :cond_1

    check-cast v2, Lt4/B;

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v2, Lt4/B;->f:Lt4/e;

    goto :goto_1

    :cond_1
    move-object v1, v2

    check-cast v1, Lt4/w;

    iget-object v2, v1, Lt4/w;->e:[B

    array-length v2, v2

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    :goto_2
    iput-object v1, p0, Lt4/z;->e:Lt4/w;

    return-object v0

    :cond_3
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lt4/z;->e:Lt4/w;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final bridge synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lt4/z;->a()Lt4/w;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
