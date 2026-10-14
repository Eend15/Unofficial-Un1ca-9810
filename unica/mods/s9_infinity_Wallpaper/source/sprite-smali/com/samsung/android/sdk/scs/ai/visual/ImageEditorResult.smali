.class public Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field retBundle:Landroid/os/Bundle;

.field status:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBundle()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->retBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public getResult()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->status:I

    return p0
.end method

.method public setBundle(Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->retBundle:Landroid/os/Bundle;

    return-void
.end method

.method public setResult(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorResult;->status:I

    return-void
.end method
