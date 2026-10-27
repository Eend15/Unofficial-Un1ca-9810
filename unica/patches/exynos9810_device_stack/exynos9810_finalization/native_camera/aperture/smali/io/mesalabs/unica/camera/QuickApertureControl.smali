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

.method static bridge synthetic -$$Nest$smnamed(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 2

    invoke-static {p0, p1}, Lio/mesalabs/unica/camera/QuickApertureControl;->named(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    .line 24
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static applyTypography(Landroid/widget/TextView;I)V
    .registers 6

    .line 160
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

    if-nez p1, :cond_1d

    const/high16 p1, 0x41300000    # 11.0f

    .line 162
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_1d
    if-eqz v0, :cond_2c

    .line 164
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void

    :cond_2c
    const p1, 0x413b3333    # 11.7f

    .line 166
    invoke-virtual {p0, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    return-void
.end method

.method private static bind(Ljava/lang/Object;Z)V
    .registers 3

    .line 35
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_a

    .line 36
    :try_start_4
    const-string v0, "this$0"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_a} :catch_e

    .line 39
    :cond_a
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_f

    :catch_e
    return-void

    .line 40
    :cond_f
    check-cast p0, Landroid/view/View;

    .line 41
    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;Z)V

    invoke-virtual {p0, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static hide(Ljava/lang/Object;)V
    .registers 2

    .line 61
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_5

    goto :goto_21

    .line 62
    :cond_5
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-eqz p0, :cond_14

    .line 63
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    .line 64
    :cond_14
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v0, p0, :cond_21

    if-eqz p0, :cond_1e

    iget-boolean p0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    if-nez p0, :cond_21

    :cond_1e
    const/4 p0, 0x0

    sput-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    :cond_21
    :goto_21
    return-void
.end method

.method private static installStockFeedback(Landroid/widget/TextView;)V
    .registers 6

    .line 139
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

    .line 140
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "quick_setting_button_image_size"

    const-string v4, "dimen"

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_4a

    if-eqz v1, :cond_4a

    .line 142
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, -0x1

    .line 143
    filled-new-array {v2, v2}, [I

    move-result-object v2

    .line 144
    new-instance v3, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, v2, v1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda5;-><init>(Landroid/widget/TextView;[III)V

    .line 154
    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda6;

    invoke-direct {v0, v3}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 155
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 141
    :cond_4a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Missing stock Camera press feedback"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$bind$0(Landroid/view/View;Z)V
    .registers 6

    .line 43
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v1, "isMainListVisible"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz p1, :cond_11

    if-nez v0, :cond_11

    goto :goto_5b

    .line 45
    :cond_11
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "mEngine"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 46
    const-string v1, "mMakerHolder"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 47
    const-string v2, "getMakerPublicSettings"

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "mMaker"

    invoke-static {v1, v2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lio/mesalabs/unica/camera/ApertureControl;->dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3b

    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->hide(Ljava/lang/Object;)V

    return-void

    .line 49
    :cond_3b
    sget-object v2, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    invoke-virtual {v2, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-nez v3, :cond_4d

    .line 51
    new-instance v3, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    invoke-direct {v3, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;-><init>(Landroid/view/View;)V

    .line 52
    invoke-virtual {v2, p0, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_4d
    invoke-virtual {v3, p1, v1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->open(Ljava/lang/Object;Ljava/lang/Object;Z)V

    .line 55
    sput-object v3, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_52} :catch_53

    return-void

    :catch_53
    move-exception p0

    .line 56
    const-string p1, "UnicaAperture"

    const-string v0, "Quick aperture unavailable; stock controls retained"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5b
    return-void
.end method

.method static synthetic lambda$installStockFeedback$5(Landroid/widget/TextView;[III)V
    .registers 15

    .line 145
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    if-lez v0, :cond_44

    if-lez v1, :cond_44

    const/4 v2, 0x0

    .line 146
    aget v3, p1, v2

    const/4 v4, 0x1

    if-ne v3, v0, :cond_17

    aget v3, p1, v4

    if-ne v3, v1, :cond_17

    goto :goto_44

    .line 147
    :cond_17
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result p2

    sub-int v3, v0, p2

    .line 148
    div-int/lit8 v7, v3, 0x2

    sub-int p2, v1, p2

    div-int/lit8 v8, p2, 0x2

    .line 149
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 150
    new-instance v5, Landroid/graphics/drawable/InsetDrawable;

    move v9, v7

    move v10, v8

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 151
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 152
    aput v0, p1, v2

    aput v1, p1, v4

    :cond_44
    :goto_44
    return-void
.end method

.method static synthetic lambda$installStockFeedback$6(Ljava/lang/Runnable;Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 154
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method static synthetic lambda$onEngineState$2(Ljava/lang/Object;)V
    .registers 4

    .line 95
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

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    .line 96
    iget-object v2, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-eqz v2, :cond_f

    .line 97
    iget-object v1, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p0, :cond_f

    const/4 v1, 0x0

    invoke-static {v2, v1}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Ljava/lang/Object;Z)V

    goto :goto_f

    :cond_32
    return-void
.end method

.method static synthetic lambda$onLensInfo$3(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V
    .registers 2

    .line 111
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v0, p0, :cond_d

    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    const/4 p0, 0x0

    sput-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    :cond_d
    return-void
.end method

.method static synthetic lambda$onLensInfo$4(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V
    .registers 3

    .line 121
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v0, p0, :cond_28

    const/4 v0, 0x0

    .line 122
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pending:Z

    .line 123
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->text:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_16

    .line 124
    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 125
    :cond_16
    iget-object v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->pin:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_25

    .line 126
    iget-object v1, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 127
    :cond_25
    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->update()V

    :cond_28
    return-void
.end method

.method static synthetic lambda$resetEngine$1(Ljava/lang/Object;)V
    .registers 1

    .line 80
    invoke-static {p0}, Lio/mesalabs/unica/camera/QuickApertureControl;->resetEngine(Ljava/lang/Object;)V

    return-void
.end method

.method private static named(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 5

    .line 134
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

    .line 93
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

    .line 94
    :cond_13
    sget-object p1, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance v0, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda4;-><init>(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1d
    :goto_1d
    return-void
.end method

.method public static onLensInfo(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 5

    .line 104
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-eqz v0, :cond_84

    .line 105
    iget-object v1, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->root:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e

    goto/16 :goto_84

    .line 107
    :cond_e
    :try_start_e
    const-string v1, "a"

    invoke-static {p0, v1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    .line 108
    const-string v1, "n"

    invoke-static {p1, v1}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 109
    iget-object v1, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->cameraId:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_31

    .line 110
    sget-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance p1, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;

    invoke-direct {p1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda2;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_31
    if-eqz p0, :cond_84

    .line 116
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x3fc00000    # 1.5f

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3c23d70a    # 0.01f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_56

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const v2, 0x4019999a    # 2.4f

    sub-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_56

    goto :goto_84

    .line 117
    :cond_56
    iget-object p1, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    if-eqz p1, :cond_6f

    .line 118
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3a83126f    # 0.001f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_6f

    goto :goto_84

    .line 119
    :cond_6f
    iput-object p0, v0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->reported:Ljava/lang/Float;

    .line 120
    sget-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance p1, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda3;

    invoke-direct {p1, v0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda3;-><init>(Lio/mesalabs/unica/camera/QuickApertureControl$Session;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_7b} :catch_7c

    return-void

    :catch_7c
    move-exception p0

    .line 130
    const-string p1, "UnicaAperture"

    const-string v0, "Lens result unavailable"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_84
    :goto_84
    return-void
.end method

.method public static prepare(Ljava/lang/Object;)V
    .registers 3

    .line 30
    :try_start_0
    const-string v0, "mView"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Ljava/lang/Object;Z)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_b

    return-void

    :catch_b
    move-exception p0

    .line 31
    const-string v0, "UnicaAperture"

    const-string v1, "Aperture indicator preparation"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static resetEngine(Ljava/lang/Object;)V
    .registers 4

    .line 79
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_15

    .line 80
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->main:Landroid/os/Handler;

    new-instance v1, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lio/mesalabs/unica/camera/QuickApertureControl$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 83
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

    if-eqz v1, :cond_47

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    .line 84
    iget-object v2, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->engine:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eq v2, p0, :cond_39

    goto :goto_24

    :cond_39
    const/4 v2, 0x0

    .line 85
    iput-boolean v2, v1, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    .line 86
    invoke-virtual {v1}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    .line 87
    sget-object v2, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v2, v1, :cond_24

    const/4 v1, 0x0

    sput-object v1, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    goto :goto_24

    :cond_47
    return-void
.end method

.method public static show(Ljava/lang/Object;)V
    .registers 2

    const/4 v0, 0x1

    .line 27
    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/QuickApertureControl;->bind(Ljava/lang/Object;Z)V

    return-void
.end method

.method public static stop(Ljava/lang/Object;)V
    .registers 3

    .line 69
    :try_start_0
    const-string v0, "mView"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 70
    instance-of v0, p0, Landroid/view/View;

    if-nez v0, :cond_b

    goto :goto_2d

    .line 71
    :cond_b
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->sessions:Ljava/util/WeakHashMap;

    check-cast p0, Landroid/view/View;

    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-eqz p0, :cond_1d

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->bound:Z

    invoke-virtual {p0}, Lio/mesalabs/unica/camera/QuickApertureControl$Session;->close()V

    .line 73
    :cond_1d
    sget-object v0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;

    if-ne v0, p0, :cond_2d

    const/4 p0, 0x0

    sput-object p0, Lio/mesalabs/unica/camera/QuickApertureControl;->active:Lio/mesalabs/unica/camera/QuickApertureControl$Session;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    return-void

    :catch_25
    move-exception p0

    .line 74
    const-string v0, "UnicaAperture"

    const-string v1, "Aperture lifecycle cleanup"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2d
    :goto_2d
    return-void
.end method
