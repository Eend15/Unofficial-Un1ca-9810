.class public Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;
.super Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Result"
.end annotation


# static fields
.field private static final KEY_SAVED_FILE_DESCRIPTOR:Ljava/lang/String; = "savedFileDescriptor"


# instance fields
.field public saveId:J

.field public savedFileDescriptor:Landroid/os/ParcelFileDescriptor;


# direct methods
.method public constructor <init>(JLandroid/os/ParcelFileDescriptor;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;-><init>(Landroid/os/Bundle;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;->init(JLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 3

    .line 3
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallResult;-><init>(Landroid/os/Bundle;)V

    .line 4
    const-string v0, "saveId"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    const-string v2, "savedFileDescriptor"

    .line 5
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/os/ParcelFileDescriptor;

    .line 6
    invoke-direct {p0, v0, v1, p1}, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;->init(JLandroid/os/ParcelFileDescriptor;)V

    return-void
.end method

.method private init(JLandroid/os/ParcelFileDescriptor;)V
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;->saveId:J

    iput-object p3, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;->savedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    return-void
.end method


# virtual methods
.method public toBundle()Landroid/os/Bundle;
    .locals 4

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "saveId"

    iget-wide v2, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;->saveId:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    const-string v1, "savedFileDescriptor"

    iget-object p0, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/interfaces/physics/editor/Save$Result;->savedFileDescriptor:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method
