.class public final Lh4/h;
.super LX3/m;
.source "SourceFile"

# interfaces
.implements Lf4/c;


# instance fields
.field public final j:Landroidx/recyclerview/widget/b;

.field public final k:La4/n;

.field public final l:LU3/e;

.field public final m:Landroidx/recyclerview/widget/b;

.field public final n:Lq3/j;

.field public final o:I

.field public final p:I

.field public final q:LU3/b0;

.field public final r:Z

.field public final s:LH4/i;

.field public final t:Lh4/l;

.field public final u:LU3/K;

.field public final v:LC4/j;

.field public final w:Lh4/z;

.field public final x:Lg4/c;

.field public final y:LI4/i;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v5, "notifyAll"

    const-string v6, "toString"

    const-string v0, "equals"

    const-string v1, "hashCode"

    const-string v2, "getClass"

    const-string v3, "wait"

    const-string v4, "notify"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lr3/h;->v0([Ljava/lang/Object;)Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;LU3/j;La4/n;LU3/e;)V
    .locals 9

    const-string v0, "outerContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "jClass"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, v0, Lg4/a;->a:LI4/l;

    iget-object v2, p3, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v3

    iget-object v0, v0, Lg4/a;->j:LZ3/e;

    invoke-virtual {v0, p3}, LZ3/e;->b(Lj4/c;)LZ3/g;

    move-result-object v0

    invoke-direct {p0, v1, p2, v3, v0}, LX3/m;-><init>(LI4/o;LU3/j;Ls4/f;LU3/L;)V

    iput-object p1, p0, Lh4/h;->j:Landroidx/recyclerview/widget/b;

    iput-object p3, p0, Lh4/h;->k:La4/n;

    iput-object p4, p0, Lh4/h;->l:LU3/e;

    const/4 p2, 0x4

    invoke-static {p1, p0, p3, p2}, Le0/a;->u(Landroidx/recyclerview/widget/b;LU3/f;La4/n;I)Landroidx/recyclerview/widget/b;

    move-result-object p1

    iput-object p1, p0, Lh4/h;->m:Landroidx/recyclerview/widget/b;

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, v0, Lg4/a;->g:Le4/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lh4/g;

    const/4 v3, 0x2

    invoke-direct {v1, p0, v3}, Lh4/g;-><init>(Lh4/h;I)V

    new-instance v3, Lq3/j;

    invoke-direct {v3, v1}, Lq3/j;-><init>(LE3/a;)V

    iput-object v3, p0, Lh4/h;->n:Lq3/j;

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_0

    :cond_2
    move v1, v4

    :goto_0
    iput v1, p0, Lh4/h;->o:I

    invoke-virtual {v2}, Ljava/lang/Class;->isAnnotation()Z

    move-result v1

    const/4 v5, 0x0

    if-nez v1, :cond_7

    invoke-virtual {v2}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p3}, La4/n;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-virtual {v2}, Ljava/lang/Class;->isInterface()Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v1, v4

    :goto_2
    invoke-static {p3}, La4/x;->I(La4/y;)Z

    move-result v6

    if-eqz v1, :cond_6

    goto :goto_4

    :cond_6
    if-nez v6, :cond_7

    move p2, v3

    goto :goto_4

    :cond_7
    :goto_3
    move p2, v4

    :goto_4
    iput p2, p0, Lh4/h;->p:I

    invoke-static {p3}, La4/x;->C(La4/y;)LU3/b0;

    move-result-object p2

    iput-object p2, p0, Lh4/h;->q:LU3/b0;

    invoke-virtual {v2}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    if-nez p2, :cond_8

    const/4 p2, 0x0

    goto :goto_5

    :cond_8
    new-instance v1, La4/n;

    invoke-direct {v1, p2}, La4/n;-><init>(Ljava/lang/Class;)V

    move-object p2, v1

    :goto_5
    if-eqz p2, :cond_9

    invoke-static {p3}, La4/x;->J(La4/y;)Z

    move-result p2

    if-nez p2, :cond_9

    move p2, v4

    goto :goto_6

    :cond_9
    move p2, v5

    :goto_6
    iput-boolean p2, p0, Lh4/h;->r:Z

    new-instance p2, LH4/i;

    invoke-direct {p2, p0}, LH4/i;-><init>(Lh4/h;)V

    iput-object p2, p0, Lh4/h;->s:LH4/i;

    new-instance p2, Lh4/l;

    if-eqz p4, :cond_a

    move v7, v4

    goto :goto_7

    :cond_a
    move v7, v5

    :goto_7
    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p1

    move-object v5, p0

    move-object v6, p3

    invoke-direct/range {v3 .. v8}, Lh4/l;-><init>(Landroidx/recyclerview/widget/b;LU3/e;La4/n;ZLh4/l;)V

    iput-object p2, p0, Lh4/h;->t:Lh4/l;

    sget-object p4, LU3/K;->d:LU3/M;

    iget-object v1, v0, Lg4/a;->a:LI4/l;

    iget-object v0, v0, Lg4/a;->u:LK4/m;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, LF4/a;

    const/16 v2, 0x10

    invoke-direct {v0, v2, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p4, "storageManager"

    invoke-static {v1, p4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p4, LU3/K;

    invoke-direct {p4, p0, v1, v0}, LU3/K;-><init>(LX3/b;LI4/o;LE3/b;)V

    iput-object p4, p0, Lh4/h;->u:LU3/K;

    new-instance p4, LC4/j;

    invoke-direct {p4, p2}, LC4/j;-><init>(LC4/o;)V

    iput-object p4, p0, Lh4/h;->v:LC4/j;

    new-instance p2, Lh4/z;

    invoke-direct {p2, p1, p3, p0}, Lh4/z;-><init>(Landroidx/recyclerview/widget/b;La4/n;Lh4/h;)V

    iput-object p2, p0, Lh4/h;->w:Lh4/z;

    invoke-static {p1, p3}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object p1

    iput-object p1, p0, Lh4/h;->x:Lg4/c;

    new-instance p1, Lh4/g;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lh4/g;-><init>(Lh4/h;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, LI4/i;

    invoke-direct {p2, v1, p1}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object p2, p0, Lh4/h;->y:LI4/i;

    return-void
.end method


# virtual methods
.method public final E()LJ4/M;
    .locals 0

    iget-object p0, p0, Lh4/h;->s:LH4/i;

    return-object p0
.end method

.method public final I()I
    .locals 0

    iget p0, p0, Lh4/h;->o:I

    return p0
.end method

.method public final K()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final P()Ljava/util/Collection;
    .locals 0

    iget-object p0, p0, Lh4/h;->t:Lh4/l;

    iget-object p0, p0, Lh4/l;->q:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final Q()LC4/o;
    .locals 0

    iget-object p0, p0, Lh4/h;->v:LC4/j;

    return-object p0
.end method

.method public final T()LU3/d;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final U()LC4/o;
    .locals 0

    iget-object p0, p0, Lh4/h;->w:Lh4/z;

    return-object p0
.end method

.method public final a0()LC4/o;
    .locals 0

    invoke-super {p0}, LX3/b;->a0()LC4/o;

    move-result-object p0

    check-cast p0, Lh4/l;

    return-object p0
.end method

.method public final b()LU3/n;
    .locals 2

    sget-object v0, LU3/o;->a:LU3/n;

    iget-object v1, p0, Lh4/h;->q:LU3/b0;

    invoke-static {v1, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lh4/h;->k:La4/n;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, La4/n;

    invoke-direct {v0, p0}, La4/n;-><init>(Ljava/lang/Class;)V

    move-object p0, v0

    :goto_0
    if-nez p0, :cond_1

    sget-object p0, Ld4/o;->a:LU3/n;

    const-string v0, "{\n            JavaDescri\u2026KAGE_VISIBILITY\n        }"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-static {v1}, La4/x;->c0(LU3/b0;)LU3/n;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public final c0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final e()I
    .locals 0

    iget p0, p0, Lh4/h;->p:I

    return p0
.end method

.method public final e0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final f()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j(LK4/g;)LC4/o;
    .locals 1

    iget-object p0, p0, Lh4/h;->u:LU3/K;

    iget-object p1, p0, LU3/K;->a:LX3/b;

    invoke-static {p1}, Lz4/e;->j(LU3/j;)LU3/x;

    iget-object p0, p0, LU3/K;->c:LI4/i;

    sget-object p1, LU3/K;->e:[LL3/l;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-static {p0, p1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC4/o;

    check-cast p0, Lh4/l;

    return-object p0
.end method

.method public final m0()Lh4/l;
    .locals 0

    invoke-super {p0}, LX3/b;->a0()LC4/o;

    move-result-object p0

    check-cast p0, Lh4/l;

    return-object p0
.end method

.method public final o()Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lh4/h;->y:LI4/i;

    invoke-virtual {p0}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, Lh4/h;->x:Lg4/c;

    return-object p0
.end method

.method public final s()LU3/t;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final s0()Ljava/util/Collection;
    .locals 4

    iget v0, p0, Lh4/h;->p:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v0}, Li4/d;->b(IZLh4/B;I)Li4/a;

    iget-object p0, p0, Lh4/h;->k:La4/n;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto :goto_0

    :cond_0
    sget-object p0, Lr3/r;->d:Lr3/r;

    :goto_0
    return-object p0
.end method

.method public final t()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lz4/e;->h(LU3/j;)Ls4/e;

    move-result-object p0

    const-string v0, "Lazy Java class "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final v0()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final w()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final y()Z
    .locals 0

    iget-boolean p0, p0, Lh4/h;->r:Z

    return p0
.end method
