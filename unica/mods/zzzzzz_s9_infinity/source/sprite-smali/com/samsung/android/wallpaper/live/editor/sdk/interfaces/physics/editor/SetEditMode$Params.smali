.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field private static final KEY_IS_EDIT_MODE:Ljava/lang/String; = "isEditMode"


# instance fields
.field public isEditMode:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "isEditMode"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;->isEditMode:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;->isEditMode:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/SetEditMode$Params;->isEditMode:Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    const-string v1, "isEditMode"

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
