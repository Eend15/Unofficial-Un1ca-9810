.class public final Le5/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/k;


# instance fields
.field public final d:Le5/B;

.field public final e:Le5/j;

.field public f:Z


# direct methods
.method public constructor <init>(Le5/B;)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/w;->d:Le5/B;

    new-instance p1, Le5/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/w;->e:Le5/j;

    return-void
.end method


# virtual methods
.method public final A(I)Le5/k;
    .locals 1

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1}, Le5/j;->m0(I)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final L(Ljava/lang/String;)Le5/k;
    .locals 1

    const-string v0, "string"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1}, Le5/j;->r0(Ljava/lang/String;)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final M(Le5/D;)J
    .locals 6

    const-wide/16 v0, 0x0

    :goto_0
    iget-object v2, p0, Le5/w;->e:Le5/j;

    const-wide/16 v3, 0x2000

    move-object v5, p1

    check-cast v5, Le5/d;

    invoke-virtual {v5, v2, v3, v4}, Le5/d;->read(Le5/j;J)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_0

    add-long/2addr v0, v2

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public final N(J)Le5/k;
    .locals 1

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1, p2}, Le5/j;->k0(J)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final Q(I)Le5/k;
    .locals 1

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1}, Le5/j;->j0(I)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final U(Le5/m;)Le5/k;
    .locals 1

    const-string v0, "byteString"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1}, Le5/j;->g0(Le5/m;)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b()Le5/j;
    .locals 0

    iget-object p0, p0, Le5/w;->e:Le5/j;

    return-object p0
.end method

.method public final c([B)Le5/k;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1}, Le5/j;->h0([B)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 6

    iget-object v0, p0, Le5/w;->d:Le5/B;

    iget-boolean v1, p0, Le5/w;->f:Z

    if-nez v1, :cond_3

    :try_start_0
    iget-object v1, p0, Le5/w;->e:Le5/j;

    iget-wide v2, v1, Le5/j;->e:J

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    invoke-interface {v0, v1, v2, v3}, Le5/B;->write(Le5/j;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    :goto_0
    :try_start_1
    invoke-interface {v0}, Le5/B;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    if-nez v1, :cond_1

    move-object v1, v0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Le5/w;->f:Z

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    throw v1

    :cond_3
    :goto_2
    return-void
.end method

.method public final d([BII)Le5/k;
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1, p2, p3}, Le5/j;->i0([BII)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final flush()V
    .locals 5

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le5/w;->e:Le5/j;

    iget-wide v1, v0, Le5/j;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    iget-object p0, p0, Le5/w;->d:Le5/B;

    if-lez v3, :cond_0

    invoke-interface {p0, v0, v1, v2}, Le5/B;->write(Le5/j;J)V

    :cond_0
    invoke-interface {p0}, Le5/B;->flush()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final isOpen()Z
    .locals 0

    iget-boolean p0, p0, Le5/w;->f:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final k()Le5/k;
    .locals 5

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0}, Le5/j;->h()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Le5/w;->d:Le5/B;

    invoke-interface {v3, v0, v1, v2}, Le5/B;->write(Le5/j;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l(J)Le5/k;
    .locals 1

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1, p2}, Le5/j;->l0(J)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final t()Le5/k;
    .locals 5

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Le5/w;->e:Le5/j;

    iget-wide v1, v0, Le5/j;->e:J

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    iget-object v3, p0, Le5/w;->d:Le5/B;

    invoke-interface {v3, v0, v1, v2}, Le5/B;->write(Le5/j;J)V

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final timeout()Le5/G;
    .locals 0

    iget-object p0, p0, Le5/w;->d:Le5/B;

    invoke-interface {p0}, Le5/B;->timeout()Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "buffer("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Le5/w;->d:Le5/B;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final w(I)Le5/k;
    .locals 1

    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Le5/w;->e:Le5/j;

    invoke-virtual {v0, p1}, Le5/j;->o0(I)V

    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le5/w;->e:Le5/j;

    .line 3
    invoke-virtual {v0, p1}, Le5/j;->write(Ljava/nio/ByteBuffer;)I

    move-result p1

    .line 4
    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return p1

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final write(Le5/j;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-boolean v0, p0, Le5/w;->f:Z

    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Le5/w;->e:Le5/j;

    .line 8
    invoke-virtual {v0, p1, p2, p3}, Le5/j;->write(Le5/j;J)V

    .line 9
    invoke-virtual {p0}, Le5/w;->k()Le5/k;

    return-void

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
