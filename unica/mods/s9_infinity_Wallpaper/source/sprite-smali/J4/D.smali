.class public final LJ4/D;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LJ4/M;


# direct methods
.method public constructor <init>(LC4/o;LJ4/M;LV3/h;Ljava/util/List;Z)V
    .locals 0

    const/4 p1, 0x1

    iput p1, p0, LJ4/D;->d:I

    .line 1
    iput-object p2, p0, LJ4/D;->e:LJ4/M;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LJ4/M;LV3/h;Ljava/util/List;Z)V
    .locals 0

    const/4 p2, 0x0

    iput p2, p0, LJ4/D;->d:I

    .line 2
    iput-object p1, p0, LJ4/D;->e:LJ4/M;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LJ4/D;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LK4/g;

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/D;->e:LJ4/M;

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    check-cast p1, LK4/g;

    const-string v0, "refiner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LJ4/D;->e:LJ4/M;

    invoke-interface {p0}, LJ4/M;->e()LU3/g;

    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
