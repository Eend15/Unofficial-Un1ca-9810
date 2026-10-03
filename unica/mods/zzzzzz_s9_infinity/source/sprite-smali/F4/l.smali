.class public final LF4/l;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LJ4/C;


# direct methods
.method public synthetic constructor <init>(ILJ4/C;)V
    .locals 0

    iput p1, p0, LF4/l;->d:I

    iput-object p2, p0, LF4/l;->e:LJ4/C;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LF4/l;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LU3/x;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF4/l;->e:LJ4/C;

    return-object p0

    :pswitch_0
    check-cast p1, LU3/x;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF4/l;->e:LJ4/C;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
