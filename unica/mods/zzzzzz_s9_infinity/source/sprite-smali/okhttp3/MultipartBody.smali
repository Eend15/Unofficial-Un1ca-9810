.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Part;,
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\u000e\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u0000 +2\u00020\u0001:\u0003,+-B\'\u0008\u0000\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\u0010\u001a\u00020\u000f2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u0015\u0010\u0014\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0012\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u000f\u0010\u0016\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007\u00a2\u0006\u0004\u0008\u0018\u0010\u0017J\u000f\u0010\u001c\u001a\u00020\u0019H\u0007\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJ\u000f\u0010\u001f\u001a\u00020\u0012H\u0007\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u0015\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007\u00a2\u0006\u0004\u0008 \u0010!J\u000f\u0010\"\u001a\u00020\u000fH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u0017\u0010%\u001a\u00020$2\u0006\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008%\u0010&R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\'R\u0017\u0010\u0005\u001a\u00020\u00048\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0005\u0010(\u001a\u0004\u0008\u0005\u0010\u0017R\u001d\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00068\u0007\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010)\u001a\u0004\u0008\u0008\u0010!R\u0014\u0010\u0016\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010(R\u0016\u0010\"\u001a\u00020\u000f8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010*R\u0011\u0010\u001c\u001a\u00020\u00198G\u00a2\u0006\u0006\u001a\u0004\u0008\u001c\u0010\u001bR\u0011\u0010\u001f\u001a\u00020\u00128G\u00a2\u0006\u0006\u001a\u0004\u0008\u001f\u0010\u001e\u00a8\u0006."
    }
    d2 = {
        "Lokhttp3/MultipartBody;",
        "Lokhttp3/RequestBody;",
        "Le5/m;",
        "boundaryByteString",
        "Lokhttp3/MediaType;",
        "type",
        "",
        "Lokhttp3/MultipartBody$Part;",
        "parts",
        "<init>",
        "(Le5/m;Lokhttp3/MediaType;Ljava/util/List;)V",
        "Le5/k;",
        "sink",
        "",
        "countBytes",
        "",
        "writeOrCountBytes",
        "(Le5/k;Z)J",
        "",
        "index",
        "part",
        "(I)Lokhttp3/MultipartBody$Part;",
        "contentType",
        "()Lokhttp3/MediaType;",
        "-deprecated_type",
        "",
        "-deprecated_boundary",
        "()Ljava/lang/String;",
        "boundary",
        "-deprecated_size",
        "()I",
        "size",
        "-deprecated_parts",
        "()Ljava/util/List;",
        "contentLength",
        "()J",
        "Lq3/m;",
        "writeTo",
        "(Le5/k;)V",
        "Le5/m;",
        "Lokhttp3/MediaType;",
        "Ljava/util/List;",
        "J",
        "Companion",
        "Builder",
        "Part",
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
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field public static final Companion:Lokhttp3/MultipartBody$Companion;

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundaryByteString:Le5/m;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field

.field private final type:Lokhttp3/MediaType;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lokhttp3/MultipartBody$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lokhttp3/MultipartBody$Companion;-><init>(LF3/f;)V

    sput-object v0, Lokhttp3/MultipartBody;->Companion:Lokhttp3/MultipartBody$Companion;

    sget-object v0, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v1, "multipart/mixed"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    const-string v1, "multipart/alternative"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    const-string v1, "multipart/digest"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    const-string v1, "multipart/parallel"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    sput-object v1, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    const-string v1, "multipart/form-data"

    invoke-virtual {v0, v1}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    const/4 v0, 0x2

    new-array v1, v0, [B

    fill-array-data v1, :array_0

    sput-object v1, Lokhttp3/MultipartBody;->COLONSPACE:[B

    new-array v1, v0, [B

    fill-array-data v1, :array_1

    sput-object v1, Lokhttp3/MultipartBody;->CRLF:[B

    new-array v0, v0, [B

    fill-array-data v0, :array_2

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x3at
        0x20t
    .end array-data

    nop

    :array_1
    .array-data 1
        0xdt
        0xat
    .end array-data

    nop

    :array_2
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method public constructor <init>(Le5/m;Lokhttp3/MediaType;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le5/m;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    const-string v0, "boundaryByteString"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parts"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    iput-object p1, p0, Lokhttp3/MultipartBody;->boundaryByteString:Le5/m;

    iput-object p2, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    iput-object p3, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    sget-object p1, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; boundary="

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/MediaType$Companion;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    const-wide/16 p1, -0x1

    iput-wide p1, p0, Lokhttp3/MultipartBody;->contentLength:J

    return-void
.end method

.method private final writeOrCountBytes(Le5/k;Z)J
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    new-instance p1, Le5/j;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    move-object v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v1, :cond_6

    add-int/lit8 v6, v5, 0x1

    iget-object v7, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lokhttp3/MultipartBody$Part;

    invoke-virtual {v5}, Lokhttp3/MultipartBody$Part;->headers()Lokhttp3/Headers;

    move-result-object v7

    invoke-virtual {v5}, Lokhttp3/MultipartBody$Part;->body()Lokhttp3/RequestBody;

    move-result-object v5

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v8, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v8}, Le5/k;->c([B)Le5/k;

    iget-object v8, p0, Lokhttp3/MultipartBody;->boundaryByteString:Le5/m;

    invoke-interface {p1, v8}, Le5/k;->U(Le5/m;)Le5/k;

    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v8}, Le5/k;->c([B)Le5/k;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lokhttp3/Headers;->size()I

    move-result v8

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_1

    add-int/lit8 v10, v9, 0x1

    invoke-virtual {v7, v9}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {p1, v11}, Le5/k;->L(Ljava/lang/String;)Le5/k;

    move-result-object v11

    sget-object v12, Lokhttp3/MultipartBody;->COLONSPACE:[B

    invoke-interface {v11, v12}, Le5/k;->c([B)Le5/k;

    move-result-object v11

    invoke-virtual {v7, v9}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Le5/k;->L(Ljava/lang/String;)Le5/k;

    move-result-object v9

    sget-object v11, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v9, v11}, Le5/k;->c([B)Le5/k;

    move v9, v10

    goto :goto_2

    :cond_1
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v7

    if-eqz v7, :cond_2

    const-string v8, "Content-Type: "

    invoke-interface {p1, v8}, Le5/k;->L(Ljava/lang/String;)Le5/k;

    move-result-object v8

    invoke-virtual {v7}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v8, v7}, Le5/k;->L(Ljava/lang/String;)Le5/k;

    move-result-object v7

    sget-object v8, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v7, v8}, Le5/k;->c([B)Le5/k;

    :cond_2
    invoke-virtual {v5}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v7

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_3

    const-string v9, "Content-Length: "

    invoke-interface {p1, v9}, Le5/k;->L(Ljava/lang/String;)Le5/k;

    move-result-object v9

    invoke-interface {v9, v7, v8}, Le5/k;->N(J)Le5/k;

    move-result-object v9

    sget-object v10, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {v9, v10}, Le5/k;->c([B)Le5/k;

    goto :goto_3

    :cond_3
    if-eqz p2, :cond_4

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Le5/j;->a()V

    return-wide v9

    :cond_4
    :goto_3
    sget-object v9, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, v9}, Le5/k;->c([B)Le5/k;

    if-eqz p2, :cond_5

    add-long/2addr v3, v7

    goto :goto_4

    :cond_5
    invoke-virtual {v5, p1}, Lokhttp3/RequestBody;->writeTo(Le5/k;)V

    :goto_4
    invoke-interface {p1, v9}, Le5/k;->c([B)Le5/k;

    move v5, v6

    goto/16 :goto_1

    :cond_6
    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v1, Lokhttp3/MultipartBody;->DASHDASH:[B

    invoke-interface {p1, v1}, Le5/k;->c([B)Le5/k;

    iget-object p0, p0, Lokhttp3/MultipartBody;->boundaryByteString:Le5/m;

    invoke-interface {p1, p0}, Le5/k;->U(Le5/m;)Le5/k;

    invoke-interface {p1, v1}, Le5/k;->c([B)Le5/k;

    sget-object p0, Lokhttp3/MultipartBody;->CRLF:[B

    invoke-interface {p1, p0}, Le5/k;->c([B)Le5/k;

    if-eqz p2, :cond_7

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iget-wide p0, v0, Le5/j;->e:J

    add-long/2addr v3, p0

    invoke-virtual {v0}, Le5/j;->a()V

    :cond_7
    return-wide v3
.end method


# virtual methods
.method public final -deprecated_boundary()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->boundary()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final -deprecated_parts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object p0
.end method

.method public final -deprecated_size()I
    .locals 0

    invoke-virtual {p0}, Lokhttp3/MultipartBody;->size()I

    move-result p0

    return p0
.end method

.method public final -deprecated_type()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final boundary()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->boundaryByteString:Le5/m;

    invoke-virtual {p0}, Le5/m;->j()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public contentLength()J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lokhttp3/MultipartBody;->writeOrCountBytes(Le5/k;Z)J

    move-result-wide v0

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    :cond_0
    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object p0
.end method

.method public final part(I)Lokhttp3/MultipartBody$Part;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lokhttp3/MultipartBody$Part;

    return-object p0
.end method

.method public final parts()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object p0
.end method

.method public final size()I
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public final type()Lokhttp3/MediaType;
    .locals 0

    iget-object p0, p0, Lokhttp3/MultipartBody;->type:Lokhttp3/MediaType;

    return-object p0
.end method

.method public writeTo(Le5/k;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Le5/k;Z)J

    return-void
.end method
