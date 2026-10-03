.class public final Lw1/e;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p0, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public static a(I)F
    .locals 2

    invoke-static {}, Lf2/g;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    and-int/lit8 v0, p0, 0x3c

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    :cond_0
    invoke-static {}, Lf2/g;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    and-int/lit8 p0, p0, 0x3c

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    if-nez p0, :cond_2

    :cond_1
    sget-object p0, Lz1/a;->e:Lz1/a;

    goto :goto_0

    :cond_2
    invoke-static {}, Lf2/g;->f()Z

    move-result p0

    if-eqz p0, :cond_3

    sget-object p0, Lz1/a;->f:Lz1/a;

    goto :goto_0

    :cond_3
    sget-object p0, Lz1/a;->d:Lz1/a;

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    const/high16 v0, 0x3f800000    # 1.0f

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    sget-object p0, Lw1/d;->d:[Lw1/d;

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_1

    :cond_4
    sget-object p0, Lw1/d;->d:[Lw1/d;

    goto :goto_1

    :cond_5
    sget-object p0, Lw1/d;->d:[Lw1/d;

    :goto_1
    return v0
.end method
