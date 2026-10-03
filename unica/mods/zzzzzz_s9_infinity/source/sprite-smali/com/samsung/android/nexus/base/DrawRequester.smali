.class public Lcom/samsung/android/nexus/base/DrawRequester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INVALIDATE_METHOD_NAME:Ljava/lang/String; = "invalidate"

.field private static final TAG:Ljava/lang/String; = "DrawRequester"


# instance fields
.field private mInvalidateMethod:Ljava/lang/reflect/Method;

.field private final mInvalidatorInstance:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 3

    const-string v0, "invalidate"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidateMethod:Ljava/lang/reflect/Method;

    iput-object p1, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidatorInstance:Ljava/lang/Object;

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidateMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidateMethod:Ljava/lang/reflect/Method;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    sget-object p0, Lcom/samsung/android/nexus/base/DrawRequester;->TAG:Ljava/lang/String;

    const-string p1, "There\'s no invalidate() method in you Engine. You should implement it."

    invoke-static {p0, p1}, Lcom/samsung/android/nexus/base/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public invalidate()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidateMethod:Ljava/lang/reflect/Method;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/nexus/base/DrawRequester;->mInvalidatorInstance:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
