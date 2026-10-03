.class public Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;
.super Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V
    .locals 1

    const-string v0, "text"

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOutput(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->addOutputParcelable(Landroid/os/Parcelable;)V

    .line 2
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    const-string v0, "outputPfdList"

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->outputs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public addOutput(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;"
        }
    .end annotation

    .line 3
    invoke-super {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->addOutputParcelable(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    const-string v0, "outputPfdList"

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->outputs:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public asGenSticker()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->asGenSticker()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public asImageConversion()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->asImageConversion()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic input(Ljava/lang/Object;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;->input(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public input(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "inputText"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic sampleCount(I)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;->sampleCount(I)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public sampleCount(I)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "sampleCount"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public bridge synthetic serviceVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;->serviceVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;

    move-result-object p0

    return-object p0
.end method

.method public serviceVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$TextBuilder;
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "serviceVersion"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
