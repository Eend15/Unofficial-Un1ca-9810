.class public Le4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LV3/b;
.implements Lf4/h;


# static fields
.field public static final synthetic e:[LL3/l;


# instance fields
.field public final a:Ls4/c;

.field public final b:LU3/L;

.field public final c:LI4/i;

.field public final d:Lj4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Le4/b;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v3, "type"

    const-string v4, "getType()Lorg/jetbrains/kotlin/types/SimpleType;"

    invoke-direct {v0, v2, v3, v4}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    filled-new-array {v0}, [LL3/l;

    move-result-object v0

    sput-object v0, Le4/b;->e:[LL3/l;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;La4/c;Ls4/c;)V
    .locals 3

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Le4/b;->a:Ls4/c;

    iget-object p3, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p3, Lg4/a;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    iget-object v1, p3, Lg4/a;->j:LZ3/e;

    invoke-virtual {v1, p2}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_1

    sget-object v1, LU3/L;->a:LU3/M;

    :cond_1
    iput-object v1, p0, Le4/b;->b:LU3/L;

    iget-object p3, p3, Lg4/a;->a:LI4/l;

    new-instance v1, LF4/C;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2, p0}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, LI4/i;

    invoke-direct {p1, p3, v1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p1, p0, Le4/b;->c:LI4/i;

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, La4/c;->d()Ljava/util/ArrayList;

    move-result-object p1

    invoke-static {p1}, Lr3/j;->u0(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lj4/a;

    :goto_1
    iput-object v0, p0, Le4/b;->d:Lj4/a;

    return-void
.end method


# virtual methods
.method public final a()Ls4/c;
    .locals 0

    iget-object p0, p0, Le4/b;->a:Ls4/c;

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 0

    sget-object p0, Lr3/s;->d:Lr3/s;

    return-object p0
.end method

.method public final i()LU3/L;
    .locals 0

    iget-object p0, p0, Le4/b;->b:LU3/L;

    return-object p0
.end method

.method public final j()LJ4/C;
    .locals 2

    iget-object p0, p0, Le4/b;->c:LI4/i;

    sget-object v0, Le4/b;->e:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {p0, v0}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LJ4/G;

    return-object p0
.end method
