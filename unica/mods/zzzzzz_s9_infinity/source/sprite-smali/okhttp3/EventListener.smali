.class public abstract Lokhttp3/EventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/EventListener$Factory;,
        Lokhttp3/EventListener$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000~\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0011\u0008&\u0018\u0000 M2\u00020\u0001:\u0002MNB\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u001f\u0010\u000b\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ-\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\t2\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\rH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001f\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0012H\u0016\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J-\u0010\u0018\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00122\u000c\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\u00160\rH\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\'\u0010\u001d\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0017\u0010\u001f\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u001f\u0010\u0008J!\u0010\"\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0010!\u001a\u0004\u0018\u00010 H\u0016\u00a2\u0006\u0004\u0008\"\u0010#J1\u0010&\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0010%\u001a\u0004\u0018\u00010$H\u0016\u00a2\u0006\u0004\u0008&\u0010\'J9\u0010*\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u001a2\u0006\u0010\u001c\u001a\u00020\u000e2\u0008\u0010%\u001a\u0004\u0018\u00010$2\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008*\u0010+J\u001f\u0010.\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u0008.\u0010/J\u001f\u00100\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010-\u001a\u00020,H\u0016\u00a2\u0006\u0004\u00080\u0010/J\u0017\u00101\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00081\u0010\u0008J\u001f\u00104\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00103\u001a\u000202H\u0016\u00a2\u0006\u0004\u00084\u00105J\u0017\u00106\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u00086\u0010\u0008J\u001f\u00109\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u00089\u0010:J\u001f\u0010;\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008;\u0010<J\u0017\u0010=\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008=\u0010\u0008J\u001f\u0010@\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008@\u0010AJ\u0017\u0010B\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008B\u0010\u0008J\u001f\u0010C\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u00108\u001a\u000207H\u0016\u00a2\u0006\u0004\u0008C\u0010:J\u001f\u0010D\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008D\u0010<J\u0017\u0010E\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008E\u0010\u0008J\u001f\u0010F\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010)\u001a\u00020(H\u0016\u00a2\u0006\u0004\u0008F\u0010<J\u0017\u0010G\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008G\u0010\u0008J\u001f\u0010H\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008H\u0010AJ\u001f\u0010I\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010?\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008I\u0010AJ\u0017\u0010J\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008J\u0010\u0008J\u001f\u0010L\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010K\u001a\u00020>H\u0016\u00a2\u0006\u0004\u0008L\u0010A\u00a8\u0006O"
    }
    d2 = {
        "Lokhttp3/EventListener;",
        "",
        "<init>",
        "()V",
        "Lokhttp3/Call;",
        "call",
        "Lq3/m;",
        "callStart",
        "(Lokhttp3/Call;)V",
        "Lokhttp3/HttpUrl;",
        "url",
        "proxySelectStart",
        "(Lokhttp3/Call;Lokhttp3/HttpUrl;)V",
        "",
        "Ljava/net/Proxy;",
        "proxies",
        "proxySelectEnd",
        "(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V",
        "",
        "domainName",
        "dnsStart",
        "(Lokhttp3/Call;Ljava/lang/String;)V",
        "Ljava/net/InetAddress;",
        "inetAddressList",
        "dnsEnd",
        "(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V",
        "Ljava/net/InetSocketAddress;",
        "inetSocketAddress",
        "proxy",
        "connectStart",
        "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V",
        "secureConnectStart",
        "Lokhttp3/Handshake;",
        "handshake",
        "secureConnectEnd",
        "(Lokhttp3/Call;Lokhttp3/Handshake;)V",
        "Lokhttp3/Protocol;",
        "protocol",
        "connectEnd",
        "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V",
        "Ljava/io/IOException;",
        "ioe",
        "connectFailed",
        "(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V",
        "Lokhttp3/Connection;",
        "connection",
        "connectionAcquired",
        "(Lokhttp3/Call;Lokhttp3/Connection;)V",
        "connectionReleased",
        "requestHeadersStart",
        "Lokhttp3/Request;",
        "request",
        "requestHeadersEnd",
        "(Lokhttp3/Call;Lokhttp3/Request;)V",
        "requestBodyStart",
        "",
        "byteCount",
        "requestBodyEnd",
        "(Lokhttp3/Call;J)V",
        "requestFailed",
        "(Lokhttp3/Call;Ljava/io/IOException;)V",
        "responseHeadersStart",
        "Lokhttp3/Response;",
        "response",
        "responseHeadersEnd",
        "(Lokhttp3/Call;Lokhttp3/Response;)V",
        "responseBodyStart",
        "responseBodyEnd",
        "responseFailed",
        "callEnd",
        "callFailed",
        "canceled",
        "satisfactionFailure",
        "cacheHit",
        "cacheMiss",
        "cachedResponse",
        "cacheConditionalHit",
        "Companion",
        "Factory",
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
.field public static final Companion:Lokhttp3/EventListener$Companion;

.field public static final NONE:Lokhttp3/EventListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/EventListener$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/EventListener$Companion;-><init>(LF3/f;)V

    sput-object v0, Lokhttp3/EventListener;->Companion:Lokhttp3/EventListener$Companion;

    new-instance v0, Lokhttp3/EventListener$Companion$NONE$1;

    invoke-direct {v0}, Lokhttp3/EventListener$Companion$NONE$1;-><init>()V

    sput-object v0, Lokhttp3/EventListener;->NONE:Lokhttp3/EventListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cacheConditionalHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "cachedResponse"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public cacheHit(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "response"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public cacheMiss(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public callEnd(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public callFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioe"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public callStart(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public canceled(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inetSocketAddress"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "proxy"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inetSocketAddress"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "proxy"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioe"

    invoke-static {p5, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inetSocketAddress"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "proxy"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectionAcquired(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "connection"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public connectionReleased(Lokhttp3/Call;Lokhttp3/Connection;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "connection"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "domainName"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inetAddressList"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "domainName"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public proxySelectEnd(Lokhttp3/Call;Lokhttp3/HttpUrl;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Lokhttp3/HttpUrl;",
            "Ljava/util/List<",
            "Ljava/net/Proxy;",
            ">;)V"
        }
    .end annotation

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "proxies"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public proxySelectStart(Lokhttp3/Call;Lokhttp3/HttpUrl;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "url"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public requestFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioe"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "request"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public responseFailed(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "ioe"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "response"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public satisfactionFailure(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "response"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 0

    const-string p0, "call"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
