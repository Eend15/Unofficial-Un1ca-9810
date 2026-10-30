.class public final Lcom/samsung/android/settings/un1ca/IrisLockMenu;
.super Ljava/lang/Object;
.source "IrisLockMenu.java"


# static fields
.field private static final FACE_KEY:Ljava/lang/String; = "key_face_menu"

.field private static final FEATURE:Ljava/lang/String; = "com.samsung.android.camera.iris"

.field private static final ICON_GONE:I = 0x8

.field private static final ICON_VISIBLE:I = 0x0

.field private static final IRIS_FRAGMENT:Ljava/lang/String; = "com.samsung.android.settings.un1ca.IrisSettingsFragment"

.field private static final IRIS_SETTINGS_PKG:Ljava/lang/String; = "com.samsung.android.irissettings"

.field private static final KEY:Ljava/lang/String; = "key_iris_menu"

.field private static final TAG:Ljava/lang/String; = "UN1CA-IrisMenu"

.field private static final UNLOCK_KEY:Ljava/lang/String; = "un1ca_iris_unlock"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
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

    .line 62
    const-class v1, Ljava/lang/String;

    const-string v2, "key_iris_menu"

    const-string v3, "setKey"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 63
    const-class v1, Ljava/lang/CharSequence;

    const-string v2, "bio_iris_scanner_title"

    const-string v3, "Irises"

    invoke-static {p0, v2, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "setTitle"

    invoke-static {v0, v3, v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 64
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "setPersistent"

    invoke-static {v0, v4, v1, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 65
    const-string v1, "getParent"

    invoke-static {p1, v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 66
    const-string v3, "getOrder"

    invoke-static {p1, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 68
    const-string v5, "getPreferenceCount"

    invoke-static {v1, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    const-string v8, "getPreference"

    invoke-virtual {v6, v8, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 70
    move v7, v2

    :goto_69
    const-string v8, "setOrder"

    if-ge v7, v5, :cond_93

    .line 71
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v6, v1, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 72
    invoke-static {v9, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 73
    if-lt v10, v4, :cond_90

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    add-int/lit8 v10, v10, 0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v9, v8, v11, v10}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 70
    :cond_90
    add-int/lit8 v7, v7, 0x1

    goto :goto_69

    .line 75
    :cond_93
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v8, v3, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 76
    nop

    .line 77
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 76
    const-string v4, "androidx.preference.Preference$OnPreferenceClickListener"

    invoke-static {v4, v2, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 78
    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    filled-new-array {v3}, [Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;

    invoke-direct {v6, p2, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Landroid/content/Context;)V

    invoke-static {v4, v5, v6}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object p0

    .line 94
    const-string p2, "setOnPreferenceClickListener"

    invoke-static {v0, p2, v3, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    .line 96
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    .line 95
    const-string p2, "androidx.preference.Preference"

    invoke-static {p2, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Class;

    move-result-object p1

    const-string p2, "addPreference"

    invoke-virtual {p0, p2, p1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 96
    invoke-virtual {p0, v1, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    return-object v0
.end method

.method private static enrolledIrises(Landroid/content/Context;I)I
    .registers 6

    .line 140
    const/4 v0, 0x0

    :try_start_1
    const-string v1, "com.samsung.android.camera.iris.SemIrisManager"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 141
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

    .line 142
    if-nez p0, :cond_1f

    return v0

    .line 143
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

    .line 144
    if-nez p0, :cond_3c

    goto :goto_40

    :cond_3c
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0
    :try_end_40
    .catchall {:try_start_1 .. :try_end_40} :catchall_41

    :goto_40
    return v0

    .line 145
    :catchall_41
    move-exception p0

    .line 146
    const-string p1, "UN1CA-IrisMenu"

    const-string v1, "iris enrollment query failed"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 147
    return v0
.end method

.method private static gkPwHandle(Ljava/lang/Object;)J
    .registers 3

    .line 168
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

    .line 169
    :catchall_f
    move-exception p0

    .line 170
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "no gatekeeper handle on the lock screen fragment"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method private static invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 192
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

    .line 126
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

    .line 128
    :try_start_10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 129
    const-string v4, "string"

    invoke-virtual {v3, p1, v4, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 130
    if-eqz v2, :cond_25

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_24
    .catchall {:try_start_10 .. :try_end_24} :catchall_26

    return-object p0

    .line 133
    :cond_25
    goto :goto_27

    .line 131
    :catchall_26
    move-exception v2

    .line 126
    :goto_27
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 135
    :cond_2a
    return-object p2
.end method

.method static synthetic lambda$create$0(Ljava/lang/Object;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 80
    const-string p2, "onPreferenceClick"

    invoke-virtual {p3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_e

    const/4 p0, 0x0

    return-object p0

    .line 84
    :cond_e
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 85
    const-string p3, "gk_pw_handle"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->gkPwHandle(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p2, p3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 86
    const-string p3, "android.intent.extra.USER_ID"

    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p2, p3, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 87
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p3

    const-string p4, "com.android.settings.SubSettings"

    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 88
    const-string p3, ":settings:show_fragment"

    const-string p4, "com.samsung.android.settings.un1ca.IrisSettingsFragment"

    invoke-virtual {p0, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string p3, "bio_iris_scanner_title"

    const-string p4, "Irises"

    invoke-static {p1, p3, p4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string p4, ":settings:show_fragment_title"

    invoke-virtual {p0, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string p3, ":settings:show_fragment_args"

    invoke-virtual {p0, p3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 92
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method private static removeFromParent(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    const-string v0, "getParent"

    invoke-static {p0, v0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 187
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

    .line 186
    const-string v3, "removePreference"

    invoke-virtual {v1, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 188
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
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

    .line 196
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    filled-new-array {p2}, [Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    return-void
.end method

.method private static setIconVisibility(Ljava/lang/Object;I)V
    .registers 4

    .line 177
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "mIconVisibility"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 178
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V
    :try_end_d
    .catchall {:try_start_0 .. :try_end_d} :catchall_e

    .line 181
    goto :goto_16

    .line 179
    :catchall_e
    move-exception p0

    .line 180
    const-string p1, "UN1CA-IrisMenu"

    const-string v0, "no lock type check mark"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    :goto_16
    return-void
.end method

.method private static summary(Landroid/content/Context;Ljava/lang/Object;ZZ)Ljava/lang/CharSequence;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 102
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 104
    const-string v2, "sec_lockscreen_biometrics_summary_color"

    const-string v3, "color"

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 105
    const-string v3, "comma"

    const-string v4, "string"

    invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 106
    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v2, :cond_21

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v5

    goto :goto_22

    :cond_21
    move v5, v4

    .line 107
    :goto_22
    if-eqz p2, :cond_2d

    const-string p2, "iris_register_summary"

    const-string v6, "Your irises have been registered."

    invoke-static {p0, p2, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_35

    .line 108
    :cond_2d
    const-string p2, "iris_add_summary"

    const-string v6, "Register your irises."

    invoke-static {p0, p2, v6}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->irisText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 109
    :goto_35
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 110
    const/16 p0, 0x21

    if-eqz p3, :cond_89

    .line 111
    if-eqz v1, :cond_45

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    goto :goto_47

    :cond_45
    const-string p3, ","

    :goto_47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 112
    if-eqz v2, :cond_6b

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {p2, p3, v4, v0, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    :cond_6b
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class p3, Ljava/lang/CharSequence;

    filled-new-array {p3}, [Ljava/lang/Class;

    move-result-object p3

    const-string v0, "appendCurrentLockTypeToSummary"

    invoke-virtual {p0, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    .line 114
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p0, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p2, p0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_98

    .line 115
    :cond_89
    if-eqz v2, :cond_98

    .line 116
    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, v5}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p3

    invoke-virtual {p2, p1, v4, p3, p0}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_99

    .line 115
    :cond_98
    :goto_98
    nop

    .line 118
    :goto_99
    return-object p2
.end method

.method public static update(Ljava/lang/Object;)V
    .registers 10

    .line 39
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getContext"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 40
    if-nez v0, :cond_18

    return-void

    .line 41
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "findPreference"

    const-class v4, Ljava/lang/CharSequence;

    filled-new-array {v4}, [Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 42
    const-string v3, "key_face_menu"

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 43
    const-string v4, "key_iris_menu"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 44
    if-eqz v3, :cond_90

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.samsung.android.camera.iris"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4b

    goto :goto_90

    .line 48
    :cond_4b
    if-nez v1, :cond_51

    invoke-static {v0, v3, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->create(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 49
    :cond_51
    invoke-static {p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->userId(Ljava/lang/Object;)I

    move-result v4

    .line 50
    invoke-static {v0, v4}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->enrolledIrises(Landroid/content/Context;I)I

    move-result v4

    const/4 v5, 0x1

    if-lez v4, :cond_5e

    move v4, v5

    goto :goto_5f

    :cond_5e
    move v4, v2

    .line 51
    :goto_5f
    if-eqz v4, :cond_6e

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "un1ca_iris_unlock"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v5, :cond_6e

    goto :goto_6f

    :cond_6e
    move v5, v2

    .line 52
    :goto_6f
    const-string v6, "setEnabled"

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v8, "isEnabled"

    invoke-static {v3, v8}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->invoke(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v6, v7, v3}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 53
    const-string v3, "setSummary"

    const-class v6, Ljava/lang/CharSequence;

    invoke-static {v0, p0, v4, v5}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->summary(Landroid/content/Context;Ljava/lang/Object;ZZ)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-static {v1, v3, v6, p0}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 54
    if-eqz v5, :cond_8a

    goto :goto_8c

    :cond_8a
    const/16 v2, 0x8

    :goto_8c
    invoke-static {v1, v2}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->setIconVisibility(Ljava/lang/Object;I)V

    .line 57
    goto :goto_9e

    .line 45
    :cond_90
    :goto_90
    if-eqz v1, :cond_95

    invoke-static {v1}, Lcom/samsung/android/settings/un1ca/IrisLockMenu;->removeFromParent(Ljava/lang/Object;)V
    :try_end_95
    .catchall {:try_start_0 .. :try_end_95} :catchall_96

    .line 46
    :cond_95
    return-void

    .line 55
    :catchall_96
    move-exception p0

    .line 56
    const-string v0, "UN1CA-IrisMenu"

    const-string v1, "iris menu not updated"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :goto_9e
    return-void
.end method

.method private static userId(Ljava/lang/Object;)I
    .registers 4

    .line 152
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_1e

    .line 154
    :try_start_6
    const-string v1, "mUserId"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 155
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 156
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_6 .. :try_end_14} :catch_17
    .catchall {:try_start_6 .. :try_end_14} :catchall_15

    return p0

    .line 159
    :catchall_15
    move-exception p0

    .line 160
    goto :goto_1e

    .line 157
    :catch_17
    move-exception v1

    .line 161
    nop

    .line 152
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_4

    .line 163
    :cond_1e
    :goto_1e
    const/4 p0, 0x0

    return p0
.end method
