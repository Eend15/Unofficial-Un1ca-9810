.class public final LR3/m;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX3/D;


# direct methods
.method public synthetic constructor <init>(LX3/D;I)V
    .locals 0

    iput p2, p0, LR3/m;->d:I

    iput-object p1, p0, LR3/m;->e:LX3/D;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LR3/m;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LR3/m;->e:LX3/D;

    iget-object v0, p0, LX3/D;->j:LX3/C;

    if-eqz v0, :cond_2

    iget-object v0, v0, LX3/C;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX3/D;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LX3/D;

    iget-object v2, v2, LX3/D;->k:LU3/C;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const-string v0, "CompositeProvider@ModuleDescriptor for "

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, LX3/o;

    invoke-direct {v0, p0, v1}, LX3/o;-><init>(Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Dependencies of module "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    iget-object p0, p0, Ls4/f;->d:Ljava/lang/String;

    const-string v1, "name.toString()"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " were not set before querying module content"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_0
    new-instance v0, LT3/h;

    iget-object p0, p0, LR3/m;->e:LX3/D;

    invoke-direct {v0, p0}, LT3/h;-><init>(LX3/D;)V

    return-object v0

    :pswitch_1
    iget-object p0, p0, LR3/m;->e:LX3/D;

    sget-object v0, LR3/p;->h:Ls4/c;

    invoke-virtual {p0, v0}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object p0

    check-cast p0, LX3/z;

    iget-object p0, p0, LX3/z;->j:LC4/k;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
