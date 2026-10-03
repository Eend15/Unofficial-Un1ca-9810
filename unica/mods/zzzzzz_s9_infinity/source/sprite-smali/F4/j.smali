.class public final LF4/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF4/o;
.implements LF4/n;


# static fields
.field public static final b:LF4/j;

.field public static final c:LF4/j;

.field public static final d:LF4/j;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, LF4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/j;->b:LF4/j;

    new-instance v0, LF4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/j;->c:LF4/j;

    new-instance v0, LF4/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LF4/j;->d:LF4/j;

    return-void
.end method

.method public static synthetic d(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const-string v3, "descriptor"

    aput-object v3, v0, v1

    goto :goto_0

    :cond_0
    const-string v3, "unresolvedSuperClasses"

    aput-object v3, v0, v1

    :goto_0
    const-string v1, "kotlin/reflect/jvm/internal/impl/serialization/deserialization/ErrorReporter$1"

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const-string p0, "reportIncompleteHierarchy"

    aput-object p0, v0, v1

    goto :goto_1

    :cond_1
    const-string p0, "reportCannotInferVisibility"

    aput-object p0, v0, v1

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Ln4/A;)I
    .locals 4

    if-nez p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    sget-object v0, LF4/y;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    :goto_0
    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq p0, v2, :cond_3

    const/4 v3, 0x4

    if-eq p0, v1, :cond_2

    if-eq p0, v3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    move v0, v1

    :cond_4
    :goto_1
    return v0
.end method


# virtual methods
.method public a(LU3/e;Ljava/util/ArrayList;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    invoke-static {p0}, LF4/j;->d(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public b(Ln4/Q;Ljava/lang/String;LJ4/G;LJ4/G;)LJ4/C;
    .locals 0

    const-string p0, "proto"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "flexibleId"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lowerBound"

    invoke-static {p3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "upperBound"

    invoke-static {p4, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "This method should not be used."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public c(LU3/b;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x2

    invoke-static {p0}, LF4/j;->d(I)V

    const/4 p0, 0x0

    throw p0
.end method
