.class public abstract Lokhttp3/internal/ws/RealWebSocket$Streams;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokhttp3/internal/ws/RealWebSocket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Streams"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\r\u0008&\u0018\u00002\u00020\u0001B\u001f\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0017\u0010\u0003\u001a\u00020\u00028\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\n\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\u0005\u001a\u00020\u00048\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0013"
    }
    d2 = {
        "Lokhttp3/internal/ws/RealWebSocket$Streams;",
        "Ljava/io/Closeable;",
        "",
        "client",
        "Le5/l;",
        "source",
        "Le5/k;",
        "sink",
        "<init>",
        "(ZLe5/l;Le5/k;)V",
        "Z",
        "getClient",
        "()Z",
        "Le5/l;",
        "getSource",
        "()Le5/l;",
        "Le5/k;",
        "getSink",
        "()Le5/k;",
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
.field private final client:Z

.field private final sink:Le5/k;

.field private final source:Le5/l;


# direct methods
.method public constructor <init>(ZLe5/l;Le5/k;)V
    .locals 1

    const-string v0, "source"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sink"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    iput-object p2, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->source:Le5/l;

    iput-object p3, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->sink:Le5/k;

    return-void
.end method


# virtual methods
.method public final getClient()Z
    .locals 0

    iget-boolean p0, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->client:Z

    return p0
.end method

.method public final getSink()Le5/k;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->sink:Le5/k;

    return-object p0
.end method

.method public final getSource()Le5/l;
    .locals 0

    iget-object p0, p0, Lokhttp3/internal/ws/RealWebSocket$Streams;->source:Le5/l;

    return-object p0
.end method
