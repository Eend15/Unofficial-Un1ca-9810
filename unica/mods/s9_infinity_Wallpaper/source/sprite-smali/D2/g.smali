.class public final LD2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:LU0/e;

.field public final c:Lo3/a;

.field public final d:Lh3/b;

.field public final e:Lh3/b;


# direct methods
.method public synthetic constructor <init>(LU0/e;Lo3/a;Lh3/b;Lh3/b;I)V
    .locals 0

    iput p5, p0, LD2/g;->a:I

    iput-object p1, p0, LD2/g;->b:LU0/e;

    iput-object p2, p0, LD2/g;->c:Lo3/a;

    iput-object p3, p0, LD2/g;->d:Lh3/b;

    iput-object p4, p0, LD2/g;->e:Lh3/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LD2/g;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/g;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/g;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, LD2/g;->e:Lh3/b;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO2/a;

    iget-object p0, p0, LD2/g;->b:LU0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "handler"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LI2/e;

    invoke-direct {p0, v0, v1, v2}, LI2/e;-><init>(Landroid/content/Context;Landroid/os/Handler;LO2/a;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, LD2/g;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/g;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    iget-object v2, p0, LD2/g;->e:Lh3/b;

    invoke-interface {v2}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LO2/a;

    iget-object p0, p0, LD2/g;->b:LU0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "handler"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LI2/b;

    invoke-direct {p0, v0, v1, v2}, LI2/b;-><init>(Landroid/content/Context;Landroid/os/Handler;LO2/a;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
