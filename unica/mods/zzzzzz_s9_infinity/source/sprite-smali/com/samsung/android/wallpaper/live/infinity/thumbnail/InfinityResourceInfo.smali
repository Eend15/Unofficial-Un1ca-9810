.class public Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final KEY_FRAME_NUMBER:Ljava/lang/String; = "thumbnail_frame_no"

.field private static final KEY_LOCK_FRAME_NUMBER:Ljava/lang/String; = "thumbnail_lock_frame_no"

.field private static final KEY_PREVIEW_SCREEN:Ljava/lang/String; = "preview_screen"

.field private static final KEY_SYSTEM_FRAME_NUMBER:Ljava/lang/String; = "thumbnail_system_frame_no"

.field private static final KEY_TRANSITION_FRAME_INFO:Ljava/lang/String; = "transition_frame_info"

.field private static final TAG:Ljava/lang/String; = "InfinityResourceInfo"

.field public static final VALUE_PREVIEW_SCREEN_AOD:Ljava/lang/String; = "AOD"

.field public static final VALUE_PREVIEW_SCREEN_HOME:Ljava/lang/String; = "HOME"

.field public static final VALUE_PREVIEW_SCREEN_LOCK:Ljava/lang/String; = "LOCK"


# instance fields
.field private mFileName:Ljava/lang/String;

.field private mLockFrameNo:I

.field private mPreviewScreen:Ljava/lang/String;

.field private mSystemFrameNo:I

.field private mTransitionFrameInfo:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mFileName:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mSystemFrameNo:I

    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mLockFrameNo:I

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mPreviewScreen:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mTransitionFrameInfo:Ljava/lang/String;

    if-nez p1, :cond_0

    new-array p0, v1, [Ljava/lang/Object;

    const-string p1, "InfinityResourceInfo"

    const-string v0, "service settings is NULL"

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v2, "filename"

    invoke-virtual {p1, v2, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mFileName:Ljava/lang/String;

    const-string v2, "thumbnail_frame_no"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "thumbnail_system_frame_no"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mSystemFrameNo:I

    const-string v2, "thumbnail_lock_frame_no"

    invoke-virtual {p1, v2, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mLockFrameNo:I

    const-string v1, "preview_screen"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mPreviewScreen:Ljava/lang/String;

    const-string v1, "transition_frame_info"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mTransitionFrameInfo:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFrameNumber(I)I
    .locals 1

    const/4 v0, 0x1

    invoke-static {p1, v0}, LK/I;->Y(II)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mSystemFrameNo:I

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mLockFrameNo:I

    :goto_0
    return p0
.end method

.method public getPreviewScreen()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mPreviewScreen:Ljava/lang/String;

    return-object p0
.end method

.method public getTransitionFrameInfo()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mTransitionFrameInfo:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "InfinityResourceInfo{filename=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', thumbnail_lock_frame_no=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mLockFrameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', thumbnail_system_frame_no=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mSystemFrameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', preview_screen=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/infinity/thumbnail/InfinityResourceInfo;->mPreviewScreen:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
