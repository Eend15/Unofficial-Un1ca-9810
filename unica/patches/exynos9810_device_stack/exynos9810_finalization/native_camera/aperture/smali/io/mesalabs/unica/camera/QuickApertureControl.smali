.class public final Lio/mesalabs/unica/camera/QuickApertureControl;
.super Ljava/lang/Object;
.source "QuickApertureControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/camera/QuickApertureControl$Session;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnicaAperture"

.field private static volatile active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

.field private static final main:Landroid/os/Handler;

.field private static final sessions:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/mesalabs/unica/camera/QuickApertureControl$Session;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$sfgetmain()Landroid/os/Handler;
    .registers 1

    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$smapplyTypography(Landroid/widget/TextView;I)V
    .registers 2

    invoke-static {p0, p1}, Lio/mesalabs/unica/camera/QuickApertureControl;->applyTypography(Landroid/widget/TextView;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sminstallStockFeedback(Landroid/widget/TextView;)V
    .registers 1

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->installStockFeedback(Landroid/widget/TextView;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 19
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyTypography(Landroid/widget/TextView;I)V
    .registers 6

    .line 82
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SecNumFixedSemiBold"

    const-string v3, "style"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_19

    .line 83
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 84
    :cond_19
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "quick_setting_indicator_ev_text_size"

    const-string v3, "dimen"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    if-nez p1, :cond_36

    const/high16 p1, 0x41300000    # 11.0f

    .line 85
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_36
    if-eqz v0, :cond_45

    .line 86
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_45
    const p1, 0x413b3333    # 11.7f

    .line 87
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method static bind(Landroid/view/View;)V
    .registers 2

    if-nez p0, :cond_3

    return-void

    .line 34
    :cond_3
    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static hide(Ljava/lang/Object;)V
    .registers 2

    .line 52
    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->resolve(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    goto :goto_10

    :cond_8
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    :goto_10
    if-eqz p0, :cond_15

    .line 53
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->clearPressed()V

    :cond_15
    return-void
.end method

.method private static installStockFeedback(Landroid/widget/TextView;)V
    .registers 5

    .line 90
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "default_ripple_effect"

    const-string v3, "drawable"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_17

    return-void

    .line 92
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42200000    # 40.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 93
    new-instance v2, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;

    invoke-direct {v2, v1, p0, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;-><init>(ILandroid/widget/TextView;I)V

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method static synthetic lambda$bind$0(Landroid/view/View;)V
    .registers 6

    .line 36
    :try_start_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "mEngine"

    invoke-static {v0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 37
    const-string v1, "mMakerHolder"

    invoke-static {v0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 38
    const-string v2, "getMakerPublicSettings"

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mMaker"

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 39
    sget-object v2, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    .line 40
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1}, Lio/mesalabs/unica/camera/ApertureControl;->dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    if-eqz v3, :cond_33

    .line 41
    invoke-virtual {v3}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    .line 42
    :cond_33
    sget-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne p0, v3, :cond_53

    const/4 p0, 0x0

    sput-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    return-void

    :cond_3b
    if-nez v3, :cond_45

    .line 45
    new-instance v3, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    invoke-direct {v3, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;-><init>(Landroid/view/View;)V

    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    :cond_45
    invoke-virtual {v3, v0, v1}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->open(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v3, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    return-void

    :catch_4b
    move-exception p0

    .line 47
    const-string v0, "UnicaAperture"

    const-string v1, "Aperture native item unavailable; stock controls retained"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_53
    return-void
.end method

.method static synthetic lambda$installStockFeedback$4(ILandroid/widget/TextView;ILandroid/view/View;IIIIIIII)V
    .registers 18

    sub-int/2addr p6, p4

    if-lez p6, :cond_2f

    sub-int/2addr p7, p5

    if-lez p7, :cond_2f

    sub-int p3, p10, p8

    if-ne p6, p3, :cond_f

    sub-int p3, p11, p9

    if-ne p7, p3, :cond_f

    goto :goto_2f

    .line 95
    :cond_f
    invoke-static {p6, p7}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-static {p0, p3}, Ljava/lang/Math;->min(II)I

    move-result p0

    .line 96
    new-instance v0, Landroid/graphics/drawable/InsetDrawable;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    sub-int/2addr p6, p0

    div-int/lit8 v2, p6, 0x2

    sub-int/2addr p7, p0

    div-int/lit8 v3, p7, 0x2

    move v4, v2

    move v5, v3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_2f
    :goto_2f
    return-void
.end method

.method static synthetic lambda$onEngineState$2(Ljava/lang/Object;)V
    .registers 4

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    iget-object v2, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_f

    iget-object v1, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-static {v1}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Landroid/view/View;)V

    goto :goto_f

    :cond_2f
    return-void
.end method

.method static synthetic lambda$onLensInfo$3(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V
    .registers 3

    .line 77
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v0, p0, :cond_11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    :cond_11
    return-void
.end method

.method static synthetic lambda$resetEngine$1(Ljava/lang/Object;)V
    .registers 1

    .line 61
    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->resetEngine(Ljava/lang/Object;)V

    return-void
.end method

.method static named(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static onEngineState(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 3

    .line 65
    instance-of v0, p1, Ljava/lang/Enum;

    if-eqz v0, :cond_1d

    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PREVIEWING"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_1d

    .line 66
    :cond_13
    sget-object p1, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static onLensInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 69
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-eqz v0, :cond_75

    iget-boolean v1, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-nez v1, :cond_9

    goto :goto_75

    .line 71
    :cond_9
    :try_start_9
    const-string v1, "n"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 72
    iget-object v1, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    goto :goto_75

    .line 73
    :cond_1a
    const-string p1, "a"

    invoke-static {p0, p1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    if-eqz p0, :cond_75

    .line 74
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_47

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v2, 0x4019999a    # 2.4f

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_47

    goto :goto_75

    .line 75
    :cond_47
    iget-object p1, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_60

    goto :goto_75

    .line 76
    :cond_60
    iput-object p0, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 77
    sget-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance p1, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_6c} :catch_6d

    return-void

    :catch_6d
    move-exception p0

    .line 78
    const-string p1, "UnicaAperture"

    const-string v0, "Lens result unavailable"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_75
    :goto_75
    return-void
.end method

.method public static prepare(Ljava/lang/Object;)V
    .registers 3

    .line 30
    :try_start_0
    const-string v0, "mView"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Landroid/view/View;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    return-void

    :catch_c
    move-exception p0

    const-string v0, "UnicaAperture"

    const-string v1, "Aperture prepare"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static resetEngine(Ljava/lang/Object;)V
    .registers 4

    .line 61
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance v1, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 62
    :cond_15
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_24
    :goto_24
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    iget-object v2, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p0, :cond_24

    invoke-virtual {v1}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    sget-object v2, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v2, v1, :cond_24

    const/4 v1, 0x0

    sput-object v1, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    goto :goto_24

    :cond_43
    return-void
.end method

.method static resolve(Ljava/lang/Object;)Landroid/view/View;
    .registers 3

    .line 23
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_7

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_7
    const/4 v0, 0x0

    .line 24
    :try_start_8
    const-string v1, "this$0"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of v1, p0, Landroid/view/View;

    if-eqz v1, :cond_15

    check-cast p0, Landroid/view/View;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    :cond_15
    return-object v0
.end method

.method public static settle(Ljava/lang/Object;)V
    .registers 1

    .line 28
    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->resolve(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Landroid/view/View;)V

    return-void
.end method

.method public static show(Ljava/lang/Object;)V
    .registers 1

    .line 27
    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->resolve(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Landroid/view/View;)V

    return-void
.end method

.method public static stop(Ljava/lang/Object;)V
    .registers 3

    .line 56
    :try_start_0
    const-string v0, "mView"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-eqz p0, :cond_15

    .line 57
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    :cond_15
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v0, p0, :cond_25

    const/4 p0, 0x0

    sput-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    return-void

    :catch_1d
    move-exception p0

    .line 58
    const-string v0, "UnicaAperture"

    const-string v1, "Aperture stop"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_25
    return-void
.end method
