.class public final Ll4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/util/Set;

.field public static final c:Ljava/util/Set;

.field public static final d:Lr4/f;

.field public static final e:Lr4/f;


# instance fields
.field public a:LF4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lm4/a;->g:Lm4/a;

    invoke-static {v0}, Lp4/g;->T(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ll4/c;->b:Ljava/util/Set;

    sget-object v0, Lm4/a;->h:Lm4/a;

    sget-object v1, Lm4/a;->k:Lm4/a;

    filled-new-array {v0, v1}, [Lm4/a;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ll4/c;->c:Ljava/util/Set;

    new-instance v0, Lr4/f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lr4/f;-><init>([IZ)V

    new-instance v0, Lr4/f;

    const/16 v2, 0xb

    filled-new-array {v1, v1, v2}, [I

    move-result-object v2

    invoke-direct {v0, v2, v3}, Lr4/f;-><init>([IZ)V

    sput-object v0, Ll4/c;->d:Lr4/f;

    new-instance v0, Lr4/f;

    const/16 v2, 0xd

    filled-new-array {v1, v1, v2}, [I

    move-result-object v1

    invoke-direct {v0, v1, v3}, Lr4/f;-><init>([IZ)V

    sput-object v0, Ll4/c;->e:Lr4/f;

    return-void
.end method


# virtual methods
.method public final a(LU3/B;LZ3/c;)LH4/s;
    .locals 12

    const-string v0, "descriptor"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinClass"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, LZ3/c;->b:Lm4/b;

    iget-object v1, v0, Lm4/b;->c:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lm4/b;->d:[Ljava/lang/String;

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lm4/b;->a:Lm4/a;

    sget-object v4, Ll4/c;->c:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-nez v1, :cond_3

    return-object v2

    :cond_3
    iget-object v7, v0, Lm4/b;->b:Lr4/f;

    iget-object v0, v0, Lm4/b;->e:[Ljava/lang/String;

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    :try_start_0
    invoke-static {v1, v0}, Lr4/h;->h([Ljava/lang/String;[Ljava/lang/String;)Lq3/f;

    move-result-object v0
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v3, "Could not read data from "

    invoke-virtual {p2}, LZ3/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object v1

    iget-object v1, v1, LF4/i;->c:LF4/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lr4/f;->c()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    return-object v2

    :cond_5
    iget-object v1, v0, Lq3/f;->d:Ljava/lang/Object;

    move-object v6, v1

    check-cast v6, Lr4/g;

    iget-object v0, v0, Lq3/f;->e:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Ln4/C;

    new-instance v8, Ll4/e;

    invoke-virtual {p0, p2}, Ll4/c;->d(LZ3/c;)LF4/p;

    invoke-virtual {p0, p2}, Ll4/c;->e(LZ3/c;)Z

    invoke-virtual {p0, p2}, Ll4/c;->b(LZ3/c;)I

    move-result v0

    invoke-direct {v8, p2, v5, v6, v0}, Ll4/e;-><init>(LZ3/c;Ln4/C;Lr4/g;I)V

    new-instance p2, LH4/s;

    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object v9

    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "scope for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " in "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ll4/b;->d:Ll4/b;

    move-object v3, p2

    move-object v4, p1

    invoke-direct/range {v3 .. v11}, LH4/s;-><init>(LU3/B;Ln4/C;Lp4/f;Lp4/a;Ll4/e;LF4/i;Ljava/lang/String;LE3/a;)V

    return-object p2

    :cond_6
    throw v0
.end method

.method public final b(LZ3/c;)I
    .locals 1

    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object p0

    iget-object p0, p0, LF4/i;->c:LF4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LZ3/c;->b:Lm4/b;

    iget p0, p0, Lm4/b;->g:I

    and-int/lit8 p1, p0, 0x40

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    and-int/lit8 p1, p0, 0x20

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x2

    goto :goto_2

    :cond_2
    :goto_1
    and-int/lit8 p1, p0, 0x10

    if-eqz p1, :cond_4

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x3

    :cond_4
    :goto_2
    return v0
.end method

.method public final c()LF4/i;
    .locals 0

    iget-object p0, p0, Ll4/c;->a:LF4/i;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "components"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final d(LZ3/c;)LF4/p;
    .locals 3

    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object p0

    iget-object p0, p0, LF4/i;->c:LF4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LZ3/c;->b:Lm4/b;

    iget-object p0, p0, Lm4/b;->b:Lr4/f;

    invoke-virtual {p0}, Lr4/f;->c()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, LF4/p;

    iget-object v0, p1, LZ3/c;->b:Lm4/b;

    iget-object v0, v0, Lm4/b;->b:Lr4/f;

    sget-object v1, Lr4/f;->g:Lr4/f;

    invoke-virtual {p1}, LZ3/c;->a()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {p1}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p1

    invoke-direct {p0, v0, v1, v2, p1}, LF4/p;-><init>(Ljava/lang/Object;Lr4/f;Ljava/lang/String;Ls4/b;)V

    return-object p0
.end method

.method public final e(LZ3/c;)Z
    .locals 1

    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object v0

    iget-object v0, v0, LF4/i;->c:LF4/j;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object p0

    iget-object p0, p0, LF4/i;->c:LF4/j;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p1, LZ3/c;->b:Lm4/b;

    iget p1, p0, Lm4/b;->g:I

    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_0

    iget-object p0, p0, Lm4/b;->b:Lr4/f;

    sget-object p1, Ll4/c;->d:Lr4/f;

    invoke-virtual {p0, p1}, Lp4/a;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f(LZ3/c;)LF4/d;
    .locals 6

    iget-object v0, p1, LZ3/c;->b:Lm4/b;

    iget-object v1, v0, Lm4/b;->c:[Ljava/lang/String;

    if-nez v1, :cond_0

    iget-object v1, v0, Lm4/b;->d:[Ljava/lang/String;

    :cond_0
    const/4 v2, 0x0

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, v0, Lm4/b;->a:Lm4/a;

    sget-object v4, Ll4/c;->b:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    if-nez v1, :cond_3

    return-object v2

    :cond_3
    iget-object v3, v0, Lm4/b;->b:Lr4/f;

    iget-object v0, v0, Lm4/b;->e:[Ljava/lang/String;

    if-nez v0, :cond_4

    return-object v2

    :cond_4
    :try_start_0
    invoke-static {v1, v0}, Lr4/h;->f([Ljava/lang/String;[Ljava/lang/String;)Lq3/f;

    move-result-object v0
    :try_end_0
    .catch Lt4/s; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v4, "Could not read data from "

    invoke-virtual {p1}, LZ3/c;->a()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    invoke-virtual {p0}, Ll4/c;->c()LF4/i;

    move-result-object v1

    iget-object v1, v1, LF4/i;->c:LF4/j;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lr4/f;->c()Z

    move-result v1

    if-nez v1, :cond_6

    move-object v0, v2

    :goto_2
    if-nez v0, :cond_5

    return-object v2

    :cond_5
    iget-object v1, v0, Lq3/f;->d:Ljava/lang/Object;

    check-cast v1, Lr4/g;

    iget-object v0, v0, Lq3/f;->e:Ljava/lang/Object;

    check-cast v0, Ln4/j;

    new-instance v2, Ll4/l;

    invoke-virtual {p0, p1}, Ll4/c;->d(LZ3/c;)LF4/p;

    invoke-virtual {p0, p1}, Ll4/c;->e(LZ3/c;)Z

    invoke-virtual {p0, p1}, Ll4/c;->b(LZ3/c;)I

    move-result p0

    invoke-direct {v2, p1, p0}, Ll4/l;-><init>(LZ3/c;I)V

    new-instance p0, LF4/d;

    invoke-direct {p0, v1, v0, v3, v2}, LF4/d;-><init>(Lp4/f;Ln4/j;Lp4/a;LU3/L;)V

    return-object p0

    :cond_6
    throw v0
.end method
