.class public final Lcom/samsung/android/settings/un1ca/IrisLockMenu;
.super Ljava/lang/Object;
.source "IrisLockMenu.java"


# static fields
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

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisMenu"

.field private static final UNLOCK_KEY:Ljava/lang/String; = "un1ca_iris_unlock"

.field private static sIntelligentChooserSince:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 68
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

    .line 39
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

    .line 181
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1e

    .line 183
    const/4 v1, 0x0

    :try_start_7
    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 184
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 185
    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v2, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_17
    .catch Ljava/lang/NoSuchMethodException; {:try_start_7 .. :try_end_17} :catch_18

    return-object p0

    .line 186
    :catch_18
    move-exception v1

    .line 181
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 190
    :cond_1e
    const/4 p0, 0x0

    return-object p0
.end method

.method static clearIfInsecure(Landroid/content/Context;I)I
    .registers 7

    .line 376
    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->enrolledIrises(Landroid/content/Context;I)I

    move-result v0

    .line 377
    if-eqz v0, :cond_64

    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isSecure(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_64

    .line 378
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

    .line 380
    :try_start_2b
    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    .line 381
    if-nez v0, :cond_33

    const/4 v2, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v2

    .line 382
    :goto_37
    if-eqz v2, :cond_52

    .line 383
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 384
    check-cast v3, Lcom/samsung/android/camera/iris/Iris;

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu$1;

    invoke-direct {v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$1;-><init>()V

    invoke-virtual {v0, v3, p1, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_53

    .line 389
    goto :goto_3d

    .line 393
    :cond_52
    goto :goto_59

    .line 391
    :catchall_53
    move-exception p1

    .line 392
    const-string v0, "iris removal failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 394
    :goto_59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "un1ca_iris_unlock"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 395
    return v0

    .line 377
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

    .line 268
    const-string v0, "getParent"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 269
    const-string v1, "getOrder"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 272
    const-string v2, "getPreferenceCount"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 273
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPreference"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 274
    const/4 v4, 0x0

    :goto_2f
    const-string v5, "setOrder"

    if-ge v4, v2, :cond_59

    .line 275
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 276
    invoke-static {v6, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 277
    if-le v7, v9, :cond_56

    .line 278
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v5, v8, v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 274
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 281
    :cond_59
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v5, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 283
    nop

    .line 284
    const-string v1, "bio_intelligentscan_title"

    const-string v2, "Intelligent Scan"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 283
    const-string v5, "key_intelligent_scan_menu"

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v7, v9

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v10

    .line 285
    nop

    .line 286
    const-string v1, "bio_iris_scanner_title"

    const-string v2, "Irises"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v9, 0x2

    .line 285
    const-string v5, "key_iris_menu"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    .line 287
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

    .line 292
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

    .line 293
    const-string v1, "setKey"

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2, p4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 294
    const-string p4, "setTitle"

    const-class v1, Ljava/lang/CharSequence;

    invoke-static {v0, p4, v1, p5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 295
    sget-object p4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "setPersistent"

    invoke-static {v0, v3, p4, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 296
    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string v2, "setOrder"

    invoke-static {v0, v2, p4, p6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 297
    nop

    .line 298
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 297
    const-string p6, "androidx.preference.Preference$OnPreferenceClickListener"

    invoke-static {p6, v1, p4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p4

    .line 299
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p6

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3, p7, p0, p5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;)V

    invoke-static {p6, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 314
    const-string p3, "setOnPreferenceClickListener"

    invoke-static {v0, p3, p4, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 315
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 316
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 315
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

    .line 316
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    return-object v0
.end method

.method private static enrolledIrises(Landroid/content/Context;I)I
    .registers 6

    .line 358
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.samsung.android.camera.iris.SemIrisManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 359
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

    .line 360
    if-nez p0, :cond_1f

    return v0

    .line 361
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

    .line 362
    if-nez p0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    :goto_40
    return v0

    .line 363
    :catchall_41
    move-exception p0

    .line 364
    const-string p1, "UN1CA-IrisMenu"

    const-string v1, "iris enrollment query failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 365
    return v0
.end method

.method private static fieldBoolean(Ljava/lang/Object;Ljava/lang/String;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 162
    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 163
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

    .line 167
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_19

    .line 169
    :try_start_6
    invoke-virtual {v0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 170
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 171
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_12
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_12} :catch_13

    return-object p0

    .line 172
    :catch_13
    move-exception v1

    .line 167
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 176
    :cond_19
    const/4 p0, 0x0

    return-object p0
.end method

.method private static gkPwHandle(Ljava/lang/Object;)J
    .registers 3

    .line 449
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

    .line 450
    :catchall_f
    move-exception p0

    .line 451
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "no gatekeeper handle on the lock screen fragment"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 452
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static hasEnrolledFace(Landroid/content/Context;I)Z
    .registers 6

    .line 412
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "face"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 413
    if-nez p0, :cond_a

    return v0

    .line 414
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

    .line 415
    :catchall_2d
    move-exception p0

    .line 416
    return v0
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 490
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

    .line 344
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

    .line 346
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 347
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 348
    if-eqz v2, :cond_25

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_26

    return-object p0

    .line 351
    :cond_25
    goto :goto_27

    .line 349
    :catchall_26
    move-exception v2

    .line 344
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 353
    :cond_2a
    return-object p2
.end method

.method private static isFaceUnlockEnabled(Landroid/content/Context;I)Z
    .registers 7

    .line 422
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 423
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 424
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBiometricState"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 425
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

    .line 424
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_48

    .line 426
    const/4 p1, 0x1

    if-ne p0, p1, :cond_47

    move v0, p1

    :cond_47
    return v0

    .line 427
    :catchall_48
    move-exception p0

    .line 428
    return v0
.end method

.method private static isIntelligentChooser(Ljava/lang/Object;)Z
    .registers 7

    .line 94
    sget-wide v0, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->sIntelligentChooserSince:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    .line 95
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-wide v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->sIntelligentChooserSince:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x927c0

    cmp-long v0, v2, v4

    if-lez v0, :cond_18

    goto :goto_21

    .line 99
    :cond_18
    :try_start_18
    const-string v0, "mForFace"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldBoolean(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_1f

    return p0

    .line 100
    :catchall_1f
    move-exception p0

    .line 101
    return v1

    .line 96
    :cond_21
    :goto_21
    return v1
.end method

.method public static isIrisChooser(Ljava/lang/Object;)Z
    .registers 5

    .line 85
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

    .line 86
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_1e

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    .line 87
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

    .line 88
    :catchall_2b
    move-exception p0

    .line 89
    return v0
.end method

.method private static isSecure(Landroid/content/Context;I)Z
    .registers 5

    .line 401
    :try_start_0
    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 402
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 403
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

    .line 404
    :catchall_3b
    move-exception p0

    .line 405
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "isSecure failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 406
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic lambda$createSingle$0(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 301
    const-string p4, "onPreferenceClick"

    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 302
    :cond_e
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 303
    const-string p5, "gk_pw_handle"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->gkPwHandle(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p4, p5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 304
    const-string p5, "android.intent.extra.USER_ID"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p4, p5, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string p0, "un1ca_intelligent_scan"

    invoke-virtual {p4, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 306
    nop

    .line 307
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p5, "com.android.settings.SubSettings"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 308
    const-string p1, ":settings:show_fragment"

    const-string p5, "com.samsung.android.settings.un1ca.IrisSettingsFragment"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 309
    const-string p1, ":settings:show_fragment_title"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string p1, ":settings:show_fragment_args"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 311
    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 312
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public static markIntelligentChooser(Z)V
    .registers 3

    .line 76
    if-eqz p0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    :goto_9
    sput-wide v0, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->sIntelligentChooserSince:J

    .line 77
    return-void
.end method

.method private static notifyChanged(Ljava/lang/Object;)V
    .registers 5

    .line 467
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_29

    .line 469
    :try_start_6
    const-string v1, "notifyChanged"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 470
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 471
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_18} :catch_22
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    .line 472
    return-void

    .line 475
    :catchall_19
    move-exception p0

    .line 476
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "notifyChanged failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 477
    return-void

    .line 473
    :catch_22
    move-exception v1

    .line 478
    nop

    .line 467
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 480
    :cond_29
    return-void
.end method

.method public static onChooserCreated(Ljava/lang/Object;)V
    .registers 14

    .line 108
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIrisChooser(Ljava/lang/Object;)Z

    move-result v0

    .line 109
    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIntelligentChooser(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 110
    :goto_10
    if-nez v0, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 111
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

    .line 112
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 113
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 114
    if-eqz v2, :cond_36

    const-string v5, "bio_face_recognition_title"

    goto :goto_38

    :cond_36
    const-string v5, "biometrics"

    :goto_38
    const-string v6, "string"

    invoke-virtual {v3, v5, v6, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 115
    if-nez v4, :cond_41

    return-void

    .line 116
    :cond_41
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 117
    if-eqz v2, :cond_50

    .line 118
    const-string v2, "bio_intelligentscan_title"

    const-string v4, "Intelligent Scan"

    invoke-static {v0, v2, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_58

    .line 119
    :cond_50
    const-string v2, "bio_iris_scanner_title"

    const-string v4, "Irises"

    invoke-static {v0, v2, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    :goto_58
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v4, "findPreference"

    const-class v5, Ljava/lang/CharSequence;

    filled-new-array {v5}, [Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 121
    sget-object v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->LOCK_TYPE_KEYS:[Ljava/lang/String;

    array-length v5, v4

    move v6, v1

    :goto_6c
    if-ge v6, v5, :cond_b8

    aget-object v7, v4, v6

    .line 122
    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 123
    if-nez v7, :cond_7b

    goto :goto_b5

    .line 124
    :cond_7b
    const-string v8, "getTitle"

    invoke-static {v7, v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/CharSequence;

    .line 125
    if-nez v8, :cond_86

    goto :goto_b5

    .line 126
    :cond_86
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 128
    invoke-virtual {v8, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_b5

    .line 129
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

    .line 121
    :cond_b5
    :goto_b5
    add-int/lit8 v6, v6, 0x1

    goto :goto_6c

    .line 134
    :cond_b8
    goto :goto_c1

    .line 132
    :catchall_b9
    move-exception p0

    .line 133
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "lock chooser titles not updated"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    :goto_c1
    return-void
.end method

.method public static onChooserViewCreated(Ljava/lang/Object;)V
    .registers 7

    .line 140
    :try_start_0
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIrisChooser(Ljava/lang/Object;)Z

    move-result v0

    .line 141
    const/4 v1, 0x0

    if-nez v0, :cond_f

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isIntelligentChooser(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 v2, 0x1

    goto :goto_10

    :cond_f
    move v2, v1

    .line 142
    :goto_10
    if-nez v0, :cond_15

    if-nez v2, :cond_15

    return-void

    .line 143
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

    .line 144
    const-string v1, "getHeaderView"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->callAny(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 145
    if-nez p0, :cond_32

    return-void

    .line 146
    :cond_32
    const-string v1, "mRootView"

    invoke-static {p0, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->fieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    .line 147
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v3, "description_text"

    const-string v4, "id"

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 148
    if-eqz p0, :cond_71

    if-nez v1, :cond_4f

    goto :goto_71

    .line 149
    :cond_4f
    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .line 150
    instance-of v1, p0, Landroid/widget/TextView;

    if-nez v1, :cond_58

    return-void

    .line 151
    :cond_58
    check-cast p0, Landroid/widget/TextView;

    if-eqz v2, :cond_65

    .line 152
    const-string v1, "sec_intelligentscan_chooselock_help_text_1"

    const-string v2, "Before you can register your face and irises, you need to set a secure screen lock (pattern, PIN, or password)."

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_6d

    .line 154
    :cond_65
    const-string v1, "iris_backup_lock_type_helptext_2"

    const-string v2, "Before you can register your irises, you need to set a secure screen lock (pattern, PIN, or password)."

    invoke-static {v0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    :goto_6d
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_70
    .catchall {:try_start_0 .. :try_end_70} :catchall_72

    .line 158
    goto :goto_7a

    .line 148
    :cond_71
    :goto_71
    return-void

    .line 156
    :catchall_72
    move-exception p0

    .line 157
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "lock chooser text not updated"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_7a
    return-void
.end method

.method public static onResume(Ljava/lang/Object;)V
    .registers 8

    .line 48
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "findPreference"

    const-class v2, Ljava/lang/CharSequence;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "updateBiometricsMenuPreference"

    const-class v3, Ljava/lang/String;

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 50
    const-string v2, "key_face_menu"

    const-string v3, "key_fingerprint_menu"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_29
    const/4 v4, 0x2

    if-ge v3, v4, :cond_4b

    aget-object v4, v2, v3

    .line 51
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 52
    if-nez v5, :cond_39

    goto :goto_48

    .line 54
    :cond_39
    const/16 v6, 0x8

    invoke-static {v5, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 55
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-static {v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V
    :try_end_48
    .catchall {:try_start_0 .. :try_end_48} :catchall_4c

    .line 50
    :goto_48
    add-int/lit8 v3, v3, 0x1

    goto :goto_29

    .line 60
    :cond_4b
    goto :goto_54

    .line 58
    :catchall_4c
    move-exception v0

    .line 59
    const-string v1, "UN1CA-IrisMenu"

    const-string v2, "biometrics menus not refreshed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :goto_54
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->update(Ljava/lang/Object;)V

    .line 62
    return-void
.end method

.method private static removeFromParent(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 483
    const-string v0, "getParent"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 484
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 485
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

    .line 484
    const-string v3, "removePreference"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 486
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
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

    .line 494
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    return-void
.end method

.method private static setIconVisibility(Ljava/lang/Object;I)V
    .registers 4

    .line 458
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mIconVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 459
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 462
    goto :goto_16

    .line 460
    :catchall_e
    move-exception p0

    .line 461
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "no lock type check mark"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    :goto_16
    return-void
.end method

.method private static summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 322
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 324
    const-string v1, "sec_lockscreen_biometrics_summary_color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 325
    const-string v2, "comma"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 326
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_22

    :cond_21
    move v4, v3

    .line 327
    :goto_22
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 328
    const/16 p2, 0x21

    if-eqz p3, :cond_76

    .line 329
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

    .line 330
    if-eqz v1, :cond_58

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v5, p0, v3, p3, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 331
    :cond_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p2, Ljava/lang/CharSequence;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-string p3, "appendCurrentLockTypeToSummary"

    invoke-virtual {p0, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 332
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v5, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_85

    .line 333
    :cond_76
    if-eqz v1, :cond_85

    .line 334
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v5, p0, v3, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 333
    :cond_85
    :goto_85
    nop

    .line 336
    :goto_86
    return-object v5
.end method

.method public static update(Ljava/lang/Object;)V
    .registers 18

    .line 196
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

    .line 197
    if-nez v4, :cond_20

    return-void

    .line 198
    :cond_20
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v7, "findPreference"

    const-class v8, Ljava/lang/CharSequence;

    filled-new-array {v8}, [Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 199
    const-string v7, "key_face_menu"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 200
    const-string v8, "key_intelligent_scan_menu"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 201
    const-string v9, "key_iris_menu"

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v5, v0, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 204
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "BiometricsChooseLockGenericFragment"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_85

    .line 205
    const-string v1, "biometrics_category"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 206
    invoke-virtual {v5, v0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "pref_biometrics_description"

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    .line 207
    invoke-virtual {v5, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v8, v9, v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    .line 205
    nop

    :goto_77
    const/4 v1, 0x4

    if-ge v6, v1, :cond_84

    aget-object v1, v0, v6

    .line 208
    if-eqz v1, :cond_81

    invoke-static {v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 205
    :cond_81
    add-int/lit8 v6, v6, 0x1

    goto :goto_77

    .line 210
    :cond_84
    return-void

    .line 212
    :cond_85
    if-eqz v7, :cond_160

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-string v10, "com.samsung.android.camera.iris"

    invoke-virtual {v5, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_95

    goto/16 :goto_160

    .line 217
    :cond_95
    const/4 v5, 0x1

    if-eqz v8, :cond_9a

    if-nez v9, :cond_b1

    .line 218
    :cond_9a
    if-eqz v8, :cond_9f

    invoke-static {v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 219
    :cond_9f
    if-eqz v9, :cond_a4

    invoke-static {v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 220
    :cond_a4
    invoke-static {v4, v7, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createBoth(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    .line 221
    aget-object v9, v8, v6

    .line 222
    aget-object v8, v8, v5

    move-object/from16 v16, v9

    move-object v9, v8

    move-object/from16 v8, v16

    .line 224
    :cond_b1
    invoke-static/range {p0 .. p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result v10

    .line 226
    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->clearIfInsecure(Landroid/content/Context;I)I

    move-result v11

    if-lez v11, :cond_bd

    move v11, v5

    goto :goto_be

    :cond_bd
    move v11, v6

    .line 227
    :goto_be
    if-eqz v11, :cond_ce

    .line 228
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "un1ca_iris_unlock"

    invoke-static {v12, v13, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-ne v12, v5, :cond_ce

    move v12, v5

    goto :goto_cf

    :cond_ce
    move v12, v6

    .line 229
    :goto_cf
    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->hasEnrolledFace(Landroid/content/Context;I)Z

    move-result v13

    .line 230
    if-eqz v13, :cond_dd

    invoke-static {v4, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isFaceUnlockEnabled(Landroid/content/Context;I)Z

    move-result v10

    if-eqz v10, :cond_dd

    move v10, v5

    goto :goto_de

    :cond_dd
    move v10, v6

    .line 231
    :goto_de
    if-eqz v13, :cond_e4

    if-eqz v11, :cond_e4

    move v13, v5

    goto :goto_e5

    :cond_e4
    move v13, v6

    .line 232
    :goto_e5
    if-eqz v10, :cond_eb

    if-eqz v12, :cond_eb

    move v10, v5

    goto :goto_ec

    :cond_eb
    move v10, v6

    .line 234
    :goto_ec
    if-eqz v10, :cond_100

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const/4 v15, -0x1

    invoke-static {v14, v3, v15}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-ne v14, v15, :cond_100

    .line 235
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    invoke-static {v14, v3, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 238
    :cond_100
    const-string v3, "isEnabled"

    invoke-static {v7, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 240
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v2, v5, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 242
    const/16 v5, 0x8

    if-eqz v10, :cond_111

    move v7, v6

    goto :goto_112

    :cond_111
    move v7, v5

    :goto_112
    invoke-static {v8, v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 243
    const-class v7, Ljava/lang/CharSequence;

    .line 245
    if-eqz v13, :cond_122

    .line 246
    const-string v13, "sec_intelligentscan_lockscreen_biometric_registered_summary"

    const-string v14, "Face and irises registered"

    invoke-static {v4, v13, v14}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_12a

    .line 248
    :cond_122
    const-string v13, "sec_intelligentscan_lockscreen_biometric_not_registered_summary"

    const-string v14, "Combine face and iris scanning for better results."

    invoke-static {v4, v13, v14}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 244
    :goto_12a
    invoke-static {v4, v0, v13, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v10

    .line 243
    invoke-static {v8, v1, v7, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 251
    invoke-static {v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V

    .line 253
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v2, v7, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 254
    if-eqz v12, :cond_13c

    goto :goto_13d

    :cond_13c
    move v6, v5

    :goto_13d
    invoke-static {v9, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 255
    const-class v2, Ljava/lang/CharSequence;

    .line 257
    if-eqz v11, :cond_14d

    .line 258
    const-string v3, "iris_register_summary"

    const-string v5, "Your irises have been registered."

    invoke-static {v4, v3, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_155

    .line 259
    :cond_14d
    const-string v3, "iris_add_summary"

    const-string v5, "Register your irises."

    invoke-static {v4, v3, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 256
    :goto_155
    invoke-static {v4, v0, v3, v12}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v0

    .line 255
    invoke-static {v9, v1, v2, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 261
    invoke-static {v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V

    .line 264
    goto :goto_173

    .line 213
    :cond_160
    :goto_160
    if-eqz v8, :cond_165

    invoke-static {v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 214
    :cond_165
    if-eqz v9, :cond_16a

    invoke-static {v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V
    :try_end_16a
    .catchall {:try_start_8 .. :try_end_16a} :catchall_16b

    .line 215
    :cond_16a
    return-void

    .line 262
    :catchall_16b
    move-exception v0

    .line 263
    const-string v1, "UN1CA-IrisMenu"

    const-string v2, "iris menu not updated"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 265
    :goto_173
    return-void
.end method

.method private static userId(Ljava/lang/Object;)I
    .registers 4

    .line 433
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1e

    .line 435
    :try_start_6
    const-string v1, "mUserId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 436
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 437
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_17
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return p0

    .line 440
    :catchall_15
    move-exception p0

    .line 441
    goto :goto_1e

    .line 438
    :catch_17
    move-exception v1

    .line 442
    nop

    .line 433
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 444
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method
