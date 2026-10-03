.class public final LR3/k;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LR3/l;


# direct methods
.method public synthetic constructor <init>(LR3/l;I)V
    .locals 0

    iput p2, p0, LR3/k;->d:I

    iput-object p1, p0, LR3/k;->e:LR3/l;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LR3/k;->d:I

    packed-switch v0, :pswitch_data_0

    sget-object v0, LR3/p;->j:Ls4/c;

    iget-object p0, p0, LR3/k;->e:LR3/l;

    iget-object p0, p0, LR3/l;->d:Ls4/f;

    invoke-virtual {v0, p0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object v0, LR3/p;->j:Ls4/c;

    iget-object p0, p0, LR3/k;->e:LR3/l;

    iget-object p0, p0, LR3/l;->e:Ls4/f;

    invoke-virtual {v0, p0}, Ls4/c;->c(Ls4/f;)Ls4/c;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
