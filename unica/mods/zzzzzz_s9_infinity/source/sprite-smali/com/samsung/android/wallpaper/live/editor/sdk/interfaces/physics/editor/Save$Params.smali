.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# instance fields
.field public saveId:J

.field public which:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 2
    iput p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->which:I

    .line 3
    iput-wide p2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->saveId:J

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 4
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 5
    const-string v0, "which"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->which:I

    .line 6
    const-string v0, "saveId"

    const-wide/16 v1, -0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->saveId:J

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "which"

    iget v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->which:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "saveId"

    iget-wide v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Params;->saveId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    return-object v0
.end method
