.class public final LJ4/L;
.super LJ4/O;
.source "SourceFile"


# instance fields
.field public final synthetic c:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LJ4/L;->c:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final g(LJ4/M;)LJ4/P;
    .locals 1

    const-string v0, "key"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/L;->c:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-interface {p1}, LJ4/M;->e()LU3/g;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LU3/O;

    invoke-static {p0}, LJ4/Z;->j(LU3/O;)LJ4/K;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method
