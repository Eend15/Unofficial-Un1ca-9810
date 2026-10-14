.class public final Landroidx/appcompat/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lk/u;


# instance fields
.field public final synthetic d:Landroidx/appcompat/widget/l;


# direct methods
.method public synthetic constructor <init>(Landroidx/appcompat/widget/l;)V
    .locals 0

    iput-object p1, p0, Landroidx/appcompat/widget/g;->d:Landroidx/appcompat/widget/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lk/j;Z)V
    .locals 2

    instance-of v0, p1, Lk/B;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lk/B;

    iget-object v0, v0, Lk/B;->z:Lk/j;

    invoke-virtual {v0}, Lk/j;->k()Lk/j;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lk/j;->c(Z)V

    :cond_0
    iget-object p0, p0, Landroidx/appcompat/widget/g;->d:Landroidx/appcompat/widget/l;

    iget-object p0, p0, Landroidx/appcompat/widget/l;->h:Lk/u;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1, p2}, Lk/u;->a(Lk/j;Z)V

    :cond_1
    return-void
.end method

.method public b(Lk/j;)Z
    .locals 2

    iget-object p0, p0, Landroidx/appcompat/widget/g;->d:Landroidx/appcompat/widget/l;

    iget-object v0, p0, Landroidx/appcompat/widget/l;->f:Lk/j;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    move-object v0, p1

    check-cast v0, Lk/B;

    iget-object v0, v0, Lk/B;->A:Lk/l;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p0, p0, Landroidx/appcompat/widget/l;->h:Lk/u;

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lk/u;->b(Lk/j;)Z

    move-result v1

    :cond_1
    return v1
.end method
