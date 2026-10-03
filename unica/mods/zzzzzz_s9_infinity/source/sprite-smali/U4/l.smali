.class public final LU4/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LU4/i;


# instance fields
.field public final synthetic a:I

.field public final b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, LU4/l;->a:I

    iput-object p2, p0, LU4/l;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, LU4/l;->a:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LU4/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, LU4/l;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->j([Ljava/lang/Object;)LF3/a;

    move-result-object p0

    return-object p0

    :pswitch_1
    new-instance v0, LB3/f;

    invoke-direct {v0, p0}, LB3/f;-><init>(LU4/l;)V

    return-object v0

    :pswitch_2
    iget-object p0, p0, LU4/l;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Iterator;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
