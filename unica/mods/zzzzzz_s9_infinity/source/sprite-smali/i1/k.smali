.class public final synthetic Li1/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ/a;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Ljava/lang/Throwable;

    sget-object p0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "SpriteWallpaperApp"

    const-string v0, "WorkManager initialization failed"

    invoke-static {p1, v0, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
