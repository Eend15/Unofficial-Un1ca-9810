.class public Lio/mesalabs/unica/settings/ui/DynamicIslandPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "DynamicIslandPreferenceController.java"

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0
    const/4 p0, 0x0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0
    const/4 p0, 0x0
    return-object p0
.end method

.method public bridge synthetic getBackupKeys()Ljava/util/List;
    .locals 0
    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getBackupKeys()Ljava/util/List;
    move-result-object p0
    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0
    const/4 p0, 0x0
    return-object p0
.end method

.method public bridge synthetic getLaunchIntent()Landroid/content/Intent;
    .locals 0
    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getLaunchIntent()Landroid/content/Intent;
    move-result-object p0
    return-object p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0
    const/4 p0, 0x0
    return p0
.end method

.method public bridge synthetic getStatusText()Ljava/lang/String;
    .locals 0
    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->getStatusText()Ljava/lang/String;
    move-result-object p0
    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0
    const/4 p0, 0x0
    return p0
.end method

.method public bridge synthetic ignoreUserInteraction()V
    .locals 0
    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->ignoreUserInteraction()V
    return-void
.end method

.method public isChecked()Z
    .locals 3
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    const-string v1, "unica_dynamic_island_enabled"
    const/4 v2, 0x1
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    move-result v0
    if-eqz v0, :disabled
    const/4 v0, 0x1
    return v0
    :disabled
    const/4 v0, 0x0
    return v0
.end method

.method public isControllable()Z
    .locals 0
    const/4 p0, 0x1
    return p0
.end method

.method public bridge synthetic needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    .locals 0
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->needUserInteraction(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/Controllable$ControllableType;
    move-result-object p0
    return-object p0
.end method

.method public bridge synthetic runDefaultAction()Z
    .locals 0
    invoke-super {p0}, Lcom/android/settings/core/TogglePreferenceController;->runDefaultAction()Z
    move-result p0
    return p0
.end method

.method public setChecked(Z)Z
    .locals 2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
    move-result-object v0
    const-string v1, "unica_dynamic_island_enabled"
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    return v0
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0
    const/4 p0, 0x0
    return p0
.end method
