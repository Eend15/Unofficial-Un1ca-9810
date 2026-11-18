.class public final Lcom/samsung/android/settings/un1ca/IrisLockMenu;
.super Ljava/lang/Object;
.source "IrisLockMenu.java"


# static fields
.field private static final ARG_INTELLIGENT_SCAN:Ljava/lang/String; = "un1ca_intelligent_scan"

.field private static final FACE_KEY:Ljava/lang/String; = "key_face_menu"

.field private static final FEATURE:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final FINGERPRINT_KEY:Ljava/lang/String; = "key_fingerprint_menu"

.field private static final ICON_GONE:I = 0x8

.field private static final ICON_VISIBLE:I = 0x0

.field private static final INTEL_KEY:Ljava/lang/String; = "key_intelligent_scan_menu"

.field private static final INTEL_SCREEN_ON_KEY:Ljava/lang/String; = "un1ca_intelligent_scan_screen_on"

.field private static final IRIS_FRAGMENT:Ljava/lang/String; = "com.samsung.android.settings.un1ca.IrisSettingsFragment"

.field private static final IRIS_SETTINGS_PKG:Ljava/lang/String; = "com.samsung.android.irissettings"

.field private static final KEY:Ljava/lang/String; = "key_iris_menu"

.field private static final SEM_TYPE_FACE:I = 0x100

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisMenu"

