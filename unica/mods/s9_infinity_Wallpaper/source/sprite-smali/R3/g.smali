.class public final LR3/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LR3/j;


# direct methods
.method public synthetic constructor <init>(LR3/j;I)V
    .locals 0

    iput p2, p0, LR3/g;->d:I

    iput-object p1, p0, LR3/g;->e:LR3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 13

    iget v0, p0, LR3/g;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, LR3/l;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {}, LR3/l;->values()[LR3/l;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_4

    aget-object v6, v3, v5

    iget-object v7, v6, LR3/l;->d:Ls4/f;

    invoke-virtual {v7}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x2e

    const/4 v9, 0x0

    iget-object v10, p0, LR3/g;->e:LR3/j;

    if-eqz v7, :cond_3

    invoke-virtual {v10, v7}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object v7

    invoke-interface {v7}, LU3/e;->n()LJ4/G;

    move-result-object v7

    const/16 v11, 0x2f

    if-eqz v7, :cond_2

    iget-object v12, v6, LR3/l;->e:Ls4/f;

    invoke-virtual {v12}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1

    invoke-virtual {v10, v12}, LR3/j;->j(Ljava/lang/String;)LU3/e;

    move-result-object v8

    invoke-interface {v8}, LU3/e;->n()LJ4/G;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v0, v6, v8}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v11}, LR3/j;->a(I)V

    throw v9

    :cond_1
    invoke-static {v8}, LR3/j;->a(I)V

    throw v9

    :cond_2
    invoke-static {v11}, LR3/j;->a(I)V

    throw v9

    :cond_3
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v8}, LR3/j;->a(I)V

    throw v9

    :cond_4
    new-instance p0, LR3/i;

    invoke-direct {p0, v0, v1, v2}, LR3/i;-><init>(Ljava/util/EnumMap;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object p0

    :pswitch_0
    iget-object p0, p0, LR3/g;->e:LR3/j;

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object v0

    sget-object v1, LR3/p;->j:Ls4/c;

    invoke-virtual {v0, v1}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object v0

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object v1

    sget-object v2, LR3/p;->l:Ls4/c;

    invoke-virtual {v1, v2}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object v1

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object v2

    sget-object v3, LR3/p;->m:Ls4/c;

    invoke-virtual {v2, v3}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object v2

    invoke-virtual {p0}, LR3/j;->k()LX3/D;

    move-result-object p0

    sget-object v3, LR3/p;->k:Ls4/c;

    invoke-virtual {p0, v3}, LX3/D;->v(Ls4/c;)LU3/G;

    move-result-object p0

    filled-new-array {v0, v1, v2, p0}, [LU3/G;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
