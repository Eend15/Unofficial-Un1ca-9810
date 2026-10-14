.class public final LO3/I;
.super LO3/w;
.source "SourceFile"


# static fields
.field public static final synthetic i:[LL3/l;


# instance fields
.field public final d:LO3/k0;

.field public final e:LO3/k0;

.field public final f:LO3/l0;

.field public final g:LO3/l0;

.field public final synthetic h:LO3/K;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/I;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "kotlinClass"

    const-string v5, "getKotlinClass()Lorg/jetbrains/kotlin/descriptors/runtime/components/ReflectKotlinClass;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v4

    const-string v5, "scope"

    const-string v6, "getScope()Lorg/jetbrains/kotlin/resolve/scopes/MemberScope;"

    invoke-direct {v3, v4, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v3

    new-instance v4, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v5

    const-string v6, "multifileFacade"

    const-string v7, "getMultifileFacade()Ljava/lang/Class;"

    invoke-direct {v4, v5, v6, v7}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v4

    new-instance v5, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v6

    const-string v7, "metadata"

    const-string v8, "getMetadata()Lkotlin/Triple;"

    invoke-direct {v5, v6, v7, v8}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v5}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v5

    new-instance v6, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v7, "members"

    const-string v8, "getMembers()Ljava/util/Collection;"

    invoke-direct {v6, v2, v7, v8}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v6}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v3, v4, v5, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/I;->i:[LL3/l;

    return-void
.end method

.method public constructor <init>(LO3/K;)V
    .locals 2

    iput-object p1, p0, LO3/I;->h:LO3/K;

    invoke-direct {p0, p1}, LO3/w;-><init>(LO3/z;)V

    new-instance p1, LO3/H;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, LO3/H;-><init>(LO3/I;I)V

    const/4 v0, 0x0

    invoke-static {v0, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    iput-object p1, p0, LO3/I;->d:LO3/k0;

    new-instance p1, LO3/H;

    const/4 v1, 0x4

    invoke-direct {p1, p0, v1}, LO3/H;-><init>(LO3/I;I)V

    invoke-static {v0, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    iput-object p1, p0, LO3/I;->e:LO3/k0;

    new-instance p1, LO3/H;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v1}, LO3/H;-><init>(LO3/I;I)V

    new-instance v1, LO3/l0;

    invoke-direct {v1, p1}, LO3/l0;-><init>(LE3/a;)V

    iput-object v1, p0, LO3/I;->f:LO3/l0;

    new-instance p1, LO3/H;

    const/4 v1, 0x2

    invoke-direct {p1, p0, v1}, LO3/H;-><init>(LO3/I;I)V

    new-instance v1, LO3/l0;

    invoke-direct {v1, p1}, LO3/l0;-><init>(LE3/a;)V

    iput-object v1, p0, LO3/I;->g:LO3/l0;

    new-instance p1, LO3/H;

    const/4 v1, 0x1

    invoke-direct {p1, p0, v1}, LO3/H;-><init>(LO3/I;I)V

    invoke-static {v0, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    return-void
.end method
