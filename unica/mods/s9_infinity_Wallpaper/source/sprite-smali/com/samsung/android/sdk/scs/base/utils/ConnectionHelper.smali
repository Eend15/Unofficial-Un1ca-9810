.class public Lcom/samsung/android/sdk/scs/base/utils/ConnectionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getC2PAServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "visual.intent.action.BIND_C2PA_SERVICE"

    const-string v1, "com.samsung.android.visual.cloudcore"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadCoreServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "visual.intent.action.BIND_DOWNLOAD_SERVICE"

    const-string v1, "com.samsung.android.aicore"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getDownloadServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "visual.intent.action.BIND_DOWNLOAD_SERVICE"

    const-string v1, "com.samsung.android.visual.cloudcore"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getImageEditorServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "visual.intent.action.BIND_IMAGE_EDITOR_SERVICE"

    const-string v1, "com.samsung.android.visual.cloudcore"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getNaturalLanguageServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "scs.ai.intent.action.BIND_TEXT_SERVICE"

    const-string v1, "com.samsung.android.scs"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getPortraitServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "visual.intent.action.BIND_PORTRAIT_SERVICE"

    const-string v1, "com.samsung.android.visual.cloudcore"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getSuggestionServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "scs.ai.intent.action.BIND_SUGGESTION_SERVICE"

    const-string v1, "com.samsung.android.scs"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "intellivoiceservice.intent.action.BIND_TRANSLATION"

    const-string v1, "com.samsung.android.intellivoiceservice"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getTranslationServiceIntentForExternal()Landroid/content/Intent;
    .locals 2

    const-string v0, "intellivoiceservice.intent.action.BIND_TRANSLATION_FOR_EXTERNAL"

    const-string v1, "com.samsung.android.intellivoiceservice"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getVisionServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "scs.ai.intent.action.BIND_IMAGE_SERVICE"

    const-string v1, "com.samsung.android.scs"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static getWallpaperServiceIntent()Landroid/content/Intent;
    .locals 2

    const-string v0, "visual.intent.action.BIND_WALLPAPER_SERVICE"

    const-string v1, "com.samsung.android.aicore"

    invoke-static {v0, v1}, LB/a;->i(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method
