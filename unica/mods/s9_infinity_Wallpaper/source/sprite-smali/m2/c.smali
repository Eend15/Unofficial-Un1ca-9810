.class public final synthetic Lm2/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lm2/n;


# direct methods
.method public synthetic constructor <init>(Lm2/n;I)V
    .locals 0

    iput p2, p0, Lm2/c;->d:I

    iput-object p1, p0, Lm2/c;->e:Lm2/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Lm2/c;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Lm2/c;->e:Lm2/n;

    invoke-virtual {p0}, Lm2/n;->l()V

    return-void

    :pswitch_0
    iget-object p0, p0, Lm2/c;->e:Lm2/n;

    iget-object v0, p0, Lm2/n;->a:Landroid/content/Context;

    invoke-static {v0}, Lf2/k;->c(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    iput-boolean v1, p0, Lm2/n;->i:Z

    invoke-virtual {p0}, Lm2/n;->d()Lh2/b;

    move-result-object v1

    invoke-virtual {p0}, Lm2/n;->i()Ljava/lang/String;

    move-result-object v2

    iget-boolean v3, p0, Lm2/n;->p:Z

    iget-boolean v4, p0, Lm2/n;->j:Z

    iget-boolean v5, p0, Lm2/n;->i:Z

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "currentConsumeProtectionHandler, loopAnimationStarted:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isResumed:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isSleep:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isInteractive:"

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lh2/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lm2/n;->p:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lm2/n;->j:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lm2/n;->i:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lm2/n;->t()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
