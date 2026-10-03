.class final Lretrofit2/Platform$Android;
.super Lretrofit2/Platform;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit2/Platform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit2/Platform$Android$MainThreadExecutor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lretrofit2/Platform;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    new-instance p0, Lretrofit2/Platform$Android$MainThreadExecutor;

    invoke-direct {p0}, Lretrofit2/Platform$Android$MainThreadExecutor;-><init>()V

    return-object p0
.end method
