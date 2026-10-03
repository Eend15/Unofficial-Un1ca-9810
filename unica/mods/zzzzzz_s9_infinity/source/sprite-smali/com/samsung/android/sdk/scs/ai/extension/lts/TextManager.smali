.class Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final CHUNK:Ljava/lang/String; = "Chunk"

.field private static final INPUT_FILE_NAME_1:Ljava/lang/String; = "summarization_30min.txt"

.field private static TAG:Ljava/lang/String; = "TextManager"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->lambda$getChunkSenteneList$2(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic b(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->lambda$getChunkSenteneList$1(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic c(ILjava/lang/String;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->lambda$getChunkSenteneList$0(ILjava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static getChunkSenteneList(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "summarization_30min.txt"

    invoke-static {p0, v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->readInputTextFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xb86

    invoke-static {p1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V

    .line 2
    const-string p0, "Chunk"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->printLogs(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static getChunkSenteneList(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitByEmptyLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0xb86

    invoke-static {p1, p0, v0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V

    .line 15
    const-string p0, "Chunk"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->printLogs(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public static getChunkSenteneList(Ljava/lang/String;Ljava/util/List;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;II)V"
        }
    .end annotation

    int-to-double v0, p2

    int-to-double p2, p3

    const-wide v2, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v2, p2

    add-double/2addr v2, v0

    double-to-int v2, v2

    .line 3
    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitByEmptyLine(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 4
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/extension/lts/b;

    const/4 v6, 0x0

    invoke-direct {v5, v2, v6}, Lcom/samsung/android/sdk/scs/ai/extension/lts/b;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5
    invoke-static {p1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\n"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/extension/lts/b;

    const/4 v6, 0x1

    invoke-direct {v5, v2, v6}, Lcom/samsung/android/sdk/scs/ai/extension/lts/b;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8
    invoke-static {p1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    const-wide v2, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v2, p2

    add-double/2addr v2, v0

    double-to-int v2, v2

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, "(?<=[.!?]) +"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-static {v3}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/sdk/scs/ai/extension/lts/b;

    const/4 v6, 0x2

    invoke-direct {v5, v2, v6}, Lcom/samsung/android/sdk/scs/ai/extension/lts/b;-><init>(II)V

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 11
    invoke-static {p1, v3, v2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string v2, "\\s+"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const-wide v2, 0x3fa999999999999aL    # 0.05

    mul-double/2addr p2, v2

    add-double/2addr p2, v0

    double-to-int p2, p2

    invoke-static {p1, p0, p2}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V

    .line 13
    :goto_0
    const-string p0, "Chunk"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->printLogs(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$getChunkSenteneList$0(ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getChunkSenteneList$1(ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$getChunkSenteneList$2(ILjava/lang/String;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-le p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static printLogs(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/extension/lts/TextManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static readInputTextFile(Landroid/content/Context;Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance p1, Ljava/io/InputStreamReader;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {p1, p0, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :goto_0
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz p0, :cond_2

    :try_start_6
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    goto :goto_7

    :catchall_1
    move-exception p1

    goto :goto_5

    :catchall_2
    move-exception v1

    goto :goto_3

    :goto_1
    :try_start_7
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_2

    :catchall_3
    move-exception v1

    :try_start_8
    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_3
    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p1

    :try_start_a
    invoke-virtual {v1, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_4
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :goto_5
    if-eqz p0, :cond_1

    :try_start_b
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_6

    :catchall_5
    move-exception p0

    :try_start_c
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_6
    throw p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :goto_7
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_8
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    const-string p1, "\\s+"

    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static splitByEmptyLine(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const-string v0, "(?m)^$.*?^"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static splitWordsIntoChunks(Ljava/util/List;[Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, p1, v3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v5

    const-string v5, " "

    if-ge v6, p2, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method
