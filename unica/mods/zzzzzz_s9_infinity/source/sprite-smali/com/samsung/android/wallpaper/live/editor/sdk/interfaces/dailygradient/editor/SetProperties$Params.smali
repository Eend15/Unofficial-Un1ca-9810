.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field private static final KEY_IS_COVER_ID:Ljava/lang/String; = "is_cover"

.field private static final KEY_STYLE_ID:Ljava/lang/String; = "styleId"

.field private static final KEY_THEME_ID:Ljava/lang/String; = "themeId"


# instance fields
.field public isCover:Z

.field public styleId:Ljava/lang/String;

.field public themeId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .line 5
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 6
    const-string v0, "themeId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->themeId:Ljava/lang/String;

    .line 7
    const-string v0, "styleId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->styleId:Ljava/lang/String;

    .line 8
    const-string v0, "is_cover"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->isCover:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;-><init>(Landroid/os/Bundle;)V

    .line 2
    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->themeId:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->styleId:Ljava/lang/String;

    .line 4
    iput-boolean p3, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->isCover:Z

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "themeId"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->themeId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "styleId"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->styleId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "is_cover"

    iget-boolean p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/dailygradient/editor/SetProperties$Params;->isCover:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method
