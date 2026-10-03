.class public final Lokhttp3/MultipartReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartReader$PartSource;,
        Lokhttp3/MultipartReader$Part;,
        Lokhttp3/MultipartReader$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u0000 &2\u00020\u0001:\u0003&\'(B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007B\u0011\u0008\u0016\u0012\u0006\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u0006\u0010\nJ\u0017\u0010\r\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0010\u001a\u0004\u0018\u00010\u000f\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u000f\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0014R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0015R\u0017\u0010\u0005\u001a\u00020\u00048\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\u0016\u001a\u0004\u0008\u0005\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0019\u0010\u001aR\u0014\u0010\u001b\u001a\u00020\u00188\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001c8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001d\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010!R\u001c\u0010$\u001a\u0008\u0018\u00010#R\u00020\u00008\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006)"
    }
    d2 = {
        "Lokhttp3/MultipartReader;",
        "Ljava/io/Closeable;",
        "Le5/l;",
        "source",
        "",
        "boundary",
        "<init>",
        "(Le5/l;Ljava/lang/String;)V",
        "Lokhttp3/ResponseBody;",
        "response",
        "(Lokhttp3/ResponseBody;)V",
        "",
        "maxResult",
        "currentPartBytesRemaining",
        "(J)J",
        "Lokhttp3/MultipartReader$Part;",
        "nextPart",
        "()Lokhttp3/MultipartReader$Part;",
        "Lq3/m;",
        "close",
        "()V",
        "Le5/l;",
        "Ljava/lang/String;",
        "()Ljava/lang/String;",
        "Le5/m;",
        "dashDashBoundary",
        "Le5/m;",
        "crlfDashDashBoundary",
        "",
        "partCount",
        "I",
        "",
        "closed",
        "Z",
        "noMoreParts",
        "Lokhttp3/MultipartReader$PartSource;",
        "currentPart",
        "Lokhttp3/MultipartReader$PartSource;",
        "Companion",
        "Part",
        "PartSource",
        "okhttp"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lokhttp3/MultipartReader$Companion;

.field private static final afterBoundaryOptions:Le5/u;


# instance fields
.field private final boundary:Ljava/lang/String;

.field private closed:Z

.field private final crlfDashDashBoundary:Le5/m;

.field private currentPart:Lokhttp3/MultipartReader$PartSource;

.field private final dashDashBoundary:Le5/m;

.field private noMoreParts:Z

.field private partCount:I

.field private final source:Le5/l;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lokhttp3/MultipartReader$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartReader$Companion;-><init>(LF3/f;)V

    sput-object v0, Lokhttp3/MultipartReader;->Companion:Lokhttp3/MultipartReader$Companion;

    sget-object v0, Le5/m;->g:Le5/m;

    const-string v0, "\r\n"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    const-string v1, "--"

    invoke-static {v1}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v1

    const-string v2, " "

    invoke-static {v2}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v2

    const-string v3, "\t"

    invoke-static {v3}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Le5/m;

    move-result-object v0

    invoke-static {v0}, Le5/I;->g([Le5/m;)Le5/u;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Le5/u;

    return-void
.end method

.method public constructor <init>(Le5/l;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "boundary"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    .line 3
    iput-object p2, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    .line 4
    new-instance p1, Le5/j;

    .line 5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 6
    const-string v0, "--"

    invoke-virtual {p1, v0}, Le5/j;->r0(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1, p2}, Le5/j;->r0(Ljava/lang/String;)V

    .line 8
    iget-wide v0, p1, Le5/j;->e:J

    .line 9
    invoke-virtual {p1, v0, v1}, Le5/j;->o(J)Le5/m;

    move-result-object p1

    .line 10
    iput-object p1, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Le5/m;

    .line 11
    new-instance p1, Le5/j;

    .line 12
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 13
    const-string v0, "\r\n--"

    invoke-virtual {p1, v0}, Le5/j;->r0(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1, p2}, Le5/j;->r0(Ljava/lang/String;)V

    .line 15
    iget-wide v0, p1, Le5/j;->e:J

    .line 16
    invoke-virtual {p1, v0, v1}, Le5/j;->o(J)Le5/m;

    move-result-object p1

    .line 17
    iput-object p1, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Le5/m;

    return-void
.end method

.method public constructor <init>(Lokhttp3/ResponseBody;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Le5/l;

    move-result-object v0

    .line 19
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v1, "boundary"

    invoke-virtual {p1, v1}, Lokhttp3/MediaType;->parameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 20
    invoke-direct {p0, v0, p1}, Lokhttp3/MultipartReader;-><init>(Le5/l;Ljava/lang/String;)V

    return-void

    .line 21
    :cond_1
    new-instance p0, Ljava/net/ProtocolException;

    const-string p1, "expected the Content-Type to have a boundary parameter"

    invoke-direct {p0, p1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final synthetic access$currentPartBytesRemaining(Lokhttp3/MultipartReader;J)J
    .locals 0

    invoke-direct {p0, p1, p2}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic access$getAfterBoundaryOptions$cp()Le5/u;
    .locals 1

    sget-object v0, Lokhttp3/MultipartReader;->afterBoundaryOptions:Le5/u;

    return-object v0
.end method

.method public static final synthetic access$getCurrentPart$p(Lokhttp3/MultipartReader;)Lokhttp3/MultipartReader$PartSource;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    return-object p0
.end method

.method public static final synthetic access$getSource$p(Lokhttp3/MultipartReader;)Le5/l;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    return-object p0
.end method

.method public static final synthetic access$setCurrentPart$p(Lokhttp3/MultipartReader;Lokhttp3/MultipartReader$PartSource;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    return-void
.end method

.method private final currentPartBytesRemaining(J)J
    .locals 20

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Le5/l;

    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Le5/m;

    invoke-virtual {v4}, Le5/m;->c()I

    move-result v4

    int-to-long v4, v4

    invoke-interface {v3, v4, v5}, Le5/l;->J(J)V

    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Le5/l;

    invoke-interface {v3}, Le5/l;->b()Le5/j;

    move-result-object v3

    iget-object v4, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Le5/m;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "bytes"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Le5/m;->c()I

    move-result v5

    if-lez v5, :cond_a

    iget-object v5, v3, Le5/j;->d:Le5/y;

    const-wide/16 v6, 0x1

    if-nez v5, :cond_1

    :cond_0
    const-wide/16 v3, -0x1

    :goto_0
    const-wide/16 v5, -0x1

    goto/16 :goto_7

    :cond_1
    iget-wide v10, v3, Le5/j;->e:J

    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    const/4 v15, 0x0

    if-gez v14, :cond_5

    :goto_1
    cmp-long v14, v10, v12

    if-lez v14, :cond_2

    iget-object v5, v5, Le5/y;->g:Le5/y;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    iget v14, v5, Le5/y;->c:I

    iget v8, v5, Le5/y;->b:I

    sub-int/2addr v14, v8

    int-to-long v8, v14

    sub-long/2addr v10, v8

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Le5/m;->e()[B

    move-result-object v8

    aget-byte v9, v8, v15

    invoke-virtual {v4}, Le5/m;->c()I

    move-result v4

    iget-wide v14, v3, Le5/j;->e:J

    int-to-long v12, v4

    sub-long/2addr v14, v12

    add-long/2addr v14, v6

    const-wide/16 v12, 0x0

    :goto_2
    cmp-long v3, v10, v14

    if-gez v3, :cond_0

    iget v3, v5, Le5/y;->c:I

    iget v6, v5, Le5/y;->b:I

    int-to-long v6, v6

    add-long/2addr v6, v14

    sub-long/2addr v6, v10

    move-wide/from16 v18, v14

    int-to-long v14, v3

    invoke-static {v14, v15, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v3, v6

    iget v6, v5, Le5/y;->b:I

    int-to-long v6, v6

    add-long/2addr v6, v12

    sub-long/2addr v6, v10

    long-to-int v6, v6

    :goto_3
    if-ge v6, v3, :cond_4

    iget-object v7, v5, Le5/y;->a:[B

    aget-byte v7, v7, v6

    if-ne v7, v9, :cond_3

    add-int/lit8 v7, v6, 0x1

    invoke-static {v5, v7, v8, v4}, Lf5/a;->a(Le5/y;I[BI)Z

    move-result v7

    if-eqz v7, :cond_3

    iget v3, v5, Le5/y;->b:I

    sub-int/2addr v6, v3

    int-to-long v3, v6

    add-long/2addr v3, v10

    goto :goto_0

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    iget v3, v5, Le5/y;->c:I

    iget v6, v5, Le5/y;->b:I

    sub-int/2addr v3, v6

    int-to-long v6, v3

    add-long v12, v10, v6

    iget-object v5, v5, Le5/y;->f:Le5/y;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    move-wide v10, v12

    move-wide/from16 v14, v18

    const-wide/16 v6, 0x1

    goto :goto_2

    :cond_5
    const-wide/16 v6, 0x0

    :goto_4
    iget v8, v5, Le5/y;->c:I

    iget v9, v5, Le5/y;->b:I

    sub-int/2addr v8, v9

    int-to-long v8, v8

    add-long/2addr v8, v6

    const-wide/16 v10, 0x0

    cmp-long v12, v8, v10

    if-gtz v12, :cond_6

    iget-object v5, v5, Le5/y;->f:Le5/y;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    move-wide v6, v8

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Le5/m;->e()[B

    move-result-object v8

    aget-byte v9, v8, v15

    invoke-virtual {v4}, Le5/m;->c()I

    move-result v4

    iget-wide v12, v3, Le5/j;->e:J

    int-to-long v14, v4

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    :goto_5
    cmp-long v3, v6, v12

    if-gez v3, :cond_0

    iget v3, v5, Le5/y;->c:I

    iget v14, v5, Le5/y;->b:I

    int-to-long v14, v14

    add-long/2addr v14, v12

    sub-long/2addr v14, v6

    move-wide/from16 v16, v12

    int-to-long v12, v3

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v12

    long-to-int v3, v12

    iget v12, v5, Le5/y;->b:I

    int-to-long v12, v12

    add-long/2addr v12, v10

    sub-long/2addr v12, v6

    long-to-int v10, v12

    :goto_6
    if-ge v10, v3, :cond_8

    iget-object v11, v5, Le5/y;->a:[B

    aget-byte v11, v11, v10

    if-ne v11, v9, :cond_7

    add-int/lit8 v11, v10, 0x1

    invoke-static {v5, v11, v8, v4}, Lf5/a;->a(Le5/y;I[BI)Z

    move-result v11

    if-eqz v11, :cond_7

    iget v3, v5, Le5/y;->b:I

    sub-int/2addr v10, v3

    int-to-long v3, v10

    add-long/2addr v3, v6

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_8
    iget v3, v5, Le5/y;->c:I

    iget v10, v5, Le5/y;->b:I

    sub-int/2addr v3, v10

    int-to-long v10, v3

    add-long/2addr v10, v6

    iget-object v5, v5, Le5/y;->f:Le5/y;

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    move-wide v6, v10

    move-wide/from16 v12, v16

    goto :goto_5

    :goto_7
    cmp-long v5, v3, v5

    if-nez v5, :cond_9

    iget-object v3, v0, Lokhttp3/MultipartReader;->source:Le5/l;

    invoke-interface {v3}, Le5/l;->b()Le5/j;

    move-result-object v3

    iget-wide v3, v3, Le5/j;->e:J

    iget-object v0, v0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Le5/m;

    invoke-virtual {v0}, Le5/m;->c()I

    move-result v0

    int-to-long v5, v0

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    goto :goto_8

    :cond_9
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_8
    return-wide v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bytes is empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final boundary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartReader;->boundary:Ljava/lang/String;

    return-object p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    iget-object p0, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    invoke-interface {p0}, Ljava/io/Closeable;->close()V

    return-void
.end method

.method public final nextPart()Lokhttp3/MultipartReader$Part;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/MultipartReader;->closed:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    iget-object v4, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Le5/m;

    invoke-interface {v0, v2, v3, v4}, Le5/l;->i(JLe5/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    iget-object v2, p0, Lokhttp3/MultipartReader;->dashDashBoundary:Le5/m;

    invoke-virtual {v2}, Le5/m;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Le5/l;->r(J)V

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/16 v4, 0x2000

    invoke-direct {p0, v4, v5}, Lokhttp3/MultipartReader;->currentPartBytesRemaining(J)J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-nez v0, :cond_8

    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    iget-object v2, p0, Lokhttp3/MultipartReader;->crlfDashDashBoundary:Le5/m;

    invoke-virtual {v2}, Le5/m;->c()I

    move-result v2

    int-to-long v2, v2

    invoke-interface {v0, v2, v3}, Le5/l;->r(J)V

    :goto_1
    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    sget-object v3, Lokhttp3/MultipartReader;->afterBoundaryOptions:Le5/u;

    invoke-interface {v2, v3}, Le5/l;->v(Le5/u;)I

    move-result v2

    const/4 v3, -0x1

    const-string v4, "unexpected characters after boundary"

    if-eq v2, v3, :cond_7

    const/4 v3, 0x1

    if-eqz v2, :cond_6

    if-eq v2, v3, :cond_3

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    const/4 v4, 0x3

    if-eq v2, v4, :cond_2

    goto :goto_2

    :cond_2
    move v0, v3

    goto :goto_2

    :cond_3
    if-nez v0, :cond_5

    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    if-eqz v0, :cond_4

    iput-boolean v3, p0, Lokhttp3/MultipartReader;->noMoreParts:Z

    return-object v1

    :cond_4
    new-instance p0, Ljava/net/ProtocolException;

    const-string v0, "expected at least 1 part"

    invoke-direct {p0, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    iget v0, p0, Lokhttp3/MultipartReader;->partCount:I

    add-int/2addr v0, v3

    iput v0, p0, Lokhttp3/MultipartReader;->partCount:I

    new-instance v0, Lokhttp3/internal/http1/HeadersReader;

    iget-object v1, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    invoke-direct {v0, v1}, Lokhttp3/internal/http1/HeadersReader;-><init>(Le5/l;)V

    invoke-virtual {v0}, Lokhttp3/internal/http1/HeadersReader;->readHeaders()Lokhttp3/Headers;

    move-result-object v0

    new-instance v1, Lokhttp3/MultipartReader$PartSource;

    invoke-direct {v1, p0}, Lokhttp3/MultipartReader$PartSource;-><init>(Lokhttp3/MultipartReader;)V

    iput-object v1, p0, Lokhttp3/MultipartReader;->currentPart:Lokhttp3/MultipartReader$PartSource;

    new-instance p0, Lokhttp3/MultipartReader$Part;

    invoke-static {v1}, Le5/I;->c(Le5/D;)Le5/x;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartReader$Part;-><init>(Lokhttp3/Headers;Le5/l;)V

    return-object p0

    :cond_7
    new-instance p0, Ljava/net/ProtocolException;

    invoke-direct {p0, v4}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object v0, p0, Lokhttp3/MultipartReader;->source:Le5/l;

    invoke-interface {v0, v4, v5}, Le5/l;->r(J)V

    goto :goto_0

    :cond_9
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
