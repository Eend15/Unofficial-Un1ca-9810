.class public final LD2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lh3/b;


# instance fields
.field public final synthetic a:I

.field public final b:Lo1/b;


# direct methods
.method public synthetic constructor <init>(Lo1/b;I)V
    .locals 0

    iput p2, p0, LD2/a;->a:I

    iput-object p1, p0, LD2/a;->b:Lo1/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LD2/a;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LD2/a;->b:Lo1/b;

    iget-object p0, p0, Lo1/b;->c:Ljava/lang/Object;

    check-cast p0, LA1/e;

    invoke-static {p0}, LB2/d;->a(LA1/e;)Landroid/content/Context;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LD2/a;->b:Lo1/b;

    invoke-virtual {p0}, Lo1/b;->e()LO2/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
