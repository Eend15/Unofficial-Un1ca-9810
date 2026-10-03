.class public final LB2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Lo3/a;

.field public final d:Lh3/b;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;LB2/b;LC2/c;Lh3/b;I)V
    .locals 0

    .line 1
    iput p5, p0, LB2/b;->a:I

    iput-object p2, p0, LB2/b;->b:Ljava/lang/Object;

    iput-object p3, p0, LB2/b;->c:Lo3/a;

    iput-object p4, p0, LB2/b;->d:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lo3/a;Lh3/b;I)V
    .locals 0

    .line 2
    iput p4, p0, LB2/b;->a:I

    iput-object p1, p0, LB2/b;->b:Ljava/lang/Object;

    iput-object p2, p0, LB2/b;->c:Lo3/a;

    iput-object p3, p0, LB2/b;->d:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(LG4/d;Landroid/content/Context;LT2/a;)LO2/b;
    .locals 3

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "preferenceUtils"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LO2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LU0/e;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, LU0/e;-><init>(I)V

    iput-object v0, p0, LO2/a;->a:LU0/e;

    new-instance v0, LG4/d;

    const/16 v1, 0x8

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LG4/d;-><init>(IZ)V

    iput-object v0, p0, LO2/a;->b:LG4/d;

    new-instance v0, LU0/e;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, LU0/e;-><init>(I)V

    iput-object v0, p0, LO2/a;->c:LU0/e;

    new-instance v0, LQ2/a;

    invoke-direct {v0, p1}, LQ2/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LO2/a;->d:LQ2/a;

    new-instance v0, LT2/b;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, LT2/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LO2/a;->e:LT2/b;

    new-instance v0, LT2/b;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, LT2/b;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, LO2/a;->f:LT2/b;

    new-instance p1, LS2/b;

    invoke-virtual {p0}, LO2/a;->d()LU0/e;

    move-result-object v0

    invoke-direct {p1, v0, p2}, LS2/b;-><init>(LU0/e;LT2/a;)V

    iput-object p1, p0, LO2/a;->g:LS2/b;

    return-object p0
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LB2/b;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, Lh2/d;

    invoke-virtual {v1}, Lh2/d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lr1/a;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LB2/c;

    invoke-virtual {p0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lr1/c;

    new-instance v2, Ls1/c;

    invoke-direct {v2, v0, v1, p0}, Ls1/c;-><init>(Landroid/content/Context;Lr1/a;Lr1/c;)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LB2/b;

    invoke-virtual {v1}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LF2/g;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LD2/g;

    invoke-virtual {p0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LI2/f;

    new-instance v2, LM2/e;

    invoke-direct {v2, v0, v1, p0}, LM2/e;-><init>(LO2/a;LF2/g;LI2/f;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LD2/l;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v0

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LD2/l;

    invoke-static {v1}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v1

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LD2/l;

    invoke-static {p0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object p0

    new-instance v2, LL2/b;

    invoke-direct {v2, v0, v1, p0}, LL2/b;-><init>(Lh3/a;Lh3/a;Lh3/a;)V

    return-object v2

    :pswitch_2
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LD2/c;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v0

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LD2/c;

    invoke-static {v1}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v1

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LD2/c;

    invoke-static {p0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object p0

    new-instance v2, LG2/b;

    invoke-direct {v2, v0, v1, p0}, LG2/b;-><init>(Lh3/a;Lh3/a;Lh3/a;)V

    return-object v2

    :pswitch_3
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v0

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LB2/b;

    invoke-static {v1}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v1

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LB2/b;

    invoke-static {p0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object p0

    new-instance v2, LF2/g;

    invoke-direct {v2, v0, v1, p0}, LF2/g;-><init>(Lh3/a;Lh3/a;Lh3/a;)V

    return-object v2

    :pswitch_4
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LD2/d;

    invoke-static {v0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v0

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LD2/d;

    invoke-static {v1}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object v1

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LD2/d;

    invoke-static {p0}, Lh3/a;->b(Lo3/a;)Lh3/a;

    move-result-object p0

    new-instance v2, LF2/d;

    invoke-direct {v2, v0, v1, p0}, LF2/d;-><init>(Lh3/a;Lh3/a;Lh3/a;)V

    return-object v2

    :pswitch_5
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LC2/c;

    invoke-virtual {v1}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC2/b;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LD2/e;

    invoke-virtual {p0}, LD2/e;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF2/h;

    new-instance v2, LK2/e;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, p0, v3}, LK2/e;-><init>(LO2/a;LC2/b;Ljava/lang/Object;I)V

    return-object v2

    :pswitch_6
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LC2/c;

    invoke-virtual {v1}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC2/b;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LB2/b;

    invoke-virtual {p0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LL2/b;

    new-instance v2, LK2/e;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p0, v3}, LK2/e;-><init>(LO2/a;LC2/b;Ljava/lang/Object;I)V

    return-object v2

    :pswitch_7
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LC2/c;

    invoke-virtual {v1}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC2/b;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LB2/c;

    invoke-virtual {p0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE2/b;

    new-instance v2, LF2/f;

    invoke-direct {v2, v0, v1, p0}, LF2/f;-><init>(LO2/a;LC2/b;LE2/b;)V

    return-object v2

    :pswitch_8
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LC2/c;

    invoke-virtual {v1}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC2/b;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LB2/c;

    invoke-virtual {p0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE2/b;

    new-instance v2, LF2/f;

    invoke-direct {v2, v0, v1, p0}, LF2/f;-><init>(LO2/a;LC2/b;LE2/b;)V

    return-object v2

    :pswitch_9
    iget-object v0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object v1, p0, LB2/b;->c:Lo3/a;

    check-cast v1, LC2/c;

    invoke-virtual {v1}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LC2/b;

    iget-object p0, p0, LB2/b;->d:Lh3/b;

    check-cast p0, LB2/c;

    invoke-virtual {p0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LE2/b;

    new-instance v2, LF2/f;

    invoke-direct {v2, v0, v1, p0}, LF2/f;-><init>(LO2/a;LC2/b;LE2/b;)V

    return-object v2

    :pswitch_a
    iget-object v0, p0, LB2/b;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LB2/b;->d:Lh3/b;

    check-cast v1, LB2/c;

    invoke-virtual {v1}, LB2/c;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LT2/a;

    iget-object p0, p0, LB2/b;->b:Ljava/lang/Object;

    check-cast p0, LG4/d;

    invoke-static {p0, v0, v1}, LB2/b;->a(LG4/d;Landroid/content/Context;LT2/a;)LO2/b;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
