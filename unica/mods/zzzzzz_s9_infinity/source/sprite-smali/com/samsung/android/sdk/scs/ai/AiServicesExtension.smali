.class public Lcom/samsung/android/sdk/scs/ai/AiServicesExtension;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLongTextSummarizer(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/language/Summarizer;)Lcom/samsung/android/sdk/scs/ai/extension/lts/ILongTextSummarizer;
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/sdk/scs/ai/extension/lts/LongTextSummarizer;-><init>(Landroid/content/Context;Lcom/samsung/android/sdk/scs/ai/language/Summarizer;)V

    return-object v0
.end method
