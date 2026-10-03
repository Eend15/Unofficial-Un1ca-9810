.class public abstract Lt4/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lt4/y;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lt4/i;->b:I

    return-void
.end method


# virtual methods
.method public final b(Ljava/io/ByteArrayInputStream;Lt4/i;)Lt4/b;
    .locals 5

    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_3

    :cond_0
    and-int/lit16 v2, v0, 0x80

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    and-int/lit8 v0, v0, 0x7f

    const/4 v2, 0x7

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v3, :cond_4

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    if-eq v3, v1, :cond_3

    and-int/lit8 v4, v3, 0x7f

    shl-int/2addr v4, v2

    or-int/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x7

    goto :goto_0

    :cond_3
    invoke-static {}, Lt4/s;->a()Lt4/s;

    move-result-object p0

    throw p0

    :cond_4
    :goto_1
    const/16 v3, 0x40

    if-ge v2, v3, :cond_9

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v3, v1, :cond_8

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_7

    :goto_2
    new-instance v1, Lt4/a;

    invoke-direct {v1, p1, v0}, Lt4/a;-><init>(Ljava/io/ByteArrayInputStream;I)V

    new-instance p1, Lt4/f;

    invoke-direct {p1, v1}, Lt4/f;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p0, p1, p2}, Lt4/y;->a(Lt4/f;Lt4/i;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lt4/b;

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {p1, p2}, Lt4/f;->a(I)V
    :try_end_1
    .catch Lt4/s; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    if-eqz p0, :cond_6

    invoke-interface {p0}, Lt4/x;->b()Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    :cond_5
    new-instance p1, LW4/m;

    invoke-direct {p1}, LW4/m;-><init>()V

    new-instance p2, Lt4/s;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    iput-object p0, p2, Lt4/s;->d:Lt4/b;

    throw p2

    :cond_6
    :goto_4
    return-object p0

    :catch_0
    move-exception p1

    iput-object p0, p1, Lt4/s;->d:Lt4/b;

    throw p1

    :cond_7
    add-int/lit8 v2, v2, 0x7

    goto :goto_1

    :cond_8
    :try_start_2
    invoke-static {}, Lt4/s;->a()Lt4/s;

    move-result-object p0

    throw p0

    :cond_9
    new-instance p0, Lt4/s;

    const-string p1, "CodedInputStream encountered a malformed varint."

    invoke-direct {p0, p1}, Lt4/s;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lt4/s;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lt4/s;-><init>(Ljava/lang/String;)V

    throw p1
.end method
