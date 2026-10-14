.class public final Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll1/b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 :2\u00020\u0001:\u0001:B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J!\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ;\u0010\u0012\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0010`\u00112\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0012\u0010\u0013J!\u0010\u0015\u001a\u0004\u0018\u00010\u00142\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\rH\u0002\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0017\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u001bJU\u0010\u001e\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00042\u001a\u0010\u001c\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010\u00100\u000fj\n\u0012\u0006\u0012\u0004\u0018\u00010\u0010`\u00112\u0016\u0010\u001d\u001a\u0012\u0012\u0004\u0012\u00020\r0\u000fj\u0008\u0012\u0004\u0012\u00020\r`\u00112\u0006\u0010\u000c\u001a\u00020\u000bH\u0002\u00a2\u0006\u0004\u0008\u001e\u0010\u001fJ\u0017\u0010 \u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008 \u0010!J!\u0010\"\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a2\u0006\u0004\u0008\"\u0010\nJ\u0017\u0010%\u001a\u00020\r2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008%\u0010&J\u0017\u0010\'\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008\'\u0010(J\u0017\u0010)\u001a\u00020\u000b2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008)\u0010(J\u0017\u0010+\u001a\u00020*2\u0006\u0010$\u001a\u00020#H\u0002\u00a2\u0006\u0004\u0008+\u0010,J\u001f\u00100\u001a\u00020/2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010.\u001a\u00020-H\u0016\u00a2\u0006\u0004\u00080\u00101J#\u00104\u001a\u0002032\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010.\u001a\u0004\u0018\u000102H\u0016\u00a2\u0006\u0004\u00084\u00105J\u001f\u00108\u001a\u0002072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010.\u001a\u000206H\u0016\u00a2\u0006\u0004\u00088\u00109\u00a8\u0006;"
    }
    d2 = {
        "Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;",
        "Ll1/b;",
        "<init>",
        "()V",
        "Landroid/content/Context;",
        "context",
        "",
        "which",
        "Landroid/os/ParcelFileDescriptor;",
        "getCurrentThumbnail",
        "(Landroid/content/Context;I)Landroid/os/ParcelFileDescriptor;",
        "",
        "isVerticalLayout",
        "",
        "fileName",
        "Ljava/util/ArrayList;",
        "Landroid/graphics/Bitmap;",
        "Lkotlin/collections/ArrayList;",
        "getModularClockParts",
        "(Landroid/content/Context;ZLjava/lang/String;)Ljava/util/ArrayList;",
        "Ljava/io/InputStream;",
        "getResource",
        "(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;",
        "Landroid/content/res/Resources;",
        "getResourcesFromWallpaperResources",
        "(Landroid/content/Context;)Landroid/content/res/Resources;",
        "getWallpaperResourcePackage",
        "(Landroid/content/Context;)Landroid/content/Context;",
        "thumbnails",
        "colorSet",
        "drawThumbnails",
        "(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/graphics/Bitmap;",
        "getDefaultDate",
        "(Landroid/content/Context;)Ljava/lang/String;",
        "getPfdFromWM",
        "Lc2/b;",
        "specNodeUtils",
        "getContentName",
        "(Lc2/b;)Ljava/lang/String;",
        "hideWhenRoaming",
        "(Lc2/b;)Z",
        "hasOwnClock",
        "Lc2/a;",
        "getDateContainerInfo",
        "(Lc2/b;)Lc2/a;",
        "LJ1/d;",
        "params",
        "LJ1/e;",
        "getThumbnail",
        "(Landroid/content/Context;LJ1/d;)LJ1/e;",
        "LJ1/g;",
        "LJ1/h;",
        "getThumbnailByBackupId",
        "(Landroid/content/Context;LJ1/g;)LJ1/h;",
        "LJ1/i;",
        "LJ1/j;",
        "prepareWallpaper",
        "(Landroid/content/Context;LJ1/i;)LJ1/j;",
        "Companion",
        "SpriteWallpaper_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider$Companion;

.field public static final HORIZONTAL_BOT:Ljava/lang/String; = "horizontal_bot.webp"

.field public static final HORIZONTAL_COLON:Ljava/lang/String; = "horizontal_colon.webp"

.field public static final HORIZONTAL_MID:Ljava/lang/String; = "horizontal_mid.webp"

.field public static final HORIZONTAL_TOP:Ljava/lang/String; = "horizontal_top.webp"

.field public static final PHYSICS_THUMBNAIL:Ljava/lang/String; = "physics_thumbnail.jpg"

.field public static final PHYSICS_THUMBNAIL_LAND:Ljava/lang/String; = "physics_thumbnail_land.jpg"

.field public static final TAG:Ljava/lang/String; = "PhysicsProvider"

.field public static final THUMBNAIL:Ljava/lang/String; = "thumbnail.jpg"

.field public static final VERTICAL_BOT:Ljava/lang/String; = "vertical_bot.webp"

.field public static final VERTICAL_MID:Ljava/lang/String; = "vertical_mid.webp"

.field public static final VERTICAL_TOP:Ljava/lang/String; = "vertical_top.webp"

.field public static final WALLPAPER_RES_PACKAGE_NAME:Ljava/lang/String; = "com.samsung.android.wallpaper.res"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->Companion:Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getThumbnail$lambda$2(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private final drawThumbnails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/graphics/Bitmap;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v3, 0x0

    const-string v4, "PhysicsProvider"

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    const-string v0, "drawThumbnails: thumbnails is empty"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_0
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    const-string v0, "createBitmap(...)"

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v6, Landroid/graphics/Canvas;

    invoke-direct {v6, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v7, -0x1

    add-int/2addr v0, v7

    const/4 v8, 0x1

    if-ltz v0, :cond_3

    :goto_0
    add-int/lit8 v9, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/graphics/Bitmap;

    if-eqz v10, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v0, v11, :cond_1

    move-object/from16 v11, p3

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v12, "get(...)"

    invoke-static {v0, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    :try_start_0
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v12, v0, 0x18

    and-int/lit16 v12, v12, 0xff

    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    invoke-virtual {v13, v8}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance v12, Landroid/graphics/PorterDuffColorFilter;

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v12, v0, v14}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v13, v12}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v0, 0x0

    invoke-virtual {v6, v10, v0, v0, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v10, "drawThumbnails: e = "

    invoke-static {v10, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v10}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    move-object/from16 v11, p3

    :goto_1
    if-gez v9, :cond_2

    goto :goto_2

    :cond_2
    move v0, v9

    goto :goto_0

    :cond_3
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/preview"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "drawThumbnails: no preview dir"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v2}, Lf2/j;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/module_clock"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v0, "drawThumbnails: no dir"

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v4, v0, v1}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_4
    sget-object v2, Lc2/c;->a:LU0/e;

    xor-int/lit8 v8, p4, 0x1

    invoke-virtual {v2, v1, v8, v0}, LU0/e;->s(Landroid/content/Context;ZLjava/lang/String;)Lc2/b;

    move-result-object v0

    move-object v2, p0

    invoke-direct {p0, v0}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getDateContainerInfo(Lc2/b;)Lc2/a;

    move-result-object v0

    iget v8, v0, Lc2/a;->b:F

    invoke-direct/range {p0 .. p1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getDefaultDate(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "drawThumbnails: dateSize = "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v10, ", rect = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lc2/a;->a:Landroid/graphics/Rect;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    new-array v10, v5, [Ljava/lang/Object;

    invoke-static {v4, v9, v10}, Lf2/j;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v4, LR1/e;

    invoke-direct {v4, v1}, LR1/e;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v9

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v10

    invoke-direct {v1, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {v4, v5, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    const/16 v1, 0x11

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setGravity(I)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const/4 v1, 0x4

    invoke-virtual {v4, v1}, Landroid/view/View;->setTextAlignment(I)V

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v7, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v4, v1, v2, v5, v7}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->save()I

    iget v1, v0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v6, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-virtual {v4, v6}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {v6}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    return-object v3
.end method

.method private final getContentName(Lc2/b;)Ljava/lang/String;
    .locals 1

    iget-object p0, p1, Lc2/b;->c:Ljava/util/HashMap;

    const-string p1, "wallpaper"

    const-string v0, "preparedSpecNode"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.WallpaperSpecNode"

    invoke-static {p0, p1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc1/E;

    iget-object p0, p0, Lc1/E;->d:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    const-string p1, "content"

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.ContentSpecNode"

    invoke-static {p0, p1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc1/j;

    iget-object p0, p0, Lc1/j;->d:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "getContentName: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "SpecNodeUtils"

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string p0, ""

    :goto_1
    return-object p0
.end method

.method private final getCurrentThumbnail(Landroid/content/Context;I)Landroid/os/ParcelFileDescriptor;
    .locals 4

    const/4 p0, 0x0

    new-array v0, p0, [Ljava/lang/Object;

    const-string v1, "getCurrentThumbnail"

    const-string v2, "PhysicsProvider"

    invoke-static {v2, v1, v0}, Lf2/j;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->b(Landroid/content/Context;)Lcom/samsung/android/wallpaper/live/sdk/service/a;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/samsung/android/wallpaper/live/sdk/service/a;->a(I)Lcom/samsung/android/wallpaper/live/sdk/service/LiveWallpaperService$BaseEngine;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type com.samsung.android.wallpaper.live.suitcase.PhysicsWallpaper.PhysicsWallpaperEngine"

    invoke-static {v1, v3}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, LO1/c;

    iget-object v1, v1, LO1/c;->g:Ljava/lang/Object;

    if-eqz v1, :cond_0

    invoke-interface {v1}, LO1/a;->i()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const-string p2, "physics_thumbnail.jpg"

    invoke-static {p1, v0, p2, p0}, Le0/a;->Y(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    :catch_0
    const-string p1, "getCurrentThumbnail: engine "

    const-string v1, " is null"

    invoke-static {p2, p1, v1}, LB/a;->j(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-array p0, p0, [Ljava/lang/Object;

    invoke-static {v2, p1, p0}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getDateContainerInfo(Lc2/b;)Lc2/a;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, Lc2/b;->d:La2/q;

    iget-object p0, p0, La2/q;->q:La2/k;

    iget-object p0, p0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/f;

    iget-object v0, p1, La2/f;->a:Ljava/lang/String;

    const-string v1, "container_date"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lc2/a;

    new-instance v0, Landroid/graphics/Rect;

    iget v1, p1, La2/f;->c:I

    iget v2, p1, La2/f;->d:I

    iget v3, p1, La2/f;->e:I

    add-int/2addr v3, v1

    iget v4, p1, La2/f;->f:I

    add-int/2addr v4, v2

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    iget p1, p1, La2/f;->y:F

    invoke-direct {p0, v0, p1}, Lc2/a;-><init>(Landroid/graphics/Rect;F)V

    goto :goto_0

    :cond_1
    new-instance p0, Lc2/a;

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lc2/a;-><init>(Landroid/graphics/Rect;F)V

    :goto_0
    return-object p0
.end method

.method private final getDefaultDate(Landroid/content/Context;)Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v5, 0x2d

    const/4 v6, 0x0

    const/16 v1, 0x7e7

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/16 v4, 0xc

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Ljava/util/Calendar;->set(IIIIII)V

    invoke-static {p1}, Lo1/b;->b(Landroid/content/Context;)Lo1/b;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo1/b;->d(Ljava/util/Calendar;)Lo1/a;

    move-result-object p0

    iget-object p0, p0, Lo1/a;->a:Ljava/lang/String;

    const-string p1, "date"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final getModularClockParts(Landroid/content/Context;ZLjava/lang/String;)Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/preview"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/vertical_top.webp"

    invoke-static {v1, v2}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v3

    const-string v4, "/horizontal_colon.webp"

    const-string v5, "/horizontal_bot.webp"

    const-string v6, "/horizontal_mid.webp"

    const-string v7, "/horizontal_top.webp"

    const-string v8, "/vertical_bot.webp"

    const-string v9, "/vertical_mid.webp"

    if-eqz v3, :cond_1

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/module_clock"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p3}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    if-eqz p0, :cond_2

    :try_start_0
    new-instance p3, Ljava/io/File;

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "/test.zip"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {p0, p1}, Lw0/f;->m(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :try_start_2
    invoke-static {p1, v3}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    const/high16 p1, 0x10000000

    invoke-static {p3, p1}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-static {p1}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {p1, v1}, Lc2/c;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {p0, v3}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_3
    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p3

    :try_start_4
    invoke-static {p1, p2}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p2

    invoke-static {p0, p1}, Lw0/f;->l(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    throw p2

    :cond_2
    :goto_1
    if-eqz p2, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    return-object v0
.end method

.method private final getPfdFromWM(Landroid/content/Context;I)Landroid/os/ParcelFileDescriptor;
    .locals 2

    invoke-static {p1, p2}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object p0

    const-string v0, ""

    if-eqz p0, :cond_1

    const-string v1, "manifest"

    invoke-virtual {p0, v1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :cond_1
    :goto_0
    invoke-static {p1, p2, v0}, LL1/a;->getWallpaperAssetFile(Landroid/content/Context;ILjava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method private final getResource(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 3

    const-string v0, "."

    invoke-static {p2, v0}, LV4/m;->o0(Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    const/16 v2, 0x2e

    invoke-static {p2, v2, v1, v0}, LV4/m;->z0(Ljava/lang/String;CII)I

    move-result v0

    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "substring(...)"

    invoke-static {p2, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getResourcesFromWallpaperResources(Landroid/content/Context;)Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "raw"

    const-string v0, "com.samsung.android.wallpaper.res"

    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x0

    const-string v0, "PhysicsProvider"

    if-gtz p1, :cond_1

    const-string p0, "getPfdFromResource: failed to get resource"

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "getPfdFromResource: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2
.end method

.method private final getResourcesFromWallpaperResources(Landroid/content/Context;)Landroid/content/res/Resources;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getWallpaperResourcePackage(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string p1, "getResources(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final getThumbnail$lambda$2(Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-void
.end method

.method private final getWallpaperResourcePackage(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    const-string p0, "com.samsung.android.wallpaper.res"

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    const-string p1, "createPackageContext(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final hasOwnClock(Lc2/b;)Z
    .locals 3

    iget-object p0, p1, Lc2/b;->c:Ljava/util/HashMap;

    const-string p1, "template"

    const-string v0, "wallpaper"

    const-string v1, "preparedSpecNode"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.WallpaperSpecNode"

    invoke-static {p0, p1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc1/E;

    iget-object p0, p0, Lc1/E;->i:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.TemplateSpecNode"

    invoke-static {p0, p1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc1/C;

    iget-object p0, p0, Lc1/C;->g:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "hasOwnClock: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "SpecNodeUtils"

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v1
.end method

.method private final hideWhenRoaming(Lc2/b;)Z
    .locals 3

    iget-object p0, p1, Lc2/b;->c:Ljava/util/HashMap;

    const-string p1, "template"

    const-string v0, "wallpaper"

    const-string v1, "preparedSpecNode"

    invoke-static {p0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.WallpaperSpecNode"

    invoke-static {p0, p1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc1/E;

    iget-object p0, p0, Lc1/E;->l:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_1

    :catch_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.TemplateSpecNode"

    invoke-static {p0, p1}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lc1/C;

    iget-object p0, p0, Lc1/C;->h:Lb1/a;

    iget-object p0, p0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :goto_0
    const-string p1, "hideWhenRoaming: e = "

    invoke-static {p1, p0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object p0

    new-array p1, v1, [Ljava/lang/Object;

    const-string v0, "SpecNodeUtils"

    invoke-static {v0, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    :goto_1
    return v1
.end method


# virtual methods
.method public getThumbnail(Landroid/content/Context;LJ1/d;)LJ1/e;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "getThumbnail: file does not exist. path = "

    const-string v4, "context"

    invoke-static {v1, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "params"

    invoke-static {v2, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getThumbnail: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, v2, LJ1/d;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v2, LJ1/d;->j:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v2, LJ1/d;->k:I

    invoke-static {v8}, LB/a;->z(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v2, LJ1/d;->m:Landroid/os/Bundle;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x0

    new-array v11, v10, [Ljava/lang/Object;

    const-string v12, "PhysicsProvider"

    invoke-static {v12, v4, v11}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v4, 0x2

    if-ne v8, v4, :cond_0

    invoke-direct {v0, v1, v5}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getCurrentThumbnail(Landroid/content/Context;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_14

    const-string v13, "PhysicsResourceInfo"

    const-string v14, "module_clock_color_set"

    const-string v15, "vertical"

    const-string v11, "module_clock_layout"

    const-string v10, "module_clock.zip"

    if-eqz v9, :cond_4

    invoke-virtual {v9}, Landroid/os/BaseBundle;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :goto_1
    if-eqz v9, :cond_4

    move-object/from16 v17, v4

    new-instance v4, Lb2/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v10, v4, Lb2/a;->a:Ljava/lang/String;

    move-object/from16 v18, v12

    const/4 v12, 0x1

    iput-boolean v12, v4, Lb2/a;->c:Z

    sget-object v12, Lb2/a;->e:Ljava/util/ArrayList;

    iput-object v12, v4, Lb2/a;->d:Ljava/util/ArrayList;

    move-object/from16 v16, v12

    const-string v12, "filename"

    invoke-virtual {v9, v12}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_2

    goto :goto_2

    :cond_2
    move-object v10, v12

    :goto_2
    iput-object v10, v4, Lb2/a;->a:Ljava/lang/String;

    const-string v12, "modular_clock"

    move-object/from16 v19, v3

    const/4 v3, 0x0

    invoke-virtual {v9, v12, v3}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v12

    iput-boolean v12, v4, Lb2/a;->b:Z

    invoke-virtual {v9, v11, v15}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v4, Lb2/a;->c:Z

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_3

    move-object/from16 v9, v16

    :cond_3
    iput-object v9, v4, Lb2/a;->d:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v13, v3, v9}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_6

    :cond_4
    move-object/from16 v19, v3

    move-object/from16 v17, v4

    move-object/from16 v18, v12

    new-instance v4, Lb2/a;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v10, v4, Lb2/a;->a:Ljava/lang/String;

    const/4 v3, 0x1

    iput-boolean v3, v4, Lb2/a;->c:Z

    sget-object v3, Lb2/a;->e:Ljava/util/ArrayList;

    iput-object v3, v4, Lb2/a;->d:Ljava/util/ArrayList;

    invoke-static {v1, v5}, Lcom/samsung/android/wallpaper/live/util/WallpaperManagerHelper;->getWallpaperExtras(Landroid/content/Context;I)Landroid/os/Bundle;

    move-result-object v9

    const-string v10, ""

    if-eqz v9, :cond_5

    const-string v12, "manifest"

    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_6

    :cond_5
    move-object v12, v10

    :cond_6
    iput-object v12, v4, Lb2/a;->a:Ljava/lang/String;

    if-eqz v9, :cond_8

    const-string v12, "contentType"

    invoke-virtual {v9, v12, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    if-nez v12, :cond_7

    goto :goto_3

    :cond_7
    move-object/from16 v16, v3

    goto :goto_4

    :cond_8
    :goto_3
    move-object/from16 v16, v3

    move-object v12, v10

    :goto_4
    const-string v3, "numberModuleClock"

    invoke-static {v3, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, v4, Lb2/a;->b:Z

    if-eqz v9, :cond_a

    invoke-virtual {v9, v11, v10}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_9

    goto :goto_5

    :cond_9
    move-object v10, v11

    :cond_a
    :goto_5
    invoke-static {v15, v10}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    iput-boolean v10, v4, Lb2/a;->c:Z

    if-eqz v9, :cond_b

    invoke-virtual {v9, v14}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_c

    :cond_b
    move-object/from16 v9, v16

    :cond_c
    iput-object v9, v4, Lb2/a;->d:Ljava/util/ArrayList;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    new-array v9, v6, [Ljava/lang/Object;

    invoke-static {v13, v3, v9}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_6
    iget-boolean v3, v4, Lb2/a;->b:Z

    if-eqz v3, :cond_11

    const/4 v3, 0x3

    if-ne v8, v3, :cond_f

    iget v0, v2, LJ1/d;->h:I

    invoke-static {v1, v0, v7}, LK/I;->F(Landroid/content/Context;II)Landroid/graphics/Point;

    move-result-object v0

    const/16 v1, 0x64

    if-eqz v0, :cond_d

    iget v2, v0, Landroid/graphics/Point;->x:I

    goto :goto_7

    :cond_d
    move v2, v1

    :goto_7
    if-eqz v0, :cond_e

    iget v1, v0, Landroid/graphics/Point;->y:I

    :cond_e
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    new-instance v2, LB1/a;

    const/4 v3, 0x5

    invoke-direct {v2, v0, v3}, LB1/a;-><init>(Landroid/graphics/Bitmap;I)V

    invoke-static {v0, v1, v2}, LK/I;->s(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;Ljava/lang/Runnable;)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    :goto_8
    move-object/from16 v1, v18

    :goto_9
    const/4 v2, 0x0

    goto/16 :goto_e

    :cond_f
    iget-boolean v2, v4, Lb2/a;->c:Z

    iget-object v3, v4, Lb2/a;->a:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getModularClockParts(Landroid/content/Context;ZLjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, v4, Lb2/a;->d:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->drawThumbnails(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v2, :cond_10

    const-string v2, "physics_thumbnail.jpg"

    :goto_a
    const/4 v3, 0x0

    goto :goto_b

    :cond_10
    const-string v2, "physics_thumbnail_land.jpg"

    goto :goto_a

    :goto_b
    invoke-static {v1, v0, v2, v3}, Le0/a;->Y(Landroid/content/Context;Landroid/graphics/Bitmap;Ljava/lang/String;Z)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    move v2, v3

    move-object/from16 v1, v18

    goto/16 :goto_e

    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    goto :goto_c

    :cond_12
    const/4 v11, 0x0

    :goto_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/thumbnail.jpg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_13

    const/high16 v0, 0x10000000

    invoke-static {v1, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    goto :goto_8

    :catch_0
    move-exception v0

    move-object/from16 v1, v18

    goto :goto_d

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    move-object/from16 v2, v19

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v1, v18

    :try_start_1
    invoke-static {v1, v0, v2}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object/from16 v4, v17

    goto :goto_9

    :catch_1
    move-exception v0

    :goto_d
    const-string v2, "getThumbnail: e = "

    invoke-static {v2, v0}, LB/a;->l(Ljava/lang/String;Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lf2/j;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, v17

    goto :goto_e

    :cond_14
    move-object/from16 v17, v4

    move v2, v10

    move-object v1, v12

    :goto_e
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "getThumbnail: pfd = "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, LJ1/e;

    invoke-direct {v0, v4}, LJ1/e;-><init>(Landroid/os/ParcelFileDescriptor;)V

    return-object v0
.end method

.method public getThumbnailByBackupId(Landroid/content/Context;LJ1/g;)LJ1/h;
    .locals 0

    const-string p0, "getThumbnailByBackupId(...)"

    const/4 p1, 0x0

    invoke-static {p1, p0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public bridge synthetic onGetBackgroundRegion(Landroid/content/Context;LJ1/a;)LJ1/b;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public prepareWallpaper(Landroid/content/Context;LJ1/i;)LJ1/j;
    .locals 11

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "prepareWallpaper : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "PhysicsProvider"

    invoke-static {v4, v0, v3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget p2, p2, LJ1/i;->h:I

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getPfdFromWM(Landroid/content/Context;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "/"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lc2/c;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;)V

    sget-object v0, Lc2/c;->a:LU0/e;

    invoke-virtual {v0, p1, v2, p2}, LU0/e;->s(Landroid/content/Context;ZLjava/lang/String;)Lc2/b;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->getContentName(Lc2/b;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->hasOwnClock(Lc2/b;)Z

    move-result v9

    invoke-direct {p0, p1}, Lcom/samsung/android/wallpaper/live/suitcase/provider/PhysicsProvider;->hideWhenRoaming(Lc2/b;)Z

    move-result p0

    new-instance v10, Landroid/os/Bundle;

    invoke-direct {v10}, Landroid/os/Bundle;-><init>()V

    const-string p1, "hideWhenRoaming"

    invoke-virtual {v10, p1, p0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, LJ1/j;

    const-string v6, "physics"

    const/4 v8, 0x0

    move-object v5, p0

    invoke-direct/range {v5 .. v10}, LJ1/j;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLandroid/os/Bundle;)V

    return-object p0

    :cond_0
    const-string p0, "prepareWallpaper : pfd is null"

    new-array p1, v2, [Ljava/lang/Object;

    invoke-static {v4, p0, p1}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    const-string p1, "prepareWallpaper(...)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
