.class public final LD2/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;

.field public final c:Lo3/a;

.field public final d:Lh3/b;

.field public final e:LC2/c;

.field public final f:LD2/g;

.field public final g:Lh3/b;

.field public final h:Lo3/a;

.field public final i:Lh3/b;


# direct methods
.method public constructor <init>(LB2/b;LC2/c;LB2/b;LB2/c;LD2/g;LC2/c;Lo3/a;Lo3/a;)V
    .locals 1

    const/4 v0, 0x3

    iput v0, p0, LD2/d;->a:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, LD2/d;->b:Ljava/lang/Object;

    .line 4
    iput-object p2, p0, LD2/d;->e:LC2/c;

    .line 5
    iput-object p3, p0, LD2/d;->d:Lh3/b;

    .line 6
    iput-object p4, p0, LD2/d;->i:Lh3/b;

    .line 7
    iput-object p5, p0, LD2/d;->f:LD2/g;

    .line 8
    iput-object p6, p0, LD2/d;->g:Lh3/b;

    .line 9
    iput-object p7, p0, LD2/d;->c:Lo3/a;

    .line 10
    iput-object p8, p0, LD2/d;->h:Lo3/a;

    return-void
.end method

.method public synthetic constructor <init>(LU0/e;Lo3/a;Lh3/b;LC2/c;Lh3/b;LD2/g;LD2/g;LB2/b;I)V
    .locals 0

    .line 1
    iput p9, p0, LD2/d;->a:I

    iput-object p1, p0, LD2/d;->b:Ljava/lang/Object;

    iput-object p2, p0, LD2/d;->c:Lo3/a;

    iput-object p3, p0, LD2/d;->d:Lh3/b;

    iput-object p4, p0, LD2/d;->e:LC2/c;

    iput-object p5, p0, LD2/d;->i:Lh3/b;

    iput-object p6, p0, LD2/d;->f:LD2/g;

    iput-object p7, p0, LD2/d;->g:Lh3/b;

    iput-object p8, p0, LD2/d;->h:Lo3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, LD2/d;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, LO2/a;

    iget-object v0, p0, LD2/d;->e:LC2/c;

    invoke-virtual {v0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LC2/b;

    iget-object v0, p0, LD2/d;->d:Lh3/b;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LF2/d;

    iget-object v0, p0, LD2/d;->i:Lh3/b;

    check-cast v0, LB2/c;

    invoke-virtual {v0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LT2/a;

    iget-object v0, p0, LD2/d;->f:LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LI2/f;

    iget-object v0, p0, LD2/d;->g:Lh3/b;

    check-cast v0, LC2/c;

    invoke-virtual {v0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LM2/f;

    iget-object v0, p0, LD2/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LM2/g;

    iget-object p0, p0, LD2/d;->h:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, LM2/h;

    new-instance p0, LM2/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, LM2/c;-><init>(LO2/a;LC2/b;LF2/d;LT2/a;LI2/f;LM2/f;LM2/g;LM2/h;)V

    return-object p0

    :pswitch_0
    iget-object v0, p0, LD2/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, LD2/d;->d:Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LO2/a;

    iget-object v0, p0, LD2/d;->e:LC2/c;

    invoke-virtual {v0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LC2/b;

    iget-object v0, p0, LD2/d;->i:Lh3/b;

    check-cast v0, LB2/c;

    invoke-virtual {v0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LE2/b;

    iget-object v0, p0, LD2/d;->f:LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LI2/f;

    iget-object v0, p0, LD2/d;->g:Lh3/b;

    check-cast v0, LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LI2/f;

    iget-object v0, p0, LD2/d;->h:Lo3/a;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LG2/b;

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, LU0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LF2/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LF2/c;-><init>(Landroid/content/Context;LO2/a;LC2/b;LE2/b;LI2/f;LI2/f;LG2/b;)V

    return-object p0

    :pswitch_1
    iget-object v0, p0, LD2/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, LD2/d;->d:Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LO2/a;

    iget-object v0, p0, LD2/d;->e:LC2/c;

    invoke-virtual {v0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LC2/b;

    iget-object v0, p0, LD2/d;->i:Lh3/b;

    check-cast v0, LB2/c;

    invoke-virtual {v0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LE2/b;

    iget-object v0, p0, LD2/d;->f:LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LI2/f;

    iget-object v0, p0, LD2/d;->g:Lh3/b;

    check-cast v0, LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LI2/f;

    iget-object v0, p0, LD2/d;->h:Lo3/a;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LG2/b;

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, LU0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LF2/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LF2/c;-><init>(Landroid/content/Context;LO2/a;LC2/b;LE2/b;LI2/f;LI2/f;LG2/b;)V

    return-object p0

    :pswitch_2
    iget-object v0, p0, LD2/d;->c:Lo3/a;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, LD2/d;->d:Lh3/b;

    invoke-interface {v0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, LO2/a;

    iget-object v0, p0, LD2/d;->e:LC2/c;

    invoke-virtual {v0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, LC2/b;

    iget-object v0, p0, LD2/d;->i:Lh3/b;

    check-cast v0, LB2/c;

    invoke-virtual {v0}, LB2/c;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, LE2/b;

    iget-object v0, p0, LD2/d;->f:LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, LI2/f;

    iget-object v0, p0, LD2/d;->g:Lh3/b;

    check-cast v0, LD2/g;

    invoke-virtual {v0}, LD2/g;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, LI2/f;

    iget-object v0, p0, LD2/d;->h:Lo3/a;

    check-cast v0, LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, LG2/b;

    iget-object p0, p0, LD2/d;->b:Ljava/lang/Object;

    check-cast p0, LU0/e;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "context"

    invoke-static {v2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "utils"

    invoke-static {v3, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LF2/c;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, LF2/c;-><init>(Landroid/content/Context;LO2/a;LC2/b;LE2/b;LI2/f;LI2/f;LG2/b;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
