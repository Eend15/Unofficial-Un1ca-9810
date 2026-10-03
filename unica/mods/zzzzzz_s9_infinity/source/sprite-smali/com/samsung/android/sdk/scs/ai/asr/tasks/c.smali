.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/tasks/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    invoke-virtual {p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;->release()V

    return-void
.end method
