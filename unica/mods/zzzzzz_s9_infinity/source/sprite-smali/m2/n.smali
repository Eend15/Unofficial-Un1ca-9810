.class public final Lm2/n;
.super Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;
.implements Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperKeyguardEventListener;
.implements Lcom/google/android/torus/core/content/ConfigurationChangeListener;
.implements Lcom/google/android/torus/core/engine/listener/TorusTouchListener;


# static fields
.field public static N:J

.field public static final synthetic O:I


# instance fields
.field public final A:Lj2/b;

.field public final B:Li2/a;

.field public final C:Lq2/a;

.field public final D:Lp2/d;

.field public final E:Li2/b;

.field public final F:Lr1/c;

.field public final G:Ly2/d;

.field public final H:LW4/t;

.field public final I:Lh2/b;

.field public final J:Le3/a;

.field public final K:Landroid/os/Handler;

.field public final L:Lm2/c;

.field public final M:Lm2/c;

.field public final a:Landroid/content/Context;

.field public final b:Z

.field public final c:J

.field public d:Landroid/os/Handler;

.field public e:Ln2/b;

.field public final f:Lm2/b;

.field public g:LW4/x;

.field public h:LW4/t;

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:Z

.field public m:Landroid/util/Size;

.field public n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

.field public o:Z

.field public p:Z

.field public final q:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public r:Z

.field public s:I

.field public t:Ljava/util/Locale;

.field public final u:Ljava/util/HashMap;

.field public final v:Ljava/util/HashMap;

.field public final w:Ljava/util/HashMap;

.field public final x:Ly2/a;

.field public final y:Lr2/b;

.field public final z:Ls1/b;


# direct methods
.method public constructor <init>(Landroid/view/SurfaceHolder;Landroid/content/Context;Z)V
    .locals 11

    const-string v0, "defaultHolder"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "displayContext"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;-><init>(Landroid/view/SurfaceHolder;Z)V

    iput-object p2, p0, Lm2/n;->a:Landroid/content/Context;

    iput-boolean p3, p0, Lm2/n;->b:Z

    sget-wide v1, Lm2/n;->N:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    sput-wide v3, Lm2/n;->N:J

    iput-wide v1, p0, Lm2/n;->c:J

    new-instance p1, Lm2/b;

    invoke-direct {p1, p0}, Lm2/b;-><init>(Lm2/n;)V

    iput-object p1, p0, Lm2/n;->f:Lm2/b;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object p1, p0, Lm2/n;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/n;->u:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/n;->v:Ljava/util/HashMap;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lm2/n;->w:Ljava/util/HashMap;

    new-instance p1, Ly2/a;

    invoke-direct {p1}, Ly2/a;-><init>()V

    iput-object p1, p0, Lm2/n;->x:Ly2/a;

    sget-object p1, Lj0/s;->a:Ll2/a;

    if-nez p1, :cond_0

    sget-object v9, Lcom/samsung/android/wallpaper/live/SpriteWallpaperApp;->d:Landroidx/recyclerview/widget/b;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, LT2/b;

    const/4 p1, 0x3

    invoke-direct {v2, p2, p1}, LT2/b;-><init>(Landroid/content/Context;I)V

    new-instance v3, LG4/d;

    const/4 p1, 0x1

    const/4 p3, 0x0

    invoke-direct {v3, p1, p3}, LG4/d;-><init>(IZ)V

    new-instance v4, LG4/d;

    const/4 p1, 0x4

    const/4 p3, 0x0

    invoke-direct {v4, p1, p3}, LG4/d;-><init>(IZ)V

    new-instance v5, LU0/e;

    const/4 p1, 0x2

    invoke-direct {v5, p1}, LU0/e;-><init>(I)V

    new-instance v6, LD2/b;

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    new-instance v7, LG4/d;

    const/4 p1, 0x3

    const/4 p3, 0x0

    invoke-direct {v7, p1, p3}, LG4/d;-><init>(IZ)V

    new-instance v8, LU0/e;

    const/4 p1, 0x3

    invoke-direct {v8, p1}, LU0/e;-><init>(I)V

    new-instance p1, Ll2/a;

    move-object v1, p1

    invoke-direct/range {v1 .. v9}, Ll2/a;-><init>(LT2/b;LG4/d;LG4/d;LU0/e;LD2/b;LG4/d;LU0/e;Landroidx/recyclerview/widget/b;)V

    sput-object p1, Lj0/s;->a:Ll2/a;

    :cond_0
    new-instance p3, Lr2/b;

    iget-object v10, p1, Ll2/a;->a:Landroidx/recyclerview/widget/b;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object v2

    invoke-static {v2}, Le0/a;->t(Ljava/lang/Object;)V

    iget-object v1, p1, Ll2/a;->o:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lj2/b;

    invoke-virtual {p1}, Ll2/a;->a()Li2/a;

    move-result-object v4

    new-instance v5, Lp2/a;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Ll2/a;->p:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lp2/d;

    iget-object v1, p1, Ll2/a;->q:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ly2/d;

    iget-object v1, v10, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast v1, Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, LW4/t;

    invoke-static {v8}, Le0/a;->t(Ljava/lang/Object;)V

    iget-object v1, p1, Ll2/a;->e:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lh2/b;

    move-object v1, p3

    invoke-direct/range {v1 .. v9}, Lr2/b;-><init>(Ls1/b;Lj2/b;Li2/a;Lp2/a;Lp2/d;Ly2/d;LW4/t;Lh2/b;)V

    iput-object p3, p0, Lm2/n;->y:Lr2/b;

    invoke-virtual {v10}, Landroidx/recyclerview/widget/b;->I()Ls1/b;

    move-result-object p3

    invoke-static {p3}, Le0/a;->t(Ljava/lang/Object;)V

    iput-object p3, p0, Lm2/n;->z:Ls1/b;

    iget-object p3, p1, Ll2/a;->o:Lh3/b;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lj2/b;

    iput-object p3, p0, Lm2/n;->A:Lj2/b;

    invoke-virtual {p1}, Ll2/a;->a()Li2/a;

    move-result-object p3

    iput-object p3, p0, Lm2/n;->B:Li2/a;

    new-instance p3, Lq2/a;

    iget-object v1, p1, Ll2/a;->p:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp2/d;

    invoke-direct {p3, v1}, Lq2/a;-><init>(Lp2/d;)V

    iput-object p3, p0, Lm2/n;->C:Lq2/a;

    iget-object p3, p1, Ll2/a;->p:Lh3/b;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lp2/d;

    iput-object p3, p0, Lm2/n;->D:Lp2/d;

    new-instance p3, Li2/b;

    iget-object v1, p1, Ll2/a;->c:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {p3, v1}, Li2/b;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lm2/n;->E:Li2/b;

    new-instance p3, Lr1/c;

    iget-object v1, v10, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v1, Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    new-instance v2, Li2/b;

    iget-object v3, v10, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v3, Lh3/b;

    invoke-interface {v3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v2, v3}, Li2/b;-><init>(Landroid/content/Context;)V

    invoke-direct {p3, v1, v2}, Lr1/c;-><init>(Landroid/content/Context;Li2/b;)V

    iput-object p3, p0, Lm2/n;->F:Lr1/c;

    iget-object p3, p1, Ll2/a;->q:Lh3/b;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ly2/d;

    iput-object p3, p0, Lm2/n;->G:Ly2/d;

    iget-object p3, v10, Landroidx/recyclerview/widget/b;->i:Ljava/lang/Object;

    check-cast p3, Lh3/b;

    invoke-interface {p3}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, LW4/t;

    invoke-static {p3}, Le0/a;->t(Ljava/lang/Object;)V

    iput-object p3, p0, Lm2/n;->H:LW4/t;

    iget-object p1, p1, Ll2/a;->e:Lh3/b;

    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lh2/b;

    iput-object p1, p0, Lm2/n;->I:Lh2/b;

    new-instance p1, Le3/a;

    const/4 p3, 0x3

    const/4 v1, 0x0

    invoke-direct {p1, v1, p3}, Le3/a;-><init>(BI)V

    const/4 p3, -0x1

    iput p3, p1, Le3/a;->e:I

    iput-object p1, p0, Lm2/n;->J:Le3/a;

    invoke-static {p2}, Lf2/k;->c(Landroid/content/Context;)Z

    move-result p1

    xor-int/2addr p1, v0

    iput-boolean p1, p0, Lm2/n;->i:Z

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lm2/n;->K:Landroid/os/Handler;

    new-instance p1, Lm2/c;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lm2/c;-><init>(Lm2/n;I)V

    iput-object p1, p0, Lm2/n;->L:Lm2/c;

    new-instance p1, Lm2/c;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lm2/c;-><init>(Lm2/n;I)V

    iput-object p1, p0, Lm2/n;->M:Lm2/c;

    return-void
