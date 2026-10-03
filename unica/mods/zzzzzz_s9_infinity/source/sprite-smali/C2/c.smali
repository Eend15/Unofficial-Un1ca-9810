.class public final LC2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lo3/a;


# direct methods
.method public synthetic constructor <init>(Lo3/a;I)V
    .locals 0

    iput p2, p0, LC2/c;->a:I

    iput-object p1, p0, LC2/c;->b:Lo3/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LC2/c;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LC2/c;->b:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, Ly2/d;

    invoke-direct {v0, p0}, Ly2/d;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, LC2/c;->b:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LC2/c;->b:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, LM2/f;

    invoke-direct {v0, p0}, LM2/f;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, LC2/c;->b:Lo3/a;

    invoke-interface {p0}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance v0, LC2/b;

    invoke-direct {v0, p0}, LC2/b;-><init>(Landroid/content/Context;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
