.class public final Lh4/u;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/w;


# direct methods
.method public synthetic constructor <init>(Lh4/w;I)V
    .locals 0

    .line 1
    iput p2, p0, Lh4/u;->d:I

    iput-object p1, p0, Lh4/u;->e:Lh4/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(Lh4/w;La4/t;Lf4/g;)V
    .locals 0

    const/4 p2, 0x5

    iput p2, p0, Lh4/u;->d:I

    .line 2
    iput-object p1, p0, Lh4/u;->e:Lh4/w;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lh4/u;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lh4/u;->e:Lh4/w;

    iget-object p0, p0, Lh4/w;->b:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->h:Le4/h;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object v0, LC4/f;->q:LC4/f;

    iget-object p0, p0, Lh4/u;->e:Lh4/w;

    invoke-virtual {p0, v0}, Lh4/w;->o(LC4/f;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object v0, LC4/f;->p:LC4/f;

    const/4 v1, 0x0

    iget-object p0, p0, Lh4/u;->e:Lh4/w;

    invoke-virtual {p0, v0, v1}, Lh4/w;->i(LC4/f;LC4/l;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lh4/u;->e:Lh4/w;

    invoke-virtual {p0}, Lh4/w;->k()Lh4/c;

    move-result-object p0

    return-object p0

    :pswitch_3
    sget-object v0, LC4/f;->o:LC4/f;

    const/4 v1, 0x0

    iget-object p0, p0, Lh4/u;->e:Lh4/w;

    invoke-virtual {p0, v0, v1}, Lh4/w;->h(LC4/f;LC4/l;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_4
    sget-object v0, LC4/f;->m:LC4/f;

    sget-object v1, LC4/o;->a:LC4/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LC4/l;->e:LC4/l;

    iget-object p0, p0, Lh4/u;->e:Lh4/w;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v2, "kindFilter"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v2, Lc4/b;->g:Lc4/b;

    new-instance v3, Ljava/util/LinkedHashSet;

    invoke-direct {v3}, Ljava/util/LinkedHashSet;-><init>()V

    sget v4, LC4/f;->l:I

    invoke-virtual {v0, v4}, LC4/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0, v0, v1}, Lh4/w;->h(LC4/f;LC4/l;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ls4/f;

    invoke-virtual {v1, v5}, LC4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v5, v2}, LC4/p;->c(Ls4/f;Lc4/b;)LU3/g;

    move-result-object v5

    invoke-static {v3, v5}, LS4/m;->a(Ljava/util/AbstractCollection;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sget v4, LC4/f;->i:I

    invoke-virtual {v0, v4}, LC4/f;->a(I)Z

    move-result v4

    iget-object v5, v0, LC4/f;->a:Ljava/util/List;

    if-eqz v4, :cond_1

    sget-object v4, LC4/b;->a:LC4/b;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p0, v0, v1}, Lh4/w;->i(LC4/f;LC4/l;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ls4/f;

    invoke-virtual {v1, v6}, LC4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v6, v2}, Lh4/w;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_1
    sget v4, LC4/f;->j:I

    invoke-virtual {v0, v4}, LC4/f;->a(I)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, LC4/b;->a:LC4/b;

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p0, v0}, Lh4/w;->o(LC4/f;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ls4/f;

    invoke-virtual {v1, v4}, LC4/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, v4, v2}, Lh4/w;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    :cond_2
    invoke-static {v3}, Lr3/j;->P0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
