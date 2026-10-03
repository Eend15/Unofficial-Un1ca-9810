.class public final LP3/o;
.super LP3/p;
.source "SourceFile"


# instance fields
.field public final synthetic g:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Field;ZZI)V
    .locals 0

    iput p4, p0, LP3/o;->g:I

    invoke-direct {p0, p1, p2, p3}, LP3/p;-><init>(Ljava/lang/reflect/Field;ZZ)V

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LP3/o;->g:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LP3/p;->a([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-super {p0, p1}, LP3/p;->a([Ljava/lang/Object;)V

    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget-object p1, p1, v0

    :goto_0
    invoke-virtual {p0, p1}, LP3/u;->b(Ljava/lang/Object;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
