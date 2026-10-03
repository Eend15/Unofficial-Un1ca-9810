.class public final synthetic Lcom/samsung/android/sdk/scs/ai/asr/tasks/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

.field public final synthetic b:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/d;->a:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/d;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/d;->b:Landroid/os/Bundle;

    check-cast p1, Ljava/lang/String;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/tasks/d;->a:Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;

    invoke-static {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;->a(Lcom/samsung/android/sdk/scs/ai/asr/tasks/SttRecognitionTask$ListenerWrapper;Landroid/os/Bundle;Ljava/lang/String;)V

    return-void
.end method
