.class public final LT3/m;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ls4/f;


# direct methods
.method public synthetic constructor <init>(Ls4/f;I)V
    .locals 0

    iput p2, p0, LT3/m;->d:I

    iput-object p1, p0, LT3/m;->e:Ls4/f;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LT3/m;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LC4/o;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc4/b;->h:Lc4/b;

    iget-object p0, p0, LT3/m;->e:Ls4/f;

    invoke-interface {p1, p0, v0}, LC4/o;->d(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LC4/o;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lc4/b;->d:Lc4/b;

    iget-object p0, p0, LT3/m;->e:Ls4/f;

    invoke-interface {p1, p0, v0}, LC4/o;->g(Ls4/f;Lc4/b;)Ljava/util/Collection;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
