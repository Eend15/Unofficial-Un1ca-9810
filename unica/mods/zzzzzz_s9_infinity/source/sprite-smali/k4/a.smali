.class public final Lk4/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/b;


# static fields
.field public static final a:Lk4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk4/a;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lk4/a;->a:Lk4/a;

    return-void
.end method


# virtual methods
.method public final a()Ls4/c;
    .locals 2

    invoke-static {p0}, Lz4/e;->d(LV3/b;)LU3/e;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {p0}, LJ4/v;->g(LU3/j;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {p0}, Lz4/e;->c(LU3/k;)Ls4/c;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public final b()Ljava/util/Map;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i()LU3/L;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j()LJ4/C;
    .locals 1

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No methods should be called on this descriptor. Only its presence matters"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "[EnhancedType]"

    return-object p0
.end method
