.class public final LX3/z;
.super LX3/p;
.source "SourceFile"

# interfaces
.implements LU3/G;


# static fields
.field public static final synthetic k:[LL3/l;


# instance fields
.field public final f:LX3/D;

.field public final g:Ls4/c;

.field public final h:LI4/i;

.field public final i:LI4/i;

.field public final j:LC4/k;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LX3/z;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "fragments"

    const-string v5, "getFragments()Ljava/util/List;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v4, "empty"

    const-string v5, "getEmpty()Z"

    invoke-direct {v3, v2, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LX3/z;->k:[LL3/l;

    return-void
.end method

.method public constructor <init>(LX3/D;Ls4/c;LI4/l;)V
    .locals 2

    const-string v0, "module"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LV3/g;->a:LV3/f;

    invoke-virtual {p2}, Ls4/c;->g()Ls4/f;

    move-result-object v1

    invoke-direct {p0, v0, v1}, LX3/p;-><init>(LV3/h;Ls4/f;)V

    iput-object p1, p0, LX3/z;->f:LX3/D;

    iput-object p2, p0, LX3/z;->g:Ls4/c;

    new-instance p1, LX3/y;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LX3/y;-><init>(LX3/z;I)V

    new-instance p2, LI4/i;

    invoke-direct {p2, p3, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p2, p0, LX3/z;->h:LI4/i;

    new-instance p1, LX3/y;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LX3/y;-><init>(LX3/z;I)V

    new-instance p2, LI4/i;

    invoke-direct {p2, p3, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p2, p0, LX3/z;->i:LI4/i;

    new-instance p1, LC4/k;

    new-instance p2, LX3/y;

    const/4 v0, 0x2

    invoke-direct {p2, p0, v0}, LX3/y;-><init>(LX3/z;I)V

    invoke-direct {p1, p3, p2}, LC4/k;-><init>(LI4/o;LE3/a;)V

    iput-object p1, p0, LX3/z;->j:LC4/k;

    return-void
.end method


# virtual methods
.method public final L(LU3/l;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p1, p0, p2}, LU3/l;->h(LX3/z;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, LU3/G;

    if-eqz v0, :cond_0

    check-cast p1, LU3/G;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    :cond_1
    check-cast p1, LX3/z;

    iget-object v1, p0, LX3/z;->g:Ls4/c;

    iget-object v2, p1, LX3/z;->g:Ls4/c;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p0, p0, LX3/z;->f:LX3/D;

    iget-object p1, p1, LX3/z;->f:LX3/D;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public final g()LU3/j;
    .locals 2

    iget-object v0, p0, LX3/z;->g:Ls4/c;

    invoke-virtual {v0}, Ls4/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ls4/c;->e()Ls4/c;

    move-result-object v0

    const-string v1, "fqName.parent()"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LX3/z;->f:LX3/D;

    invoke-virtual {p0, v0}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, LX3/z;->f:LX3/D;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object p0, p0, LX3/z;->g:Ls4/c;

    invoke-virtual {p0}, Ls4/c;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method
