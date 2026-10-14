.class public final LB2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Lo3/a;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Lo3/a;I)V
    .locals 0

    .line 1
    iput p3, p0, LB2/c;->a:I

    iput-object p1, p0, LB2/c;->b:Ljava/lang/Object;

    iput-object p2, p0, LB2/c;->c:Lo3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo3/a;LB2/b;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, LB2/c;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LB2/c;->c:Lo3/a;

    .line 4
    iput-object p2, p0, LB2/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(LG4/d;Landroid/content/Context;)LJ2/a;
    .locals 2

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LJ2/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "preference_weather"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "getSharedPreferences(...)"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LJ2/a;->a:Landroid/content/SharedPreferences;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LB2/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast v0, Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lr1/c;

    iget-object p0, p0, LB2/c;->c:Lo3/a;

    check-cast p0, Lh3/b;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls1/c;

    new-instance v1, Ls1/b;

    invoke-direct {v1, v0, p0}, Ls1/b;-><init>(Lr1/c;Ls1/c;)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast v0, Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LB2/c;->c:Lo3/a;

    check-cast p0, Lh2/d;

    invoke-virtual {p0}, Lh2/d;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Li2/b;

    new-instance v1, Lr1/c;

    invoke-direct {v1, v0, p0}, Lr1/c;-><init>(Landroid/content/Context;Li2/b;)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, LB2/c;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast p0, LB2/b;

    invoke-virtual {p0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO2/a;

    new-instance v1, LM2/h;

    invoke-direct {v1, v0, p0}, LM2/h;-><init>(Landroid/content/Context;LO2/a;)V

    return-object v1

    :pswitch_2
    iget-object v0, p0, LB2/c;->c:Lo3/a;

    check-cast v0, LD2/f;

    invoke-virtual {v0}, LD2/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2/a;

    iget-object p0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LE2/b;

    invoke-direct {p0, v0}, LE2/b;-><init>(LX2/a;)V

    return-object p0

    :pswitch_3
    iget-object v0, p0, LB2/c;->c:Lo3/a;

    check-cast v0, LD2/f;

    invoke-virtual {v0}, LD2/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2/a;

    iget-object p0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LE2/b;

    invoke-direct {p0, v0}, LE2/b;-><init>(LX2/a;)V

    return-object p0

    :pswitch_4
    iget-object v0, p0, LB2/c;->c:Lo3/a;

    check-cast v0, LD2/f;

    invoke-virtual {v0}, LD2/f;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LX2/a;

    iget-object p0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, LE2/b;

    invoke-direct {p0, v0}, LE2/b;-><init>(LX2/a;)V

    return-object p0

    :pswitch_5
    iget-object v0, p0, LB2/c;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, LB2/c;->b:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-static {p0, v0}, LB2/c;->a(LG4/d;Landroid/content/Context;)LJ2/a;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
