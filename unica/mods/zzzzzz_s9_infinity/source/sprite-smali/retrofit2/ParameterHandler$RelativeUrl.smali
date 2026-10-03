.class final Lretrofit2/ParameterHandler$RelativeUrl;
.super Lretrofit2/ParameterHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/ParameterHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelativeUrl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lretrofit2/ParameterHandler<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final method:Ljava/lang/reflect/Method;

.field private final p:I


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;I)V
    .locals 0

    invoke-direct {p0}, Lretrofit2/ParameterHandler;-><init>()V

    iput-object p1, p0, Lretrofit2/ParameterHandler$RelativeUrl;->method:Ljava/lang/reflect/Method;

    iput p2, p0, Lretrofit2/ParameterHandler$RelativeUrl;->p:I

    return-void
.end method


# virtual methods
.method public apply(Lretrofit2/RequestBuilder;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p1, p2}, Lretrofit2/RequestBuilder;->setRelativeUrl(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object p1, p0, Lretrofit2/ParameterHandler$RelativeUrl;->method:Ljava/lang/reflect/Method;

    iget p0, p0, Lretrofit2/ParameterHandler$RelativeUrl;->p:I

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "@Url parameter is null."

    invoke-static {p1, p0, v0, p2}, Lretrofit2/Utils;->parameterError(Ljava/lang/reflect/Method;ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
