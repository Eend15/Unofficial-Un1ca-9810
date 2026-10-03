.class public final Lh4/j;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lh4/l;


# direct methods
.method public synthetic constructor <init>(Lh4/l;I)V
    .locals 0

    iput p2, p0, Lh4/j;->d:I

    iput-object p1, p0, Lh4/j;->e:Lh4/l;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lh4/j;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls4/f;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh4/j;->e:Lh4/l;

    invoke-static {p0, p1}, Lh4/l;->w(Lh4/l;Ls4/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ls4/f;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lh4/j;->e:Lh4/l;

    invoke-static {p0, p1}, Lh4/l;->v(Lh4/l;Ls4/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
