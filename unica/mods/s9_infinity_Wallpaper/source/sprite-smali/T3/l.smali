.class public final LT3/l;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LT3/n;


# direct methods
.method public synthetic constructor <init>(LT3/n;I)V
    .locals 0

    iput p2, p0, LT3/l;->d:I

    iput-object p1, p0, LT3/l;->e:LT3/n;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget-object v0, p0, LT3/l;->e:LT3/n;

    iget p0, p0, LT3/l;->d:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, v0, LT3/n;->a:LX3/D;

    sget-object v0, LV3/e;->a:Ls4/f;

    const-string v0, "<this>"

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LV3/j;

    sget-object v1, LR3/o;->o:Ls4/c;

    new-instance v2, Lx4/u;

    const-string v3, ""

    invoke-direct {v2, v3}, Lx4/g;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lq3/f;

    sget-object v4, LV3/e;->d:Ls4/f;

    invoke-direct {v3, v4, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v2, Lx4/b;

    sget-object v4, Lr3/r;->d:Lr3/r;

    new-instance v5, LF4/a;

    const/16 v6, 0x8

    invoke-direct {v5, v6, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {v2, v4, v5}, Lx4/b;-><init>(Ljava/util/List;LE3/b;)V

    new-instance v4, Lq3/f;

    sget-object v5, LV3/e;->e:Ls4/f;

    invoke-direct {v4, v5, v2}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v3, v4}, [Lq3/f;

    move-result-object v2

    invoke-static {v2}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, LV3/j;-><init>(LR3/j;Ls4/c;Ljava/util/Map;)V

    new-instance v1, LV3/j;

    sget-object v2, LR3/o;->m:Ls4/c;

    new-instance v3, Lx4/u;

    const-string v4, "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version"

    invoke-direct {v3, v4}, Lx4/g;-><init>(Ljava/lang/Object;)V

    new-instance v4, Lq3/f;

    sget-object v5, LV3/e;->a:Ls4/f;

    invoke-direct {v4, v5, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lx4/a;

    invoke-direct {v3, v0}, Lx4/g;-><init>(Ljava/lang/Object;)V

    new-instance v0, Lq3/f;

    sget-object v5, LV3/e;->b:Ls4/f;

    invoke-direct {v0, v5, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lx4/h;

    sget-object v5, LR3/o;->n:Ls4/c;

    invoke-static {v5}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v5

    const-string v6, "WARNING"

    invoke-static {v6}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    new-instance v5, Lq3/f;

    sget-object v6, LV3/e;->c:Ls4/f;

    invoke-direct {v5, v6, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v4, v0, v5}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v0

    invoke-direct {v1, p0, v2, v0}, LV3/j;-><init>(LR3/j;Ls4/c;Ljava/util/Map;)V

    invoke-static {v1}, Lp4/g;->H(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LV3/g;->a:LV3/f;

    goto :goto_0

    :cond_0
    new-instance v0, LV3/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, LV3/i;-><init>(ILjava/util/List;)V

    move-object p0, v0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, v0, LT3/n;->a:LX3/D;

    iget-object p0, p0, LX3/D;->g:LR3/j;

    invoke-virtual {p0}, LR3/j;->e()LJ4/G;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
