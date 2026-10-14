.class public final Ln/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# instance fields
.field public d:I

.field public e:I

.field public f:Z

.field public final synthetic g:Ln/f;


# direct methods
.method public constructor <init>(Ln/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln/d;->g:Ln/f;

    iget p1, p1, Ln/j;->f:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Ln/d;->d:I

    const/4 p1, -0x1

    iput p1, p0, Ln/d;->e:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    iget-boolean v0, p0, Ln/d;->f:Z

    if-eqz v0, :cond_2

    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget v2, p0, Ln/d;->e:I

    iget-object v3, p0, Ln/d;->g:Ln/f;

    invoke-virtual {v3, v2}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    iget p0, p0, Ln/d;->e:I

    invoke-virtual {v3, p0}, Ln/j;->i(I)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getKey()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ln/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/d;->g:Ln/f;

    iget p0, p0, Ln/d;->e:I

    invoke-virtual {v0, p0}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ln/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/d;->g:Ln/f;

    iget p0, p0, Ln/d;->e:I

    invoke-virtual {v0, p0}, Ln/j;->i(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final hasNext()Z
    .locals 1

    iget v0, p0, Ln/d;->e:I

    iget p0, p0, Ln/d;->d:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-boolean v0, p0, Ln/d;->f:Z

    if-eqz v0, :cond_2

    iget v0, p0, Ln/d;->e:I

    iget-object v1, p0, Ln/d;->g:Ln/f;

    invoke-virtual {v1, v0}, Ln/j;->f(I)Ljava/lang/Object;

    move-result-object v0

    iget p0, p0, Ln/d;->e:I

    invoke-virtual {v1, p0}, Ln/j;->i(I)Ljava/lang/Object;

    move-result-object p0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    xor-int p0, v0, v1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    invoke-virtual {p0}, Ln/d;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Ln/d;->e:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Ln/d;->e:I

    iput-boolean v1, p0, Ln/d;->f:Z

    return-object p0

    :cond_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public final remove()V
    .locals 2

    iget-boolean v0, p0, Ln/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/d;->g:Ln/f;

    iget v1, p0, Ln/d;->e:I

    invoke-virtual {v0, v1}, Ln/j;->g(I)Ljava/lang/Object;

    iget v0, p0, Ln/d;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/d;->e:I

    iget v0, p0, Ln/d;->d:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ln/d;->d:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln/d;->f:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0
.end method

.method public final setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Ln/d;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Ln/d;->g:Ln/f;

    iget p0, p0, Ln/d;->e:I

    invoke-virtual {v0, p0, p1}, Ln/j;->h(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This container does not support retaining Map.Entry objects"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ln/d;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ln/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
