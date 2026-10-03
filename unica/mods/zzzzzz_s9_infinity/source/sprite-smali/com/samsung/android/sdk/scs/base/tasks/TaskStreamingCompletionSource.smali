.class public Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingCompletionSource;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource<",
        "TTResult;>;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "StreamingTaskCompletionSource"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingImpl;

    invoke-direct {v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskStreamingImpl;-><init>()V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;-><init>(Lcom/samsung/android/sdk/scs/base/tasks/TaskImpl;)V

    return-void
.end method
