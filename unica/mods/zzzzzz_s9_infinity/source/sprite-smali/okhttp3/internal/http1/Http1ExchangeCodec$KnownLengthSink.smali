.class final Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/B;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/http1/Http1ExchangeCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "KnownLengthSink"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0008\u0082\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u001f\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u0008\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000f\u0010\u000e\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000f\u0010\u0010\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u000fR\u0014\u0010\u0005\u001a\u00020\u00118\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0012R\u0016\u0010\u0014\u001a\u00020\u00138\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;",
        "Le5/B;",
        "<init>",
        "(Lokhttp3/internal/http1/Http1ExchangeCodec;)V",
        "Le5/G;",
        "timeout",
        "()Le5/G;",
        "Le5/j;",
        "source",
        "",
        "byteCount",
        "Lq3/m;",
        "write",
        "(Le5/j;J)V",
        "flush",
        "()V",
        "close",
        "Le5/q;",
        "Le5/q;",
        "",
        "closed",
        "Z",
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
.field private closed:Z

.field final synthetic this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

.field private final timeout:Le5/q;


# direct methods
.method public constructor <init>(Lokhttp3/internal/http1/Http1ExchangeCodec;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Le5/q;

    invoke-static {p1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getSink$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Le5/k;

    move-result-object p1

    invoke-interface {p1}, Le5/B;->timeout()Le5/G;

    move-result-object p1

    invoke-direct {v0, p1}, Le5/q;-><init>(Le5/G;)V

    iput-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->timeout:Le5/q;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    iget-object v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    iget-object v1, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->timeout:Le5/q;

    invoke-static {v0, v1}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$detachTimeout(Lokhttp3/internal/http1/Http1ExchangeCodec;Le5/q;)V

    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    const/4 v0, 0x3

    invoke-static {p0, v0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$setState$p(Lokhttp3/internal/http1/Http1ExchangeCodec;I)V

    return-void
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getSink$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Le5/k;

    move-result-object p0

    invoke-interface {p0}, Le5/k;->flush()V

    return-void
.end method

.method public timeout()Le5/G;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->timeout:Le5/q;

    return-object p0
.end method

.method public write(Le5/j;J)V
    .locals 7

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->closed:Z

    if-nez v0, :cond_0

    iget-wide v1, p1, Le5/j;->e:J

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lokhttp3/internal/Util;->checkOffsetAndCount(JJJ)V

    iget-object p0, p0, Lokhttp3/internal/http1/Http1ExchangeCodec$KnownLengthSink;->this$0:Lokhttp3/internal/http1/Http1ExchangeCodec;

    invoke-static {p0}, Lokhttp3/internal/http1/Http1ExchangeCodec;->access$getSink$p(Lokhttp3/internal/http1/Http1ExchangeCodec;)Le5/k;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Le5/B;->write(Le5/j;J)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "closed"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
