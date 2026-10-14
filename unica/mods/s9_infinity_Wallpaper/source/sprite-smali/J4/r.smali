.class public final LJ4/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LJ4/M;


# instance fields
.field public final synthetic a:LJ4/s;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(LJ4/s;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/r;->a:LJ4/s;

    iput-object p2, p0, LJ4/r;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()LR3/j;
    .locals 2

    sget-object p0, LR3/e;->f:LR3/e;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    new-array p0, p0, [Ljava/lang/Object;

    const/4 v0, 0x0

    const-string v1, "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2"

    aput-object v1, p0, v0

    const-string v0, "getBuiltIns"

    const/4 v1, 0x1

    aput-object v0, p0, v1

    const-string v0, "@NotNull method %s.%s must not return null"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()LU3/g;
    .locals 0

    iget-object p0, p0, LJ4/r;->a:LJ4/s;

    return-object p0
.end method

.method public final f()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final g()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LJ4/r;->b:Ljava/lang/String;

    return-object p0
.end method
