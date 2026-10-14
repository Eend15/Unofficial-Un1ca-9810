.class public final La0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public b:Z

.field public c:I

.field public d:Z

.field public final e:Z

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/lang/Object;

.field public final i:Ljava/lang/Object;

.field public final j:Ljava/lang/Object;

.field public k:Ljava/lang/Object;

.field public final l:Ljava/lang/Object;

.field public m:Ljava/lang/Object;

.field public n:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Le0/b;La0/k;Ljava/util/ArrayList;ZILjava/util/concurrent/Executor;Ljava/util/concurrent/Executor;ZZLjava/util/LinkedHashSet;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    const-string v0, "migrationContainer"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "journalMode"

    invoke-static {p7, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "queryExecutor"

    invoke-static {p8, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transactionExecutor"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeConverters"

    invoke-static {p13, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "autoMigrationSpecs"

    invoke-static {p14, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La0/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, La0/b;->f:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, La0/b;->g:Ljava/lang/Object;

    .line 5
    iput-object p4, p0, La0/b;->h:Ljava/lang/Object;

    .line 6
    iput-object p5, p0, La0/b;->i:Ljava/lang/Object;

    .line 7
    iput-boolean p6, p0, La0/b;->b:Z

    .line 8
    iput p7, p0, La0/b;->c:I

    .line 9
    iput-object p8, p0, La0/b;->l:Ljava/lang/Object;

    .line 10
    iput-object p9, p0, La0/b;->m:Ljava/lang/Object;

    .line 11
    iput-boolean p10, p0, La0/b;->d:Z

    .line 12
    iput-boolean p11, p0, La0/b;->e:Z

    .line 13
    iput-object p12, p0, La0/b;->n:Ljava/lang/Object;

    .line 14
    iput-object p13, p0, La0/b;->j:Ljava/lang/Object;

    .line 15
    iput-object p14, p0, La0/b;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput-boolean v0, p0, La0/b;->b:Z

    .line 18
    iput-object p1, p0, La0/b;->a:Landroid/content/Context;

    .line 19
    iput-boolean p2, p0, La0/b;->e:Z

    .line 20
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Li1/h;->tilt_clock_layout:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, La0/b;->f:Ljava/lang/Object;

    .line 21
    sget p2, Li1/f;->front_scrim:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, La0/b;->l:Ljava/lang/Object;

    .line 22
    iget-object p1, p0, La0/b;->f:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Li1/f;->time_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, La0/b;->g:Ljava/lang/Object;

    .line 23
    iget-object p1, p0, La0/b;->f:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Li1/f;->date_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La0/b;->i:Ljava/lang/Object;

    .line 24
    iget-object p1, p0, La0/b;->f:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Li1/f;->local_date_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, La0/b;->j:Ljava/lang/Object;

    .line 25
    iget-object p1, p0, La0/b;->f:Ljava/lang/Object;

    check-cast p1, Landroid/view/ViewGroup;

    sget p2, Li1/f;->clock_container:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, La0/b;->h:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;II)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, La0/b;->f:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_12

    if-nez v1, :cond_0

    goto/16 :goto_8

    :cond_0
    iget-boolean v2, v0, La0/b;->b:Z

    iget-object v3, v0, La0/b;->a:Landroid/content/Context;

    const/4 v4, 0x0

    if-eqz v2, :cond_8

    iget-object v2, v0, La0/b;->n:Ljava/lang/Object;

    check-cast v2, Lo1/a;

    if-eqz v2, :cond_8

    iput-boolean v4, v0, La0/b;->b:Z

    iget-object v5, v0, La0/b;->i:Ljava/lang/Object;

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_1

    iget-object v2, v2, Lo1/a;->a:Ljava/lang/String;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v2, v0, La0/b;->j:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    iget-object v2, v0, La0/b;->n:Ljava/lang/Object;

    check-cast v2, Lo1/a;

    iget-object v2, v2, Lo1/a;->b:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v5, 0x8

    if-nez v2, :cond_2

    iget-object v2, v0, La0/b;->j:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "("

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, v0, La0/b;->n:Ljava/lang/Object;

    check-cast v7, Lo1/a;

    iget-object v7, v7, Lo1/a;->b:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v0, La0/b;->j:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-ne v2, v5, :cond_3

    iget-object v2, v0, La0/b;->j:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v2, v0, La0/b;->j:Ljava/lang/Object;

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v2, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    goto :goto_1

    :cond_4
    move v2, v4

    :goto_1
    move v5, v4

    :goto_2
    if-ge v5, v2, :cond_7

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Landroid/widget/ImageView;

    if-eqz v6, :cond_6

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iget-object v7, v0, La0/b;->k:Ljava/lang/Object;

    check-cast v7, Landroid/content/res/TypedArray;

    if-nez v7, :cond_5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Li1/b;->tilt_clock_number_icon_list:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v7

    iput-object v7, v0, La0/b;->k:Ljava/lang/Object;

    :cond_5
    iget-object v7, v0, La0/b;->n:Ljava/lang/Object;

    check-cast v7, Lo1/a;

    iget-object v7, v7, Lo1/a;->c:Ljava/lang/String;

    add-int/lit8 v8, v5, 0x1

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_6

    :try_start_0
    iget-object v7, v0, La0/b;->n:Ljava/lang/Object;

    check-cast v7, Lo1/a;

    iget-object v7, v7, Lo1/a;->c:Ljava/lang/String;

    invoke-virtual {v7, v5, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, v0, La0/b;->k:Ljava/lang/Object;

    check-cast v9, Landroid/content/res/TypedArray;

    invoke-virtual {v9, v7, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v7, v7, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    sget v8, Li1/c;->tilt_clock_shadow_color:I

    invoke-virtual {v3, v8}, Landroid/content/Context;->getColor(I)I

    move-result v12

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v13, Li1/d;->tilt_clock_shadow_radius:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v14, Li1/d;->tilt_clock_shadow_dx:I

    invoke-virtual {v8, v14}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    mul-float v14, v8, v7

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v15, Li1/d;->tilt_clock_shadow_dy:I

    invoke-virtual {v8, v15}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v8

    mul-float v15, v8, v7

    invoke-static/range {v9 .. v15}, Le0/a;->q(Landroid/graphics/Bitmap;IIIFFF)Landroid/graphics/Bitmap;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_7
    iget-object v2, v0, La0/b;->k:Ljava/lang/Object;

    check-cast v2, Landroid/content/res/TypedArray;

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V

    const/4 v2, 0x0

    iput-object v2, v0, La0/b;->k:Ljava/lang/Object;

    :cond_8
    iget-boolean v2, v0, La0/b;->d:Z

    if-eqz v2, :cond_d

    iput-boolean v4, v0, La0/b;->d:Z

    iget-object v2, v0, La0/b;->f:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    iget v5, v0, La0/b;->c:I

    invoke-static {v5}, La4/x;->x(I)Landroid/graphics/drawable/PaintDrawable;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget v2, v0, La0/b;->c:I

    const/4 v5, 0x3

    new-array v5, v5, [F

    invoke-static {v2, v5}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 v2, 0x1

    aget v6, v5, v2

    const v7, -0x42333333    # -0.1f

    add-float/2addr v6, v7

    aput v6, v5, v2

    const/4 v2, 0x2

    aget v6, v5, v2

    const v7, 0x3ca3d70a    # 0.02f

    add-float/2addr v6, v7

    aput v6, v5, v2

    invoke-static {v5}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    iget-object v5, v0, La0/b;->i:Ljava/lang/Object;

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_9

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_9
    iget-object v5, v0, La0/b;->j:Ljava/lang/Object;

    check-cast v5, Landroid/widget/TextView;

    if-eqz v5, :cond_a

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a
    iget-object v5, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v5, Landroid/view/ViewGroup;

    if-eqz v5, :cond_b

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    goto :goto_3

    :cond_b
    move v5, v4

    :goto_3
    move v6, v4

    :goto_4
    if-ge v6, v5, :cond_d

    iget-object v7, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    instance-of v7, v7, Landroid/widget/ImageView;

    if-eqz v7, :cond_c

    iget-object v7, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    invoke-virtual {v7, v2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_d
    iget-object v2, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v2, Ld2/e;

    if-eqz v2, :cond_f

    iget-object v5, v0, La0/b;->l:Ljava/lang/Object;

    check-cast v5, Landroid/view/View;

    iget v2, v2, Ld2/e;->a:F

    invoke-virtual {v5, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v2, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v2, Landroid/view/ViewGroup;

    if-eqz v2, :cond_e

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    goto :goto_5

    :cond_e
    move v2, v4

    :goto_5
    move v5, v4

    :goto_6
    if-ge v5, v2, :cond_f

    iget-object v6, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v6, Ld2/e;

    iget-object v6, v6, Ld2/e;->b:[F

    array-length v6, v6

    if-ge v5, v6, :cond_f

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v7, Ld2/e;

    iget-object v7, v7, Ld2/e;->b:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationX(F)V

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v7, Ld2/e;

    iget-object v7, v7, Ld2/e;->c:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationY(F)V

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v7, Ld2/e;

    iget-object v7, v7, Ld2/e;->d:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v7, Ld2/e;

    iget-object v7, v7, Ld2/e;->e:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleX(F)V

    iget-object v6, v0, La0/b;->g:Ljava/lang/Object;

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v6, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    iget-object v7, v0, La0/b;->m:Ljava/lang/Object;

    check-cast v7, Ld2/e;

    iget-object v7, v7, Ld2/e;->e:[F

    aget v7, v7, v5

    invoke-virtual {v6, v7}, Landroid/view/View;->setScaleY(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_f
    iget-boolean v2, v0, La0/b;->e:Z

    if-eqz v2, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Li1/d;->tilt_clock_wallpaper_width:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Li1/d;->tilt_clock_wallpaper_height:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    goto :goto_7

    :cond_10
    move/from16 v5, p2

    move/from16 v6, p3

    :goto_7
    iget-object v7, v0, La0/b;->f:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    const/high16 v8, 0x40000000    # 2.0f

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-virtual {v7, v9, v8}, Landroid/view/View;->measure(II)V

    iget-object v7, v0, La0/b;->f:Ljava/lang/Object;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v4, v4, v5, v6}, Landroid/view/ViewGroup;->layout(IIII)V

    if-eqz v2, :cond_11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move/from16 v4, p2

    int-to-float v4, v4

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v4, v5

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Li1/d;->tilt_clock_wallpaper_width:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v4, v3

    invoke-virtual {v1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    :cond_11
    iget-object v0, v0, La0/b;->f:Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    if-eqz v2, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_12
    :goto_8
    return-void
.end method
