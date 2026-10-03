.class public Lcom/samsung/android/sdk/scs/base/ResultException;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final mResultCode:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 2
    iput p1, p0, Lcom/samsung/android/sdk/scs/base/ResultException;->mResultCode:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 3
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 4
    iput p1, p0, Lcom/samsung/android/sdk/scs/base/ResultException;->mResultCode:I

    return-void
.end method


# virtual methods
.method public getResultCode()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/base/ResultException;->mResultCode:I

    return p0
.end method
