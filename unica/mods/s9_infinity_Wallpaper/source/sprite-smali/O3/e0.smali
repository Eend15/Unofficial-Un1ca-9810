.class public final LO3/e0;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:LO3/W;

.field public final synthetic e:Z

.field public final synthetic f:LO3/d0;

.field public final synthetic g:LO3/d0;


# direct methods
.method public constructor <init>(LO3/W;ZLO3/d0;LO3/d0;)V
    .locals 0

    iput-object p1, p0, LO3/e0;->d:LO3/W;

    iput-boolean p2, p0, LO3/e0;->e:Z

    iput-object p3, p0, LO3/e0;->f:LO3/d0;

    iput-object p4, p0, LO3/e0;->g:LO3/d0;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/reflect/Field;)LP3/u;
    .locals 7

    const-string v0, "field"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LO3/e0;->d:LO3/W;

    invoke-virtual {v0}, LO3/W;->j()LO3/c0;

    move-result-object v1

    invoke-virtual {v1}, LO3/c0;->i()LX3/L;

    move-result-object v1

    move-object v2, v1

    check-cast v2, LX3/q;

    invoke-virtual {v2}, LX3/q;->g()LU3/j;

    move-result-object v2

    const-string v3, "containingDeclaration"

    invoke-static {v2, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lv4/f;->l(LU3/j;)Z

    move-result v3

    iget-object v4, p0, LO3/e0;->f:LO3/d0;

    iget-boolean v5, p0, LO3/e0;->e:Z

    const/4 v6, 0x1

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v2}, LU3/j;->g()LU3/j;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lv4/f;->n(LU3/j;I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lv4/f;->n(LU3/j;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    instance-of v2, v1, LH4/t;

    if-eqz v2, :cond_2

    check-cast v1, LH4/t;

    iget-object v1, v1, LH4/t;->B:Ln4/G;

    invoke-static {v1}, Lr4/h;->d(Ln4/G;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    :goto_1
    if-eqz v5, :cond_5

    invoke-virtual {v0}, LO3/W;->h()Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, LP3/i;

    invoke-static {v0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, v0, p1}, LP3/i;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    goto/16 :goto_2

    :cond_4
    new-instance p0, LP3/k;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v6, v0}, LP3/k;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto/16 :goto_2

    :cond_5
    invoke-virtual {v0}, LO3/W;->h()Z

    move-result p0

    if-eqz p0, :cond_6

    new-instance p0, LP3/m;

    invoke-virtual {v4}, LO3/d0;->b()Z

    move-result v1

    invoke-static {v0}, LO3/n0;->d(LO3/W;)Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, LP3/m;-><init>(Ljava/lang/reflect/Field;ZLjava/lang/Object;)V

    goto :goto_2

    :cond_6
    new-instance p0, LP3/o;

    invoke-virtual {v4}, LO3/d0;->b()Z

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v6, v1}, LP3/o;-><init>(Ljava/lang/reflect/Field;ZZI)V

    goto :goto_2

    :cond_7
    iget-object p0, p0, LO3/e0;->g:LO3/d0;

    invoke-virtual {p0}, LO3/d0;->b()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_b

    if-eqz v5, :cond_9

    invoke-virtual {v0}, LO3/W;->h()Z

    move-result p0

    if-eqz p0, :cond_8

    new-instance p0, LP3/j;

    invoke-direct {p0, p1, v1}, LP3/l;-><init>(Ljava/lang/reflect/Field;Z)V

    goto :goto_2

    :cond_8
    new-instance p0, LP3/k;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v6, v0}, LP3/k;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto :goto_2

    :cond_9
    invoke-virtual {v0}, LO3/W;->h()Z

    move-result p0

    if-eqz p0, :cond_a

    new-instance p0, LP3/n;

    invoke-virtual {v4}, LO3/d0;->b()Z

    move-result v0

    invoke-direct {p0, p1, v0, v1}, LP3/p;-><init>(Ljava/lang/reflect/Field;ZZ)V

    goto :goto_2

    :cond_a
    new-instance p0, LP3/o;

    invoke-virtual {v4}, LO3/d0;->b()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v6, v1}, LP3/o;-><init>(Ljava/lang/reflect/Field;ZZI)V

    goto :goto_2

    :cond_b
    if-eqz v5, :cond_c

    new-instance p0, LP3/k;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v1, v0}, LP3/k;-><init>(Ljava/lang/reflect/Field;ZI)V

    goto :goto_2

    :cond_c
    new-instance p0, LP3/o;

    invoke-virtual {v4}, LO3/d0;->b()Z

    move-result v0

    const/4 v2, 0x2

    invoke-direct {p0, p1, v0, v1, v2}, LP3/o;-><init>(Ljava/lang/reflect/Field;ZZI)V

    :goto_2
    return-object p0
.end method

.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/reflect/Field;

    invoke-virtual {p0, p1}, LO3/e0;->b(Ljava/lang/reflect/Field;)LP3/u;

    move-result-object p0

    return-object p0
.end method
