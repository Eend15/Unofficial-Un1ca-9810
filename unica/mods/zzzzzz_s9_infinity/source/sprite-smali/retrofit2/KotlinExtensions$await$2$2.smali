.class public final Lretrofit2/KotlinExtensions$await$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lretrofit2/KotlinExtensions;->await(Lretrofit2/Call;Lu3/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lretrofit2/Callback<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0003\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J+\u0010\u0007\u001a\u00020\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J%\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00028\u00000\u00022\u0006\u0010\n\u001a\u00020\tH\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\r"
    }
    d2 = {
        "retrofit2/KotlinExtensions$await$2$2",
        "Lretrofit2/Callback;",
        "Lretrofit2/Call;",
        "call",
        "Lretrofit2/Response;",
        "response",
        "Lq3/m;",
        "onResponse",
        "(Lretrofit2/Call;Lretrofit2/Response;)V",
        "",
        "t",
        "onFailure",
        "(Lretrofit2/Call;Ljava/lang/Throwable;)V",
        "retrofit"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field final synthetic $continuation:LW4/d;


# direct methods
.method public constructor <init>(LW4/d;)V
    .locals 0

    iput-object p1, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:LW4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, LF3/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "t"

    invoke-static {p2, p1}, LF3/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:LW4/d;

    invoke-static {p2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    check-cast p0, LW4/e;

    invoke-virtual {p0, p1}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call<",
            "TT;>;",
            "Lretrofit2/Response<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "call"

    invoke-static {p1, v0}, LF3/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "response"

    invoke-static {p2, v0}, LF3/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lretrofit2/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lretrofit2/Call;->request()Lokhttp3/Request;

    move-result-object p1

    const-class p2, Lretrofit2/Invocation;

    invoke-virtual {p1, p2}, Lokhttp3/Request;->tag(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Lretrofit2/Invocation;

    invoke-virtual {p1}, Lretrofit2/Invocation;->method()Ljava/lang/reflect/Method;

    move-result-object p1

    new-instance p2, Lq3/b;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Response from "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "method"

    invoke-static {p1, v1}, LF3/k;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "method.declaringClass"

    invoke-static {v1, v2}, LF3/k;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " was null but response body type was declared as non-null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:LW4/d;

    invoke-static {p2}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    check-cast p0, LW4/e;

    invoke-virtual {p0, p1}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance p0, Lq3/b;

    invoke-direct {p0}, Ljava/lang/NullPointerException;-><init>()V

    const-class p1, LF3/k;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, LF3/k;->k(Ljava/lang/RuntimeException;Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object p0, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:LW4/d;

    check-cast p0, LW4/e;

    invoke-virtual {p0, p2}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lretrofit2/KotlinExtensions$await$2$2;->$continuation:LW4/d;

    new-instance p1, Lretrofit2/HttpException;

    invoke-direct {p1, p2}, Lretrofit2/HttpException;-><init>(Lretrofit2/Response;)V

    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    check-cast p0, LW4/e;

    invoke-virtual {p0, p1}, LW4/e;->resumeWith(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
