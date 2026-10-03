.class public final synthetic LN1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnSeekCompleteListener;


# instance fields
.field public final synthetic a:LN1/j;


# direct methods
.method public synthetic constructor <init>(LN1/j;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LN1/d;->a:LN1/j;

    return-void
.end method


# virtual methods
.method public final onSeekComplete(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 2

    iget-object p0, p0, LN1/d;->a:LN1/j;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->isVisible()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, LN1/j;->i()V

    iget-object p1, p0, LN1/j;->m:Landroid/os/Handler;

    iget-object p0, p0, LN1/j;->g:LA0/a;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
