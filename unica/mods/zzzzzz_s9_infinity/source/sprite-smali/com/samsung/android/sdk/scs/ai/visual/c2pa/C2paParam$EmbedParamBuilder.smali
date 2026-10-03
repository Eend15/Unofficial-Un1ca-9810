.class public Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
.super Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EmbedParamBuilder"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;-><init>(Landroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public setIngredientExtensionTypes(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;"
        }
    .end annotation

    const-string v0, "ingredientMimeTypes"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public setIngredientPFD(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;"
        }
    .end annotation

    const-string v0, "ingredientPfds"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public setIngredientPaths(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;"
        }
    .end annotation

    const-string v0, "ingredientPaths"

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public setManifestJson(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "jsonStr"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParentExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "parentMimeType"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setParentPFD(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "parentPfd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setParentPath(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "parentPath"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "targetMimeType"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setTargetPFD(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "targetPfd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method

.method public setTargetPath(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "targetPath"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
