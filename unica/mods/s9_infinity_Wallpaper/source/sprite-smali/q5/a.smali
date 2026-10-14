.class public final Lq5/a;
.super Landroidx/emoji2/text/f;
.source "SourceFile"


# instance fields
.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lq5/a;->d:I

    invoke-direct {p0}, Landroidx/emoji2/text/f;-><init>()V

    return-void
.end method


# virtual methods
.method public final p()Ljava/lang/Object;
    .locals 1

    iget p0, p0, Lq5/a;->d:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Lk5/j;

    invoke-direct {p0}, Lk5/j;-><init>()V

    return-object p0

    :pswitch_0
    new-instance p0, Lk5/i;

    invoke-direct {p0}, Lk5/i;-><init>()V

    return-object p0

    :pswitch_1
    new-instance p0, Lk5/b;

    invoke-direct {p0}, Lk5/b;-><init>()V

    return-object p0

    :pswitch_2
    new-instance p0, Lk5/d;

    invoke-direct {p0}, Lk5/d;-><init>()V

    return-object p0

    :pswitch_3
    new-instance p0, Lw0/l;

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lw0/l;-><init>(I)V

    return-object p0

    :pswitch_4
    new-instance p0, Lk5/a;

    invoke-direct {p0}, Lk5/a;-><init>()V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
