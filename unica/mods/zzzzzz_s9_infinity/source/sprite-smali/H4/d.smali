.class public final LH4/d;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;I)V
    .locals 0

    iput p2, p0, LH4/d;->d:I

    iput-object p1, p0, LH4/d;->e:Ljava/util/ArrayList;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LH4/d;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/d;->e:Ljava/util/ArrayList;

    return-object p0

    :pswitch_0
    iget-object p0, p0, LH4/d;->e:Ljava/util/ArrayList;

    return-object p0

    :pswitch_1
    iget-object p0, p0, LH4/d;->e:Ljava/util/ArrayList;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
