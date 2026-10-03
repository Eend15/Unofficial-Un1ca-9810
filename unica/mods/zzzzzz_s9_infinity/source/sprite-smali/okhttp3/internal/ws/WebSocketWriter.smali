.class public final Lokhttp3/internal/ws/WebSocketWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000X\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0015\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B7\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0006\u0010\t\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u001f\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0010H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\u00122\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0017\u0010\u0016J\u001f\u0010\u001a\u001a\u00020\u00122\u0006\u0010\u0018\u001a\u00020\u000e2\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0010\u00a2\u0006\u0004\u0008\u001a\u0010\u0014J\u001d\u0010\u001d\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u000e2\u0006\u0010\u001c\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u001d\u0010\u0014J\u000f\u0010\u001e\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u001e\u0010\u001fR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010 R\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010!\u001a\u0004\u0008\"\u0010#R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010$\u001a\u0004\u0008%\u0010&R\u0014\u0010\u0008\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010 R\u0014\u0010\t\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010 R\u0014\u0010\u000b\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\'R\u0014\u0010)\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008)\u0010*R\u0014\u0010+\u001a\u00020(8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008+\u0010*R\u0016\u0010,\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008,\u0010 R\u0018\u0010.\u001a\u0004\u0018\u00010-8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008.\u0010/R\u0016\u00101\u001a\u0004\u0018\u0001008\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00081\u00102R\u0016\u00104\u001a\u0004\u0018\u0001038\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00084\u00105\u00a8\u00066"
    }
    d2 = {
        "Lokhttp3/internal/ws/WebSocketWriter;",
        "Ljava/io/Closeable;",
        "",
        "isClient",
        "Le5/k;",
        "sink",
        "Ljava/util/Random;",
        "random",
        "perMessageDeflate",
        "noContextTakeover",
        "",
        "minimumDeflateSize",
        "<init>",
        "(ZLe5/k;Ljava/util/Random;ZZJ)V",
        "",
        "opcode",
        "Le5/m;",
        "payload",
        "Lq3/m;",
        "writeControlFrame",
        "(ILe5/m;)V",
        "writePing",
        "(Le5/m;)V",
        "writePong",
        "code",
        "reason",
        "writeClose",
        "formatOpcode",
        "data",
        "writeMessageFrame",
        "close",
        "()V",
        "Z",
        "Le5/k;",
        "getSink",
        "()Le5/k;",
        "Ljava/util/Random;",
        "getRandom",
        "()Ljava/util/Random;",
        "J",
        "Le5/j;",
        "messageBuffer",
        "Le5/j;",
        "sinkBuffer",
        "writerClosed",
        "Lokhttp3/internal/ws/MessageDeflater;",
        "messageDeflater",
        "Lokhttp3/internal/ws/MessageDeflater;",
        "",
        "maskKey",
        "[B",
        "Le5/g;",
        "maskCursor",
        "Le5/g;",
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


# instance fields
.field private final isClient:Z

.field private final maskCursor:Le5/g;

.field private final maskKey:[B

.field private final messageBuffer:Le5/j;

.field private messageDeflater:Lokhttp3/internal/ws/MessageDeflater;

.field private final minimumDeflateSize:J

.field private final noContextTakeover:Z

.field private final perMessageDeflate:Z

.field private final random:Ljava/util/Random;

.field private final sink:Le5/k;

.field private final sinkBuffer:Le5/j;

.field private writerClosed:Z


# direct methods
.method public constructor <init>(ZLe5/k;Ljava/util/Random;ZZJ)V
    .locals 1

    const-string v0, "sink"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "random"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Le5/k;

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iput-boolean p4, p0, Lokhttp3/internal/ws/WebSocketWriter;->perMessageDeflate:Z

    iput-boolean p5, p0, Lokhttp3/internal/ws/WebSocketWriter;->noContextTakeover:Z

    iput-wide p6, p0, Lokhttp3/internal/ws/WebSocketWriter;->minimumDeflateSize:J

    new-instance p3, Le5/j;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageBuffer:Le5/j;

    invoke-interface {p2}, Le5/k;->b()Le5/j;

    move-result-object p2

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    const/4 p3, 0x4

    new-array p3, p3, [B

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    iput-object p3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    if-eqz p1, :cond_1

    new-instance p2, Le5/g;

    invoke-direct {p2}, Le5/g;-><init>()V

    :cond_1
    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    return-void
.end method

.method private final writeControlFrame(ILe5/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_3

    invoke-virtual {p2}, Le5/m;->c()I

    move-result v0

    int-to-long v1, v0

    const-wide/16 v3, 0x7d

    cmp-long v1, v1, v3

    if-gtz v1, :cond_2

    or-int/lit16 p1, p1, 0x80

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v1, p1}, Le5/j;->j0(I)V

    iget-boolean p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz p1, :cond_0

    or-int/lit16 p1, v0, 0x80

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v1, p1}, Le5/j;->j0(I)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, v1}, Le5/j;->h0([B)V

    if-lez v0, :cond_1

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    iget-wide v0, p1, Le5/j;->e:J

    invoke-virtual {p1, p2}, Le5/j;->g0(Le5/m;)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    invoke-static {p2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Le5/j;->Z(Le5/g;)Le5/g;

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    invoke-virtual {p1, v0, v1}, Le5/g;->g(J)I

    sget-object p1, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {p1, p2, v0}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Le5/g;[B)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    invoke-virtual {p1}, Le5/g;->close()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {p1, v0}, Le5/j;->j0(I)V

    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {p1, p2}, Le5/j;->g0(Le5/m;)V

    :cond_1
    :goto_0
    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Le5/k;

    invoke-interface {p0}, Le5/k;->flush()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Payload size must be less than or equal to 125"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageDeflater:Lokhttp3/internal/ws/MessageDeflater;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lokhttp3/internal/ws/MessageDeflater;->close()V

    :goto_0
    return-void
.end method

.method public final getRandom()Ljava/util/Random;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    return-object p0
.end method

.method public final getSink()Le5/k;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Le5/k;

    return-object p0
.end method

.method public final writeClose(ILe5/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Le5/m;->g:Le5/m;

    if-nez p1, :cond_0

    if-eqz p2, :cond_3

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    invoke-virtual {v0, p1}, Lokhttp3/internal/ws/WebSocketProtocol;->validateCloseCode(I)V

    :cond_1
    new-instance v0, Le5/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Le5/j;->o0(I)V

    if-eqz p2, :cond_2

    invoke-virtual {v0, p2}, Le5/j;->g0(Le5/m;)V

    :cond_2
    iget-wide p1, v0, Le5/j;->e:J

    invoke-virtual {v0, p1, p2}, Le5/j;->o(J)Le5/m;

    move-result-object v0

    :cond_3
    const/16 p1, 0x8

    const/4 p2, 0x1

    :try_start_0
    invoke-direct {p0, p1, v0}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILe5/m;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    throw p1
.end method

.method public final writeMessageFrame(ILe5/m;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->writerClosed:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageBuffer:Le5/j;

    invoke-virtual {v0, p2}, Le5/j;->g0(Le5/m;)V

    or-int/lit16 v0, p1, 0x80

    iget-boolean v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->perMessageDeflate:Z

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Le5/m;->c()I

    move-result p2

    int-to-long v1, p2

    iget-wide v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->minimumDeflateSize:J

    cmp-long p2, v1, v3

    if-ltz p2, :cond_1

    iget-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageDeflater:Lokhttp3/internal/ws/MessageDeflater;

    if-nez p2, :cond_0

    new-instance p2, Lokhttp3/internal/ws/MessageDeflater;

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->noContextTakeover:Z

    invoke-direct {p2, v0}, Lokhttp3/internal/ws/MessageDeflater;-><init>(Z)V

    iput-object p2, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageDeflater:Lokhttp3/internal/ws/MessageDeflater;

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageBuffer:Le5/j;

    invoke-virtual {p2, v0}, Lokhttp3/internal/ws/MessageDeflater;->deflate(Le5/j;)V

    or-int/lit16 v0, p1, 0xc0

    :cond_1
    iget-object p1, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageBuffer:Le5/j;

    iget-wide p1, p1, Le5/j;->e:J

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v1, v0}, Le5/j;->j0(I)V

    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_2

    const/16 v0, 0x80

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    const-wide/16 v1, 0x7d

    cmp-long v1, p1, v1

    if-gtz v1, :cond_3

    long-to-int v1, p1

    or-int/2addr v0, v1

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v1, v0}, Le5/j;->j0(I)V

    goto :goto_1

    :cond_3
    const-wide/32 v1, 0xffff

    cmp-long v1, p1, v1

    if-gtz v1, :cond_4

    or-int/lit8 v0, v0, 0x7e

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v1, v0}, Le5/j;->j0(I)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    long-to-int v1, p1

    invoke-virtual {v0, v1}, Le5/j;->o0(I)V

    goto :goto_1

    :cond_4
    or-int/lit8 v0, v0, 0x7f

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v1, v0}, Le5/j;->j0(I)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    invoke-virtual {v0, p1, p2}, Le5/j;->n0(J)V

    :goto_1
    iget-boolean v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->isClient:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->random:Ljava/util/Random;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextBytes([B)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1}, Le5/j;->h0([B)V

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageBuffer:Le5/j;

    iget-object v3, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Le5/j;->Z(Le5/g;)Le5/g;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    invoke-virtual {v2, v0, v1}, Le5/g;->g(J)I

    sget-object v0, Lokhttp3/internal/ws/WebSocketProtocol;->INSTANCE:Lokhttp3/internal/ws/WebSocketProtocol;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    iget-object v2, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskKey:[B

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/ws/WebSocketProtocol;->toggleMask(Le5/g;[B)V

    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->maskCursor:Le5/g;

    invoke-virtual {v0}, Le5/g;->close()V

    :cond_5
    iget-object v0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sinkBuffer:Le5/j;

    iget-object v1, p0, Lokhttp3/internal/ws/WebSocketWriter;->messageBuffer:Le5/j;

    invoke-virtual {v0, v1, p1, p2}, Le5/j;->write(Le5/j;J)V

    iget-object p0, p0, Lokhttp3/internal/ws/WebSocketWriter;->sink:Le5/k;

    invoke-interface {p0}, Le5/k;->t()Le5/k;

    return-void

    :cond_6
    new-instance p0, Ljava/io/IOException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final writePing(Le5/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x9

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILe5/m;)V

    return-void
.end method

.method public final writePong(Le5/m;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "payload"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0xa

    invoke-direct {p0, v0, p1}, Lokhttp3/internal/ws/WebSocketWriter;->writeControlFrame(ILe5/m;)V

    return-void
.end method
