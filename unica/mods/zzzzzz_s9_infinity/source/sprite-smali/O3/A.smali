.class public final LO3/A;
.super LO3/p;
.source "SourceFile"

# interfaces
.implements LF3/g;
.implements LL3/e;
.implements LO3/b;


# static fields
.field public static final synthetic j:[LL3/l;


# instance fields
.field public final e:LO3/k0;

.field public final f:LO3/l0;

.field public final g:LO3/z;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, LO3/A;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "descriptor"

    const-string v5, "getDescriptor()Lorg/jetbrains/kotlin/descriptors/FunctionDescriptor;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v4

    const-string v5, "caller"

    const-string v6, "getCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v3, v4, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v3

    new-instance v4, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v5, "defaultCaller"

    const-string v6, "getDefaultCaller()Lkotlin/reflect/jvm/internal/calls/Caller;"

    invoke-direct {v4, v2, v5, v6}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v3, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, LO3/A;->j:[LL3/l;

    return-void
.end method

.method public constructor <init>(LO3/z;LU3/s;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    move-object v0, p2

    check-cast v0, LX3/p;

    invoke-virtual {v0}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p2}, LO3/q0;->c(LU3/s;)LO3/n0;

    move-result-object v0

    invoke-virtual {v0}, LO3/n0;->c()Ljava/lang/String;

    move-result-object v4

    .line 8
    sget-object v6, LF3/b;->d:LF3/b;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, LO3/A;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;LU3/s;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LO3/z;Ljava/lang/String;Ljava/lang/String;LU3/s;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LO3/p;-><init>()V

    iput-object p1, p0, LO3/A;->g:LO3/z;

    iput-object p3, p0, LO3/A;->h:Ljava/lang/String;

    iput-object p5, p0, LO3/A;->i:Ljava/lang/Object;

    .line 2
    new-instance p1, LF4/C;

    const/4 p3, 0x5

    invoke-direct {p1, p0, p3, p2}, LF4/C;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    invoke-static {p4, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    iput-object p1, p0, LO3/A;->e:LO3/k0;

    .line 3
    new-instance p1, LC4/g;

    const/16 p2, 0xf

    invoke-direct {p1, p2, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    .line 4
    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    .line 5
    iput-object p2, p0, LO3/A;->f:LO3/l0;

    return-void
.end method


# virtual methods
.method public final a(LJ4/C;Ljava/lang/Object;Ll4/o;)Ljava/lang/Object;
    .locals 0

    filled-new-array {p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final c()LP3/f;
    .locals 2

    sget-object v0, LO3/A;->j:[LL3/l;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/A;->f:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LP3/f;

    return-object p0
.end method

.method public final d()LO3/z;
    .locals 0

    iget-object p0, p0, LO3/A;->g:LO3/z;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    invoke-static {p1}, LO3/r0;->a(Ljava/lang/Object;)LO3/A;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p0, LO3/A;->g:LO3/z;

    iget-object v2, p1, LO3/A;->g:LO3/z;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, LO3/A;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, LO3/A;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LO3/A;->h:Ljava/lang/String;

    iget-object v2, p1, LO3/A;->h:Ljava/lang/String;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, LO3/A;->i:Ljava/lang/Object;

    iget-object p1, p1, LO3/A;->i:Ljava/lang/Object;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public final bridge synthetic f()LU3/b;
    .locals 0

    invoke-virtual {p0}, LO3/A;->i()LU3/s;

    move-result-object p0

    return-object p0
.end method

.method public final getArity()I
    .locals 0

    invoke-virtual {p0}, LO3/A;->c()LP3/f;

    move-result-object p0

    invoke-static {p0}, LK/I;->u(LP3/f;)I

    move-result p0

    return p0
.end method

.method public final h()Z
    .locals 1

    sget-object v0, LF3/b;->d:LF3/b;

    iget-object p0, p0, LO3/A;->i:Ljava/lang/Object;

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, LO3/A;->g:LO3/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, LO3/A;->r()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, LO3/A;->h:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final i()LU3/s;
    .locals 2

    sget-object v0, LO3/A;->j:[LL3/l;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object p0, p0, LO3/A;->e:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LU3/s;

    return-object p0
.end method

.method public final invoke()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    .line 1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 2
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 3
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, LO3/p;->b([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final r()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, LO3/A;->i()LU3/s;

    move-result-object p0

    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v0, "descriptor.name.asString()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LO3/p0;->a:Lu4/g;

    invoke-virtual {p0}, LO3/A;->i()LU3/s;

    move-result-object p0

    invoke-static {p0}, LO3/p0;->b(LU3/s;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
