.class public final LO3/Z;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LO3/a0;


# direct methods
.method public synthetic constructor <init>(LO3/a0;I)V
    .locals 0

    iput p2, p0, LO3/Z;->d:I

    iput-object p1, p0, LO3/Z;->e:LO3/a0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LO3/Z;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LO3/Z;->e:LO3/a0;

    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object v0

    invoke-virtual {v0}, LO3/c0;->i()LX3/L;

    move-result-object v0

    iget-object v0, v0, LX3/L;->y:LX3/N;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LO3/W;->j()LO3/c0;

    move-result-object p0

    invoke-virtual {p0}, LO3/c0;->i()LX3/L;

    move-result-object p0

    sget-object v0, LV3/g;->a:LV3/f;

    invoke-static {v0, p0}, Lv4/p;->f(LV3/h;LX3/L;)LX3/N;

    move-result-object v0

    :goto_0
    return-object v0

    :pswitch_0
    iget-object p0, p0, LO3/Z;->e:LO3/a0;

    const/4 v0, 0x0

    invoke-static {p0, v0}, LO3/n0;->a(LO3/W;Z)LP3/f;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
