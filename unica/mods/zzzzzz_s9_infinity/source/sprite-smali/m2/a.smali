.class public final synthetic Lm2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lm2/n;


# direct methods
.method public synthetic constructor <init>(Lm2/n;I)V
    .locals 0

    iput p2, p0, Lm2/a;->d:I

    iput-object p1, p0, Lm2/a;->e:Lm2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lm2/a;->d:I

    check-cast p1, Landroid/graphics/Canvas;

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm2/a;->e:Lm2/n;

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ln2/b;->b(Landroid/graphics/Canvas;)V

    :cond_0
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_0
    const-string v0, "canvas"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm2/a;->e:Lm2/n;

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ln2/b;->b(Landroid/graphics/Canvas;)V

    :cond_1
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    :pswitch_1
    const-string v0, "canvas"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lm2/a;->e:Lm2/n;

    iget-object p0, p0, Lm2/n;->e:Ln2/b;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Ln2/b;->b(Landroid/graphics/Canvas;)V

    :cond_2
    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
