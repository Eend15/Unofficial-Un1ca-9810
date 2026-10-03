.class public final LX3/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/lang/Object;

.field public final synthetic f:LX3/q;


# direct methods
.method public synthetic constructor <init>(LX3/q;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, LX3/i;->d:I

    iput-object p1, p0, LX3/i;->f:LX3/q;

    iput-object p2, p0, LX3/i;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    iget v0, p0, LX3/i;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LS4/g;

    invoke-direct {v0}, LS4/g;-><init>()V

    iget-object v1, p0, LX3/i;->f:LX3/q;

    check-cast v1, LX3/w;

    invoke-virtual {v1}, LX3/w;->m()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LU3/s;

    iget-object v3, p0, LX3/i;->e:Ljava/lang/Object;

    check-cast v3, LJ4/X;

    invoke-interface {v2, v3}, LU3/s;->l(LJ4/X;)LU3/s;

    move-result-object v2

    invoke-virtual {v0, v2}, LS4/g;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0

    :pswitch_0
    sget-object v0, LV3/g;->a:LV3/f;

    iget-object v1, p0, LX3/i;->f:LX3/q;

    check-cast v1, LX3/k;

    invoke-virtual {v1}, LX3/k;->E()LJ4/M;

    move-result-object v1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v3, LC4/k;

    new-instance v4, LX3/h;

    const/4 v5, 0x0

    invoke-direct {v4, v5, p0}, LX3/h;-><init>(ILjava/lang/Object;)V

    sget-object p0, LI4/l;->e:LI4/b;

    const-string v5, "NO_LOCKS"

    invoke-static {p0, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v3, p0, v4}, LC4/k;-><init>(LI4/o;LE3/a;)V

    const/4 p0, 0x0

    invoke-static {v3, v1, v0, v2, p0}, LJ4/d;->q(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)LJ4/G;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
