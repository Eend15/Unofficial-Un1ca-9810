.class public final LX3/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LX3/h;->d:I

    iput-object p2, p0, LX3/h;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LX3/h;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LX3/h;->e:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LX3/h;->e:Ljava/lang/Object;

    check-cast p0, LX3/s;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iget-object v1, p0, LX3/s;->e:LX3/t;

    iget-object v1, v1, LX3/t;->l:LI4/i;

    invoke-virtual {v1}, LI4/i;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ls4/f;

    if-eqz v2, :cond_0

    iget-object v3, p0, LX3/s;->b:LI4/e;

    invoke-virtual {v3, v2}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Collection;

    invoke-interface {v0, v3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, LX3/s;->c:LI4/e;

    invoke-virtual {v3, v2}, LI4/e;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v0, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, LX3/s;->h(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    return-object v0

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Scope for type parameter "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, LX3/h;->e:Ljava/lang/Object;

    check-cast p0, LX3/i;

    iget-object v1, p0, LX3/i;->e:Ljava/lang/Object;

    check-cast v1, Ls4/f;

    invoke-virtual {v1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, LX3/i;->f:LX3/q;

    check-cast p0, LX3/k;

    invoke-virtual {p0}, LX3/k;->getUpperBounds()Ljava/util/List;

    move-result-object p0

    invoke-static {v0, p0}, Lw0/f;->o(Ljava/lang/String;Ljava/util/SequencedCollection;)LC4/o;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
