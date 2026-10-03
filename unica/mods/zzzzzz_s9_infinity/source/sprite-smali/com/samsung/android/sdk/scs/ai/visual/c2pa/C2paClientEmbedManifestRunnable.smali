.class public Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;
.super Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable<",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "C2paClientEmbedManifestRunnable"


# instance fields
.field mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;

.field mIngredientPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mJsonStr:Ljava/lang/String;

.field mParentPath:Ljava/lang/String;

.field private final mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

.field private mTargetPath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

    new-instance p1, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable$1;-><init>(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;)V

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;

    return-void
.end method

.method public static synthetic access$000(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;)Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    return-object p0
.end method


# virtual methods
.method public execute()V
    .locals 5

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->TAG:Ljava/lang/String;

    const-string v1, "execute embedManifestToFile()"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mTargetPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mTargetPath:Ljava/lang/String;

    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mJsonStr:Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mTargetPath:Ljava/lang/String;

    if-nez v2, :cond_0

    goto/16 :goto_4

    :cond_0
    new-instance v2, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    invoke-direct {v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mJsonStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setManifestJson(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setTargetPFD(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setTargetExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mTargetPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setTargetPath(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mParentPath:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_0

    :cond_1
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getParcelFileDescriptor(Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setParentPFD(Landroid/os/ParcelFileDescriptor;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mParentPath:Ljava/lang/String;

    if-nez v1, :cond_2

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-static {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paUtils;->getFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setParentExtensionType(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mParentPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setParentPath(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mIngredientPaths:Ljava/util/List;

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_2

    :cond_3
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v4, 0x6

    invoke-direct {v3, v4}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    :goto_2
    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setIngredientPFD(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mIngredientPaths:Ljava/util/List;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/language/service/a;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Lcom/samsung/android/sdk/scs/ai/language/service/a;-><init>(I)V

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/List;

    :goto_3
    invoke-virtual {v0, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setIngredientExtensionTypes(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mIngredientPaths:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;->setIngredientPaths(Ljava/util/List;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$EmbedParamBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paParam$Builder;->build()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mServiceExecutor:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;

    invoke-virtual {v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paServiceExecutor;->getC2PAService()Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mCallback:Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;

    invoke-interface {v1, v0, v2}, Lcom/samsung/android/visual/ai/sdkcommon/IDpsC2pa;->embedManifestToPfd(Landroid/os/Bundle;Lcom/samsung/android/visual/ai/sdkcommon/IC2paEmbedCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_6

    :cond_5
    :goto_4
    if-eqz v0, :cond_6

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    :goto_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Target PFD/Extension/JSON is NULL"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/base/tasks/TaskRunnable;->mSource:Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;

    invoke-virtual {p0, v0}, Lcom/samsung/android/sdk/scs/base/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    :goto_7
    return-void
.end method

.method public getFeatureName()Ljava/lang/String;
    .locals 0

    const-string p0, "FEATURE_C2PA"

    return-object p0
.end method

.method public setIngredientPaths(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mIngredientPaths:Ljava/util/List;

    return-void
.end method

.method public setJson(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mJsonStr:Ljava/lang/String;

    return-void
.end method

.method public setParentPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mParentPath:Ljava/lang/String;

    return-void
.end method

.method public setTargetPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paClientEmbedManifestRunnable;->mTargetPath:Ljava/lang/String;

    return-void
.end method
