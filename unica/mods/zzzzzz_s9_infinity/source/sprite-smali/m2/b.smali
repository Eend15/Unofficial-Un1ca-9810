.class public final synthetic Lm2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/KeyguardManager$KeyguardLockedStateListener;


# instance fields
.field public final synthetic a:Lm2/n;


# direct methods
.method public synthetic constructor <init>(Lm2/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm2/b;->a:Lm2/n;

    return-void
.end method


# virtual methods
.method public final onKeyguardLockedStateChanged(Z)V
    .locals 3

    iget-object p0, p0, Lm2/b;->a:Lm2/n;

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onKeyguardLockedStateChanged isVisible: "

    invoke-static {v1, p1}, Li4/b;->h(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_1

    iget-object p1, p0, Lm2/n;->e:Ln2/b;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lm2/n;->e()Lq2/a;

    move-result-object v0

    iget v0, v0, Lq2/a;->b:I

    invoke-virtual {p1, v0}, Ln2/b;->a(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lm2/n;->t()V

    :cond_1
    :goto_0
    return-void
.end method
