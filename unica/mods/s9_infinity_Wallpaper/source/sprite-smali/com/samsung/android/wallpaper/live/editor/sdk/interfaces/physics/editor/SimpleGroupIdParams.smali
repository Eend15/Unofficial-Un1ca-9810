.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.source "SourceFile"


# static fields
.field private static final KEY_GROUP_ID:Ljava/lang/String; = "groupId"


# instance fields
.field public groupId:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "groupId"

    iget p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SimpleGroupIdParams;->groupId:I

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method
