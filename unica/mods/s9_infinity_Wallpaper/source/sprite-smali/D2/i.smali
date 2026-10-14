.class public final LD2/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:LB2/b;

.field public final c:LC2/c;


# direct methods
.method public synthetic constructor <init>(LG4/d;LB2/b;LC2/c;I)V
    .locals 0

    iput p4, p0, LD2/i;->a:I

    iput-object p2, p0, LD2/i;->b:LB2/b;

    iput-object p3, p0, LD2/i;->c:LC2/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, LD2/i;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LD2/i;->b:LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object p0, p0, LD2/i;->c:LC2/c;

    invoke-virtual {p0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC2/b;

    new-instance v1, LK2/d;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p0, v2}, LK2/d;-><init>(LO2/a;LC2/b;I)V

    return-object v1

    :pswitch_0
    iget-object v0, p0, LD2/i;->b:LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object p0, p0, LD2/i;->c:LC2/c;

    invoke-virtual {p0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC2/b;

    new-instance v1, LK2/d;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p0, v2}, LK2/d;-><init>(LO2/a;LC2/b;I)V

    return-object v1

    :pswitch_1
    iget-object v0, p0, LD2/i;->b:LB2/b;

    invoke-virtual {v0}, LB2/b;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LO2/a;

    iget-object p0, p0, LD2/i;->c:LC2/c;

    invoke-virtual {p0}, LC2/c;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LC2/b;

    new-instance v1, LK2/d;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, LK2/d;-><init>(LO2/a;LC2/b;I)V

    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
