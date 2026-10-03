.class public final LO3/k0;
.super LO3/n0;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final e:LE3/a;

.field public volatile f:Ljava/lang/ref/SoftReference;


# direct methods
.method public constructor <init>(LU3/b;LE3/a;)V
    .locals 1

    if-eqz p2, :cond_1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LO3/k0;->f:Ljava/lang/ref/SoftReference;

    iput-object p2, p0, LO3/k0;->e:LE3/a;

    if-eqz p1, :cond_0

    new-instance p2, Ljava/lang/ref/SoftReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, LO3/k0;->f:Ljava/lang/ref/SoftReference;

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'initializer\' of kotlin/reflect/jvm/internal/ReflectProperties$LazySoftVal.<init> must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, LO3/k0;->f:Ljava/lang/ref/SoftReference;

    sget-object v1, LO3/n0;->d:LO3/m0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, LO3/k0;->e:LE3/a;

    invoke-interface {v0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    new-instance v2, Ljava/lang/ref/SoftReference;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    invoke-direct {v2, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, LO3/k0;->f:Ljava/lang/ref/SoftReference;

    return-object v0
.end method