.end method

.method public static h(Landroid/os/Bundle;)Landroid/graphics/Rect;
    .locals 6

    new-instance v0, Landroid/graphics/Rect;

    const-string v1, "left"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "top"

    invoke-virtual {p0, v3, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "right"

    invoke-virtual {p0, v4, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "bottom"

    invoke-virtual {p0, v5, v2}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-direct {v0, v1, v3, v4, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZ)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    const-string v7, "createWeatherEffect final weather effect="

    const-string v8, "createWeatherEffect, foreground size =["

    const-string v9, "createWeatherEffect, weatherEffect="

    monitor-enter p0

    :try_start_0
    iput-object v3, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    invoke-virtual/range {p2 .. p2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v12

    if-nez v12, :cond_0

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :cond_0
    :goto_0
    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v10

    const-string v11, "createBitmap(...)"

    invoke-static {v10, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v10}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/high16 v12, -0x1000000

    invoke-virtual {v11, v12}, Landroid/graphics/Canvas;->drawColor(I)V

    new-instance v12, Landroid/graphics/Matrix;

    invoke-direct {v12}, Landroid/graphics/Matrix;-><init>()V

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v14, p2

    invoke-virtual {v11, v14, v12, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v13

    if-nez v13, :cond_1

    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_1
    invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v11

    const-string v12, "createBitmap(...)"

    invoke-static {v11, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v12, Landroid/graphics/Canvas;

    invoke-direct {v12, v11}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    new-instance v14, Landroid/graphics/Paint;

    invoke-direct {v14}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v12, v0, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    invoke-virtual/range {p0 .. p0}, Lm2/n;->d()Lh2/b;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lm2/n;->j()Z

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, ", isOutdoor="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", isNight="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", hasObject="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", test="

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v13, v9}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v14

    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    move-object/from16 p2, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] , convertedBackground size = ["

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ","

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "] , fgObjBounds = "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-static {v9, v8, v12}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    if-eqz v4, :cond_2

    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_INDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-ne v3, v9, :cond_5

    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_OUTDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    iput-object v9, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    goto :goto_2

    :cond_2
    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_OUTDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-eq v3, v9, :cond_4

    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-ne v3, v9, :cond_3

    goto :goto_1

    :cond_3
    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->FOG:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-ne v3, v9, :cond_5

    iput-object v8, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_INDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    iput-object v9, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    :cond_5
    :goto_2
    if-nez v5, :cond_6

    if-nez v4, :cond_7

    :cond_6
    sget-object v4, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SUNNY:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-ne v3, v4, :cond_7

    iput-object v8, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    :cond_7
    iget-boolean v3, v1, Lm2/n;->b:Z

    const/4 v4, 0x1

    if-nez v3, :cond_c

    iget-object v3, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    sget-object v5, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_OUTDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-eq v3, v5, :cond_9

    sget-object v5, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-ne v3, v5, :cond_8

    goto :goto_3

    :cond_8
    move v3, v11

    goto :goto_4

    :cond_9
    :goto_3
    move v3, v4

    :goto_4
    if-eqz v3, :cond_b

    iget-object v3, v1, Lm2/n;->J:Le3/a;

    if-eqz v3, :cond_a

    iget-object v5, v1, Lm2/n;->a:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lm2/n;->e()Lq2/a;

    move-result-object v9

    iget v9, v9, Lq2/a;->b:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getScreenSize()Landroid/util/Size;

    move-result-object v12

    invoke-virtual {v3, v5, v9, v12, v0}, Le3/a;->c(Landroid/content/Context;ILandroid/util/Size;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_5

    :cond_a
    const-string v0, "watermarkGenerator"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v8

    :cond_b
    iget-object v0, v1, Lm2/n;->J:Le3/a;

    if-eqz v0, :cond_d

    iget-object v3, v1, Lm2/n;->a:Landroid/content/Context;

    invoke-virtual/range {p0 .. p0}, Lm2/n;->e()Lq2/a;

    move-result-object v5

    iget v5, v5, Lq2/a;->b:I

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getScreenSize()Landroid/util/Size;

    move-result-object v9

    invoke-virtual {v0, v3, v5, v9, v10}, Le3/a;->c(Landroid/content/Context;ILandroid/util/Size;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v10

    :cond_c
    move-object/from16 v0, p2

    goto :goto_5

    :cond_d
    const-string v0, "watermarkGenerator"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v8

    :goto_5
    new-instance v3, Lo2/b;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v10, v3, Lo2/b;->a:Landroid/graphics/Bitmap;

    iput-object v0, v3, Lo2/b;->b:Landroid/graphics/Bitmap;

    iput-boolean v6, v3, Lo2/b;->c:Z

    iput-object v2, v3, Lo2/b;->d:Landroid/graphics/Rect;

    iput-object v8, v3, Lo2/b;->e:Landroid/graphics/Bitmap;

    iput-object v8, v3, Lo2/b;->f:Landroid/graphics/Bitmap;

    new-instance v0, Lo2/a;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    new-instance v5, Landroid/util/SizeF;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    int-to-float v2, v2

    invoke-direct {v5, v6, v2}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual/range {p0 .. p0}, Lm2/n;->e()Lq2/a;

    move-result-object v2

    iget v2, v2, Lq2/a;->b:I

    iget-boolean v6, v1, Lm2/n;->b:Z

    invoke-direct {v0, v5, v2, v6}, Lo2/a;-><init>(Landroid/util/SizeF;IZ)V

    iget-object v2, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-nez v2, :cond_e

    const/4 v2, -0x1

    goto :goto_6

    :cond_e
    sget-object v5, Lm2/d;->a:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v5, v2

    :goto_6
    packed-switch v2, :pswitch_data_0

    new-instance v2, Lt2/a;

    iget-object v4, v1, Lm2/n;->a:Landroid/content/Context;

    invoke-direct {v2, v4, v0, v3}, Lt2/a;-><init>(Landroid/content/Context;Lo2/a;Lo2/b;)V

    goto/16 :goto_7

    :pswitch_0
    new-instance v2, Lx2/a;

    iget-object v4, v1, Lm2/n;->a:Landroid/content/Context;

    const-string v5, "context"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lx2/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "getAssets(...)"

    invoke-static {v4, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "shaders/sunny_effect.agsl"

    invoke-static {v4, v6}, Lp4/g;->J(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v4

    iput-object v4, v5, LD4/a;->d:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lm2/n;->d()Lh2/b;

    move-result-object v4

    invoke-direct {v2, v5, v0, v3, v4}, Lx2/a;-><init>(Lx2/b;Lo2/a;Lo2/b;Lh2/b;)V

    goto/16 :goto_7

    :pswitch_1
    new-instance v2, Lw2/a;

    iget-object v4, v1, Lm2/n;->a:Landroid/content/Context;

    const-string v5, "context"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ls2/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "getAssets(...)"

    invoke-static {v4, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "shaders/snow_effect.agsl"

    invoke-static {v4, v6}, Lp4/g;->J(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v4

    iput-object v4, v5, LD4/a;->d:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lm2/n;->d()Lh2/b;

    move-result-object v4

    invoke-direct {v2, v5, v0, v3, v4}, Lw2/a;-><init>(Ls2/b;Lo2/a;Lo2/b;Lh2/b;)V

    goto :goto_7

    :pswitch_2
    new-instance v2, Ls2/a;

    iget-object v4, v1, Lm2/n;->a:Landroid/content/Context;

    const-string v5, "context"

    invoke-static {v4, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Ls2/b;

    invoke-direct {v5}, Ljava/lang/Object;-><init>()V

    invoke-virtual {v4}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    const-string v6, "getAssets(...)"

    invoke-static {v4, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "shaders/fog_effect.agsl"

    invoke-static {v4, v6}, Lp4/g;->J(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v4

    iput-object v4, v5, LD4/a;->d:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lm2/n;->d()Lh2/b;

    move-result-object v4

    invoke-direct {v2, v5, v0, v3, v4}, Ls2/a;-><init>(Ls2/b;Lo2/a;Lo2/b;Lh2/b;)V

    goto :goto_7

    :pswitch_3
    new-instance v2, Lu2/a;

    iget-object v5, v1, Lm2/n;->a:Landroid/content/Context;

    iget-object v6, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    sget-object v9, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_OUTDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-eq v6, v9, :cond_f

    move v11, v4

    :cond_f
    const-string v4, "context"

    invoke-static {v5, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Lu2/b;

    invoke-direct {v4, v11}, Lu2/b;-><init>(Z)V

    invoke-virtual {v5}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "getAssets(...)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "shaders/rain_effect.agsl"

    invoke-static {v5, v6}, Lp4/g;->J(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/RuntimeShader;

    move-result-object v5

    iput-object v5, v4, LD4/a;->d:Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Lm2/n;->d()Lh2/b;

    move-result-object v5

    invoke-direct {v2, v4, v0, v3, v5}, Lu2/a;-><init>(Lu2/b;Lo2/a;Lo2/b;Lh2/b;)V

    :goto_7
    iget-boolean v0, v1, Lm2/n;->b:Z

    if-nez v0, :cond_10

    invoke-virtual/range {p0 .. p0}, Lm2/n;->c()LW4/t;

    move-result-object v0

    new-instance v3, Lm2/f;

    invoke-direct {v3, v1, v10, v8}, Lm2/f;-><init>(Lm2/n;Landroid/graphics/Bitmap;Lu3/d;)V

    invoke-static {v0, v3}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    :cond_10
    invoke-virtual/range {p0 .. p0}, Lm2/n;->n()V

    invoke-virtual {v1, v2}, Lm2/n;->q(Ln2/b;)V

    invoke-virtual/range {p0 .. p0}, Lm2/n;->v()V

    invoke-virtual/range {p0 .. p0}, Lm2/n;->d()Lh2/b;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    iget-object v4, v1, Lm2/n;->e:Ln2/b;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", activeEffect="

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v1, Lm2/n;->h:LW4/t;

    if-eqz v0, :cond_11

    new-instance v2, Lm2/g;

    invoke-direct {v2, v1, v8}, Lm2/g;-><init>(Lm2/n;Lu3/d;)V

    invoke-static {v0, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_11
    :try_start_1
    const-string v0, "applicationScope"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    throw v8

    :goto_8
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()LW4/t;
    .locals 0

    iget-object p0, p0, Lm2/n;->H:LW4/t;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "backgroundScope"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final computeWallpaperColors()Landroid/app/WallpaperColors;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final d()Lh2/b;
    .locals 0

    iget-object p0, p0, Lm2/n;->I:Lh2/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "dumpUtil"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final e()Lq2/a;
    .locals 0

    iget-object p0, p0, Lm2/n;->C:Lq2/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "interactor"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final f()Li2/a;
    .locals 0

    iget-object p0, p0, Lm2/n;->B:Li2/a;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "magicianPreference"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final g()Lj2/b;
    .locals 0

    iget-object p0, p0, Lm2/n;->A:Lj2/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "magicianRepository"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final i()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lf2/g;->c()Z

    move-result v0

    const-string v1, ")"

    const-string v2, "WeatherEngine("

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    const-string v3, "_"

    invoke-static {v0, v2, v3}, LB/a;->q(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lm2/n;->c:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object p0

    iget p0, p0, Lq2/a;->b:I

    invoke-static {p0, v2, v1}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final j()Z
    .locals 0

    iget-object p0, p0, Lm2/n;->E:Li2/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Li2/b;->F0()Z

    move-result p0

    return p0

    :cond_0
    const-string p0, "weatherEffectPreference"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final k(Ljava/util/function/Consumer;)V
    .locals 4

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "loadWallpaper"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->c()LW4/t;

    move-result-object v0

    new-instance v2, Lm2/h;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lm2/h;-><init>(Lm2/n;Lu3/d;)V

    invoke-static {v0, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    move-result-object v0

    new-instance v2, LQ1/d;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, p1}, LQ1/d;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0, v2}, LW4/Y;->u(ZZLE3/b;)LW4/C;

    return-void
.end method

.method public final l()V
    .locals 3

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "pauseAnimation"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->stopUpdateLoop()V

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln2/b;->e()V

    :cond_0
    return-void
.end method

.method public final m(Ljava/lang/Boolean;)V
    .locals 14

    iget-boolean v0, p0, Lm2/n;->b:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget v1, v1, Lq2/a;->b:I

    invoke-virtual {v0, v1}, Li2/a;->I0(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "quickDrawCacheWallpaper, configChanged:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    iget-object v1, p0, Lm2/n;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v3, "isOutdoor"

    invoke-virtual {v0, v3, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "isNight"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    const-string v4, "hasWeatherObject"

    invoke-virtual {v0, v4, v2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v13

    const-string v4, "weatherId"

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v4, 0x0

    cmp-long v0, v6, v4

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p0

    const-string p1, "quickDrawCacheWallpaper, weatherId is invalid"

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p0, p1, v0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lm2/n;->g()Lj2/b;

    move-result-object v4

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v5, v0, Lq2/a;->b:I

    invoke-virtual {p0}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v8

    iget v8, v8, Lq2/a;->b:I

    invoke-virtual {v0, v8}, Li2/a;->G0(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v9

    iget v9, v9, Lq2/a;->b:I

    invoke-virtual {v0, v9}, Li2/a;->H0(I)Ljava/lang/String;

    move-result-object v9

    move v10, v3

    move v11, v12

    invoke-virtual/range {v4 .. v11}, Lj2/b;->b(IJLjava/lang/String;Ljava/lang/String;ZZ)Lw0/c;

    move-result-object v0

    iget-object v4, v0, Lw0/c;->f:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/Bitmap;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    move-object v6, v4

    goto :goto_0

    :cond_2
    move-object v6, v5

    :goto_0
    iget-object v0, v0, Lw0/c;->e:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move-object v0, v5

    :goto_1
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1, v4}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz v6, :cond_5

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object p1

    invoke-virtual {p1, v2}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/i;

    invoke-virtual {p1}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv2/a;

    if-eqz p1, :cond_4

    iget-object p1, p1, Lv2/a;->c:Landroid/graphics/Rect;

    move-object v7, p1

    goto :goto_2

    :cond_4
    move-object v7, v5

    :goto_2
    iget-object v8, p0, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    move-object v4, p0

    move-object v5, v6

    move-object v6, v0

    move v9, v3

    move v10, v12

    move v11, v13

    invoke-virtual/range {v4 .. v11}, Lm2/n;->b(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/Rect;Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;ZZZ)V

    goto :goto_4

    :cond_5
    new-array p0, v2, [Ljava/lang/Object;

    const-string p1, "WeatherEngine"

    const-string v0, ": quickDrawCacheWallpaper, bitmaps are null"

    invoke-static {p1, v0, p0}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4

    :cond_6
    iget-object p1, p0, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    sget-object v2, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->RAIN_OUTDOOR:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-eq p1, v2, :cond_8

    sget-object v2, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SNOW:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    if-ne p1, v2, :cond_7

    goto :goto_3

    :cond_7
    move-object v6, v0

    :cond_8
    :goto_3
    if-eqz v6, :cond_a

    iget-object p1, p0, Lm2/n;->J:Le3/a;

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    invoke-virtual {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->getScreenSize()Landroid/util/Size;

    move-result-object v2

    invoke-virtual {p1, v1, v0, v2, v6}, Le3/a;->c(Landroid/content/Context;ILandroid/util/Size;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_a

    invoke-virtual {p0, p1}, Ln2/b;->k(Landroid/graphics/Bitmap;)V

    goto :goto_4

    :cond_9
    const-string p0, "watermarkGenerator"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v5

    :cond_a
    :goto_4
    return-void
.end method

.method public final n()V
    .locals 5

    invoke-virtual {p0}, Lm2/n;->d()Lh2/b;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm2/n;->e:Ln2/b;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "releaseEffect, activeEffect="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    if-eqz v0, :cond_1

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lm2/n;->e:Ln2/b;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ln2/b;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0

    :cond_1
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm2/n;->q(Ln2/b;)V

    return-void
.end method

.method public final o()V
    .locals 2

    invoke-virtual {p0}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object p0

    iget p0, p0, Lq2/a;->b:I

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Li2/a;->M0(IZ)V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    const-string v0, "newConfig"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "onConfigurationChanged"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-boolean v3, p0, Lm2/n;->k:Z

    if-eq v3, v0, :cond_1

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v3

    iget-boolean v4, p0, Lm2/n;->k:Z

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "night mode changed prev : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", cur : "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v0, p0, Lm2/n;->k:Z

    :cond_1
    invoke-virtual {p0}, Lm2/n;->l()V

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const-string v3, "getLocales(...)"

    invoke-static {v0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget v4, p0, Lm2/n;->s:I

    iget v5, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    iget-object v4, p0, Lm2/n;->t:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    invoke-static {v4, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_2
    iget-boolean v0, p0, Lm2/n;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lm2/n;->c()LW4/t;

    move-result-object v0

    new-instance v2, Lm2/k;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Lm2/k;-><init>(Lm2/n;Lu3/d;)V

    invoke-static {v0, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    goto :goto_1

    :cond_3
    iput-boolean v2, p0, Lm2/n;->l:Z

    :cond_4
    :goto_1
    invoke-virtual {p0}, Lm2/n;->s()V

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lm2/n;->s:I

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lm2/n;->t:Ljava/util/Locale;

    :cond_5
    return-void
.end method

.method public final onCreate(Z)V
    .locals 6

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lm2/n;->j()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onCreate, test mode: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPreview: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lm2/n;->b:Z

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->j()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lm2/n;->E:Li2/b;

    if-eqz p1, :cond_0

    const-string v3, "test_mode_enabled"

    invoke-virtual {p1, v3, v2}, LD4/a;->C0(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lm2/n;->j()Z

    move-result v3

    const-string v4, "Test mode was true, forcefully changing it to "

    invoke-static {v4, v3}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {p1, v3, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p0, "weatherEffectPreference"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    iget-object p1, p0, Lm2/n;->f:Lm2/b;

    iget-object v3, p0, Lm2/n;->a:Landroid/content/Context;

    const-string v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v5

    invoke-virtual {v4, v5, p1}, Landroid/app/KeyguardManager;->addKeyguardLockedStateListener(Ljava/util/concurrent/Executor;Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lm2/n;->j()Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {p1}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object p1

    new-instance v0, Lm2/j;

    invoke-direct {v0, p0, v1}, Lm2/j;-><init>(Lm2/n;Lu3/d;)V

    invoke-static {p1, v0}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    :cond_2
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x20

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    move p1, v2

    :goto_1
    iput-boolean p1, p0, Lm2/n;->k:Z

    iget-object p1, p0, Lm2/n;->d:Landroid/os/Handler;

    if-nez p1, :cond_4

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lm2/n;->d:Landroid/os/Handler;

    :cond_4
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object p1

    const-string v0, "getLocales(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object p1

    iput-object p1, p0, Lm2/n;->t:Ljava/util/Locale;

    :cond_5
    invoke-static {}, Lf2/g;->c()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lm2/n;->m(Ljava/lang/Boolean;)V

    :cond_6
    new-instance p1, LA1/h;

    const/16 v0, 0x11

    invoke-direct {p1, v0, p0}, LA1/h;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, p1}, Lm2/n;->k(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onDestroy(Z)V
    .locals 5

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "onDestroy"

    invoke-static {p1, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lm2/n;->K:Landroid/os/Handler;

    iget-object v1, p0, Lm2/n;->L:Lm2/c;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm2/n;->r:Z

    invoke-virtual {p0}, Lm2/n;->d()Lh2/b;

    move-result-object p1

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v1

    const-string v2, "destroyEngine"

    invoke-virtual {p1, v1, v2}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean p1, p0, Lm2/n;->b:Z

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lm2/n;->j()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lm2/n;->c()LW4/t;

    move-result-object v1

    new-instance v2, Lm2/e;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lm2/e;-><init>(Lm2/n;Lu3/d;)V

    invoke-static {v1, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    :cond_0
    iget-object v1, p0, Lm2/n;->f:Lm2/b;

    const-string v2, "keyguard"

    iget-object v3, p0, Lm2/n;->a:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    invoke-virtual {v2, v1}, Landroid/app/KeyguardManager;->removeKeyguardLockedStateListener(Landroid/app/KeyguardManager$KeyguardLockedStateListener;)V

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lm2/n;->g:LW4/x;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Stop to listen effect changes. "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v0, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lm2/n;->g:LW4/x;

    if-eqz v1, :cond_1

    invoke-static {v1}, LW4/u;->b(LW4/P;)V

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Stop to listen package changes."

    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {p1, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->g()Lj2/b;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "MagicianRepository"

    const-string v2, "unregisterMagicianPackageReceiver"

    invoke-static {v1, v2, v0}, Lf2/j;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p1, Lj2/b;->a:Landroid/content/Context;

    iget-object p1, p1, Lj2/b;->e:Landroidx/appcompat/app/A;

    invoke-virtual {v0, p1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    invoke-virtual {p0}, Lm2/n;->n()V

    invoke-virtual {p0}, Lm2/n;->p()V

    return-void
.end method

.method public final onKeyguardGoingAway()V
    .locals 3

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onKeyguardGoingAway"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->t()V

    return-void
.end method

.method public final onOffsetChanged(FF)V
    .locals 0

    return-void
.end method

.method public final onPause()V
    .locals 6

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lm2/n;->p:Z

    iget-boolean v2, p0, Lm2/n;->j:Z

    iget-boolean v3, p0, Lm2/n;->i:Z

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "onPause. loopAnimationStarted = "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isResumed = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSleep = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lm2/n;->j:Z

    iget-boolean v0, p0, Lm2/n;->p:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lm2/n;->i:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm2/n;->t()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final onPauseCommand()V
    .locals 0

    invoke-virtual {p0}, Lm2/n;->l()V

    return-void
.end method

.method public final onPreviewInfoReceived(Landroid/os/Bundle;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$DefaultImpls;->onPreviewInfoReceived(Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;Landroid/os/Bundle;)V

    return-void
.end method

.method public final onResize(Landroid/util/Size;)V
    .locals 5

    const-string v0, "size"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lm2/n;->e:Ln2/b;

    iget-object v2, p0, Lm2/n;->m:Landroid/util/Size;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "onResize. activeEffect = "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lastSize = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", size = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/util/SizeF;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v1, v2, v3}, Landroid/util/SizeF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ln2/b;->h(Landroid/util/SizeF;)V

    iget-object v0, p0, Lm2/n;->K:Landroid/os/Handler;

    iget-object v1, p0, Lm2/n;->L:Lm2/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->startUpdateLoop()V

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    instance-of v1, v0, Lt2/a;

    if-eqz v1, :cond_1

    new-instance v0, Lm2/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm2/a;-><init>(Lm2/n;I)V

    invoke-virtual {p0, v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->render(LE3/b;)Z

    goto :goto_0

    :cond_1
    instance-of v1, v0, Lx2/a;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ln2/b;->g()V

    :cond_2
    :goto_0
    iput-object p1, p0, Lm2/n;->m:Landroid/util/Size;

    return-void
.end method

.method public final onResume()V
    .locals 7

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lm2/n;->j:Z

    iget-boolean v2, p0, Lm2/n;->i:Z

    invoke-static {}, Lf2/g;->c()Z

    move-result v3

    invoke-static {}, Lf2/g;->b()Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "onResume. isResumed = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSleep = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFold="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isFlip="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget v1, v1, Lq2/a;->b:I

    invoke-virtual {v0, v1}, Ln2/b;->a(I)I

    :cond_0
    iget-boolean v0, p0, Lm2/n;->j:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lm2/n;->j:Z

    iget-boolean v0, p0, Lm2/n;->l:Z

    if-eqz v0, :cond_2

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p0, v0}, Lm2/n;->m(Ljava/lang/Boolean;)V

    iput-boolean v2, p0, Lm2/n;->l:Z

    :cond_2
    const/4 v0, 0x0

    iget-boolean v1, p0, Lm2/n;->b:Z

    if-nez v1, :cond_5

    iget-object v2, p0, Lm2/n;->E:Li2/b;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Li2/b;->F0()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lm2/n;->q:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lm2/n;->y:Lr2/b;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Lr2/b;->a()V

    goto :goto_0

    :cond_3
    const-string p0, "updateWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4
    const-string p0, "weatherEffectPreference"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_0
    invoke-virtual {p0}, Lm2/n;->v()V

    iget-boolean v2, p0, Lm2/n;->i:Z

    if-nez v2, :cond_6

    invoke-virtual {p0}, Lm2/n;->s()V

    :cond_6
    if-nez v1, :cond_8

    sget-boolean v1, Li1/a;->b:Z

    if-eqz v1, :cond_8

    iget-object p0, p0, Lm2/n;->F:Lr1/c;

    if-eqz p0, :cond_7

    sget-object v1, LW4/B;->b:Lkotlinx/coroutines/scheduling/c;

    invoke-static {v1}, LW4/u;->a(Lu3/i;)Lkotlinx/coroutines/internal/c;

    move-result-object v1

    new-instance v2, Lr1/b;

    invoke-direct {v2, p0, v0}, Lr1/b;-><init>(Lr1/c;Lu3/d;)V

    invoke-static {v1, v2}, LW4/u;->h(LW4/t;LE3/c;)LW4/x;

    goto :goto_1

    :cond_7
    const-string p0, "weatherRepository"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_1
    return-void
.end method

.method public final onResumeCommand()V
    .locals 1

    iget-boolean v0, p0, Lm2/n;->i:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lm2/n;->s()V

    :cond_0
    return-void
.end method

.method public final onSleep(Landroid/os/Bundle;)V
    .locals 5

    const-string v0, "extras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lm2/n;->i:Z

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lm2/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lf2/h;->c(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "onSleep | keyGaurd: "

    invoke-static {v2, v1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lf2/h;->c(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lm2/n;->e:Ln2/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget v1, v1, Lq2/a;->b:I

    invoke-virtual {p1, v1}, Ln2/b;->a(I)I

    :cond_0
    invoke-virtual {p0}, Lm2/n;->startUpdateLoop()V

    :cond_1
    invoke-static {v0}, Lf2/k;->a(Landroid/content/Context;)V

    iget-object p1, p0, Lm2/n;->n:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;->SUNNY:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherEffect;

    iget-object v1, p0, Lm2/n;->M:Lm2/c;

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lm2/n;->d:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const-wide/16 v3, 0x1f4

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lm2/n;->d:Landroid/os/Handler;

    if-eqz p1, :cond_3

    const-wide/16 v3, 0x3e8

    invoke-virtual {p1, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "fadeOut activeEffect="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ln2/b;->c()V

    :cond_4
    return-void
.end method

.method public final onSurfaceRedrawNeeded()V
    .locals 12

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    const-string v1, "drawThumbnail : which="

    invoke-static {v0, v1}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "WeatherEngine"

    invoke-static {v3, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget-boolean v2, p0, Lm2/n;->b:Z

    invoke-virtual {v0, v2}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    if-eqz v0, :cond_0

    iget-wide v4, v0, Lv2/a;->i:J

    goto :goto_0

    :cond_0
    const-wide/16 v4, 0x0

    :goto_0
    iget-object v0, p0, Lm2/n;->G:Ly2/d;

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v6

    iget v6, v6, Lq2/a;->b:I

    invoke-virtual {v0, v6}, Ly2/d;->a(I)J

    move-result-wide v7

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getWeatherThumbnail : "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v10, " , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v1, [Ljava/lang/Object;

    const-string v11, "WeatherThumbnailUtils"

    invoke-static {v11, v9, v10}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v4, v4, v7

    if-nez v4, :cond_1

    invoke-virtual {v0, v6}, Ly2/d;->b(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    :goto_1
    iget-object v0, v0, Ly2/d;->a:Landroid/content/Context;

    if-nez v4, :cond_2

    const-string v4, "thumbnail.jpg"

    invoke-static {v0, v6, v4}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    :cond_3
    if-eqz v2, :cond_4

    new-instance v0, LQ1/e;

    const/4 v4, 0x1

    invoke-direct {v0, v4, v2}, LQ1/e;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->render(LE3/b;)Z

    goto :goto_2

    :cond_4
    const-string v0, "drawThumbnail : thumbnail is NULL"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    const-string v0, "drawThumbnail finished"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v3, v0, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :cond_5
    const-string p0, "weatherThumbnailUtils"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_6
    :goto_3
    invoke-super {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onSurfaceRedrawNeeded()V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    iget-object v0, p0, Lm2/n;->x:Ly2/a;

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iput v1, v0, Ly2/a;->h:I

    invoke-virtual {p0}, Lm2/n;->u()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    iput p1, v0, Ly2/a;->h:I

    invoke-virtual {p0}, Lm2/n;->u()V

    :goto_0
    return-void
.end method

.method public final onUpdate(JJ)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->onUpdate(JJ)V

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Ln2/b;->i(J)V

    :cond_0
    new-instance p1, Lm2/a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lm2/a;-><init>(Lm2/n;I)V

    invoke-virtual {p0, p3, p4, p1}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->renderWithFpsLimit(JLE3/b;)Z

    return-void
.end method

.method public final onWake(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "extras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lm2/n;->i:Z

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onWake"

    new-array p1, p1, [Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Lm2/n;->e:Ln2/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    invoke-virtual {p1, v0}, Ln2/b;->a(I)I

    :cond_0
    invoke-virtual {p0}, Lm2/n;->s()V

    return-void
.end method

.method public final onWallpaperReapplied()V
    .locals 6

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget v1, v1, Lq2/a;->b:I

    const-string v2, "onWallpaperReapplied, which: "

    invoke-static {v1, v2}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lm2/n;->f()Li2/a;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v1

    iget v1, v1, Lq2/a;->b:I

    invoke-virtual {v0, v1, v2}, Li2/a;->K0(IZ)V

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget-boolean v1, p0, Lm2/n;->b:Z

    invoke-virtual {v0, v1}, Lq2/a;->a(Z)Landroidx/recyclerview/widget/y;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/flow/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v2

    iget v2, v2, Lq2/a;->b:I

    iget-object v3, p0, Lm2/n;->a:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "weatherId"

    invoke-virtual {v2, v3}, Landroid/os/BaseBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v0, Lv2/a;->i:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0}, Lm2/n;->o()V

    invoke-virtual {p0}, Lm2/n;->p()V

    invoke-virtual {p0, v1}, Lm2/n;->k(Ljava/util/function/Consumer;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lm2/n;->o()V

    invoke-virtual {p0}, Lm2/n;->p()V

    invoke-virtual {p0, v1}, Lm2/n;->k(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_2
    return-void
.end method

.method public final onZoomChanged(F)V
    .locals 0

    return-void
.end method

.method public final p()V
    .locals 5

    iget-object v0, p0, Lm2/n;->D:Lp2/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object p0

    iget p0, p0, Lq2/a;->b:I

    iget-object v0, v0, Lp2/d;->g:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lp2/c;

    if-eqz p0, :cond_6

    iget-object v0, p0, Lp2/c;->a:Lkotlinx/coroutines/flow/i;

    invoke-virtual {v0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/a;

    if-eqz v2, :cond_0

    iput-object v1, v2, Lv2/a;->b:Landroid/graphics/Bitmap;

    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/a;

    if-eqz v2, :cond_1

    iput-object v1, v2, Lv2/a;->a:Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lv2/a;

    if-eqz v2, :cond_2

    iput-object v1, v2, Lv2/a;->c:Landroid/graphics/Rect;

    :cond_2
    new-instance v2, Lv2/a;

    const/4 v3, 0x0

    const/16 v4, 0x1ff

    invoke-direct {v2, v1, v1, v3, v4}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)V

    invoke-virtual {v0, v2}, Lkotlinx/coroutines/flow/i;->j(Ljava/lang/Object;)V

    iget-object p0, p0, Lp2/c;->c:Lkotlinx/coroutines/flow/i;

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    if-eqz v0, :cond_3

    iput-object v1, v0, Lv2/a;->b:Landroid/graphics/Bitmap;

    :cond_3
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    if-eqz v0, :cond_4

    iput-object v1, v0, Lv2/a;->a:Landroid/graphics/Bitmap;

    :cond_4
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/i;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv2/a;

    if-eqz v0, :cond_5

    iput-object v1, v0, Lv2/a;->c:Landroid/graphics/Rect;

    :cond_5
    new-instance v0, Lv2/a;

    invoke-direct {v0, v1, v1, v3, v4}, Lv2/a;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;ZI)V

    invoke-virtual {p0, v0}, Lkotlinx/coroutines/flow/i;->j(Ljava/lang/Object;)V

    :cond_6
    return-void

    :cond_7
    const-string p0, "weatherEffectRepository"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method

.method public final q(Ln2/b;)V
    .locals 4

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lm2/n;->e:Ln2/b;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "activeEffect setter old: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " new: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object p1, p0, Lm2/n;->e:Ln2/b;

    invoke-virtual {p0}, Lm2/n;->r()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm2/n;->startUpdateLoop()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm2/n;->stopUpdateLoop()V

    :goto_0
    return-void
.end method

.method public final r()Z
    .locals 10

    iget-object v0, p0, Lm2/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lf2/k;->c(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    iput-boolean v2, p0, Lm2/n;->i:Z

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lm2/n;->e:Ln2/b;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    move-object v3, v4

    :goto_0
    iget-boolean v5, p0, Lm2/n;->i:Z

    invoke-static {v0}, Lf2/h;->c(Landroid/content/Context;)Z

    move-result v6

    invoke-static {v0}, Lf2/h;->b(Landroid/content/Context;)Z

    move-result v7

    iget-object v8, p0, Lm2/n;->e:Ln2/b;

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v4

    iget v4, v4, Lq2/a;->b:I

    invoke-virtual {v8, v4}, Ln2/b;->a(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "shouldTriggerUpdate ? activeEffect:"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", isSleep:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isInteractive:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", keyguard [isShowing:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " isLocking:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "], isPreview:"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lm2/n;->b:Z

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", DeviceType:"

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Object;

    invoke-static {v2, v4, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lm2/n;->e:Ln2/b;

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    instance-of v6, v2, Lt2/a;

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lm2/n;->i:Z

    if-nez v6, :cond_2

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_2
    move v1, v5

    :goto_1
    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v6

    iget v6, v6, Lq2/a;->b:I

    invoke-virtual {v2, v6}, Ln2/b;->a(I)I

    move-result v2

    if-ne v2, v4, :cond_3

    goto :goto_3

    :cond_3
    if-eqz v1, :cond_4

    invoke-static {v0}, Lf2/h;->c(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v0}, Lf2/h;->b(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz v3, :cond_4

    goto :goto_2

    :cond_4
    move v4, v5

    :cond_5
    :goto_2
    move v1, v4

    :goto_3
    if-nez v1, :cond_6

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object p0

    const-string v0, "No need to trigger update call as shouldTriggerUpdate=false"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {p0, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    return v1
.end method

.method public final s()V
    .locals 3

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "startAnimation"

    invoke-static {v0, v2, v1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lm2/n;->d:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lm2/n;->M:Lm2/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lm2/n;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lm2/n;->p:Z

    invoke-virtual {p0}, Lm2/n;->startUpdateLoop()V

    :cond_1
    return-void
.end method

.method public final shortcutIconAndNowBarDataUpdated(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, "extras"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    iget-object v2, p0, Lm2/n;->x:Ly2/a;

    const/4 v3, 0x1

    if-nez v1, :cond_0

    const-string v1, "nowbar"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm2/n;->u:Ljava/util/HashMap;

    invoke-static {p1}, Lm2/n;->h(Landroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v1, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v4, v2, Ly2/a;->i:I

    const-string v5, "nowbar_card_state"

    invoke-virtual {p1, v5, v4}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, v2, Ly2/a;->a:Landroid/graphics/Rect;

    iput-boolean v3, v2, Ly2/a;->d:Z

    iput v4, v2, Ly2/a;->f:I

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    const-string v1, "rightShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lm2/n;->w:Ljava/util/HashMap;

    invoke-static {p1}, Lm2/n;->h(Landroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v2, Ly2/a;->c:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v6, Landroid/graphics/Rect;

    if-eqz v5, :cond_2

    iget v7, v5, Landroid/graphics/Rect;->top:I

    iget v8, v6, Landroid/graphics/Rect;->top:I

    if-eq v7, v8, :cond_2

    iget v5, v5, Landroid/graphics/Rect;->left:I

    iget v6, v6, Landroid/graphics/Rect;->left:I

    if-eq v5, v6, :cond_2

    if-eqz v7, :cond_1

    if-nez v8, :cond_2

    :cond_1
    move v5, v3

    goto :goto_0

    :cond_2
    move v5, v4

    :goto_0
    iput-boolean v5, v2, Ly2/a;->g:Z

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v1, Landroid/graphics/Rect;

    iput-object v1, v2, Ly2/a;->c:Landroid/graphics/Rect;

    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "leftShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lm2/n;->v:Ljava/util/HashMap;

    invoke-static {p1}, Lm2/n;->h(Landroid/os/Bundle;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, v2, Ly2/a;->b:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast v5, Landroid/graphics/Rect;

    if-eqz p1, :cond_6

    iget v6, p1, Landroid/graphics/Rect;->top:I

    iget v7, v5, Landroid/graphics/Rect;->top:I

    if-eq v6, v7, :cond_4

    iget p1, p1, Landroid/graphics/Rect;->left:I

    iget v5, v5, Landroid/graphics/Rect;->left:I

    if-eq p1, v5, :cond_4

    if-eqz v6, :cond_5

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    move v3, v4

    :cond_5
    :goto_1
    move v4, v3

    :cond_6
    iput-boolean v4, v2, Ly2/a;->g:Z

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p1, Landroid/graphics/Rect;

    iput-object p1, v2, Ly2/a;->b:Landroid/graphics/Rect;

    :cond_7
    invoke-virtual {p0}, Lm2/n;->u()V

    return-void
.end method

.method public final shouldZoomOutWallpaper()Z
    .locals 0

    invoke-static {p0}, Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener$DefaultImpls;->shouldZoomOutWallpaper(Lcom/google/android/torus/core/wallpaper/listener/LiveWallpaperEventListener;)Z

    move-result p0

    return p0
.end method

.method public final startUpdateLoop()V
    .locals 4

    iget-object v0, p0, Lm2/n;->K:Landroid/os/Handler;

    iget-object v1, p0, Lm2/n;->L:Lm2/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-super {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->startUpdateLoop()V

    return-void
.end method

.method public final stopUpdateLoop()V
    .locals 2

    iget-object v0, p0, Lm2/n;->K:Landroid/os/Handler;

    iget-object v1, p0, Lm2/n;->L:Lm2/c;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-super {p0}, Lcom/google/android/torus/canvas/engine/CanvasWallpaperEngine;->stopUpdateLoop()V

    return-void
.end method

.method public final t()V
    .locals 4

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "stopAnimation"

    invoke-static {v0, v3, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v1, p0, Lm2/n;->p:Z

    invoke-virtual {p0}, Lm2/n;->stopUpdateLoop()V

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ln2/b;->g()V

    :cond_0
    return-void
.end method

.method public final u()V
    .locals 2

    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    instance-of v1, v0, Ln2/a;

    if-eqz v1, :cond_0

    check-cast v0, Ln2/a;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    iget-object p0, p0, Lm2/n;->x:Ly2/a;

    invoke-virtual {v0, p0}, Ln2/a;->m(Ly2/a;)V

    :cond_1
    return-void
.end method

.method public final v()V
    .locals 9

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "update effect if needed. is preview = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lm2/n;->b:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lm2/n;->e:Ln2/b;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ln2/b;->d()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lm2/n;->z:Ls1/b;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    new-instance v2, Ls1/a;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Ls1/a;-><init>(ZZ)V

    invoke-virtual {v0, v2}, Ls1/b;->a(Ls1/a;)Lq1/a;

    move-result-object v0

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Current weather data : "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v2, v5, v6}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lm2/n;->e:Ln2/b;

    instance-of v2, v2, Lx2/a;

    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lq1/a;->a()Lq1/c;

    move-result-object v2

    invoke-virtual {v2}, Lq1/c;->a()I

    move-result v2

    const/4 v5, -0x1

    if-ne v2, v5, :cond_2

    invoke-virtual {p0}, Lm2/n;->n()V

    return-void

    :cond_2
    iget-object v2, p0, Lm2/n;->e:Ln2/b;

    instance-of v5, v2, Lx2/a;

    if-eqz v5, :cond_3

    check-cast v2, Lx2/a;

    goto :goto_0

    :cond_3
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_6

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lq1/a;->a()Lq1/c;

    move-result-object v5

    invoke-virtual {v5}, Lq1/c;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_4
    move-object v5, v1

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Noon Position = "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v3, [Ljava/lang/Object;

    const-string v8, "SunnyEffect"

    invoke-static {v8, v6, v7}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ltz v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    goto :goto_2

    :cond_5
    move v5, v3

    :goto_2
    iget-object v4, v2, Lx2/a;->c:Lx2/b;

    invoke-virtual {v4}, LD4/a;->B0()Landroid/graphics/RuntimeShader;

    move-result-object v4

    const-string v6, "sunnyMoveSunX"

    invoke-virtual {v4, v6, v5}, Landroid/graphics/RuntimeShader;->setIntUniform(Ljava/lang/String;I)V

    iput v5, v2, Lx2/a;->j:I

    :cond_6
    iget-object v2, p0, Lm2/n;->e:Ln2/b;

    if-eqz v2, :cond_8

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", icon id:"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, v0, Lq1/a;->d:I

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity;->Companion:Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;

    invoke-virtual {v0, p0}, Lcom/samsung/android/wallpaper/live/weather/effects/provider/WallpaperInfoContract$WeatherDensity$Companion;->getWeatherDensityType(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_7
    invoke-virtual {v2, v1}, Ln2/b;->l(Ljava/lang/Integer;)V

    :cond_8
    return-void

    :cond_9
    const-string p0, "getCurrentWeatherData"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    throw v1
.end method
