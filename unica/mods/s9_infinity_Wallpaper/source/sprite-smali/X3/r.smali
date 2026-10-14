.class public final LX3/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LX3/s;


# direct methods
.method public synthetic constructor <init>(LX3/s;I)V
    .locals 0

    iput p2, p0, LX3/r;->d:I

    iput-object p1, p0, LX3/r;->e:LX3/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LX3/r;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls4/f;

    iget-object p0, p0, LX3/r;->e:LX3/s;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, LX3/s;->i()LC4/o;

    move-result-object v0

    sget-object v1, Lc4/b;->i:Lc4/b;

    invoke-interface {v0, p1, v1}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LX3/s;->j(Ls4/f;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x4

    invoke-static {p0}, LX3/s;->h(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_0
    check-cast p1, Ls4/f;

    iget-object p0, p0, LX3/r;->e:LX3/s;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, LX3/s;->i()LC4/o;

    move-result-object v0

    sget-object v1, Lc4/b;->i:Lc4/b;

    invoke-interface {v0, p1, v1}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, LX3/s;->j(Ls4/f;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 p0, 0x8

    invoke-static {p0}, LX3/s;->h(I)V

    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
