.class public final LO3/U;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/V;


# direct methods
.method public synthetic constructor <init>(LO3/V;I)V
    .locals 0

    iput p2, p0, LO3/U;->d:I

    iput-object p1, p0, LO3/U;->e:LO3/V;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LO3/U;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LO3/U;->e:LO3/V;

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object v0

    iget-boolean v0, v0, LX3/L;->t:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, LO3/c0;->e:LO3/l0;

    invoke-virtual {p0}, LO3/l0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Field;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    new-instance v0, LO3/T;

    iget-object p0, p0, LO3/U;->e:LO3/V;

    invoke-direct {v0, p0}, LO3/T;-><init>(LO3/V;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
