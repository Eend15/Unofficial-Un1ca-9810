.class public final Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->generate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Consumer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "Lokhttp3/ResponseBody;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001J%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0008\u0010\tJ+\u0010\u000c\u001a\u00020\u00072\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u000c\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00020\nH\u0016\u00a2\u0006\u0004\u0008\u000c\u0010\r\u00a8\u0006\u000e"
    }
    d2 = {
        "com/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1",
        "Lretrofit2/Callback;",
        "Lokhttp3/ResponseBody;",
        "Lretrofit2/Call;",
        "call",
        "",
        "t",
        "Lq3/m;",
        "onFailure",
        "(Lretrofit2/Call;Ljava/lang/Throwable;)V",
        "Lretrofit2/Response;",
        "response",
        "onResponse",
        "(Lretrofit2/Call;Lretrofit2/Response;)V",
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


# instance fields
.field final synthetic $resultConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "LX2/b;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;",
            "Ljava/util/function/Consumer<",
            "LX2/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->this$0:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->$resultConsumer:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->this$0:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->access$getUtils$p(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;)LO2/a;

    move-result-object p1

    invoke-virtual {p1}, LO2/a;->d()LU0/e;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    sget-object p2, Lq3/m;->a:Lq3/m;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onFailure: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "Img2WallpaperRetrofitImpl"

    invoke-virtual {p1, v1, p2, v0}, LU0/e;->y(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->$resultConsumer:Ljava/util/function/Consumer;

    new-instance p1, LX2/b;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, LX2/b;-><init>(ILjava/io/InputStream;)V

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "Lokhttp3/ResponseBody;",
            ">;",
            "Lretrofit2/Response<",
            "Lokhttp3/ResponseBody;",
            ">;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "response"

    invoke-static {p2, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->this$0:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->access$getUtils$p(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;)LO2/a;

    move-result-object p1

    invoke-virtual {p1}, LO2/a;->d()LU0/e;

    move-result-object p1

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onResponse: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "Img2WallpaperRetrofitImpl"

    invoke-virtual {p1, v3, v0, v2}, LU0/e;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->this$0:Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;

    invoke-static {p1}, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;->access$isCancelled$p(Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->$resultConsumer:Ljava/util/function/Consumer;

    new-instance p1, LX2/b;

    const/4 p2, 0x2

    invoke-direct {p1, p2, v0}, LX2/b;-><init>(ILjava/io/InputStream;)V

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lokhttp3/ResponseBody;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->$resultConsumer:Ljava/util/function/Consumer;

    new-instance p2, LX2/b;

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-direct {p2, v1, p1}, LX2/b;-><init>(ILjava/io/InputStream;)V

    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/wallpaper/magician/weather/implementes/sr/server/Img2WeatherRetrofitImpl$generate$1;->$resultConsumer:Ljava/util/function/Consumer;

    new-instance p1, LX2/b;

    const/4 p2, 0x1

    invoke-direct {p1, p2, v0}, LX2/b;-><init>(ILjava/io/InputStream;)V

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
