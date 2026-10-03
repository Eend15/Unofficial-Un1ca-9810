.class public Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;
.super Lcom/samsung/android/sdk/scs/base/ResultException;
.source "SourceFile"


# instance fields
.field public final mErrorCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(I)V

    .line 2
    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0, p2, p3}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    .line 6
    iput p2, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/sdk/scs/base/ResultException;-><init>(ILjava/lang/String;)V

    .line 4
    sget-object p1, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;->DEVICE_UNKNOWN_ERROR:Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return-void
.end method


# virtual methods
.method public getErrorCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    return p0
.end method

.method public getErrorCodeClassified()Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/language/ResultErrorException;->mErrorCode:I

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier;->getErrorCode(I)Lcom/samsung/android/sdk/scs/ai/language/ErrorClassifier$ErrorCode;

    move-result-object p0

    return-object p0
.end method
