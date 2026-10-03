.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic a:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/j;->a:Z

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/j;->a:Z

    check-cast p1, Ljava/lang/Thread;

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogService;->b(ZLjava/lang/Thread;)Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDog;

    move-result-object p0

    return-object p0
.end method
