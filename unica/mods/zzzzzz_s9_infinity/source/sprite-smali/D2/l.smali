.class public final LD2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lo3/a;

.field public final c:LB2/b;

.field public final d:LC2/c;


# direct methods
.method public synthetic constructor <init>(LG4/d;Lo3/a;LB2/b;LC2/c;I)V
    .locals 0

    iput p5, p0, LD2/l;->a:I

    iput-object p2, p0, LD2/l;->b:Lo3/a;

    iput-object p3, p0, LD2/l;->c:LB2/b;

    iput-object p4, p0, LD2/l;->d:LC2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LD2/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/l;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/l;->c:LB2/b;

    invoke-virtual {v1}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object p0, p0, LD2/l;->d:LC2/c;

    invoke-virtual {p0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM2/f;

    const-string v2, "context"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LL2/a;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v1, p0, v3}, LL2/a;-><init>(Landroid/content/Context;LO2/a;LM2/f;I)V

    return-object v2

    :pswitch_0
    iget-object v0, p0, LD2/l;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/l;->c:LB2/b;

    invoke-virtual {v1}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object p0, p0, LD2/l;->d:LC2/c;

    invoke-virtual {p0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM2/f;

    const-string v2, "context"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LL2/a;

    const/4 v3, 0x1

    invoke-direct {v2, v0, v1, p0, v3}, LL2/a;-><init>(Landroid/content/Context;LO2/a;LM2/f;I)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, LD2/l;->b:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/l;->c:LB2/b;

    invoke-virtual {v1}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object p0, p0, LD2/l;->d:LC2/c;

    invoke-virtual {p0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LM2/f;

    const-string v2, "context"

    invoke-static {v0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, LL2/a;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v1, p0, v3}, LL2/a;-><init>(Landroid/content/Context;LO2/a;LM2/f;I)V

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
