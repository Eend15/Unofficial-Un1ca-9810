.class public final LU3/D;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ls4/c;


# direct methods
.method public synthetic constructor <init>(Ls4/c;I)V
    .locals 0

    iput p2, p0, LU3/D;->d:I

    iput-object p1, p0, LU3/D;->e:Ls4/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LU3/D;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LV3/h;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LU3/D;->e:Ls4/c;

    invoke-interface {p1, p0}, LV3/h;->a(Ls4/c;)LV3/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ls4/c;

    const-string v0, "it"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ls4/c;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ls4/c;->e()Ls4/c;

    move-result-object p1

    iget-object p0, p0, LU3/D;->e:Ls4/c;

    invoke-static {p1, p0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
