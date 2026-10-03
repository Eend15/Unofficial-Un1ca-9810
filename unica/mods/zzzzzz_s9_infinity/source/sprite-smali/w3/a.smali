.class public abstract Lw3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/d;
.implements Lw3/d;
.implements Ljava/io/Serializable;


# instance fields
.field private final completion:Lu3/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu3/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lw3/a;->completion:Lu3/d;

    return-void
.end method


# virtual methods
.method public create(Ljava/lang/Object;Lu3/d;)Lu3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lu3/d<",
            "*>;)",
            "Lu3/d<",
            "Lq3/m;",
            ">;"
        }
    .end annotation

    const-string p0, "completion"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "create(Any?;Continuation) has not been overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public create(Lu3/d;)Lu3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/d<",
            "*>;)",
            "Lu3/d<",
            "Lq3/m;",
            ">;"
        }
    .end annotation

    const-string p0, "completion"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "create(Continuation) has not been overridden"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCallerFrame()Lw3/d;
    .locals 1

    iget-object p0, p0, Lw3/a;->completion:Lu3/d;

    instance-of v0, p0, Lw3/d;

    if-eqz v0, :cond_0

    check-cast p0, Lw3/d;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getCompletion()Lu3/d;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu3/d<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lw3/a;->completion:Lu3/d;

    return-object p0
.end method

.method public getStackTraceElement()Ljava/lang/StackTraceElement;
    .locals 8

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lw3/e;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lw3/e;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    invoke-interface {v0}, Lw3/e;->v()I

    move-result v2

    const/4 v3, 0x1

    if-gt v2, v3, :cond_d

    const/4 v2, -0x1

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "label"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    invoke-virtual {v4, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Integer;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Integer;

    goto :goto_0

    :cond_1
    move-object v4, v1

    :goto_0
    if-eqz v4, :cond_2

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    sub-int/2addr v4, v3

    goto :goto_2

    :catch_0
    move v4, v2

    :goto_2
    if-gez v4, :cond_3

    goto :goto_3

    :cond_3
    invoke-interface {v0}, Lw3/e;->l()[I

    move-result-object v2

    aget v2, v2, v4

    :goto_3
    sget-object v3, Lw3/f;->b:Lw0/s;

    sget-object v4, Lw3/f;->a:Lw0/s;

    if-nez v3, :cond_4

    :try_start_1
    const-class v3, Ljava/lang/Class;

    const-string v5, "getModule"

    invoke-virtual {v3, v5, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const-string v6, "java.lang.Module"

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "getDescriptor"

    invoke-virtual {v5, v6, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    const-string v7, "java.lang.module.ModuleDescriptor"

    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-string v7, "name"

    invoke-virtual {v6, v7, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-instance v7, Lw0/s;

    invoke-direct {v7, v3, v5, v6}, Lw0/s;-><init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;)V

    sput-object v7, Lw3/f;->b:Lw0/s;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v7

    goto :goto_4

    :catch_1
    sput-object v4, Lw3/f;->b:Lw0/s;

    move-object v3, v4

    :cond_4
    :goto_4
    if-ne v3, v4, :cond_5

    goto :goto_8

    :cond_5
    iget-object v4, v3, Lw0/s;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_6

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_5

    :cond_6
    move-object p0, v1

    :goto_5
    if-nez p0, :cond_7

    goto :goto_8

    :cond_7
    iget-object v4, v3, Lw0/s;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/reflect/Method;

    if-eqz v4, :cond_8

    invoke-virtual {v4, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_6

    :cond_8
    move-object p0, v1

    :goto_6
    if-nez p0, :cond_9

    goto :goto_8

    :cond_9
    iget-object v3, v3, Lw0/s;->c:Ljava/lang/Object;

    check-cast v3, Ljava/lang/reflect/Method;

    if-eqz v3, :cond_a

    invoke-virtual {v3, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_7

    :cond_a
    move-object p0, v1

    :goto_7
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_b

    move-object v1, p0

    check-cast v1, Ljava/lang/String;

    :cond_b
    :goto_8
    if-nez v1, :cond_c

    invoke-interface {v0}, Lw3/e;->c()Ljava/lang/String;

    move-result-object p0

    goto :goto_9

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lw3/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_9
    new-instance v1, Ljava/lang/StackTraceElement;

    invoke-interface {v0}, Lw3/e;->m()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lw3/e;->f()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v3, v0, v2}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_a
    return-object v1

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Debug metadata version mismatch. Expected: 1, got "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Please update the Kotlin standard library."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end method

.method public abstract releaseIntercepted()V
.end method

.method public final resumeWith(Ljava/lang/Object;)V
    .locals 2

    :goto_0
    check-cast p0, Lw3/a;

    iget-object v0, p0, Lw3/a;->completion:Lu3/d;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {p0, p1}, Lw3/a;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v1, Lv3/a;->d:Lv3/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v1, :cond_0

    return-void

    :catchall_0
    move-exception p1

    invoke-static {p1}, Lp4/g;->u(Ljava/lang/Throwable;)Lq3/g;

    move-result-object p1

    :cond_0
    invoke-virtual {p0}, Lw3/a;->releaseIntercepted()V

    instance-of p0, v0, Lw3/a;

    if-eqz p0, :cond_1

    move-object p0, v0

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lu3/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Continuation at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lw3/a;->getStackTraceElement()Ljava/lang/StackTraceElement;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
