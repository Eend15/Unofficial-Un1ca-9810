.class Landroidx/fragment/app/FragmentManager$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 0

    sget-object p0, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    const/4 p1, 0x0

    if-eq p2, p0, :cond_1

    sget-object p0, Landroidx/lifecycle/m;->ON_DESTROY:Landroidx/lifecycle/m;

    if-eq p2, p0, :cond_0

    return-void

    :cond_0
    throw p1

    :cond_1
    throw p1
.end method
