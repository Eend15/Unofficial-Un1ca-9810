.class public abstract Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
.super Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "InputBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;"
    }
.end annotation


# instance fields
.field protected final outputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;Ljava/lang/String;)V
    .locals 0

    iget-object p1, p1, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;-><init>(Landroid/os/Bundle;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->outputs:Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;->params:Landroid/os/Bundle;

    const-string p1, "inputType"

    invoke-virtual {p0, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addOutputParcelable(Landroid/os/Parcelable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->outputs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addOutputParcelable(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;->outputs:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public asGenEditMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenEditModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenEditModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenEditModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenEditModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asGenSticker()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$GenStickerModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asImageConversion()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$ImageConversionModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asPetPortraitMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PetPortraitModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PetPortraitModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PetPortraitModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PetPortraitModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asPortraitMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PortraitModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PortraitModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PortraitModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$PortraitModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asRestylingMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$RestylingBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$RestylingBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$RestylingBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$RestylingBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asSketch2ImageMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Sketch2ImageModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Sketch2ImageModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Sketch2ImageModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Sketch2ImageModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asSketchGuidedEditingMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$SketchGuidedEditingModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$SketchGuidedEditingModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$SketchGuidedEditingModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$SketchGuidedEditingModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public asWallpaperMode()Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$WallpaperModeBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$WallpaperModeBuilder<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$WallpaperModeBuilder;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$WallpaperModeBuilder;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$Builder;)V

    return-object v0
.end method

.method public abstract input(Ljava/lang/Object;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract sampleCount(I)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract serviceVersion(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/samsung/android/sdk/scs/ai/visual/ImageEditorParam$InputBuilder<",
            "TT;>;"
        }
    .end annotation
.end method
