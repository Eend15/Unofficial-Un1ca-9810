.class public final Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LX2/a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Companion;,
        Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Img2WallpaperRetrofitService;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0013\u0018\u0000 ,2\u00020\u0001:\u0002,-B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u000f\u0010\t\u001a\u00020\u0008H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\u000f\u0010\u000c\u001a\u00020\u000bH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\rJc\u0010\u001c\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u000e2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0013\u001a\u00020\u00102\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00020\u000b2\u000c\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u0018H\u0016\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ/\u0010 \u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001f\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008 \u0010!J\u0017\u0010\"\u001a\u00020\u001b2\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\"\u0010#J\u000f\u0010$\u001a\u00020\u001bH\u0016\u00a2\u0006\u0004\u0008$\u0010%J\u000f\u0010&\u001a\u00020\u0010H\u0016\u00a2\u0006\u0004\u0008&\u0010\'R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010(R\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010)R\u0016\u0010*\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008*\u0010+\u00a8\u0006."
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;",
        "LX2/a;",
        "Landroid/content/Context;",
        "context",
        "LO2/a;",
        "utils",
        "<init>",
        "(Landroid/content/Context;LO2/a;)V",
        "Lretrofit2/Retrofit;",
        "createRetrofit",
        "()Lretrofit2/Retrofit;",
        "",
        "initialize",
        "()Z",
        "",
        "id",
        "",
        "prompt",
        "negativePrompt",
        "path",
        "alphaPath",
        "weather",
        "time",
        "forceSquareGenerate",
        "Ljava/util/function/Consumer;",
        "LX2/b;",
        "resultConsumer",
        "Lq3/m;",
        "generate",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Consumer;)V",
        "inputPath1",
        "inputPath2",
        "mixImages",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX2/b;",
        "cancel",
        "(J)V",
        "release",
        "()V",
        "getVersion",
        "()Ljava/lang/String;",
        "Landroid/content/Context;",
        "LO2/a;",
        "isCancelled",
        "Z",
        "Companion",
        "Img2WallpaperRetrofitService",
        "weather-1.0.0_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Companion;

.field private static final MAX_INPUT_SIZE:I = 0x400

.field private static final SR_WALLPAPER_API_ACCESS_KEY:I = 0x25cc9

.field private static final SR_WALLPAPER_API_BASE_URL:Ljava/lang/String; = "http://3.38.74.252/"

.field private static final SR_WALLPAPER_API_BASE_URL_UT:Ljava/lang/String; = "https://ai.visual-perception-team.com"

.field private static final SR_WALLPAPER_TASK_NAME:Ljava/lang/String; = "img2wallpaper"

.field private static final TAG:Ljava/lang/String; = "Img2WallpaperRetrofitImpl"


# instance fields
.field private final context:Landroid/content/Context;

.field private isCancelled:Z

.field private final utils:LO2/a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->Companion:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;LO2/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->utils:LO2/a;

    return-void
.end method

.method public static final synthetic access$getUtils$p(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;)LO2/a;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->utils:LO2/a;

    return-object p0
.end method

.method public static final synthetic access$isCancelled$p(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->isCancelled:Z

    return p0
.end method

.method private final createRetrofit()Lretrofit2/Retrofit;
    .locals 3

    new-instance p0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    const-wide/16 v1, 0x3c

    invoke-virtual {p0, v1, v2, v0}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v1}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;ILF3/f;)V

    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->level(Lokhttp3/logging/HttpLoggingInterceptor$Level;)V

    invoke-virtual {p0, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p0

    new-instance v0, Lretrofit2/Retrofit$Builder;

    invoke-direct {v0}, Lretrofit2/Retrofit$Builder;-><init>()V

    const-string v1, "http://3.38.74.252/"

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v1

    invoke-virtual {v0, v1}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p0

    invoke-virtual {v0, p0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object p0

    const-string v0, "build(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public cancel(J)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->isCancelled:Z

    return-void
.end method

.method public generate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Consumer;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/function/Consumer<",
            "LX2/b;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p10

    const-string v2, "path"

    move-object/from16 v3, p5

    invoke-static {v3, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "weather"

    move-object/from16 v10, p7

    invoke-static {v10, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "time"

    move-object/from16 v11, p8

    invoke-static {v11, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "resultConsumer"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->utils:LO2/a;

    invoke-virtual {v2}, LO2/a;->a()LU0/e;

    invoke-static/range {p5 .. p5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v3, "decodeFile(...)"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, LU0/e;->u(Landroid/graphics/Bitmap;Ljava/lang/Integer;)Landroid/graphics/Bitmap;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->utils:LO2/a;

    invoke-virtual {v4}, LO2/a;->a()LU0/e;

    move-result-object v4

    invoke-static {v3}, LF3/k;->c(Ljava/lang/Object;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {v4, v2, v3, v5}, LU0/e;->v(LU0/e;Landroid/graphics/Bitmap;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Z

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-object v14, Lokhttp3/RequestBody;->Companion:Lokhttp3/RequestBody$Companion;

    sget-object v15, Lokhttp3/MediaType;->Companion:Lokhttp3/MediaType$Companion;

    const-string v3, "application/octet-stream"

    invoke-virtual {v15, v3}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v14, v2, v3}, Lokhttp3/RequestBody$Companion;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v13

    new-instance v16, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRequestBody;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string v6, "img2wallpaper"

    const/4 v7, 0x0

    const/16 v12, 0x1c

    const/16 v17, 0x0

    move-object/from16 v3, v16

    move-wide/from16 v4, p1

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-object v0, v13

    move-object/from16 v13, v17

    invoke-direct/range {v3 .. v13}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRequestBody;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILF3/f;)V

    invoke-virtual/range {v16 .. v16}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRequestBody;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "application/json"

    invoke-virtual {v15, v4}, Lokhttp3/MediaType$Companion;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    invoke-virtual {v14, v3, v4}, Lokhttp3/RequestBody$Companion;->create(Ljava/lang/String;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    sget-object v5, Lokhttp3/MultipartBody$Part;->Companion:Lokhttp3/MultipartBody$Part$Companion;

    const-string v6, "file"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v6, v2, v0}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v0

    const-string v2, "json"

    const/4 v6, 0x0

    invoke-virtual {v5, v2, v6, v3}, Lokhttp3/MultipartBody$Part$Companion;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->createRetrofit()Lretrofit2/Retrofit;

    move-result-object v0

    const-class v2, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Img2WallpaperRetrofitService;

    invoke-virtual {v0, v2}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Img2WallpaperRetrofitService;

    const v2, 0x25cc9

    invoke-interface {v0, v2, v4}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$Img2WallpaperRetrofitService;->upload(ILjava/util/List;)Lretrofit2/Call;

    move-result-object v0

    new-instance v2, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;

    move-object/from16 v3, p0

    invoke-direct {v2, v3, v1}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;-><init>(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;Ljava/util/function/Consumer;)V

    invoke-interface {v0, v2}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .locals 0

    const-string p0, "not provided"

    return-object p0
.end method

.method public initialize()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public mixImages(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)LX2/b;
    .locals 0

    const-string p0, "inputPath1"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "inputPath2"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "time"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "weather"

    invoke-static {p4, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LX2/b;

    const/4 p1, 0x0

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1}, LX2/b;-><init>(ILjava/io/InputStream;)V

    return-object p0
.end method

.method public release()V
    .locals 0

    return-void
.end method
