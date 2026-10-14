.class public final Lp2/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lkotlinx/coroutines/flow/i;

.field public final b:Landroidx/recyclerview/widget/y;

.field public final c:Lkotlinx/coroutines/flow/i;

.field public final d:Landroidx/recyclerview/widget/y;

.field public e:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

.field public f:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherTime;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lkotlinx/coroutines/flow/i;

    sget-object v1, LY4/b;->b:LU3/w;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lp2/c;->a:Lkotlinx/coroutines/flow/i;

    new-instance v2, Landroidx/recyclerview/widget/y;

    const/16 v3, 0xa

    invoke-direct {v2, v3, v0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput-object v2, p0, Lp2/c;->b:Landroidx/recyclerview/widget/y;

    new-instance v0, Lkotlinx/coroutines/flow/i;

    invoke-direct {v0, v1}, Lkotlinx/coroutines/flow/i;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lp2/c;->c:Lkotlinx/coroutines/flow/i;

    new-instance v1, Landroidx/recyclerview/widget/y;

    const/16 v2, 0xa

    invoke-direct {v1, v2, v0}, Landroidx/recyclerview/widget/y;-><init>(ILjava/lang/Object;)V

    iput-object v1, p0, Lp2/c;->d:Landroidx/recyclerview/widget/y;

    return-void
.end method
