.class final Lretrofit2/BuiltInConverters;
.super Lretrofit2/Converter$Factory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/BuiltInConverters$ToStringConverter;,
        Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$RequestBodyConverter;,
        Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;,
        Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;
    }
.end annotation


# instance fields
.field private checkForKotlinUnit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lretrofit2/BuiltInConverters;->checkForKotlinUnit:Z

    return-void
.end method


# virtual methods
.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    const-class p0, Lokhttp3/RequestBody;

    invoke-static {p1}, Lretrofit2/Utils;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lretrofit2/BuiltInConverters$RequestBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$RequestBodyConverter;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    const-class p3, Lokhttp3/ResponseBody;

    if-ne p1, p3, :cond_1

    const-class p0, Lretrofit2/http/Streaming;

    invoke-static {p2, p0}, Lretrofit2/Utils;->isAnnotationPresent([Ljava/lang/annotation/Annotation;Ljava/lang/Class;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$StreamingResponseBodyConverter;

    goto :goto_0

    :cond_0
    sget-object p0, Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$BufferingResponseBodyConverter;

    :goto_0
    return-object p0

    :cond_1
    const-class p2, Ljava/lang/Void;

    if-ne p1, p2, :cond_2

    sget-object p0, Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$VoidResponseBodyConverter;

    return-object p0

    :cond_2
    iget-boolean p2, p0, Lretrofit2/BuiltInConverters;->checkForKotlinUnit:Z

    if-eqz p2, :cond_3

    :try_start_0
    const-class p2, Lq3/m;

    if-ne p1, p2, :cond_3

    sget-object p0, Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;->INSTANCE:Lretrofit2/BuiltInConverters$UnitResponseBodyConverter;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lretrofit2/BuiltInConverters;->checkForKotlinUnit:Z

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method
