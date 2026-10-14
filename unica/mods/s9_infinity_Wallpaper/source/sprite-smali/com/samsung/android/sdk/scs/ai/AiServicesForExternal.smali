.class public Lcom/samsung/android/sdk/scs/ai/AiServicesForExternal;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNeuralTranslator(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;
    .locals 2

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/sdk/scs/ai/translation/NeuralTranslator;-><init>(Landroid/content/Context;Z)V

    return-object v0
.end method

.method public static getSpeechRecognizer(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/asr/SpeechRecognitionListener;)V

    return-object v0
.end method

.method public static getSuggesterForExternal(Landroid/content/Context;)Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/language/SuggesterForExternal;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
