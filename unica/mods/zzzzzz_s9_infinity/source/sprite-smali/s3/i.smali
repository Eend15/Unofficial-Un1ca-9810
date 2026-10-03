.class public final Ls3/i;
.super Lr3/e;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final e:Ls3/i;


# instance fields
.field public final d:Ls3/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ls3/i;

    sget-object v1, Ls3/f;->q:Ls3/f;

    sget-object v1, Ls3/f;->q:Ls3/f;

    invoke-direct {v0, v1}, Ls3/i;-><init>(Ls3/f;)V

    sput-object v0, Ls3/i;->e:Ls3/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    new-instance v0, Ls3/f;

    invoke-direct {v0}, Ls3/f;-><init>()V

    invoke-direct {p0, v0}, Ls3/i;-><init>(Ls3/f;)V

    return-void
.end method

.method public constructor <init>(Ls3/f;)V
    .locals 1

    const-string v0, "backing"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lr3/e;-><init>()V

    .line 2
    iput-object p1, p0, Ls3/i;->d:Ls3/f;

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {p0, p1}, Ls3/f;->b(Ljava/lang/Object;)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final addAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final clear()V
    .locals 0

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->clear()V

    return-void
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {p0, p1}, Ls3/f;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final g()I
    .locals 0

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

    iget p0, p0, Ls3/f;->l:I

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {p0}, Ls3/f;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final iterator()Ljava/util/Iterator;
    .locals 2

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ls3/d;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ls3/d;-><init>(Ls3/f;I)V

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Ls3/i;->d:Ls3/f;

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
.end method

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 1

    const-string v0, "elements"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Ls3/i;->d:Ls3/f;

    invoke-virtual {v0}, Ls3/f;->d()V

    invoke-super {p0, p1}, Ljava/util/AbstractCollection;->retainAll(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method
