.class public final Lokhttp3/internal/cache2/Relay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/internal/cache2/Relay$RelaySource;,
        Lokhttp3/internal/cache2/Relay$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0017\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\n\u0018\u0000 E2\u00020\u0001:\u0002EFB5\u0008\u0002\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\'\u0010\u0011\u001a\u00020\u00102\u0006\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0017\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\u0013\u0010\u0014J\u0015\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u000e\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0015\u0010\u0014J\r\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\t\u0010\u0016J\u000f\u0010\u0017\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0017\u0010\u0018R$\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0003\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR$\u0010\u0005\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u001e\u001a\u0004\u0008\u001f\u0010\u0018\"\u0004\u0008 \u0010!R\"\u0010\u0007\u001a\u00020\u00068\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010\u0014R\u0014\u0010\t\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010&R\u0017\u0010\n\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\"\u001a\u0004\u0008\'\u0010$R$\u0010)\u001a\u0004\u0018\u00010(8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008)\u0010*\u001a\u0004\u0008+\u0010,\"\u0004\u0008-\u0010.R\u0017\u00100\u001a\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u00080\u00101\u001a\u0004\u00082\u00103R\"\u00105\u001a\u0002048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u00085\u00106\u001a\u0004\u00087\u00108\"\u0004\u00089\u0010:R\u0017\u0010;\u001a\u00020/8\u0006\u00a2\u0006\u000c\n\u0004\u0008;\u00101\u001a\u0004\u0008<\u00103R\"\u0010>\u001a\u00020=8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\u0011\u0010D\u001a\u0002048F\u00a2\u0006\u0006\u001a\u0004\u0008D\u00108\u00a8\u0006G"
    }
    d2 = {
        "Lokhttp3/internal/cache2/Relay;",
        "",
        "Ljava/io/RandomAccessFile;",
        "file",
        "Le5/D;",
        "upstream",
        "",
        "upstreamPos",
        "Le5/m;",
        "metadata",
        "bufferMaxSize",
        "<init>",
        "(Ljava/io/RandomAccessFile;Le5/D;JLe5/m;J)V",
        "prefix",
        "upstreamSize",
        "metadataSize",
        "Lq3/m;",
        "writeHeader",
        "(Le5/m;JJ)V",
        "writeMetadata",
        "(J)V",
        "commit",
        "()Le5/m;",
        "newSource",
        "()Le5/D;",
        "Ljava/io/RandomAccessFile;",
        "getFile",
        "()Ljava/io/RandomAccessFile;",
        "setFile",
        "(Ljava/io/RandomAccessFile;)V",
        "Le5/D;",
        "getUpstream",
        "setUpstream",
        "(Le5/D;)V",
        "J",
        "getUpstreamPos",
        "()J",
        "setUpstreamPos",
        "Le5/m;",
        "getBufferMaxSize",
        "Ljava/lang/Thread;",
        "upstreamReader",
        "Ljava/lang/Thread;",
        "getUpstreamReader",
        "()Ljava/lang/Thread;",
        "setUpstreamReader",
        "(Ljava/lang/Thread;)V",
        "Le5/j;",
        "upstreamBuffer",
        "Le5/j;",
        "getUpstreamBuffer",
        "()Le5/j;",
        "",
        "complete",
        "Z",
        "getComplete",
        "()Z",
        "setComplete",
        "(Z)V",
        "buffer",
        "getBuffer",
        "",
        "sourceCount",
        "I",
        "getSourceCount",
        "()I",
        "setSourceCount",
        "(I)V",
        "isClosed",
        "Companion",
        "RelaySource",
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
.field public static final Companion:Lokhttp3/internal/cache2/Relay$Companion;

.field private static final FILE_HEADER_SIZE:J = 0x20L

.field public static final PREFIX_CLEAN:Le5/m;

.field public static final PREFIX_DIRTY:Le5/m;

.field private static final SOURCE_FILE:I = 0x2

.field private static final SOURCE_UPSTREAM:I = 0x1


# instance fields
.field private final buffer:Le5/j;

.field private final bufferMaxSize:J

.field private complete:Z

.field private file:Ljava/io/RandomAccessFile;

.field private final metadata:Le5/m;

.field private sourceCount:I

.field private upstream:Le5/D;

.field private final upstreamBuffer:Le5/j;

.field private upstreamPos:J

.field private upstreamReader:Ljava/lang/Thread;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/internal/cache2/Relay$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/Relay$Companion;-><init>(LF3/f;)V

    sput-object v0, Lokhttp3/internal/cache2/Relay;->Companion:Lokhttp3/internal/cache2/Relay$Companion;

    sget-object v0, Le5/m;->g:Le5/m;

    const-string v0, "OkHttp cache v1\n"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Le5/m;

    const-string v0, "OkHttp DIRTY :(\n"

    invoke-static {v0}, LU0/e;->i(Ljava/lang/String;)Le5/m;

    move-result-object v0

    sput-object v0, Lokhttp3/internal/cache2/Relay;->PREFIX_DIRTY:Le5/m;

    return-void
.end method

.method private constructor <init>(Ljava/io/RandomAccessFile;Le5/D;JLe5/m;J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    .line 4
    iput-object p2, p0, Lokhttp3/internal/cache2/Relay;->upstream:Le5/D;

    .line 5
    iput-wide p3, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    .line 6
    iput-object p5, p0, Lokhttp3/internal/cache2/Relay;->metadata:Le5/m;

    .line 7
    iput-wide p6, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    .line 8
    new-instance p1, Le5/j;

    .line 9
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Le5/j;

    if-nez p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    .line 12
    new-instance p1, Le5/j;

    .line 13
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->buffer:Le5/j;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/io/RandomAccessFile;Le5/D;JLe5/m;JLF3/f;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p7}, Lokhttp3/internal/cache2/Relay;-><init>(Ljava/io/RandomAccessFile;Le5/D;JLe5/m;J)V

    return-void
.end method

.method public static final synthetic access$writeHeader(Lokhttp3/internal/cache2/Relay;Le5/m;JJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lokhttp3/internal/cache2/Relay;->writeHeader(Le5/m;JJ)V

    return-void
.end method

.method private final writeHeader(Le5/m;JJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Le5/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v0, p1}, Le5/j;->g0(Le5/m;)V

    invoke-virtual {v0, p2, p3}, Le5/j;->n0(J)V

    invoke-virtual {v0, p4, p5}, Le5/j;->n0(J)V

    iget-wide p1, v0, Le5/j;->e:J

    const-wide/16 p3, 0x20

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    new-instance p1, Lokhttp3/internal/cache2/FileOperator;

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    const-string p2, "file!!.channel"

    invoke-static {p0, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1, p0}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 p2, 0x0

    const-wide/16 p4, 0x20

    move-object p0, p1

    move-wide p1, p2

    move-object p3, v0

    invoke-virtual/range {p0 .. p5}, Lokhttp3/internal/cache2/FileOperator;->write(JLe5/j;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private final writeMetadata(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v3, Le5/j;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Le5/m;

    invoke-virtual {v3, v0}, Le5/j;->g0(Le5/m;)V

    new-instance v0, Lokhttp3/internal/cache2/FileOperator;

    iget-object v1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    const-string v2, "file!!.channel"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lokhttp3/internal/cache2/FileOperator;-><init>(Ljava/nio/channels/FileChannel;)V

    const-wide/16 v1, 0x20

    add-long/2addr v1, p1

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Le5/m;

    invoke-virtual {p0}, Le5/m;->c()I

    move-result p0

    int-to-long v4, p0

    invoke-virtual/range {v0 .. v5}, Lokhttp3/internal/cache2/FileOperator;->write(JLe5/j;J)V

    return-void
.end method


# virtual methods
.method public final commit(J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lokhttp3/internal/cache2/Relay;->writeMetadata(J)V

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    sget-object v3, Lokhttp3/internal/cache2/Relay;->PREFIX_CLEAN:Le5/m;

    iget-object v0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Le5/m;

    invoke-virtual {v0}, Le5/m;->c()I

    move-result v0

    int-to-long v6, v0

    move-object v2, p0

    move-wide v4, p1

    invoke-direct/range {v2 .. v7}, Lokhttp3/internal/cache2/Relay;->writeHeader(Le5/m;JJ)V

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->force(Z)V

    monitor-enter p0

    const/4 p1, 0x1

    :try_start_0
    invoke-virtual {p0, p1}, Lokhttp3/internal/cache2/Relay;->setComplete(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    iget-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Le5/D;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lokhttp3/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Le5/D;

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final getBuffer()Le5/j;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->buffer:Le5/j;

    return-object p0
.end method

.method public final getBufferMaxSize()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->bufferMaxSize:J

    return-wide v0
.end method

.method public final getComplete()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    return p0
.end method

.method public final getFile()Ljava/io/RandomAccessFile;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    return-object p0
.end method

.method public final getSourceCount()I
    .locals 0

    iget p0, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    return p0
.end method

.method public final getUpstream()Le5/D;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->upstream:Le5/D;

    return-object p0
.end method

.method public final getUpstreamBuffer()Le5/j;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->upstreamBuffer:Le5/j;

    return-object p0
.end method

.method public final getUpstreamPos()J
    .locals 2

    iget-wide v0, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    return-wide v0
.end method

.method public final getUpstreamReader()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    return-object p0
.end method

.method public final isClosed()Z
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final metadata()Le5/m;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/cache2/Relay;->metadata:Le5/m;

    return-object p0
.end method

.method public final newSource()Le5/D;
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lokhttp3/internal/cache2/Relay;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lokhttp3/internal/cache2/Relay;->getSourceCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lokhttp3/internal/cache2/Relay;->setSourceCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    new-instance v0, Lokhttp3/internal/cache2/Relay$RelaySource;

    invoke-direct {v0, p0}, Lokhttp3/internal/cache2/Relay$RelaySource;-><init>(Lokhttp3/internal/cache2/Relay;)V

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setComplete(Z)V
    .locals 0

    iput-boolean p1, p0, Lokhttp3/internal/cache2/Relay;->complete:Z

    return-void
.end method

.method public final setFile(Ljava/io/RandomAccessFile;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->file:Ljava/io/RandomAccessFile;

    return-void
.end method

.method public final setSourceCount(I)V
    .locals 0

    iput p1, p0, Lokhttp3/internal/cache2/Relay;->sourceCount:I

    return-void
.end method

.method public final setUpstream(Le5/D;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstream:Le5/D;

    return-void
.end method

.method public final setUpstreamPos(J)V
    .locals 0

    iput-wide p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamPos:J

    return-void
.end method

.method public final setUpstreamReader(Ljava/lang/Thread;)V
    .locals 0

    iput-object p1, p0, Lokhttp3/internal/cache2/Relay;->upstreamReader:Ljava/lang/Thread;

    return-void
.end method
