.class public Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static ANGLE_FRAME_DEFAULT_MAPPING:Ljava/lang/String; = "0 0, 60 60, 120 360, 175 526"

.field private static final KEY_ANGLE_FRAME_MAPPING:Ljava/lang/String; = "angle_frame_mapping"

.field private static final KEY_FILE_NAME:Ljava/lang/String; = "filename"

.field private static final KEY_FRAME_NUMBER:Ljava/lang/String; = "thumbnail_frame_no"

.field private static final TAG:Ljava/lang/String; = "FoldResourceInfo"


# instance fields
.field private mAngleFrameMapping:Ljava/lang/String;

.field private mFileName:Ljava/lang/String;

.field private mFrameNo:I


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "FoldResourceInfo"

    const-string v0, "service settings is NULL"

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v1, "filename"

    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mFileName:Ljava/lang/String;

    const-string v1, "thumbnail_frame_no"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mFrameNo:I

    const-string v0, "angle_frame_mapping"

    sget-object v1, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->ANGLE_FRAME_DEFAULT_MAPPING:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mAngleFrameMapping:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAngleFrameMapping()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mAngleFrameMapping:Ljava/lang/String;

    return-object p0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mFileName:Ljava/lang/String;

    return-object p0
.end method

.method public getFrameNumber()I
    .locals 0

    iget p0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mFrameNo:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FoldResourceInfo{filename=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', thumbnail_frame_no=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mFrameNo:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\', angle_frame_mapping=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/fold/thumbnail/FoldResourceInfo;->mAngleFrameMapping:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, LB/a;->o(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
