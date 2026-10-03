.class public final LQ/g;
.super LK/I;
.source "SourceFile"


# instance fields
.field public final a:LQ/f;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, LQ/f;

    invoke-direct {v0, p1}, LQ/f;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, LQ/g;->a:LQ/f;

    return-void
.end method


# virtual methods
.method public final J([Landroid/text/InputFilter;)[Landroid/text/InputFilter;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->k:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, LQ/g;->a:LQ/f;

    invoke-virtual {p0, p1}, LQ/f;->J([Landroid/text/InputFilter;)[Landroid/text/InputFilter;

    move-result-object p0

    return-object p0
.end method

.method public final X()Z
    .locals 0

    iget-object p0, p0, LQ/g;->a:LQ/f;

    iget-boolean p0, p0, LQ/f;->c:Z

    return p0
.end method

.method public final r0(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->k:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, LQ/g;->a:LQ/f;

    invoke-virtual {p0, p1}, LQ/f;->r0(Z)V

    return-void
.end method

.method public final s0(Z)V
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->k:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object p0, p0, LQ/g;->a:LQ/f;

    if-nez v0, :cond_1

    iput-boolean p1, p0, LQ/f;->c:Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, LQ/f;->s0(Z)V

    :goto_1
    return-void
.end method

.method public final y0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;
    .locals 1

    sget-object v0, Landroidx/emoji2/text/i;->k:Landroidx/emoji2/text/i;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return-object p1

    :cond_1
    iget-object p0, p0, LQ/g;->a:LQ/f;

    invoke-virtual {p0, p1}, LQ/f;->y0(Landroid/text/method/TransformationMethod;)Landroid/text/method/TransformationMethod;

    move-result-object p0

    return-object p0
.end method
