.class public final Le5/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/D;


# instance fields
.field public final d:Le5/l;

.field public final e:Le5/j;

.field public f:Le5/y;

.field public g:I

.field public h:Z

.field public i:J


# direct methods
.method public constructor <init>(Le5/l;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/v;->d:Le5/l;

    invoke-interface {p1}, Le5/l;->b()Le5/j;

    move-result-object p1

    iput-object p1, p0, Le5/v;->e:Le5/j;

    iget-object p1, p1, Le5/j;->d:Le5/y;

    iput-object p1, p0, Le5/v;->f:Le5/y;

    if-eqz p1, :cond_0

    iget p1, p1, Le5/y;->b:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Le5/v;->g:I

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Le5/v;->h:Z

    return-void
.end method

.method public final read(Le5/j;J)J
    .locals 8

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_6

    iget-boolean v3, p0, Le5/v;->h:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Le5/v;->f:Le5/y;

    iget-object v4, p0, Le5/v;->e:Le5/j;

    if-eqz v3, :cond_1

    iget-object v5, v4, Le5/j;->d:Le5/y;

    if-ne v3, v5, :cond_0

    iget v3, p0, Le5/v;->g:I

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    iget v5, v5, Le5/y;->b:I

    if-ne v3, v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Peek source is invalid because upstream source was used"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-nez v2, :cond_2

    return-wide v0

    :cond_2
    iget-wide v0, p0, Le5/v;->i:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iget-object v2, p0, Le5/v;->d:Le5/l;

    invoke-interface {v2, v0, v1}, Le5/l;->x(J)Z

    move-result v0

    if-nez v0, :cond_3

    const-wide/16 p0, -0x1

    return-wide p0

    :cond_3
    iget-object v0, p0, Le5/v;->f:Le5/y;

    if-nez v0, :cond_4

    iget-object v0, v4, Le5/j;->d:Le5/y;

    if-eqz v0, :cond_4

    iput-object v0, p0, Le5/v;->f:Le5/y;

    iget v0, v0, Le5/y;->b:I

    iput v0, p0, Le5/v;->g:I

    :cond_4
    iget-wide v0, v4, Le5/j;->e:J

    iget-wide v2, p0, Le5/v;->i:J

    sub-long/2addr v0, v2

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iget-object v2, p0, Le5/v;->e:Le5/j;

    iget-wide v3, p0, Le5/v;->i:J

    move-object v5, p1

    move-wide v6, p2

    invoke-virtual/range {v2 .. v7}, Le5/j;->j(JLe5/j;J)V

    iget-wide v0, p0, Le5/v;->i:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Le5/v;->i:J

    return-wide p2

    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    const-string p0, "byteCount < 0: "

    invoke-static {p0, p2, p3}, Li4/b;->f(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final timeout()Le5/G;
    .locals 0

    iget-object p0, p0, Le5/v;->d:Le5/l;

    invoke-interface {p0}, Le5/D;->timeout()Le5/G;

    move-result-object p0

    return-object p0
.end method
