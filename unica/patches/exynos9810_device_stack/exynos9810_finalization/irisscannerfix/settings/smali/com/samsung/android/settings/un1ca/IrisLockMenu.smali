.class public final Lcom/samsung/android/settings/un1ca/IrisLockMenu;
.super Ljava/lang/Object;
.source "IrisLockMenu.java"


# static fields
.field static final ARG_FROM_SETUP_WIZARD:Ljava/lang/String; = "un1ca_from_setup_wizard"

.field private static final ARG_INTELLIGENT_SCAN:Ljava/lang/String; = "un1ca_intelligent_scan"

.field public static final EXTRA_FOR_IRIS:Ljava/lang/String; = "un1ca_for_iris"

.field private static final FACE_KEY:Ljava/lang/String; = "key_face_menu"

.field private static final FEATURE:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final FINGERPRINT_KEY:Ljava/lang/String; = "key_fingerprint_menu"

.field private static final ICON_GONE:I = 0x8

.field private static final ICON_VISIBLE:I = 0x0

.field private static final INTELLIGENT_WINDOW_MS:J = 0x927c0L

.field private static final INTEL_KEY:Ljava/lang/String; = "key_intelligent_scan_menu"

.field private static final INTEL_SCREEN_ON_KEY:Ljava/lang/String; = "un1ca_intelligent_scan_screen_on"

.field private static final IRIS_FRAGMENT:Ljava/lang/String; = "com.samsung.android.settings.un1ca.IrisSettingsFragment"

.field private static final IRIS_SETTINGS_PKG:Ljava/lang/String; = "com.samsung.android.irissettings"

.field private static final KEY:Ljava/lang/String; = "key_iris_menu"

