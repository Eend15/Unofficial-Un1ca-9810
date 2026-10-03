.class public interface abstract Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onError(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public onLocaleChanged(Ljava/util/Locale;Landroid/os/Bundle;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onLocaleUpdate : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onPartialResults(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public onProgressUpdate(ILandroid/os/Bundle;)V
    .locals 1

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onProgressUpdate : "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public abstract onResults(Ljava/lang/String;Landroid/os/Bundle;)V
.end method
