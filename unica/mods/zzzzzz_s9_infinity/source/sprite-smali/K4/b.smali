.class public final LK4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/util/ArrayDeque;

.field public c:LS4/j;

.field public final d:Z

.field public final e:Z

.field public final f:LK4/f;

.field public final g:LK4/c;


# direct methods
.method public constructor <init>(ZZZLK4/g;LK4/f;LK4/c;I)V
    .locals 0

    and-int/lit8 p3, p7, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p3, p7, 0x8

    if-eqz p3, :cond_1

    sget-object p4, LK4/g;->a:LK4/g;

    :cond_1
    and-int/lit8 p3, p7, 0x10

    if-eqz p3, :cond_2

    sget-object p5, LK4/f;->d:LK4/f;

    :cond_2
    and-int/lit8 p3, p7, 0x20

    if-eqz p3, :cond_3

    sget-object p6, LK4/f;->e:LK4/f;

    :cond_3
    const-string p3, "kotlinTypeRefiner"

    invoke-static {p4, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "kotlinTypePreparator"

    invoke-static {p5, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "typeSystemContext"

    invoke-static {p6, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LK4/b;->d:Z

    iput-boolean p2, p0, LK4/b;->e:Z

    iput-object p5, p0, LK4/b;->f:LK4/f;

    iput-object p6, p0, LK4/b;->g:LK4/c;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, LK4/b;->b:Ljava/util/ArrayDeque;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    iget-object p0, p0, LK4/b;->c:LS4/j;

    invoke-static {p0}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {p0}, LS4/j;->clear()V

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, LK4/b;->b:Ljava/util/ArrayDeque;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayDeque;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, LK4/b;->b:Ljava/util/ArrayDeque;

    :cond_0
    iget-object v0, p0, LK4/b;->c:LS4/j;

    if-nez v0, :cond_1

    new-instance v0, LS4/j;

    invoke-direct {v0}, LS4/j;-><init>()V

    iput-object v0, p0, LK4/b;->c:LS4/j;

    :cond_1
    return-void
.end method

.method public final c(LM4/c;)LJ4/b0;
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, LJ4/C;

    if-eqz v0, :cond_0

    check-cast p1, LJ4/C;

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p1

    iget-object p0, p0, LK4/b;->f:LK4/f;

    invoke-virtual {p0, p1}, LK4/f;->b(LM4/c;)LJ4/b0;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, LK4/h;->b(LM4/c;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(LM4/c;)LJ4/C;
    .locals 0

    const-string p0, "type"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LJ4/C;

    if-eqz p0, :cond_0

    check-cast p1, LJ4/C;

    return-object p1

    :cond_0
    invoke-static {p1}, LK4/h;->b(LM4/c;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
