.class Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;
.super Lcom/samsung/android/scs/ai/sdkcommon/asr/IRecognitionListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ListenerWrapper"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final complete:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/samsung/android/scs/ai/sdkcommon/asr/IRecognitionListener$Stub;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->complete:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public onError(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "error_message"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "error_code"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->TAG:Ljava/lang/String;

    const-string v3, "onError"

    iget-object v4, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    filled-new-array {v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->secure(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p1, v1, v0, v2}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;->onError(ILjava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->complete:Ljava/util/function/Consumer;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public onPartialResults(Landroid/os/Bundle;)V
    .locals 3

    const-class v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/DialogInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "onPartialResults"

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    filled-new-array {v1, v2, p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->secure(Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;->onPartialResults(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public onResults(Landroid/os/Bundle;)V
    .locals 4

    const-class v0, Lcom/samsung/android/scs/ai/sdkcommon/asr/DialogInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    const-string v0, "result"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->TAG:Ljava/lang/String;

    const-string v2, "onResults"

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->secure(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    invoke-interface {v1, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;->onResults(Ljava/lang/String;Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->complete:Ljava/util/function/Consumer;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "done:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/tasks/a;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/tasks/a;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public release()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->TAG:Ljava/lang/String;

    const-string v1, "release listener"

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/ai/asr/ASRLog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask;->b()Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr_6_0/tasks/SttRecognitionTask$ListenerWrapper;->root:Lcom/samsung/android/sdk/scs/ai/asr_6_0/SpeechRecognitionListener;

    return-void
.end method
