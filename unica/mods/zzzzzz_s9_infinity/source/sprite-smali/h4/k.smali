.class public final Lh4/k;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/l;


# direct methods
.method public synthetic constructor <init>(Lh4/l;I)V
    .locals 0

    iput p2, p0, Lh4/k;->d:I

    iput-object p1, p0, Lh4/k;->e:Lh4/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lh4/k;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lh4/k;->e:Lh4/l;

    invoke-virtual {p0}, Lh4/w;->a()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lh4/w;->b()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lh4/k;->e:Lh4/l;

    iget-object p0, p0, Lh4/l;->o:La4/n;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredClasses()[Ljava/lang/Class;

    move-result-object p0

    const-string v0, "klass.declaredClasses"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object p0

    sget-object v0, La4/a;->g:La4/a;

    new-instance v1, LU4/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    sget-object p0, La4/a;->h:La4/a;

    invoke-static {v1, p0}, LU4/j;->g0(LU4/i;LE3/b;)LU4/f;

    move-result-object p0

    invoke-static {p0}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lr3/j;->S0(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lh4/k;->e:Lh4/l;

    iget-object p0, p0, Lh4/l;->o:La4/n;

    invoke-virtual {p0}, La4/n;->d()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, La4/t;

    iget-object v2, v2, La4/t;->a:Ljava/lang/reflect/Field;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->isEnumConstant()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-static {p0}, Lr3/v;->d0(I)I

    move-result p0

    const/16 v1, 0x10

    if-ge p0, v1, :cond_2

    move p0, v1

    :cond_2
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1, p0}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, La4/t;

    invoke-virtual {v2}, La4/v;->e()Ls4/f;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
