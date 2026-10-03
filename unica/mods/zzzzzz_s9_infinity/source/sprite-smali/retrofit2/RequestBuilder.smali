.class final Lretrofit2/RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;
    }
.end annotation


# static fields
.field private static final HEX_DIGITS:[C

.field private static final PATH_SEGMENT_ALWAYS_ENCODE_SET:Ljava/lang/String; = " \"<>^`{}|\\?#"

.field private static final PATH_TRAVERSAL:Ljava/util/regex/Pattern;


# instance fields
.field private final baseUrl:Lokhttp3/HttpUrl;

.field private body:Lokhttp3/RequestBody;

.field private contentType:Lokhttp3/MediaType;

.field private formBuilder:Lokhttp3/FormBody$Builder;

.field private final hasBody:Z

.field private final headersBuilder:Lokhttp3/Headers$Builder;

.field private final method:Ljava/lang/String;

.field private multipartBuilder:Lokhttp3/MultipartBody$Builder;

.field private relativeUrl:Ljava/lang/String;

.field private final requestBuilder:Lokhttp3/Request$Builder;

.field private urlBuilder:Lokhttp3/HttpUrl$Builder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    const-string v0, "(.*/)?(\\.|%2e|%2E){1,2}(/.*)?"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    return-void

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/HttpUrl;Ljava/lang/String;Lokhttp3/Headers;Lokhttp3/MediaType;ZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    iput-object p2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iput-object p3, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance p1, Lokhttp3/Request$Builder;

    invoke-direct {p1}, Lokhttp3/Request$Builder;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    iput-object p5, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    iput-boolean p6, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz p4, :cond_0

    invoke-virtual {p4}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    goto :goto_0

    :cond_0
    new-instance p1, Lokhttp3/Headers$Builder;

    invoke-direct {p1}, Lokhttp3/Headers$Builder;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    :goto_0
    if-eqz p7, :cond_1

    new-instance p1, Lokhttp3/FormBody$Builder;

    invoke-direct {p1}, Lokhttp3/FormBody$Builder;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    goto :goto_1

    :cond_1
    if-eqz p8, :cond_2

    new-instance p1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {p1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    iput-object p1, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    sget-object p0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {p1, p0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    :cond_2
    :goto_1
    return-void
.end method

.method private static canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_1

    const/16 v4, 0x7f

    if-ge v3, v4, :cond_1

    .line 3
    const-string v4, " \"<>^`{}|\\?#"

    .line 4
    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    if-nez p1, :cond_0

    const/16 v4, 0x2f

    if-eq v3, v4, :cond_1

    const/16 v4, 0x25

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {v3}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    new-instance v3, Le5/j;

    .line 7
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 8
    invoke-virtual {v3, v1, v2, p0}, Le5/j;->q0(IILjava/lang/String;)V

    .line 9
    invoke-static {v3, p0, v2, v0, p1}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Le5/j;Ljava/lang/String;IIZ)V

    .line 10
    invoke-virtual {v3}, Le5/j;->c0()Ljava/lang/String;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method private static canonicalizeForPath(Le5/j;Ljava/lang/String;IIZ)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_5

    .line 11
    invoke-virtual {p1, p2}, Ljava/lang/String;->codePointAt(I)I

    move-result v1

    if-eqz p4, :cond_0

    const/16 v2, 0x9

    if-eq v1, v2, :cond_4

    const/16 v2, 0xa

    if-eq v1, v2, :cond_4

    const/16 v2, 0xc

    if-eq v1, v2, :cond_4

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    goto :goto_3

    :cond_0
    const/16 v2, 0x20

    const/16 v3, 0x25

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7f

    if-ge v1, v2, :cond_2

    .line 12
    const-string v2, " \"<>^`{}|\\?#"

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_2

    if-nez p4, :cond_1

    const/16 v2, 0x2f

    if-eq v1, v2, :cond_2

    if-ne v1, v3, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    invoke-virtual {p0, v1}, Le5/j;->s0(I)V

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 15
    new-instance v0, Le5/j;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 17
    :cond_3
    invoke-virtual {v0, v1}, Le5/j;->s0(I)V

    .line 18
    :goto_2
    invoke-virtual {v0}, Le5/j;->P()Z

    move-result v2

    if-nez v2, :cond_4

    .line 19
    invoke-virtual {v0}, Le5/j;->V()B

    move-result v2

    and-int/lit16 v4, v2, 0xff

    .line 20
    invoke-virtual {p0, v3}, Le5/j;->j0(I)V

    .line 21
    sget-object v5, Lretrofit2/RequestBuilder;->HEX_DIGITS:[C

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v4, v4, 0xf

    aget-char v4, v5, v4

    invoke-virtual {p0, v4}, Le5/j;->j0(I)V

    and-int/lit8 v2, v2, 0xf

    .line 22
    aget-char v2, v5, v2

    invoke-virtual {p0, v2}, Le5/j;->j0(I)V

    goto :goto_2

    .line 23
    :cond_4
    :goto_3
    invoke-static {v1}, Ljava/lang/Character;->charCount(I)I

    move-result v1

    add-int/2addr p2, v1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public addFormField(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    if-eqz p3, :cond_0

    iget-object p0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/FormBody$Builder;->addEncoded(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    :goto_0
    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, "Content-Type"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {p2}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Malformed content type: "

    invoke-static {v0, p2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    iget-object p0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :goto_0
    return-void
.end method

.method public addHeaders(Lokhttp3/Headers;)V
    .locals 0

    iget-object p0, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {p0, p1}, Lokhttp3/Headers$Builder;->addAll(Lokhttp3/Headers;)Lokhttp3/Headers$Builder;

    return-void
.end method

.method public addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    return-void
.end method

.method public addPart(Lokhttp3/MultipartBody$Part;)V
    .locals 0

    .line 2
    iget-object p0, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    invoke-virtual {p0, p1}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/MultipartBody$Part;)Lokhttp3/MultipartBody$Builder;

    return-void
.end method

.method public addPathParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {p2, p3}, Lretrofit2/RequestBuilder;->canonicalizeForPath(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p3

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    sget-object p3, Lretrofit2/RequestBuilder;->PATH_TRAVERSAL:Ljava/util/regex/Pattern;

    invoke-virtual {p3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/regex/Matcher;->matches()Z

    move-result p3

    if-nez p3, :cond_0

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "@Path parameters shouldn\'t perform path traversal (\'.\' or \'..\'): "

    invoke-static {p1, p2}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
.end method

.method public addQueryParam(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl;->newBuilder(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Malformed URL. Base: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", Relative: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    iget-object p0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addEncodedQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    :goto_1
    return-void
.end method

.method public addTag(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object p0, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {p0, p1, p2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Class;Ljava/lang/Object;)Lokhttp3/Request$Builder;

    return-void
.end method

.method public get()Lokhttp3/Request$Builder;
    .locals 5

    iget-object v0, p0, Lretrofit2/RequestBuilder;->urlBuilder:Lokhttp3/HttpUrl$Builder;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    iget-object v1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/HttpUrl;->resolve(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    if-eqz v0, :cond_6

    :goto_0
    iget-object v1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    if-nez v1, :cond_3

    iget-object v2, p0, Lretrofit2/RequestBuilder;->formBuilder:Lokhttp3/FormBody$Builder;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lretrofit2/RequestBuilder;->multipartBuilder:Lokhttp3/MultipartBody$Builder;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    goto :goto_1

    :cond_2
    iget-boolean v2, p0, Lretrofit2/RequestBuilder;->hasBody:Z

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    new-array v1, v1, [B

    const/4 v2, 0x0

    invoke-static {v2, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v1

    :cond_3
    :goto_1
    iget-object v2, p0, Lretrofit2/RequestBuilder;->contentType:Lokhttp3/MediaType;

    if-eqz v2, :cond_5

    if-eqz v1, :cond_4

    new-instance v3, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;

    invoke-direct {v3, v1, v2}, Lretrofit2/RequestBuilder$ContentTypeOverridingRequestBody;-><init>(Lokhttp3/RequestBody;Lokhttp3/MediaType;)V

    move-object v1, v3

    goto :goto_2

    :cond_4
    iget-object v3, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    const-string v4, "Content-Type"

    invoke-virtual {v2}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v4, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    :cond_5
    :goto_2
    iget-object v2, p0, Lretrofit2/RequestBuilder;->requestBuilder:Lokhttp3/Request$Builder;

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->url(Lokhttp3/HttpUrl;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object v2, p0, Lretrofit2/RequestBuilder;->headersBuilder:Lokhttp3/Headers$Builder;

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    invoke-virtual {v0, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    iget-object p0, p0, Lretrofit2/RequestBuilder;->method:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Malformed URL. Base: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lretrofit2/RequestBuilder;->baseUrl:Lokhttp3/HttpUrl;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", Relative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setBody(Lokhttp3/RequestBody;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/RequestBuilder;->body:Lokhttp3/RequestBody;

    return-void
.end method

.method public setRelativeUrl(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lretrofit2/RequestBuilder;->relativeUrl:Ljava/lang/String;

    return-void
.end method
