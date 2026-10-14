.class public abstract Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public rawExtras:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/wallpaper/live/editor/sdk/remotecall/CallParams;->rawExtras:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public abstract toBundle()Landroid/os/Bundle;
.end method
