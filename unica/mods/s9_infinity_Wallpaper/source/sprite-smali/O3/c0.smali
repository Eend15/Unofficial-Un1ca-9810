.class public abstract LO3/c0;
.super LO3/p;
.source "SourceFile"

# interfaces
.implements LL3/l;


# static fields
.field public static final k:Ljava/lang/Object;


# instance fields
.field public final e:LO3/l0;

.field public final f:LO3/k0;

.field public final g:LO3/z;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LO3/c0;->k:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(LO3/z;LX3/L;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p2}, LX3/p;->r()Ls4/f;

    move-result-object v0

    invoke-virtual {v0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v3

    const-string v0, "descriptor.name.asString()"

    invoke-static {v3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-static {p2}, LO3/q0;->b(LX3/L;)LO3/n0;

    move-result-object v0

    invoke-virtual {v0}, LO3/n0;->c()Ljava/lang/String;

    move-result-object v4

    .line 9
    sget-object v6, LF3/b;->d:LF3/b;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    .line 10
    invoke-direct/range {v1 .. v6}, LO3/c0;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;LX3/L;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LO3/z;Ljava/lang/String;Ljava/lang/String;LX3/L;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LO3/p;-><init>()V

    iput-object p1, p0, LO3/c0;->g:LO3/z;

    iput-object p2, p0, LO3/c0;->h:Ljava/lang/String;

    iput-object p3, p0, LO3/c0;->i:Ljava/lang/String;

    iput-object p5, p0, LO3/c0;->j:Ljava/lang/Object;

    .line 2
    new-instance p1, LO3/b0;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, LO3/b0;-><init>(LO3/c0;I)V

    .line 3
    new-instance p2, LO3/l0;

    invoke-direct {p2, p1}, LO3/l0;-><init>(LE3/a;)V

    .line 4
    iput-object p2, p0, LO3/c0;->e:LO3/l0;

    .line 5
    new-instance p1, LO3/b0;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, LO3/b0;-><init>(LO3/c0;I)V

    invoke-static {p4, p1}, LO3/n0;->e(LU3/b;LE3/a;)LO3/k0;

    move-result-object p1

    iput-object p1, p0, LO3/c0;->f:LO3/k0;

    return-void
.end method

.method public constructor <init>(LO3/z;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 7

    const-string v0, "container"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "name"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "signature"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    .line 6
    invoke-direct/range {v1 .. v6}, LO3/c0;-><init>(LO3/z;Ljava/lang/String;Ljava/lang/String;LX3/L;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final c()LP3/f;
    .locals 0

    invoke-virtual {p0}, LO3/c0;->j()LO3/Y;

    move-result-object p0

    invoke-virtual {p0}, LO3/Y;->c()LP3/f;

    move-result-object p0

    return-object p0
.end method

.method public final d()LO3/z;
    .locals 0

    iget-object p0, p0, LO3/c0;->g:LO3/z;

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    sget-object v0, LO3/r0;->a:Ls4/c;

    instance-of v0, p1, LO3/c0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, LO3/c0;

    if-eqz v0, :cond_1

    goto :goto_3

    :cond_1
    instance-of v0, p1, LF3/p;

    if-nez v0, :cond_2

    move-object p1, v1

    :cond_2
    check-cast p1, LF3/p;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, LF3/p;->d()LL3/a;

    move-result-object p1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_1
    instance-of v0, p1, LO3/c0;

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    move-object v1, p1

    :goto_2
    move-object v0, v1

    check-cast v0, LO3/c0;

    :goto_3
    const/4 p1, 0x0

    if-eqz v0, :cond_5

    iget-object v1, p0, LO3/c0;->g:LO3/z;

    iget-object v2, v0, LO3/c0;->g:LO3/z;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LO3/c0;->h:Ljava/lang/String;

    iget-object v2, v0, LO3/c0;->h:Ljava/lang/String;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, LO3/c0;->i:Ljava/lang/String;

    iget-object v2, v0, LO3/c0;->i:Ljava/lang/String;

    invoke-static {v1, v2}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p0, p0, LO3/c0;->j:Ljava/lang/Object;

    iget-object v0, v0, LO3/c0;->j:Ljava/lang/Object;

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p1, 0x1

    :cond_5
    return p1
.end method

.method public final bridge synthetic f()LU3/b;
    .locals 0

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object p0

    return-object p0
.end method

.method public final h()Z
    .locals 1

    sget-object v0, LF3/b;->d:LF3/b;

    iget-object p0, p0, LO3/c0;->j:Ljava/lang/Object;

    invoke-static {p0, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, LO3/c0;->g:LO3/z;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, LO3/c0;->h:Ljava/lang/String;

    invoke-static {v0, v1, v2}, LB/a;->g(IILjava/lang/String;)I

    move-result v0

    iget-object p0, p0, LO3/c0;->i:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final i()LX3/L;
    .locals 1

    iget-object p0, p0, LO3/c0;->f:LO3/k0;

    invoke-virtual {p0}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "_descriptor()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LX3/L;

    return-object p0
.end method

.method public abstract j()LO3/Y;
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LO3/c0;->h:Ljava/lang/String;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LO3/p0;->a:Lu4/g;

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object p0

    invoke-static {p0}, LO3/p0;->c(LX3/L;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
