.class public final Lio/mesalabs/unica/camera/ApertureControl;
.super Ljava/lang/Object;
.source "ApertureControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/mesalabs/unica/camera/ApertureControl$Control;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "UnicaAperture"

.field private static final controls:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "Landroid/view/View;",
            "Lio/mesalabs/unica/camera/ApertureControl$Control;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$smmaker(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 1

    invoke-static {p0}, Lio/mesalabs/unica/camera/ApertureControl;->maker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lio/mesalabs/unica/camera/ApertureControl;->controls:Ljava/util/WeakHashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bind(Ljava/lang/Object;Ljava/lang/Object;F)Z
    .registers 9

    const/4 v0, 0x0

    .line 62
    :try_start_1
    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_6

    return v0

    .line 63
    :cond_6
    check-cast p1, Landroid/view/View;

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "aperture_indicator"

    const-string v3, "id"

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 65
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 66
    instance-of v2, v1, Landroid/widget/TextView;

    if-nez v2, :cond_25

    return v0

    .line 67
    :cond_25
    sget-object v2, Lio/mesalabs/unica/camera/ApertureControl;->controls:Ljava/util/WeakHashMap;

    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lio/mesalabs/unica/camera/ApertureControl$Control;

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0}, Lio/mesalabs/unica/camera/ApertureControl;->maker(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lio/mesalabs/unica/camera/ApertureControl;->dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result p1

    const/4 v4, 0x1

    if-nez p1, :cond_57

    if-eqz v3, :cond_56

    .line 70
    iget-object p0, v3, Lio/mesalabs/unica/camera/ApertureControl$Control;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v1, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    .line 71
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 73
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 74
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 75
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 76
    invoke-virtual {v2, v1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    return v0

    :cond_57
    if-eqz v3, :cond_61

    .line 80
    iget-object p1, v3, Lio/mesalabs/unica/camera/ApertureControl$Control;->presenter:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-eq p1, p0, :cond_8c

    .line 81
    :cond_61
    new-instance v3, Lio/mesalabs/unica/camera/ApertureControl$Control;

    move-object p1, v1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {v3, p0, p1}, Lio/mesalabs/unica/camera/ApertureControl$Control;-><init>(Ljava/lang/Object;Landroid/widget/TextView;)V

    .line 82
    invoke-virtual {v2, v1, v3}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x42400000    # 48.0f

    mul-float/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 87
    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumWidth(I)V

    .line 88
    invoke-virtual {v1, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 92
    :cond_8c
    iput p2, v3, Lio/mesalabs/unica/camera/ApertureControl$Control;->reported:F

    .line 93
    iput-boolean v0, v3, Lio/mesalabs/unica/camera/ApertureControl$Control;->pending:Z

    .line 94
    iget-object p1, v3, Lio/mesalabs/unica/camera/ApertureControl$Control;->timeout:Ljava/lang/Runnable;

    invoke-virtual {v1, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 95
    invoke-virtual {v1, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v2, "Aperture f/%.1f. Tap to switch to f/%.1f"

    .line 97
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    const/high16 v5, 0x40000000    # 2.0f

    cmpg-float p2, p2, v5

    if-gez p2, :cond_ac

    const p2, 0x4019999a    # 2.4f

    goto :goto_ae

    :cond_ac
    const/high16 p2, 0x3fc00000    # 1.5f

    :goto_ae
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    filled-new-array {v3, p2}, [Ljava/lang/Object;

    move-result-object p2

    .line 96
    invoke-static {p1, v2, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 98
    const-string p1, "mHandler"

    invoke-static {p0, p1}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    .line 99
    const-string p2, "mHideApertureIndicatorRunnable"

    invoke-static {p0, p2}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_d0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_d0} :catch_d1

    return v4

    :catch_d1
    move-exception p0

    .line 102
    const-string p1, "UnicaAperture"

    const-string p2, "Aperture control unavailable; retaining stock indicator"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 v0, 0x1

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 36
    invoke-virtual {p1, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static dualAperture(Landroid/content/Context;Ljava/lang/Object;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    const-string v0, "mCamDevice"

    invoke-static {p1, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "n"

    invoke-static {p1, v0}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 47
    const-string v0, "camera"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/camera2/CameraManager;

    .line 48
    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object p0

    .line 49
    sget-object p1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, p1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    .line 50
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_INFO_AVAILABLE_APERTURES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_5c

    .line 52
    array-length v2, p0

    move v3, v1

    move v4, v3

    move v5, v4

    :goto_32
    if-ge v3, v2, :cond_5e

    aget v6, p0, v3

    const/high16 v7, 0x3fc00000    # 1.5f

    sub-float v7, v6, v7

    .line 53
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    const v8, 0x3c23d70a    # 0.01f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_47

    move v7, v0

    goto :goto_48

    :cond_47
    move v7, v1

    :goto_48
    or-int/2addr v4, v7

    const v7, 0x4019999a    # 2.4f

    sub-float/2addr v6, v7

    .line 54
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v8

    if-gez v6, :cond_57

    move v6, v0

    goto :goto_58

    :cond_57
    move v6, v1

    :goto_58
    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_32

    :cond_5c
    move v4, v1

    move v5, v4

    :cond_5e
    if-eqz p1, :cond_6b

    .line 56
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v0, :cond_6b

    if-eqz v4, :cond_6b

    if-eqz v5, :cond_6b

    return v0

    :cond_6b
    return v1
.end method

.method static field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_18

    .line 25
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    const/4 v2, 0x1

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 27
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_12} :catch_13

    return-object p0

    .line 23
    :catch_13
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 30
    :cond_18
    new-instance p0, Ljava/lang/NoSuchFieldException;

    invoke-direct {p0, p1}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static maker(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    const-string v0, "mEngine"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 41
    const-string v0, "mMakerHolder"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 42
    const-string v0, "getMakerPublicSettings"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->call(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "mMaker"

    invoke-static {p0, v0}, Lio/mesalabs/unica/camera/ApertureControl;->field(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
