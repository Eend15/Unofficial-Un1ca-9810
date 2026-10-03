.class public Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$SaveToCacheParamBuilder;
.super Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SaveToCacheParamBuilder"
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
.method public setExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$SaveToCacheParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "mimeType"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setFilePath(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$SaveToCacheParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "filePath"

    invoke-virtual {v0, v1, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public setPfd(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$SaveToCacheParamBuilder;
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->params:Landroid/os/Bundle;

    const-string v1, "Pfd"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object p0
.end method
