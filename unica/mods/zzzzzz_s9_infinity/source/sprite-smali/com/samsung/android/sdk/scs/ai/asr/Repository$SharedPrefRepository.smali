.class public Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/samsung/android/sdk/scs/ai/asr/Repository;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/asr/Repository;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SharedPrefRepository"
.end annotation


# static fields
.field private static final KEY_SERVER_TYPE:Ljava/lang/String; = "server_type"

.field private static final POSTFIX_IS_DEFAULT:Ljava/lang/String; = "_is_default"

.field private static final VERSION:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final prefName:Ljava/lang/String;

.field private final sharedPrefSupplier:Landroid/content/SharedPreferences;


# direct methods
.method public synthetic constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "scs_asr_settings"

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, "_1"

    .line 4
    invoke-static {p1, v0}, Li4/b;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->prefName:Ljava/lang/String;

    .line 6
    const-string v1, "SharedPrefRepository@"

    .line 7
    invoke-static {v1, p1}, Li4/b;->k(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->TAG:Ljava/lang/String;

    .line 9
    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/asr/Environment;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->sharedPrefSupplier:Landroid/content/SharedPreferences;

    .line 10
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "created  "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->lambda$getServerType$2(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->lambda$setServerType$0(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->lambda$getServerType$1(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    move-result-object p0

    return-object p0
.end method

.method private getKey(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)Ljava/lang/String;
    .locals 0

    invoke-static {p1}, Lq/e;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$getServerType$1(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;
    .locals 2

    new-instance v0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_is_default"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-direct {v0, p0, p3, p1}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;-><init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Ljava/lang/String;Z)V

    return-object v0
.end method

.method private static synthetic lambda$getServerType$2(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Landroid/content/SharedPreferences;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;
    .locals 4

    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/sdk/scs/ai/asr/i;

    const/4 v3, 0x0

    invoke-direct {v2, p1, p2, p0, v3}, Lcom/samsung/android/sdk/scs/ai/asr/i;-><init>(Ljava/lang/Enum;Landroid/content/SharedPreferences;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    return-object p0
.end method

.method private static synthetic lambda$setServerType$0(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;Landroid/content/SharedPreferences$Editor;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const-string v0, "_is_default"

    if-nez p0, :cond_0

    invoke-interface {p2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;->isDefault()Z

    move-result p0

    invoke-interface {p2, p1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    :goto_0
    return-object p2
.end method


# virtual methods
.method public getServerType(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;
    .locals 2

    const-string v0, "server_type"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->getKey(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->sharedPrefSupplier:Landroid/content/SharedPreferences;

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/k;

    invoke-direct {v1, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/k;-><init>(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)V

    invoke-virtual {p0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;

    return-object p0
.end method

.method public setServerType(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;)Z
    .locals 3

    const-string v0, "setServerType "

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/sdk/scs/base/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    if-eqz p1, :cond_0

    :try_start_1
    const-string v0, "server_type"

    invoke-direct {p0, v0, p1}, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->getKey(Ljava/lang/String;Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerFeature;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->sharedPrefSupplier:Landroid/content/SharedPreferences;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/j;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/scs/ai/asr/j;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/sdk/scs/ai/asr/k;

    invoke-direct {v1, p2, p1}, Lcom/samsung/android/sdk/scs/ai/asr/k;-><init>(Lcom/samsung/android/sivs/ai/sdkcommon/asr/ServerType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance p2, Lcom/samsung/android/sdk/scs/ai/asr/j;

    const/4 v0, 0x1

    invoke-direct {p2, v0}, Lcom/samsung/android/sdk/scs/ai/asr/j;-><init>(I)V

    invoke-virtual {p1, p2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    :catch_1
    move-exception p1

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/asr/Repository$SharedPrefRepository;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Failed to set server type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/samsung/android/sdk/scs/base/utils/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
