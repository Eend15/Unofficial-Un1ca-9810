.class public final LD2/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lo3/a;

.field public final c:Lh3/b;

.field public final d:Lo3/a;

.field public final e:Lo3/a;


# direct methods
.method public constructor <init>(LG4/d;Lo3/a;LB2/b;LC2/c;LB2/b;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, LD2/k;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p2, p0, LD2/k;->b:Lo3/a;

    .line 4
    iput-object p3, p0, LD2/k;->c:Lh3/b;

    .line 5
    iput-object p4, p0, LD2/k;->d:Lo3/a;

    .line 6
    iput-object p5, p0, LD2/k;->e:Lo3/a;

    return-void
.end method

.method public synthetic constructor <init>(Lo3/a;Lh3/b;Lo3/a;Lo3/a;I)V
    .locals 0

    .line 1
    iput p5, p0, LD2/k;->a:I

    iput-object p1, p0, LD2/k;->b:Lo3/a;

    iput-object p2, p0, LD2/k;->c:Lh3/b;

    iput-object p3, p0, LD2/k;->d:Lo3/a;

    iput-object p4, p0, LD2/k;->e:Lo3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, LD2/k;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/k;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    new-instance v3, Lp2/a;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, LD2/k;->c:Lh3/b;

    check-cast v0, LD2/e;

    invoke-virtual {v0}, LD2/e;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ls1/b;

    iget-object v0, p0, LD2/k;->d:Lo3/a;

    check-cast v0, Lh2/d;

    invoke-virtual {v0}, Lh2/d;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Li2/a;

    iget-object p0, p0, LD2/k;->e:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lh2/b;

    new-instance p0, Lp2/d;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lp2/d;-><init>(Landroid/content/Context;Lp2/a;Ls1/b;Li2/a;Lh2/b;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, LD2/k;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/k;->c:Lh3/b;

    check-cast v1, Lh2/d;

    invoke-virtual {v1}, Lh2/d;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Li2/a;

    iget-object v2, p0, LD2/k;->d:Lo3/a;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lh2/b;

    iget-object p0, p0, LD2/k;->e:Lo3/a;

    check-cast p0, LK2/c;

    invoke-virtual {p0}, LK2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LK2/b;

    new-instance v3, Lj2/b;

    invoke-direct {v3, v0, v1, v2, p0}, Lj2/b;-><init>(Landroid/content/Context;Li2/a;Lh2/b;LK2/b;)V

    return-object v3

    :pswitch_1
    iget-object v0, p0, LD2/k;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/k;->c:Lh3/b;

    check-cast v1, LB2/b;

    invoke-virtual {v1}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object v2, p0, LD2/k;->d:Lo3/a;

    check-cast v2, LC2/c;

    invoke-virtual {v2}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC2/b;

    iget-object p0, p0, LD2/k;->e:Lo3/a;

    check-cast p0, LB2/b;

    invoke-virtual {p0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LL2/b;

    const-string v3, "context"

    invoke-static {v0, v3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v3, LK2/f;

    invoke-direct {v3, v0, v1, v2, p0}, LK2/f;-><init>(Landroid/content/Context;LO2/a;LC2/b;LL2/b;)V

    return-object v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