.field private static final LOCK_TYPE_KEYS:[Ljava/lang/String;

.field private static final SEM_TYPE_FACE:I = 0x100

.field private static final SETUP_ENROLL_REQUEST:I = 0x2735

.field private static final SETUP_FACE_KEY:Ljava/lang/String; = "unlock_set_face"

.field private static final SETUP_IRIS_KEY:Ljava/lang/String; = "un1ca_unlock_set_iris"

.field private static final SUW_ROW_TAG:Ljava/lang/String; = "un1ca_suw_iris"

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisMenu"

.field private static final UNLOCK_KEY:Ljava/lang/String; = "un1ca_iris_unlock"

.field private static sIntelligentChooserSince:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 209
    const-string v0, "unlock_set_password"

    const-string v1, "unlock_set_pattern"

    const-string v2, "unlock_set_pin"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->LOCK_TYPE_KEYS:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static callAny(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1e

    .line 324
    const/4 v1, 0x0

    :try_start_7
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 325
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 326
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_17} :catch_18

    return-object p0

    .line 327
    :catch_18
    move-exception v1

    .line 322
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 331
    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method static clearIfInsecure(Landroid/content/Context;I)I
    .registers 7

    .line 527
    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->enrolledIrises(Landroid/content/Context;I)I

    move-result v0

    .line 528
    if-eqz v0, :cond_64

    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isSecure(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_64

    .line 529
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no secure screen lock: removing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " iris registration(s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UN1CA-IrisMenu"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :try_start_2b
    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    .line 532
    if-nez v0, :cond_33

    const/4 v2, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v2

    .line 533
    :goto_37
    if-eqz v2, :cond_52

    .line 534
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 535
    check-cast v3, Lcom/samsung/android/camera/iris/Iris;

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu$1;

    invoke-direct {v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$1;-><init>()V

    invoke-virtual {v0, v3, p1, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_53

    .line 540
    goto :goto_3d

    .line 544
    :cond_52
    goto :goto_59

    .line 542
    :catchall_53
    move-exception p1

    .line 543
    const-string v0, "iris removal failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 545
    :goto_59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "un1ca_iris_unlock"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 546
    return v0

    .line 528
    :cond_64
    :goto_64
    return v0
.end method

.method private static createBoth(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 419
    const-string v0, "getParent"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 420
    const-string v1, "getOrder"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 423
    const-string v2, "getPreferenceCount"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 424
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPreference"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 425
    const/4 v4, 0x0

    :goto_2f
    const-string v5, "setOrder"

    if-ge v4, v2, :cond_59

    .line 426
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 427
    invoke-static {v6, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 428
    if-le v7, v9, :cond_56

    .line 429
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v5, v8, v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 425
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 432
    :cond_59
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v5, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 434
    nop

    .line 435
    const-string v1, "bio_intelligentscan_title"

    const-string v2, "Intelligent Scan"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 434
    const-string v5, "key_intelligent_scan_menu"

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v7, v9

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v10

    .line 436
    nop

    .line 437
    const-string v1, "bio_iris_scanner_title"

    const-string v2, "Irises"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v9, 0x2

    .line 436
    const-string v5, "key_iris_menu"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    .line 438
    filled-new-array {v10, p0}, [Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 443
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 444
    const-string v1, "setKey"

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2, p4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 445
    const-string p4, "setTitle"

    const-class v1, Ljava/lang/CharSequence;

    invoke-static {v0, p4, v1, p5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 446
    sget-object p4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "setPersistent"

    invoke-static {v0, v3, p4, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 447
    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string v2, "setOrder"

    invoke-static {v0, v2, p4, p6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 448
    nop

    .line 449
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 448
    const-string p6, "androidx.preference.Preference$OnPreferenceClickListener"

    invoke-static {p6, v1, p4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p4

    .line 450
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p6

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;

    invoke-direct {v3, p3, p7, p0, p5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;)V

    invoke-static {p6, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 465
    const-string p3, "setOnPreferenceClickListener"

    invoke-static {v0, p3, p4, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 467
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 466
    const-string p3, "androidx.preference.Preference"

    invoke-static {p3, v1, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const-string p3, "addPreference"

    invoke-virtual {p0, p3, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 467
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    return-object v0
.end method

.method private static enrolledIrises(Landroid/content/Context;I)I
    .registers 6

    .line 509
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.samsung.android.camera.iris.SemIrisManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 510
    const-string v2, "getSemIrisManager"

    const-class v3, Landroid/content/Context;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x0

    invoke-virtual {v2, v3, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 511
    if-nez p0, :cond_1f

    return v0

    .line 512
    :cond_1f
    const-string v2, "getEnrolledIrises"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 513
    if-nez p0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    :goto_40
    return v0

    .line 514
    :catchall_41
    move-exception p0

    .line 515
    const-string p1, "UN1CA-IrisMenu"

    const-string v1, "iris enrollment query failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    return v0
.end method

.method private static fieldBoolean(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 303
    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 304
    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_12

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method private static fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_19

    .line 310
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 311
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 312
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_12} :catch_13

    return-object p0

    .line 313
    :catch_13
    move-exception v1

    .line 308
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 317
    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static firstTextView(Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .registers 4

    .line 171
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 173
    instance-of v2, v1, Landroid/widget/TextView;

    if-eqz v2, :cond_12

    check-cast v1, Landroid/widget/TextView;

    return-object v1

    .line 174
    :cond_12
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1f

    .line 175
    check-cast v1, Landroid/view/ViewGroup;

    invoke-static {v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->firstTextView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    .line 176
    if-eqz v1, :cond_1f

    return-object v1

    .line 171
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 179
    :cond_22
    const/4 p0, 0x0

    return-object p0
.end method

.method private static gkPwHandle(Ljava/lang/Object;)J
    .registers 3

    .line 600
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mGkPwHandle"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->getLong(Ljava/lang/Object;)J

    move-result-wide v0
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_f

    return-wide v0

    .line 601
    :catchall_f
    move-exception p0

    .line 602
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "no gatekeeper handle on the lock screen fragment"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 603
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static hasEnrolledFace(Landroid/content/Context;I)Z
    .registers 6

    .line 563
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "face"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 564
    if-nez p0, :cond_a

    return v0

    .line 565
    :cond_a
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "hasEnrolledTemplates"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_2c
    .catchall {:try_start_1 .. :try_end_2c} :catchall_2d

    return p0

    .line 566
    :catchall_2d
    move-exception p0

    .line 567
    return v0
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 641
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v0, v1, [Ljava/lang/Object;

    invoke-virtual {p1, p0, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    .line 495
    const-string v0, "com.samsung.android.irissettings"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    :goto_b
    const/4 v2, 0x2

    if-ge v1, v2, :cond_2a

    aget-object v2, v0, v1

    .line 497
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 498
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 499
    if-eqz v2, :cond_25

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_26

    return-object p0

    .line 502
    :cond_25
    goto :goto_27

    .line 500
    :catchall_26
    move-exception v2

    .line 495
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 504
    :cond_2a
    return-object p2
.end method

.method private static isFaceUnlockEnabled(Landroid/content/Context;I)Z
    .registers 7

    .line 573
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 574
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 575
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBiometricState"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 576
    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    .line 575
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_48

    .line 577
    const/4 p1, 0x1

    if-ne p0, p1, :cond_47

    move v0, p1

    :cond_47
    return v0

    .line 578
    :catchall_48
    move-exception p0

    .line 579
    return v0
.end method

.method private static isIntelligentChooser(Ljava/lang/Object;)Z
    .registers 7

    .line 235
    sget-wide v0, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->sIntelligentChooserSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 236
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->sIntelligentChooserSince:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_18

    goto :goto_21

    .line 240
    :cond_18
    :try_start_18
    const-string v0, "mForFace"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldBoolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    return p0

    .line 241
    :catchall_1f
    move-exception p0

    .line 242
    return v1

    .line 237
    :cond_21
    :goto_21
    return v1
.end method

.method public static isIrisChooser(Ljava/lang/Object;)Z
    .registers 5

    .line 226
    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getActivity"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 227
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 228
    :goto_1f
    if-eqz p0, :cond_2a

    const-string v1, "un1ca_for_iris"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_27
    .catchall {:try_start_1 .. :try_end_27} :catchall_2b

    if-eqz p0, :cond_2a

    const/4 v0, 0x1

    :cond_2a
    return v0

    .line 229
    :catchall_2b
    move-exception p0

    .line 230
    return v0
.end method

.method private static isSecure(Landroid/content/Context;I)Z
    .registers 5

    .line 552
    :try_start_0
    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 553
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 554
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "isSecure"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_3a
    .catchall {:try_start_0 .. :try_end_3a} :catchall_3b

    return p0

    .line 555
    :catchall_3b
    move-exception p0

    .line 556
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "isSecure failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 557
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$createSingle$2(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 452
    const-string p4, "onPreferenceClick"

    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 453
    :cond_e
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 454
    const-string p5, "gk_pw_handle"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->gkPwHandle(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p4, p5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 455
    const-string p5, "android.intent.extra.USER_ID"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p4, p5, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 456
    const-string p0, "un1ca_intelligent_scan"

    invoke-virtual {p4, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 457
    nop

    .line 458
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p5, "com.android.settings.SubSettings"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 459
    const-string p1, ":settings:show_fragment"

    const-string p5, "com.samsung.android.settings.un1ca.IrisSettingsFragment"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 460
    const-string p1, ":settings:show_fragment_title"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 461
    const-string p1, ":settings:show_fragment_args"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 462
    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 463
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic lambda$onSetupBiometrics$0(Landroid/app/Activity;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    .line 80
    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->openSetupIrisPage(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onSetupLockPicker$1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 125
    const-string p3, "onPreferenceClick"

    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 126
    :cond_e
    const/4 p3, -0x1

    invoke-static {p0, p1, p3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setupIrisIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    .line 127
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    const-class p3, Landroid/content/Intent;

    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {p3, p4}, [Ljava/lang/Class;

    move-result-object p3

    const-string p4, "startActivityForResult"

    invoke-virtual {p1, p4, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 128
    const/16 p3, 0x2735

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p0, p3}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p2, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static markIntelligentChooser(Z)V
    .registers 3

    .line 217
    if-eqz p0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    sput-wide v0, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->sIntelligentChooserSince:J

    .line 218
    return-void
.end method

.method private static notifyChanged(Ljava/lang/Object;)V
    .registers 5

    .line 618
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_29

    .line 620
    :try_start_6
    const-string v1, "notifyChanged"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 621
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 622
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_18} :catch_22
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    .line 623
    return-void

    .line 626
    :catchall_19
    move-exception p0

    .line 627
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "notifyChanged failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 628
    return-void

    .line 624
    :catch_22
    move-exception v1

    .line 629
    nop

    .line 618
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 631
    :cond_29
    return-void
.end method

.method public static onChooserCreated(Ljava/lang/Object;)V
    .registers 14

    .line 249
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIrisChooser(Ljava/lang/Object;)Z

    move-result v0

    .line 250
    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIntelligentChooser(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 251
    :goto_10
    if-nez v0, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 252
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getContext"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 253
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 254
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 255
    if-eqz v2, :cond_36

    const-string v5, "bio_face_recognition_title"

    goto :goto_38

    :cond_36
    const-string v5, "biometrics"

    :goto_38
    const-string v6, "string"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 256
    if-nez v4, :cond_41

    return-void

    .line 257
    :cond_41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 258
    if-eqz v2, :cond_50

    .line 259
    const-string v2, "bio_intelligentscan_title"

    const-string v4, "Intelligent Scan"

    invoke-static {v0, v2, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 260
    :cond_50
    const-string v2, "bio_iris_scanner_title"

    const-string v4, "Irises"

    invoke-static {v0, v2, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :goto_58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "findPreference"

    const-class v5, Ljava/lang/CharSequence;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 262
    sget-object v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->LOCK_TYPE_KEYS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_6c
    if-ge v6, v5, :cond_b8

    aget-object v7, v4, v6

    .line 263
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 264
    if-nez v7, :cond_7b

    goto :goto_b5

    .line 265
    :cond_7b
    const-string v8, "getTitle"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 266
    if-nez v8, :cond_86

    goto :goto_b5

    .line 267
    :cond_86
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 269
    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 270
    const-string v9, "setTitle"

    const-class v10, Ljava/lang/CharSequence;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {v8, v1, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v9, v10, v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    :try_end_b5
    .catchall {:try_start_0 .. :try_end_b5} :catchall_b9

    .line 262
    :cond_b5
    :goto_b5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 275
    :cond_b8
    goto :goto_c1

    .line 273
    :catchall_b9
    move-exception p0

    .line 274
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "lock chooser titles not updated"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 276
    :goto_c1
    return-void
.end method

.method public static onChooserViewCreated(Ljava/lang/Object;)V
    .registers 7

    .line 281
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIrisChooser(Ljava/lang/Object;)Z

    move-result v0

    .line 282
    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIntelligentChooser(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 283
    :goto_10
    if-nez v0, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 284
    :cond_15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v3, "getContext"

    new-array v4, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 285
    const-string v1, "getHeaderView"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->callAny(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 286
    if-nez p0, :cond_32

    return-void

    .line 287
    :cond_32
    const-string v1, "mRootView"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 288
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "description_text"

    const-string v4, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 289
    if-eqz p0, :cond_71

    if-nez v1, :cond_4f

    goto :goto_71

    .line 290
    :cond_4f
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 291
    instance-of v1, p0, Landroid/widget/TextView;

    if-nez v1, :cond_58

    return-void

    .line 292
    :cond_58
    check-cast p0, Landroid/widget/TextView;

    if-eqz v2, :cond_65

    .line 293
    const-string v1, "sec_intelligentscan_chooselock_help_text_1"

    const-string v2, "Before you can register your face and irises, you need to set a secure screen lock (pattern, PIN, or password)."

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    .line 295
    :cond_65
    const-string v1, "iris_backup_lock_type_helptext_2"

    const-string v2, "Before you can register your irises, you need to set a secure screen lock (pattern, PIN, or password)."

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    :goto_6d
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_70
    .catchall {:try_start_0 .. :try_end_70} :catchall_72

    .line 299
    goto :goto_7a

    .line 289
    :cond_71
    :goto_71
    return-void

    .line 297
    :catchall_72
    move-exception p0

    .line 298
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "lock chooser text not updated"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 300
    :goto_7a
    return-void
.end method

.method public static onResume(Ljava/lang/Object;)V
    .registers 8

    .line 189
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findPreference"

    const-class v2, Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateBiometricsMenuPreference"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 191
    const-string v2, "key_face_menu"

    const-string v3, "key_fingerprint_menu"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_29
    const/4 v4, 0x2

    if-ge v3, v4, :cond_4b

    aget-object v4, v2, v3

    .line 192
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 193
    if-nez v5, :cond_39

    goto :goto_48

    .line 195
    :cond_39
    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 196
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_4c

    .line 191
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 201
    :cond_4b
    goto :goto_54

    .line 199
    :catchall_4c
    move-exception v0

    .line 200
    const-string v1, "UN1CA-IrisMenu"

    const-string v2, "biometrics menus not refreshed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 202
    :goto_54
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->update(Ljava/lang/Object;)V

    .line 203
    return-void
.end method

.method public static onSetupBiometrics(Ljava/lang/Object;)V
    .registers 8

    .line 57
    const-string v0, "un1ca_suw_iris"

    const-string v1, "id"

    :try_start_4
    check-cast p0, Landroid/app/Activity;

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v3, "com.samsung.android.camera.iris"

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_13

    return-void

    .line 59
    :cond_13
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 61
    const-string v4, "face_unlock"

    invoke-virtual {v2, v4, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 62
    const-string v5, "content_layout"

    invoke-virtual {v2, v5, v1, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 63
    const-string v5, "sec_biometrics_setup_layout"

    const-string v6, "layout"

    invoke-virtual {v2, v5, v6, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 64
    if-eqz v4, :cond_9c

    if-eqz v1, :cond_9c

    if-nez v2, :cond_36

    goto :goto_9c

    .line 65
    :cond_36
    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    if-eqz v1, :cond_9b

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_45

    goto :goto_9b

    .line 67
    :cond_45
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 68
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 69
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-nez v3, :cond_58

    return-void

    .line 70
    :cond_58
    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 71
    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/view/View;->setId(I)V

    .line 72
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 73
    move-object v0, v2

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->firstTextView(Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 74
    if-nez v0, :cond_72

    return-void

    .line 75
    :cond_72
    const-string v3, "bio_iris_scanner_title"

    const-string v5, "Irises"

    invoke-static {p0, v3, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_8a

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8b

    :cond_8a
    move v0, v6

    .line 79
    :goto_8b
    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 80
    new-instance v0, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda1;-><init>(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_9a
    .catchall {:try_start_4 .. :try_end_9a} :catchall_9d

    .line 83
    goto :goto_a5

    .line 66
    :cond_9b
    :goto_9b
    return-void

    .line 64
    :cond_9c
    :goto_9c
    return-void

    .line 81
    :catchall_9d
    move-exception p0

    .line 82
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "cannot add the iris setup entry"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_a5
    return-void
.end method

.method public static onSetupLockPicker(Ljava/lang/Object;)V
    .registers 17

    .line 99
    move-object/from16 v0, p0

    const-string v1, "getOrder"

    const-string v2, "un1ca_unlock_set_iris"

    :try_start_6
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getContext"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 100
    if-eqz v3, :cond_133

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v6, "com.samsung.android.camera.iris"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2b

    goto/16 :goto_133

    .line 101
    :cond_2b
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "findPreference"

    const-class v7, Ljava/lang/CharSequence;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 102
    const-string v6, "unlock_set_face"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 103
    if-eqz v6, :cond_132

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_53

    goto/16 :goto_132

    .line 104
    :cond_53
    const-string v4, "getParent"

    invoke-static {v6, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 105
    if-nez v4, :cond_5c

    return-void

    .line 106
    :cond_5c
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 107
    const-string v8, "androidx.preference.Preference"

    invoke-static {v8, v5, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v8

    .line 108
    invoke-static {v6, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 109
    const-string v10, "getPreferenceCount"

    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 110
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    const-string v12, "getPreference"

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v13}, [Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11
    :try_end_90
    .catchall {:try_start_6 .. :try_end_90} :catchall_134

    .line 111
    move v12, v5

    :goto_91
    const-string v13, "setOrder"

    if-ge v12, v10, :cond_bc

    .line 112
    :try_start_95
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v11, v4, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 113
    invoke-static {v14, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 114
    if-le v15, v9, :cond_b8

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v15, v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-static {v14, v13, v5, v15}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 111
    :cond_b8
    add-int/lit8 v12, v12, 0x1

    const/4 v5, 0x0

    goto :goto_91

    .line 116
    :cond_bc
    const-string v1, "bio_iris_scanner_title"

    const-string v5, "Irises"

    invoke-static {v3, v1, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 117
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Landroid/content/Context;

    filled-new-array {v6}, [Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 118
    const-string v6, "setKey"

    const-class v10, Ljava/lang/String;

    invoke-static {v5, v6, v10, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 119
    const-string v2, "setTitle"

    const-class v6, Ljava/lang/CharSequence;

    invoke-static {v5, v2, v6, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 120
    const-string v2, "setPersistent"

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    invoke-static {v5, v2, v6, v11}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 121
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v9, v9, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v5, v13, v2, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 122
    const-string v2, "androidx.preference.Preference$OnPreferenceClickListener"

    const/4 v6, 0x0

    invoke-static {v2, v6, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 123
    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v7

    new-instance v9, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;

    invoke-direct {v9, v3, v1, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v6, v7, v9}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 131
    const-string v1, "setOnPreferenceClickListener"

    invoke-static {v5, v1, v2, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 132
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "addPreference"

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_131
    .catchall {:try_start_95 .. :try_end_131} :catchall_134

    .line 135
    goto :goto_13c

    .line 103
    :cond_132
    :goto_132
    return-void

    .line 100
    :cond_133
    :goto_133
    return-void

    .line 133
    :catchall_134
    move-exception v0

    .line 134
    const-string v1, "UN1CA-IrisMenu"

    const-string v2, "cannot add the iris entry to the setup lock list"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 136
    :goto_13c
    return-void
.end method

.method private static openSetupIrisPage(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 6

    .line 151
    nop

    .line 153
    const/4 v0, -0x1

    :try_start_2
    const-string v1, "mUserId"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 154
    instance-of v2, v1, Ljava/lang/Integer;

    if-eqz v2, :cond_14

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_12
    .catchall {:try_start_2 .. :try_end_12} :catchall_13

    goto :goto_14

    .line 155
    :catchall_13
    move-exception v1

    :cond_14
    :goto_14
    nop

    .line 156
    invoke-static {p0, p1, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setupIrisIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 160
    :try_start_19
    const-string v0, "mSetLockResult"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "launch"

    const-class v3, Ljava/lang/Object;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    const-string v0, "mRootLayout"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_46

    check-cast v0, Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_46
    .catchall {:try_start_19 .. :try_end_46} :catchall_47

    .line 167
    :cond_46
    goto :goto_52

    .line 164
    :catchall_47
    move-exception v0

    .line 165
    const-string v1, "UN1CA-IrisMenu"

    const-string v2, "setup result launcher unavailable, opening the iris page directly"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 166
    invoke-virtual {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 168
    :goto_52
    return-void
.end method

.method private static removeFromParent(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 634
    const-string v0, "getParent"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 635
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 636
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    const-string v3, "androidx.preference.Preference"

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 635
    const-string v3, "removePreference"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 637
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 638
    :cond_2c
    return-void
.end method

.method private static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 645
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 646
    return-void
.end method

.method private static setIconVisibility(Ljava/lang/Object;I)V
    .registers 4

    .line 609
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mIconVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 610
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 613
    goto :goto_16

    .line 611
    :catchall_e
    move-exception p0

    .line 612
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "no lock type check mark"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 614
    :goto_16
    return-void
.end method

.method private static setupIrisIntent(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/Intent;
    .registers 6

    .line 139
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 140
    if-ltz p2, :cond_c

    const-string v1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 141
    :cond_c
    const-string p2, "un1ca_from_setup_wizard"

    const/4 v1, 0x1

    invoke-virtual {v0, p2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 142
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v2, "com.android.settings.SubSettings"

    invoke-virtual {p2, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 143
    const-string p2, ":settings:show_fragment"

    const-string v2, "com.samsung.android.settings.un1ca.IrisSettingsFragment"

    invoke-virtual {p0, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 144
    const-string p2, ":settings:show_fragment_title"

    invoke-virtual {p0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string p1, ":settings:show_fragment_args"

    invoke-virtual {p0, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 146
    const-string p1, "fromSetupWizard"

    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 147
    return-object p0
.end method

.method private static summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 473
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 474
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 475
    const-string v1, "sec_lockscreen_biometrics_summary_color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 476
    const-string v2, "comma"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 477
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_22

    :cond_21
    move v4, v3

    .line 478
    :goto_22
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 479
    const/16 p2, 0x21

    if-eqz p3, :cond_76

    .line 480
    if-eqz p0, :cond_32

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_34

    :cond_32
    const-string p0, ","

    :goto_34
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, " "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 481
    if-eqz v1, :cond_58

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v5, p0, v3, p3, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 482
    :cond_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p2, Ljava/lang/CharSequence;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-string p3, "appendCurrentLockTypeToSummary"

    invoke-virtual {p0, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 483
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v5, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_85

    .line 484
    :cond_76
    if-eqz v1, :cond_85

    .line 485
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v5, p0, v3, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 484
    :cond_85
    :goto_85
    nop

    .line 487
    :goto_86
    return-object v5
.end method

.method public static update(Ljava/lang/Object;)V
    .registers 18

    .line 337
    move-object/from16 v0, p0

    const-string v1, "setSummary"

    const-string v2, "setEnabled"

    const-string v3, "un1ca_intelligent_scan_screen_on"

    :try_start_8
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getContext"

    const/4 v6, 0x0

    new-array v7, v6, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/Context;

    .line 338
    if-nez v4, :cond_20

    return-void

    .line 339
    :cond_20
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "findPreference"

    const-class v8, Ljava/lang/CharSequence;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 340
    const-string v7, "key_face_menu"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 341
    const-string v8, "key_intelligent_scan_menu"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 342
    const-string v9, "key_iris_menu"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 345
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BiometricsChooseLockGenericFragment"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_b2

    .line 346
    const-string v1, "biometrics_category"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 347
    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pref_biometrics_description"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 348
    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    filled-new-array {v8, v9, v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    .line 346
    move v2, v6

    :goto_77
    const/4 v3, 0x4

    if-ge v2, v3, :cond_84

    aget-object v3, v1, v2

    .line 349
    if-eqz v3, :cond_81

    invoke-static {v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 346
    :cond_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 353
    :cond_84
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIrisChooser(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b1

    .line 354
    const-string v7, "fingerprint_category"

    const-string v8, "unlock_set_fingerprint"

    const-string v9, "switch_face"

    const-string v10, "switch_fingerprint"

    const-string v11, "key_face_menu"

    const-string v12, "key_fingerprint_menu"

    const-string v13, "key_about_unlock_biometrics"

    filled-new-array/range {v7 .. v13}, [Ljava/lang/String;

    move-result-object v1

    :goto_9c
    const/4 v2, 0x7

    if-ge v6, v2, :cond_b1

    aget-object v2, v1, v6

    .line 357
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 358
    if-eqz v2, :cond_ae

    invoke-static {v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 354
    :cond_ae
    add-int/lit8 v6, v6, 0x1

    goto :goto_9c

    .line 361
    :cond_b1
    return-void

    .line 363
    :cond_b2
    if-eqz v7, :cond_18d

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v10, "com.samsung.android.camera.iris"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c2

    goto/16 :goto_18d

    .line 368
    :cond_c2
    const/4 v5, 0x1

    if-eqz v8, :cond_c7

    if-nez v9, :cond_de

    .line 369
    :cond_c7
    if-eqz v8, :cond_cc

    invoke-static {v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 370
    :cond_cc
    if-eqz v9, :cond_d1

    invoke-static {v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 371
    :cond_d1
    invoke-static {v4, v7, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createBoth(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 372
    aget-object v9, v8, v6

    .line 373
    aget-object v8, v8, v5

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    .line 375
    :cond_de
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result v10

    .line 377
    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->clearIfInsecure(Landroid/content/Context;I)I

    move-result v11

    if-lez v11, :cond_ea

    move v11, v5

    goto :goto_eb

    :cond_ea
    move v11, v6

    .line 378
    :goto_eb
    if-eqz v11, :cond_fb

    .line 379
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "un1ca_iris_unlock"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v5, :cond_fb

    move v12, v5

    goto :goto_fc

    :cond_fb
    move v12, v6

    .line 380
    :goto_fc
    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->hasEnrolledFace(Landroid/content/Context;I)Z

    move-result v13

    .line 381
    if-eqz v13, :cond_10a

    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isFaceUnlockEnabled(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_10a

    move v10, v5

    goto :goto_10b

    :cond_10a
    move v10, v6

    .line 382
    :goto_10b
    if-eqz v13, :cond_111

    if-eqz v11, :cond_111

    move v13, v5

    goto :goto_112

    :cond_111
    move v13, v6

    .line 383
    :goto_112
    if-eqz v10, :cond_118

    if-eqz v12, :cond_118

    move v10, v5

    goto :goto_119

    :cond_118
    move v10, v6

    .line 385
    :goto_119
    if-eqz v10, :cond_12d

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v14, v3, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v15, :cond_12d

    .line 386
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 389
    :cond_12d
    const-string v3, "isEnabled"

    invoke-static {v7, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 391
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v2, v5, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 393
    const/16 v5, 0x8

    if-eqz v10, :cond_13e

    move v7, v6

    goto :goto_13f

    :cond_13e
    move v7, v5

    :goto_13f
    invoke-static {v8, v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 394
    const-class v7, Ljava/lang/CharSequence;

    .line 396
    if-eqz v13, :cond_14f

    .line 397
    const-string v13, "sec_intelligentscan_lockscreen_biometric_registered_summary"

    const-string v14, "Face and irises registered"

    invoke-static {v4, v13, v14}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_157

    .line 399
    :cond_14f
    const-string v13, "sec_intelligentscan_lockscreen_biometric_not_registered_summary"

    const-string v14, "Combine face and iris scanning for better results."

    invoke-static {v4, v13, v14}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 395
    :goto_157
    invoke-static {v4, v0, v13, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v10

    .line 394
    invoke-static {v8, v1, v7, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 402
    invoke-static {v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V

    .line 404
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2, v7, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 405
    if-eqz v12, :cond_169

    goto :goto_16a

    :cond_169
    move v6, v5

    :goto_16a
    invoke-static {v9, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 406
    const-class v2, Ljava/lang/CharSequence;

    .line 408
    if-eqz v11, :cond_17a

    .line 409
    const-string v3, "iris_register_summary"

    const-string v5, "Your irises have been registered."

    invoke-static {v4, v3, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_182

    .line 410
    :cond_17a
    const-string v3, "iris_add_summary"

    const-string v5, "Register your irises."

    invoke-static {v4, v3, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 407
    :goto_182
    invoke-static {v4, v0, v3, v12}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 406
    invoke-static {v9, v1, v2, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 412
    invoke-static {v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V

    .line 415
    goto :goto_1a0

    .line 364
    :cond_18d
    :goto_18d
    if-eqz v8, :cond_192

    invoke-static {v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 365
    :cond_192
    if-eqz v9, :cond_197

    invoke-static {v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V
    :try_end_197
    .catchall {:try_start_8 .. :try_end_197} :catchall_198

    .line 366
    :cond_197
    return-void

    .line 413
    :catchall_198
    move-exception v0

    .line 414
    const-string v1, "UN1CA-IrisMenu"

    const-string v2, "iris menu not updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 416
    :goto_1a0
    return-void
.end method

.method private static userId(Ljava/lang/Object;)I
    .registers 4

    .line 584
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1e

    .line 586
    :try_start_6
    const-string v1, "mUserId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 587
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 588
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_17
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return p0

    .line 591
    :catchall_15
    move-exception p0

    .line 592
    goto :goto_1e

    .line 589
    :catch_17
    move-exception v1

    .line 593
    nop

    .line 584
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 595
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method
