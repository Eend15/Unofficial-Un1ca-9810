.class public final LT3/k;
.super LX3/F;
.source "SourceFile"


# instance fields
.field public final synthetic j:I


# direct methods
.method public constructor <init>(LU3/x;Ls4/c;I)V
    .locals 0

    iput p3, p0, LT3/k;->j:I

    packed-switch p3, :pswitch_data_0

    invoke-direct {p0, p1, p2}, LX3/F;-><init>(LU3/x;Ls4/c;)V

    return-void

    :pswitch_0
    const-string p3, "module"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "fqName"

    invoke-static {p2, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, LX3/F;-><init>(LU3/x;Ls4/c;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final bridge synthetic l0()LC4/o;
    .locals 0

    iget p0, p0, LT3/k;->j:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, LC4/n;->b:LC4/n;

    return-object p0

    :pswitch_0
    sget-object p0, LC4/n;->b:LC4/n;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
