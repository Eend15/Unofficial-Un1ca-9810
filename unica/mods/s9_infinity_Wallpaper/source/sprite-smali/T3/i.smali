.class public final LT3/i;
.super LR3/j;
.source "SourceFile"


# static fields
.field public static final synthetic h:[LL3/l;


# instance fields
.field public f:LR3/m;

.field public final g:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LT3/i;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "customizer"

    const-string v4, "getCustomizer()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltInsCustomizer;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, LT3/i;->h:[LL3/l;

    return-void
.end method

.method public constructor <init>(LI4/l;)V
    .locals 3

    const-string v0, "kind"

    const/4 v1, 0x1

    invoke-static {v1, v0}, LB/a;->t(ILjava/lang/String;)V

    invoke-direct {p0, p1}, LR3/j;-><init>(LI4/l;)V

    new-instance v0, LF4/C;

    const/16 v2, 0x9

    invoke-direct {v0, p0, v2, p1}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    new-instance v2, LI4/i;

    invoke-direct {v2, p1, v0}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v2, p0, LT3/i;->g:LI4/i;

    invoke-static {v1}, Lq/e;->c(I)I

    move-result p1

    if-eq p1, v1, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, LR3/j;->c(Z)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, LR3/j;->c(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final H()LT3/n;
    .locals 2

    sget-object v0, LT3/i;->h:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LT3/i;->g:LI4/i;

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LT3/n;

    return-object p0
.end method

.method public final d()LW3/b;
    .locals 0

    invoke-virtual {p0}, LT3/i;->H()LT3/n;

    move-result-object p0

    return-object p0
.end method

.method public final l()Ljava/lang/Iterable;
    .locals 4

    invoke-super {p0}, LR3/j;->l()Ljava/lang/Iterable;

    move-result-object v0

    new-instance v1, LT3/g;

    iget-object v2, p0, LR3/j;->d:LI4/l;

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object p0

    const-string v3, "builtInsModule"

    invoke-static {p0, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p0}, LT3/g;-><init>(LI4/l;LX3/D;)V

    invoke-static {v0, v1}, Lr3/j;->F0(Ljava/lang/Iterable;Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final o()LW3/d;
    .locals 0

    invoke-virtual {p0}, LT3/i;->H()LT3/n;

    move-result-object p0

    return-object p0
.end method
