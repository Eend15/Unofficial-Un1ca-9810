.class public final LS/e;
.super LS/f;
.source "SourceFile"


# instance fields
.field public final e:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;Landroid/view/ViewGroup;I)V
    .locals 1

    packed-switch p3, :pswitch_data_0

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Attempting to use <fragment> tag to add fragment "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to container "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, LS/f;-><init>(Landroidx/fragment/app/r;Ljava/lang/String;)V

    iput-object p2, p0, LS/e;->e:Landroid/view/ViewGroup;

    return-void

    :pswitch_0
    const-string p3, "fragment"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "Attempting to add fragment "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to container "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " which is not a FragmentContainerView"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1, p3}, LS/f;-><init>(Landroidx/fragment/app/r;Ljava/lang/String;)V

    iput-object p2, p0, LS/e;->e:Landroid/view/ViewGroup;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
