.class public final synthetic LK4/u;
.super LF3/h;
.source "SourceFile"

# interfaces
.implements LE3/c;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LK4/u;->l:I

    invoke-direct {p0, p1, p3}, LF3/h;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()LL3/d;
    .locals 1

    iget p0, p0, LK4/u;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, LK4/m;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, LK4/v;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget p0, p0, LK4/u;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "equalTypes(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object p0

    :pswitch_0
    const-string p0, "isStrictSupertype(Lorg/jetbrains/kotlin/types/KotlinType;Lorg/jetbrains/kotlin/types/KotlinType;)Z"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, LK4/u;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, LJ4/C;

    check-cast p2, LJ4/C;

    const-string v0, "p0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    check-cast p0, LK4/m;

    invoke-virtual {p0, p1, p2}, LK4/m;->a(LJ4/C;LJ4/C;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LJ4/C;

    check-cast p2, LJ4/C;

    const-string v0, "p0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "p1"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    check-cast p0, LK4/v;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LK4/l;->b:LK4/k;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object p0, LK4/k;->b:LK4/m;

    invoke-virtual {p0, p1, p2}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2, p1}, LK4/m;->c(LJ4/C;LJ4/C;)Z

    move-result p0

    if-nez p0, :cond_0

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

.method public final r()Ljava/lang/String;
    .locals 0

    iget p0, p0, LK4/u;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "equalTypes"

    return-object p0

    :pswitch_0
    const-string p0, "isStrictSupertype"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
