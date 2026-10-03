.class public final Lh4/m;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/n;


# direct methods
.method public synthetic constructor <init>(Lh4/n;I)V
    .locals 0

    iput p2, p0, Lh4/m;->d:I

    iput-object p1, p0, Lh4/m;->e:Lh4/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, Lh4/m;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lh4/m;->e:Lh4/n;

    iget-object p0, p0, Lh4/n;->j:La4/z;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, Lr3/r;->d:Lr3/r;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    :pswitch_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p0, Lh4/m;->e:Lh4/n;

    iget-object p0, p0, Lh4/n;->l:LI4/i;

    sget-object v1, Lh4/n;->p:[LL3/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p0, v1}, Lw0/f;->C(LI4/m;LL3/l;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LZ3/c;

    invoke-static {v2}, LA4/b;->c(Ljava/lang/String;)LA4/b;

    move-result-object v2

    iget-object v1, v1, LZ3/c;->b:Lm4/b;

    iget-object v3, v1, Lm4/b;->a:Lm4/a;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_3

    const/4 v5, 0x5

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    sget-object v4, Lm4/a;->k:Lm4/a;

    if-ne v3, v4, :cond_1

    iget-object v1, v1, Lm4/b;->f:Ljava/lang/String;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v1}, LA4/b;->c(Ljava/lang/String;)LA4/b;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    return-object v0

    :pswitch_1
    iget-object p0, p0, Lh4/m;->e:Lh4/n;

    iget-object v0, p0, Lh4/n;->k:Landroidx/recyclerview/widget/b;

    iget-object v0, v0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object p0, p0, LX3/F;->h:Ls4/c;

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    iget-object p0, v0, Lg4/a;->l:Ll4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Lr3/v;->h0(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
