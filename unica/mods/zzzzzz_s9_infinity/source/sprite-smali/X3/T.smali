.class public final LX3/T;
.super LX3/w;
.source "SourceFile"

# interfaces
.implements LX3/S;


# static fields
.field public static final I:LX3/G;


# instance fields
.field public final F:LI4/o;

.field public final G:LH4/v;

.field public H:LU3/d;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LX3/T;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "withDispatchReceiver"

    const-string v4, "getWithDispatchReceiver()Lorg/jetbrains/kotlin/descriptors/impl/TypeAliasConstructorDescriptor;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    new-instance v0, LX3/G;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LX3/T;->I:LX3/G;

    return-void
.end method

.method public constructor <init>(LI4/o;LH4/v;LU3/d;LX3/S;LV3/h;ILU3/L;)V
    .locals 8

    const-string v0, "<init>"

    invoke-static {v0}, Ls4/f;->g(Ljava/lang/String;)Ls4/f;

    move-result-object v7

    move-object v1, p0

    move v2, p6

    move-object v3, p2

    move-object v4, p4

    move-object v5, p7

    move-object v6, p5

    invoke-direct/range {v1 .. v7}, LX3/w;-><init>(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)V

    iput-object p1, p0, LX3/T;->F:LI4/o;

    iput-object p2, p0, LX3/T;->G:LH4/v;

    new-instance p2, LF4/C;

    const/16 p4, 0xc

    invoke-direct {p2, p0, p4, p3}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    check-cast p1, LI4/l;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p4, LI4/h;

    invoke-direct {p4, p1, p2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p3, p0, LX3/T;->H:LU3/d;

    return-void
.end method


# virtual methods
.method public final G0()LU3/k;
    .locals 0

    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LX3/S;

    return-object p0
.end method

.method public final J0(ILU3/j;LU3/s;LU3/L;LV3/h;Ls4/f;)LX3/w;
    .locals 8

    const-string p3, "newOwner"

    invoke-static {p2, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "kind"

    invoke-static {p1, p2}, LB/a;->t(ILjava/lang/String;)V

    const-string p2, "annotations"

    invoke-static {p5, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eq p1, v6, :cond_0

    const/4 p2, 0x4

    :cond_0
    new-instance p1, LX3/T;

    iget-object v3, p0, LX3/T;->H:LU3/d;

    iget-object v1, p0, LX3/T;->F:LI4/o;

    iget-object v2, p0, LX3/T;->G:LH4/v;

    move-object v0, p1

    move-object v4, p0

    move-object v5, p5

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, LX3/T;-><init>(LI4/o;LH4/v;LU3/d;LX3/S;LV3/h;ILU3/L;)V

    return-object p1
.end method

.method public final R0(LJ4/X;)LX3/T;
    .locals 1

    const-string v0, "substitutor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, LX3/w;->l(LJ4/X;)LU3/s;

    move-result-object p1

    if-eqz p1, :cond_1

    check-cast p1, LX3/T;

    iget-object v0, p1, LX3/w;->j:LJ4/C;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-static {v0}, LJ4/X;->d(LJ4/C;)LJ4/X;

    move-result-object v0

    iget-object p0, p0, LX3/T;->H:LU3/d;

    check-cast p0, LX3/l;

    invoke-virtual {p0}, LX3/l;->T0()LU3/d;

    move-result-object p0

    check-cast p0, LX3/l;

    invoke-virtual {p0, v0}, LX3/l;->W0(LJ4/X;)LU3/d;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iput-object p0, p1, LX3/T;->H:LU3/d;

    return-object p1

    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptorImpl"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final V()LU3/e;
    .locals 1

    iget-object p0, p0, LX3/T;->H:LU3/d;

    check-cast p0, LX3/l;

    invoke-virtual {p0}, LX3/l;->V()LU3/e;

    move-result-object p0

    const-string v0, "underlyingConstructorDescriptor.constructedClass"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final a()LU3/a;
    .locals 0

    .line 1
    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LX3/S;

    return-object p0
.end method

.method public final a()LU3/b;
    .locals 0

    .line 2
    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LX3/S;

    return-object p0
.end method

.method public final a()LU3/j;
    .locals 0

    .line 3
    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LX3/S;

    return-object p0
.end method

.method public final a()LU3/s;
    .locals 0

    .line 4
    invoke-super {p0}, LX3/w;->a()LU3/s;

    move-result-object p0

    check-cast p0, LX3/S;

    return-object p0
.end method

.method public final g()LU3/h;
    .locals 0

    .line 1
    iget-object p0, p0, LX3/T;->G:LH4/v;

    return-object p0
.end method

.method public final g()LU3/j;
    .locals 0

    .line 2
    iget-object p0, p0, LX3/T;->G:LH4/v;

    return-object p0
.end method

.method public final k()LJ4/C;
    .locals 0

    iget-object p0, p0, LX3/w;->j:LJ4/C;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/k;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, LX3/T;->R0(LJ4/X;)LX3/T;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic l(LJ4/X;)LU3/s;
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, LX3/T;->R0(LJ4/X;)LX3/T;

    move-result-object p0

    return-object p0
.end method

.method public final x(LU3/e;ILU3/n;)LU3/b;
    .locals 2

    const-string v0, "newOwner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "modality"

    invoke-static {p2, v0}, LB/a;->t(ILjava/lang/String;)V

    const-string v0, "visibility"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kind"

    const/4 v1, 0x2

    invoke-static {v1, v0}, LB/a;->t(ILjava/lang/String;)V

    sget-object v0, LJ4/X;->b:LJ4/X;

    invoke-virtual {p0, v0}, LX3/w;->N0(LJ4/X;)LX3/v;

    move-result-object p0

    iput-object p1, p0, LX3/v;->e:LU3/j;

    iput p2, p0, LX3/v;->f:I

    iput-object p3, p0, LX3/v;->g:LU3/n;

    iput v1, p0, LX3/v;->i:I

    const/4 p1, 0x0

    iput-boolean p1, p0, LX3/v;->o:Z

    iget-object p1, p0, LX3/v;->z:LX3/w;

    invoke-virtual {p1, p0}, LX3/w;->K0(LX3/v;)LX3/w;

    move-result-object p0

    if-eqz p0, :cond_0

    check-cast p0, LX3/S;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.impl.TypeAliasConstructorDescriptor"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
