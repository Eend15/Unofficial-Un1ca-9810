.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/safety/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/asr/safety/WatchDogCallback;


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/a;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final onTimeoutDetected()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/safety/a;->a:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
