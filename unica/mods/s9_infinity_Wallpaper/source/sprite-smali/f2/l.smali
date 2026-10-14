.class public final Lf2/l;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[Ljava/lang/String;

.field public b:[J

.field public c:I

.field public d:J

.field public e:Z


# direct methods
.method public static a(J)Ljava/lang/String;
    .locals 5

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-wide/32 v1, 0xf4240

    div-long v3, p0, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    rem-long/2addr p0, v1

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d.%06dms"

    invoke-static {v0, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b()J
    .locals 6

    iget v0, p0, Lf2/l;->c:I

    const-wide/16 v1, -0x1

    if-nez v0, :cond_0

    return-wide v1

    :cond_0
    iget-object p0, p0, Lf2/l;->b:[J

    const/4 v3, 0x0

    aget-wide v3, p0, v3

    const/4 v5, 0x1

    if-ne v5, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    :goto_0
    sub-long/2addr v0, v3

    return-wide v0

    :cond_1
    if-le v0, v5, :cond_2

    sub-int/2addr v0, v5

    aget-wide v0, p0, v0

    goto :goto_0

    :cond_2
    return-wide v1
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-boolean v2, p0, Lf2/l;->e:Z

    if-nez v2, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string p1, "StopWatch"

    const-string v0, "mark: not started"

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1, v0, v1}, Lf2/l;->d(Ljava/lang/String;J)V

    return-void
.end method

.method public final d(Ljava/lang/String;J)V
    .locals 2

    iget v0, p0, Lf2/l;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lf2/l;->c:I

    const/16 v1, 0x64

    if-gt v1, v0, :cond_0

    iput v1, p0, Lf2/l;->c:I

    const-string p0, "StopWatch"

    const-string p1, "markInner: max reached"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lf2/l;->b:[J

    aput-wide p2, v1, v0

    iget-object p0, p0, Lf2/l;->a:[Ljava/lang/String;

    aput-object p1, p0, v0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 13

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "StopWatch[\ntotal= "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lf2/l;->b()J

    move-result-wide v3

    invoke-static {v3, v4}, Lf2/l;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lf2/l;->d:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    const-string v3, "\ntotal paused time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lf2/l;->d:J

    invoke-static {v3, v4}, Lf2/l;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\ntotal except paused time = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lf2/l;->b()J

    move-result-wide v3

    iget-wide v5, p0, Lf2/l;->d:J

    sub-long/2addr v3, v5

    invoke-static {v3, v4}, Lf2/l;->a(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v3, p0, Lf2/l;->c:I

    if-lez v3, :cond_2

    const-string v4, "\nintervals{"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lf2/l;->b:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget-object v4, p0, Lf2/l;->a:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "\n %%%dd (%%s -> %%s) %%s"

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    :goto_0
    add-int/lit8 v9, v3, -0x1

    if-ge v5, v9, :cond_1

    iget-object v9, p0, Lf2/l;->b:[J

    add-int/lit8 v10, v5, 0x1

    aget-wide v11, v9, v10

    iget-object v9, p0, Lf2/l;->a:[Ljava/lang/String;

    aget-object v9, v9, v10

    sub-long v6, v11, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v6, v7}, Lf2/l;->a(J)Ljava/lang/String;

    move-result-object v6

    filled-new-array {v5, v4, v9, v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v4, v9

    move v5, v10

    move-wide v6, v11

    goto :goto_0

    :cond_1
    const-string p0, "\n}"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    const-string p0, " prints took "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-static {v3, v4}, Lf2/l;->a(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
