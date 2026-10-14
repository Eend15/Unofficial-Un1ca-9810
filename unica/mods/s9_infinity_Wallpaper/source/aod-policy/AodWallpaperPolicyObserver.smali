.class public LAodWallpaperPolicyObserver;
.super Landroid/os/FileObserver;
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    const/16 v0, 0x188
    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V
    return-void
.end method
.method public onEvent(ILjava/lang/String;)V
    .locals 1
    if-eqz p2, :done
    const-string v0, "userlist.xml"
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    move-result v0
    if-nez v0, :users
    const-string v0, "[0-9]+(\\.xml)?"
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :wallpaper
    :users
    invoke-static {}, LAodWallpaperPolicy;->watchUsers()V
    goto :apply
    :wallpaper
    const-string v0, "wallpaper"
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :done
    const-string v0, ".xml"
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    move-result v0
    if-eqz v0, :done
    :apply
    invoke-static {}, LAodWallpaperPolicy;->apply()V
    :done
    return-void
.end method
