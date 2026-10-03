.class public final LD2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:LD2/b;

.field public final c:Lo3/a;

.field public final d:Lh3/b;

.field public final e:LC2/c;


# direct methods
.method public synthetic constructor <init>(LD2/b;Lo3/a;Lh3/b;LC2/c;I)V
    .locals 0

    iput p5, p0, LD2/c;->a:I

    iput-object p1, p0, LD2/c;->b:LD2/b;

    iput-object p2, p0, LD2/c;->c:Lo3/a;

    iput-object p3, p0, LD2/c;->d:Lh3/b;

    iput-object p4, p0, LD2/c;->e:LC2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 4

    iget v0, p0, LD2/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/c;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/c;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object v2, p0, LD2/c;->e:LC2/c;

    invoke-virtual {v2}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC2/b;

    iget-object p0, p0, LD2/c;->b:LD2/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LD2/b;->a()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, LG2/f;

    const/4 v3, 0x3

    invoke-direct {p0, v0, v1, v2, v3}, LG2/f;-><init>(Landroid/content/Context;LO2/a;LC2/b;I)V

    goto :goto_0

    :cond_0
    new-instance p0, LG2/f;

    const/4 v3, 0x2

    invoke-direct {p0, v0, v1, v2, v3}, LG2/f;-><init>(Landroid/content/Context;LO2/a;LC2/b;I)V

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, LD2/c;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/c;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object v2, p0, LD2/c;->e:LC2/c;

    invoke-virtual {v2}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC2/b;

    iget-object p0, p0, LD2/c;->b:LD2/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, LD2/b;->a()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, LG2/f;

    const/4 v3, 0x1

    invoke-direct {p0, v0, v1, v2, v3}, LG2/f;-><init>(Landroid/content/Context;LO2/a;LC2/b;I)V

    goto :goto_1

    :cond_1
    new-instance p0, LG2/f;

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, LG2/f;-><init>(Landroid/content/Context;LO2/a;LC2/b;I)V

    :goto_1
    return-object p0

    :pswitch_1
    iget-object v0, p0, LD2/c;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, LD2/c;->d:Lh3/b;

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LO2/a;

    iget-object v2, p0, LD2/c;->e:LC2/c;

    invoke-virtual {v2}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LC2/b;

    iget-object p0, p0, LD2/c;->b:LD2/b;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v0, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LG2/e;

    invoke-direct {p0, v0, v1, v2}, LG2/a;-><init>(Landroid/content/Context;LO2/a;LC2/b;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
