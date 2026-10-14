.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field private static final KEY_BG_COLOR:Ljava/lang/String; = "bgColor"

.field private static final KEY_CONTENT_NAME:Ljava/lang/String; = "contentName"

.field private static final KEY_EDIT_TYPE:Ljava/lang/String; = "editType"

.field private static final KEY_EMOJI_LIST:Ljava/lang/String; = "emojiList"

.field private static final KEY_IS_PRELOADED:Ljava/lang/String; = "preload"

.field private static final KEY_TEMPLATE_NAME:Ljava/lang/String; = "templateName"


# instance fields
.field public bgColor:Ljava/lang/String;

.field public contentName:Ljava/lang/String;

.field public editType:Ljava/lang/String;

.field public emojiList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public isPreloaded:Ljava/lang/Boolean;

.field public templateName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 8

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;-><init>(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "contentName"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v0, "templateName"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "editType"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v0, "bgColor"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v0, "preload"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v0, "emojiList"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    move-object v1, p0

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;-><init>(Landroid/os/Bundle;)V

    .line 2
    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;)V

    return-void
.end method

.method private init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->contentName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->templateName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->editType:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->bgColor:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->isPreloaded:Ljava/lang/Boolean;

    iput-object p6, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->emojiList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "contentName"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->contentName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "templateName"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->templateName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "editType"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->editType:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "bgColor"

    iget-object v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->bgColor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->isPreloaded:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, "preload"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "emojiList"

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/GetWallpaperInfo$Result;->emojiList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object v0
.end method
