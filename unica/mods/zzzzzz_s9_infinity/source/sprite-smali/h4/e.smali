.class public final Lh4/e;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/f;


# direct methods
.method public synthetic constructor <init>(Lh4/f;I)V
    .locals 0

    iput p2, p0, Lh4/e;->d:I

    iput-object p1, p0, Lh4/e;->e:Lh4/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lh4/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lh4/e;->e:Lh4/f;

    invoke-virtual {p0}, Lh4/f;->a()Ls4/c;

    move-result-object v0

    iget-object v1, p0, Lh4/f;->b:La4/c;

    if-nez v0, :cond_0

    const-string p0, "No fqName: "

    invoke-static {v1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, LJ4/v;->c(Ljava/lang/String;)LJ4/p;

    move-result-object p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lh4/f;->a:Landroidx/recyclerview/widget/b;

    iget-object v2, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v2, Lg4/a;

    iget-object v2, v2, Lg4/a;->o:LX3/D;

    iget-object v2, v2, LX3/D;->g:LR3/j;

    invoke-static {v0, v2}, LT3/e;->b(Ls4/c;LR3/j;)LU3/e;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v2, La4/n;

    iget-object v1, v1, La4/c;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v1}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v1

    invoke-static {v1}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v1}, La4/n;-><init>(Ljava/lang/Class;)V

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object v1, p0, Lg4/a;->k:Landroidx/recyclerview/widget/y;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Landroidx/recyclerview/widget/y;->e:Ljava/lang/Object;

    check-cast v1, LA1/e;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v2}, LA1/e;->U(La4/n;)LU3/e;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-static {v0}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v0

    iget-object v1, p0, Lg4/a;->d:Ll4/c;

    invoke-virtual {v1}, Ll4/c;->c()LF4/i;

    move-result-object v1

    iget-object v1, v1, LF4/i;->l:Lw0/i;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    invoke-static {p0, v0, v1}, LR3/f;->D(LU3/x;Ls4/b;Lw0/i;)LU3/e;

    move-result-object v2

    goto :goto_0

    :cond_1
    const-string p0, "resolver"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0

    :cond_2
    :goto_0
    invoke-interface {v2}, LU3/e;->n()LJ4/G;

    move-result-object p0

    :goto_1
    return-object p0

    :pswitch_0
    iget-object p0, p0, Lh4/e;->e:Lh4/f;

    iget-object p0, p0, Lh4/f;->b:La4/c;

    iget-object p0, p0, La4/c;->a:Ljava/lang/annotation/Annotation;

    invoke-static {p0}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object p0

    invoke-static {p0}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object p0

    invoke-static {p0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lh4/e;->e:Lh4/f;

    iget-object v0, p0, Lh4/f;->b:La4/c;

    invoke-virtual {v0}, La4/c;->d()Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lj4/a;

    move-object v3, v2

    check-cast v3, La4/d;

    iget-object v3, v3, La4/d;->a:Ls4/f;

    if-nez v3, :cond_4

    sget-object v3, Ld4/x;->b:Ls4/f;

    :cond_4
    invoke-virtual {p0, v2}, Lh4/f;->c(Lj4/a;)Lx4/g;

    move-result-object v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_3

    :cond_5
    new-instance v4, Lq3/f;

    invoke-direct {v4, v3, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v2, v4

    :goto_3
    if-eqz v2, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    invoke-static {v1}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
