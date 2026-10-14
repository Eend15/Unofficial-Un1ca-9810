.class public final Le5/h;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Le5/l;


# direct methods
.method public synthetic constructor <init>(Le5/l;I)V
    .locals 0

    iput p2, p0, Le5/h;->d:I

    iput-object p1, p0, Le5/h;->e:Le5/l;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    return-void
.end method

.method private final a()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final available()I
    .locals 4

    iget v0, p0, Le5/h;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/x;

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Le5/x;->e:Le5/j;

    iget-wide v0, p0, Le5/j;->e:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/j;

    iget-wide v0, p0, Le5/j;->e:J

    const p0, 0x7fffffff

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final close()V
    .locals 1

    iget v0, p0, Le5/h;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/x;

    invoke-virtual {p0}, Le5/x;->close()V

    :pswitch_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read()I
    .locals 5

    iget v0, p0, Le5/h;->d:I

    packed-switch v0, :pswitch_data_0

    .line 1
    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/x;

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Le5/x;->e:Le5/j;

    .line 3
    iget-wide v1, v0, Le5/j;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 4
    iget-object p0, p0, Le5/x;->d:Le5/D;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Le5/D;->read(Le5/j;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Le5/j;->V()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    :goto_0
    return p0

    .line 6
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :pswitch_0
    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/j;

    iget-wide v0, p0, Le5/j;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 8
    invoke-virtual {p0}, Le5/j;->V()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final read([BII)I
    .locals 7

    iget v0, p0, Le5/h;->d:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "data"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/x;

    iget-boolean v0, p0, Le5/x;->f:Z

    if-nez v0, :cond_1

    .line 10
    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Le5/I;->e(JJJ)V

    .line 11
    iget-object v0, p0, Le5/x;->e:Le5/j;

    .line 12
    iget-wide v1, v0, Le5/j;->e:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 13
    iget-object p0, p0, Le5/x;->d:Le5/D;

    const-wide/16 v1, 0x2000

    invoke-interface {p0, v0, v1, v2}, Le5/D;->read(Le5/j;J)J

    move-result-wide v1

    const-wide/16 v3, -0x1

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Le5/j;->Y([BII)I

    move-result p0

    :goto_0
    return p0

    .line 15
    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :pswitch_0
    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/j;

    invoke-virtual {p0, p1, p2, p3}, Le5/j;->Y([BII)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Le5/h;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/x;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le5/h;->e:Le5/l;

    check-cast p0, Le5/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".inputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
