.class public final Lokhttp3/internal/ws/MessageDeflater;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u001b\u0010\t\u001a\u00020\u0002*\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0015\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u000f\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0011R\u0014\u0010\u0012\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0014\u0010\u0015\u001a\u00020\u00148\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0018\u001a\u00020\u00178\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001a"
    }
    d2 = {
        "Lokhttp3/internal/ws/MessageDeflater;",
        "Ljava/io/Closeable;",
        "",
        "noContextTakeover",
        "<init>",
        "(Z)V",
        "Le5/j;",
        "Le5/m;",
        "suffix",
        "endsWith",
        "(Le5/j;Le5/m;)Z",
        "buffer",
        "Lq3/m;",
        "deflate",
        "(Le5/j;)V",
        "close",
        "()V",
        "Z",
        "deflatedBytes",
        "Le5/j;",
        "Ljava/util/zip/Deflater;",
        "deflater",
        "Ljava/util/zip/Deflater;",
        "Le5/n;",
        "deflaterSink",
        "Le5/n;",
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
.field private final deflatedBytes:Le5/j;

.field private final deflater:Ljava/util/zip/Deflater;

.field private final deflaterSink:Le5/n;

.field private final noContextTakeover:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    new-instance p1, Le5/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Le5/j;

    new-instance v0, Ljava/util/zip/Deflater;

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/util/zip/Deflater;-><init>(IZ)V

    iput-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    new-instance v1, Le5/n;

    invoke-direct {v1, p1, v0}, Le5/n;-><init>(Le5/j;Ljava/util/zip/Deflater;)V

    iput-object v1, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Le5/n;

    return-void
.end method

.method private final endsWith(Le5/j;Le5/m;)Z
    .locals 4

    iget-wide v0, p1, Le5/j;->e:J

    invoke-virtual {p2}, Le5/m;->c()I

    move-result p0

    int-to-long v2, p0

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1, p2}, Le5/j;->i(JLe5/m;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Le5/n;

    invoke-virtual {p0}, Le5/n;->close()V

    return-void
.end method

.method public final deflate(Le5/j;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Le5/j;

    iget-wide v0, v0, Le5/j;->e:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lokhttp3/internal/ws/MessageDeflater;->noContextTakeover:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflater:Ljava/util/zip/Deflater;

    invoke-virtual {v0}, Ljava/util/zip/Deflater;->reset()V

    :cond_0
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Le5/n;

    iget-wide v1, p1, Le5/j;->e:J

    invoke-virtual {v0, p1, v1, v2}, Le5/n;->write(Le5/j;J)V

    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflaterSink:Le5/n;

    invoke-virtual {v0}, Le5/n;->flush()V

    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Le5/j;

    invoke-static {}, Lokhttp3/internal/ws/MessageDeflaterKt;->access$getEMPTY_DEFLATE_BLOCK$p()Le5/m;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lokhttp3/internal/ws/MessageDeflater;->endsWith(Le5/j;Le5/m;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Le5/j;

    iget-wide v1, v0, Le5/j;->e:J

    const/4 v3, 0x4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    sget-object v3, Le5/I;->a:Le5/g;

    invoke-virtual {v0, v3}, Le5/j;->Z(Le5/g;)Le5/g;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Le5/g;->a(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    invoke-static {v0, p0}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    iget-object v0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Le5/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Le5/j;->j0(I)V

    :goto_0
    iget-object p0, p0, Lokhttp3/internal/ws/MessageDeflater;->deflatedBytes:Le5/j;

    iget-wide v0, p0, Le5/j;->e:J

    invoke-virtual {p1, p0, v0, v1}, Le5/j;->write(Le5/j;J)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Failed requirement."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
