.class public final LU4/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements LG3/a;


# instance fields
.field public final synthetic d:I

.field public final e:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, LU4/n;->d:I

    iput-object p2, p0, LU4/n;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(LE3/a;)V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, LU4/n;->d:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, LF3/l;

    iput-object p1, p0, LU4/n;->e:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget v0, p0, LU4/n;->d:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, LU4/b;

    iget-object p0, p0, LU4/n;->e:Ljava/lang/Object;

    check-cast p0, LF3/l;

    invoke-interface {p0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Iterator;

    invoke-direct {v0, p0}, LU4/b;-><init>(Ljava/util/Iterator;)V

    return-object v0

    :pswitch_0
    iget-object p0, p0, LU4/n;->e:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    invoke-static {p0}, LF3/k;->j([Ljava/lang/Object;)LF3/a;

    move-result-object p0

    return-object p0

    :pswitch_1
    iget-object p0, p0, LU4/n;->e:Ljava/lang/Object;

    check-cast p0, LU4/i;

    invoke-interface {p0}, LU4/i;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
