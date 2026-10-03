.class public final LD2/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:LB2/b;


# direct methods
.method public constructor <init>(LB2/b;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LD2/j;->a:I

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LD2/j;->b:LB2/b;

    return-void
.end method

.method public constructor <init>(LG4/d;LB2/b;)V
    .locals 0

    const/4 p1, 0x0

    iput p1, p0, LD2/j;->a:I

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, LD2/j;->b:LB2/b;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LD2/j;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD2/j;->b:LB2/b;

    invoke-virtual {p0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO2/a;

    new-instance v0, LM2/g;

    invoke-direct {v0, p0}, LM2/g;-><init>(LO2/a;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, LD2/j;->b:LB2/b;

    invoke-virtual {p0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LO2/a;

    new-instance v0, LK2/g;

    invoke-direct {v0, p0}, LK2/g;-><init>(LO2/a;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
