.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field private static final KEY_EMOJI_ID:Ljava/lang/String; = "emojiId"

.field private static final KEY_FRAME_COUNT:Ljava/lang/String; = "frameCount"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "groupId"


# instance fields
.field public emojiId:Ljava/lang/String;

.field public frameCount:I

.field public groupId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    .line 3
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->emojiId:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->frameCount:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 6
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    .line 7
    const-string v0, "emojiId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->emojiId:Ljava/lang/String;

    .line 8
    const-string v0, "frameCount"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->frameCount:I

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "groupId"

    iget v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->groupId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "emojiId"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->emojiId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "frameCount"

    iget p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/UpdateEmoji$Params;->frameCount:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
