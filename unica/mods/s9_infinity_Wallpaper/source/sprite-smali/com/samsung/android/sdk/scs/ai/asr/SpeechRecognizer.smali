.class public Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SpeechRecognizer"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInnerListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

.field private final mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mInnerListener:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-direct {v0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->cancel()V

    return-void
.end method

.method public getSupportedLocales()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getSupportedLocales(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public init()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->init()V

    return-void
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {p0}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->release()V

    return-void
.end method

.method public start(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;->mRecognizerController:Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizerControl;->start(Lcom/samsung/android/sdk/scs/ai/asr/RecognitionConfig;Ljava/io/InputStream;)V

    const-string p0, "SpeechRecognizer"

    const-string p1, "started"

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