.field private static final UNLOCK_KEY:Ljava/lang/String; = "un1ca_iris_unlock"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clearIfInsecure(Landroid/content/Context;I)I
    .registers 7

    .line 237
    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->enrolledIrises(Landroid/content/Context;I)I

    move-result v0

    .line 238
    if-eqz v0, :cond_64

    invoke-static {p0, p1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isSecure(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_d

    goto :goto_64

    .line 239
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

    .line 241
    :try_start_2b
    invoke-static {p0}, Lcom/samsung/android/camera/iris/SemIrisManager;->getSemIrisManager(Landroid/content/Context;)Lcom/samsung/android/camera/iris/SemIrisManager;

    move-result-object v0

    .line 242
    if-nez v0, :cond_33

    const/4 v2, 0x0

    goto :goto_37

    :cond_33
    invoke-virtual {v0, p1}, Lcom/samsung/android/camera/iris/SemIrisManager;->getEnrolledIrises(I)Ljava/util/List;

    move-result-object v2

    .line 243
    :goto_37
    if-eqz v2, :cond_52

    .line 244
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_52

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 245
    check-cast v3, Lcom/samsung/android/camera/iris/Iris;

    new-instance v4, Lcom/samsung/android/settings/un1ca/IrisLockMenu$1;

    invoke-direct {v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$1;-><init>()V

    invoke-virtual {v0, v3, p1, v4}, Lcom/samsung/android/camera/iris/SemIrisManager;->remove(Lcom/samsung/android/camera/iris/Iris;ILcom/samsung/android/camera/iris/SemIrisManager$RemovalCallback;)V
    :try_end_51
    .catchall {:try_start_2b .. :try_end_51} :catchall_53

    .line 250
    goto :goto_3d

    .line 254
    :cond_52
    goto :goto_59

    .line 252
    :catchall_53
    move-exception p1

    .line 253
    const-string v0, "iris removal failed"

    invoke-static {v1, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    :goto_59
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "un1ca_iris_unlock"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 256
    return v0

    .line 238
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

    .line 129
    const-string v0, "getParent"

    invoke-static {p1, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 130
    const-string v1, "getOrder"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 133
    const-string v2, "getPreferenceCount"

    invoke-static {v0, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 134
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    const-string v5, "getPreference"

    invoke-virtual {v3, v5, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 135
    const/4 v4, 0x0

    :goto_2f
    const-string v5, "setOrder"

    if-ge v4, v2, :cond_59

    .line 136
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 137
    invoke-static {v6, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 138
    if-le v7, v9, :cond_56

    .line 139
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v7, v7, 0x2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v5, v8, v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 135
    :cond_56
    add-int/lit8 v4, v4, 0x1

    goto :goto_2f

    .line 142
    :cond_59
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v2, v9, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v5, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 144
    nop

    .line 145
    const-string v1, "bio_intelligentscan_title"

    const-string v2, "Intelligent Scan"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 144
    const-string v5, "key_intelligent_scan_menu"

    const/4 v8, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, p2

    move v7, v9

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object v10

    .line 146
    nop

    .line 147
    const-string v1, "bio_iris_scanner_title"

    const-string v2, "Irises"

    invoke-static {p0, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v9, 0x2

    .line 146
    const-string v5, "key_iris_menu"

    const/4 v8, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createSingle(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;IZ)Ljava/lang/Object;

    move-result-object p0

    .line 148
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

    .line 153
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

    .line 154
    const-string v1, "setKey"

    const-class v2, Ljava/lang/String;

    invoke-static {v0, v1, v2, p4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 155
    const-string p4, "setTitle"

    const-class v1, Ljava/lang/CharSequence;

    invoke-static {v0, p4, v1, p5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 156
    sget-object p4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "setPersistent"

    invoke-static {v0, v3, p4, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 157
    sget-object p4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p6

    const-string v2, "setOrder"

    invoke-static {v0, v2, p4, p6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 158
    nop

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4

    .line 158
    const-string p6, "androidx.preference.Preference$OnPreferenceClickListener"

    invoke-static {p6, v1, p4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p4

    .line 160
    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p6

    filled-new-array {p4}, [Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;

    invoke-direct {v3, p3, p7, p0, p5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;ZLandroid/content/Context;Ljava/lang/String;)V

    invoke-static {p6, v2, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 175
    const-string p3, "setOnPreferenceClickListener"

    invoke-static {v0, p3, p4, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 176
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 177
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 176
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

    .line 177
    invoke-virtual {p0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    return-object v0
.end method

.method private static enrolledIrises(Landroid/content/Context;I)I
    .registers 6

    .line 219
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.samsung.android.camera.iris.SemIrisManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 220
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

    .line 221
    if-nez p0, :cond_1f

    return v0

    .line 222
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

    .line 223
    if-nez p0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    :goto_40
    return v0

    .line 224
    :catchall_41
    move-exception p0

    .line 225
    const-string p1, "UN1CA-IrisMenu"

    const-string v1, "iris enrollment query failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    return v0
.end method

.method private static gkPwHandle(Ljava/lang/Object;)J
    .registers 3

    .line 310
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

    .line 311
    :catchall_f
    move-exception p0

    .line 312
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "no gatekeeper handle on the lock screen fragment"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 313
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static hasEnrolledFace(Landroid/content/Context;I)Z
    .registers 6

    .line 273
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "face"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 274
    if-nez p0, :cond_a

    return v0

    .line 275
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

    .line 276
    :catchall_2d
    move-exception p0

    .line 277
    return v0
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 351
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

    .line 205
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

    .line 207
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 208
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 209
    if-eqz v2, :cond_25

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_26

    return-object p0

    .line 212
    :cond_25
    goto :goto_27

    .line 210
    :catchall_26
    move-exception v2

    .line 205
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 214
    :cond_2a
    return-object p2
.end method

.method private static isFaceUnlockEnabled(Landroid/content/Context;I)Z
    .registers 7

    .line 283
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/content/Context;

    filled-new-array {v2}, [Ljava/lang/Class;

    move-result-object v2

    .line 284
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 285
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getBiometricState"

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v3, v4}, [Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 286
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

    .line 285
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_43
    .catchall {:try_start_1 .. :try_end_43} :catchall_48

    .line 287
    const/4 p1, 0x1

    if-ne p0, p1, :cond_47

    move v0, p1

    :cond_47
    return v0

    .line 288
    :catchall_48
    move-exception p0

    .line 289
    return v0
.end method

.method private static isSecure(Landroid/content/Context;I)Z
    .registers 5

    .line 262
    :try_start_0
    const-string v0, "com.android.internal.widget.LockPatternUtils"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/content/Context;

    filled-new-array {v1}, [Ljava/lang/Class;

    move-result-object v1

    .line 263
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 264
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

    .line 265
    :catchall_3b
    move-exception p0

    .line 266
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "isSecure failed"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 267
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

    .line 162
    const-string p4, "onPreferenceClick"

    invoke-virtual {p5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 163
    :cond_e
    new-instance p4, Landroid/os/Bundle;

    invoke-direct {p4}, Landroid/os/Bundle;-><init>()V

    .line 164
    const-string p5, "gk_pw_handle"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->gkPwHandle(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p4, p5, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 165
    const-string p5, "android.intent.extra.USER_ID"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p4, p5, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 166
    const-string p0, "un1ca_intelligent_scan"

    invoke-virtual {p4, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 167
    nop

    .line 168
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string p5, "com.android.settings.SubSettings"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 169
    const-string p1, ":settings:show_fragment"

    const-string p5, "com.samsung.android.settings.un1ca.IrisSettingsFragment"

    invoke-virtual {p0, p1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 170
    const-string p1, ":settings:show_fragment_title"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string p1, ":settings:show_fragment_args"

    invoke-virtual {p0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 172
    invoke-virtual {p2, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 173
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static notifyChanged(Ljava/lang/Object;)V
    .registers 5

    .line 328
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_29

    .line 330
    :try_start_6
    const-string v1, "notifyChanged"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 331
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 332
    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_18} :catch_22
    .catchall {:try_start_6 .. :try_end_18} :catchall_19

    .line 333
    return-void

    .line 336
    :catchall_19
    move-exception p0

    .line 337
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "notifyChanged failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 338
    return-void

    .line 334
    :catch_22
    move-exception v1

    .line 339
    nop

    .line 328
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 341
    :cond_29
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

    .line 344
    const-string v0, "getParent"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 345
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 346
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

    .line 345
    const-string v3, "removePreference"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 347
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
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

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 356
    return-void
.end method

.method private static setIconVisibility(Ljava/lang/Object;I)V
    .registers 4

    .line 319
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mIconVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 320
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 323
    goto :goto_16

    .line 321
    :catchall_e
    move-exception p0

    .line 322
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "no lock type check mark"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 324
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

    .line 183
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 185
    const-string v1, "sec_lockscreen_biometrics_summary_color"

    const-string v2, "color"

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 186
    const-string v2, "comma"

    const-string v3, "string"

    invoke-virtual {v0, v2, v3, p0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    .line 187
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_21

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v4

    goto :goto_22

    :cond_21
    move v4, v3

    .line 188
    :goto_22
    new-instance v5, Landroid/text/SpannableStringBuilder;

    invoke-direct {v5, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 189
    const/16 p2, 0x21

    if-eqz p3, :cond_76

    .line 190
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

    .line 191
    if-eqz v1, :cond_58

    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {v5, p0, v3, p3, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 192
    :cond_58
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p2, Ljava/lang/CharSequence;

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    const-string p3, "appendCurrentLockTypeToSummary"

    invoke-virtual {p0, p3, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 193
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {v5, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_85

    .line 194
    :cond_76
    if-eqz v1, :cond_85

    .line 195
    new-instance p0, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p0, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p1

    invoke-virtual {v5, p0, v3, p1, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_86

    .line 194
    :cond_85
    :goto_85
    nop

    .line 197
    :goto_86
    return-object v5
.end method

.method public static update(Ljava/lang/Object;)V
    .registers 16

    .line 67
    const-string v0, "setSummary"

    const-string v1, "setEnabled"

    const-string v2, "un1ca_intelligent_scan_screen_on"

    :try_start_6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    const-string v4, "getContext"

    const/4 v5, 0x0

    new-array v6, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Object;

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    .line 68
    if-nez v3, :cond_1e

    return-void

    .line 69
    :cond_1e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v6, "findPreference"

    const-class v7, Ljava/lang/CharSequence;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 70
    const-string v6, "key_face_menu"

    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 71
    const-string v7, "key_intelligent_scan_menu"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v4, p0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 72
    const-string v8, "key_iris_menu"

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v4, p0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 73
    if-eqz v6, :cond_122

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    const-string v9, "com.samsung.android.camera.iris"

    invoke-virtual {v8, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5c

    goto/16 :goto_122

    .line 78
    :cond_5c
    const/4 v8, 0x1

    if-eqz v7, :cond_61

    if-nez v4, :cond_73

    .line 79
    :cond_61
    if-eqz v7, :cond_66

    invoke-static {v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 80
    :cond_66
    if-eqz v4, :cond_6b

    invoke-static {v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 81
    :cond_6b
    invoke-static {v3, v6, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->createBoth(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 82
    aget-object v7, v4, v5

    .line 83
    aget-object v4, v4, v8

    .line 85
    :cond_73
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result v9

    .line 87
    invoke-static {v3, v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->clearIfInsecure(Landroid/content/Context;I)I

    move-result v10

    if-lez v10, :cond_7f

    move v10, v8

    goto :goto_80

    :cond_7f
    move v10, v5

    .line 88
    :goto_80
    if-eqz v10, :cond_90

    .line 89
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "un1ca_iris_unlock"

    invoke-static {v11, v12, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    if-ne v11, v8, :cond_90

    move v11, v8

    goto :goto_91

    :cond_90
    move v11, v5

    .line 90
    :goto_91
    invoke-static {v3, v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->hasEnrolledFace(Landroid/content/Context;I)Z

    move-result v12

    .line 91
    if-eqz v12, :cond_9f

    invoke-static {v3, v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->isFaceUnlockEnabled(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_9f

    move v9, v8

    goto :goto_a0

    :cond_9f
    move v9, v5

    .line 92
    :goto_a0
    if-eqz v12, :cond_a6

    if-eqz v10, :cond_a6

    move v12, v8

    goto :goto_a7

    :cond_a6
    move v12, v5

    .line 93
    :goto_a7
    if-eqz v9, :cond_ad

    if-eqz v11, :cond_ad

    move v9, v8

    goto :goto_ae

    :cond_ad
    move v9, v5

    .line 95
    :goto_ae
    if-eqz v9, :cond_c2

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const/4 v14, -0x1

    invoke-static {v13, v2, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-ne v13, v14, :cond_c2

    .line 96
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    invoke-static {v13, v2, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 99
    :cond_c2
    const-string v2, "isEnabled"

    invoke-static {v6, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    .line 101
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1, v6, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 103
    const/16 v6, 0x8

    if-eqz v9, :cond_d3

    move v8, v5

    goto :goto_d4

    :cond_d3
    move v8, v6

    :goto_d4
    invoke-static {v7, v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 104
    const-class v8, Ljava/lang/CharSequence;

    .line 106
    if-eqz v12, :cond_e4

    .line 107
    const-string v12, "sec_intelligentscan_lockscreen_biometric_registered_summary"

    const-string v13, "Face and irises registered"

    invoke-static {v3, v12, v13}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_ec

    .line 109
    :cond_e4
    const-string v12, "sec_intelligentscan_lockscreen_biometric_not_registered_summary"

    const-string v13, "Combine face and iris scanning for better results."

    invoke-static {v3, v12, v13}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 105
    :goto_ec
    invoke-static {v3, p0, v12, v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object v9

    .line 104
    invoke-static {v7, v0, v8, v9}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 112
    invoke-static {v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V

    .line 114
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v1, v7, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    if-eqz v11, :cond_fe

    goto :goto_ff

    :cond_fe
    move v5, v6

    :goto_ff
    invoke-static {v4, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 116
    const-class v1, Ljava/lang/CharSequence;

    .line 118
    if-eqz v10, :cond_10f

    .line 119
    const-string v2, "iris_register_summary"

    const-string v5, "Your irises have been registered."

    invoke-static {v3, v2, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_117

    .line 120
    :cond_10f
    const-string v2, "iris_add_summary"

    const-string v5, "Register your irises."

    invoke-static {v3, v2, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 117
    :goto_117
    invoke-static {v3, p0, v2, v11}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object p0

    .line 116
    invoke-static {v4, v0, v1, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 122
    invoke-static {v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->notifyChanged(Ljava/lang/Object;)V

    .line 125
    goto :goto_135

    .line 74
    :cond_122
    :goto_122
    if-eqz v7, :cond_127

    invoke-static {v7}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V

    .line 75
    :cond_127
    if-eqz v4, :cond_12c

    invoke-static {v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V
    :try_end_12c
    .catchall {:try_start_6 .. :try_end_12c} :catchall_12d

    .line 76
    :cond_12c
    return-void

    .line 123
    :catchall_12d
    move-exception p0

    .line 124
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "iris menu not updated"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 126
    :goto_135
    return-void
.end method

.method private static userId(Ljava/lang/Object;)I
    .registers 4

    .line 294
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1e

    .line 296
    :try_start_6
    const-string v1, "mUserId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 297
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 298
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_17
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return p0

    .line 301
    :catchall_15
    move-exception p0

    .line 302
    goto :goto_1e

    .line 299
    :catch_17
    move-exception v1

    .line 303
    nop

    .line 294
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 305
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method
