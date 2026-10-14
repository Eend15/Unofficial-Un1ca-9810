.class public final Lm/b;
.super Lm/e;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field public d:Lm/c;

.field public e:Lm/c;

.field public final synthetic f:I


# direct methods
.method public constructor <init>(Lm/c;Lm/c;I)V
    .locals 0

    iput p3, p0, Lm/b;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lm/b;->d:Lm/c;

    iput-object p1, p0, Lm/b;->e:Lm/c;

    return-void
.end method


# virtual methods
.method public final a(Lm/c;)V
    .locals 3

    iget-object v0, p0, Lm/b;->d:Lm/c;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    iget-object v0, p0, Lm/b;->e:Lm/c;

    if-ne p1, v0, :cond_0

    iput-object v1, p0, Lm/b;->e:Lm/c;

    iput-object v1, p0, Lm/b;->d:Lm/c;

    :cond_0
    iget-object v0, p0, Lm/b;->d:Lm/c;

    if-ne v0, p1, :cond_1

    iget v2, p0, Lm/b;->f:I

    packed-switch v2, :pswitch_data_0

    iget-object v0, v0, Lm/c;->f:Lm/c;

    goto :goto_0

    :pswitch_0
    iget-object v0, v0, Lm/c;->g:Lm/c;

    :goto_0
    iput-object v0, p0, Lm/b;->d:Lm/c;

    :cond_1
    iget-object v0, p0, Lm/b;->e:Lm/c;

    if-ne v0, p1, :cond_4

    iget-object p1, p0, Lm/b;->d:Lm/c;

    if-eq v0, p1, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p0, v0}, Lm/b;->b(Lm/c;)Lm/c;

    move-result-object v1

    :cond_3
    :goto_1
    iput-object v1, p0, Lm/b;->e:Lm/c;

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b(Lm/c;)Lm/c;
    .locals 0

    iget p0, p0, Lm/b;->f:I

    packed-switch p0, :pswitch_data_0

    iget-object p0, p1, Lm/c;->g:Lm/c;

    return-object p0

    :pswitch_0
    iget-object p0, p1, Lm/c;->f:Lm/c;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lm/b;->e:Lm/c;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lm/b;->e:Lm/c;

    iget-object v1, p0, Lm/b;->d:Lm/c;

    if-eq v0, v1, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lm/b;->b(Lm/c;)Lm/c;

    move-result-object v1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x0

    :goto_1
    iput-object v1, p0, Lm/b;->e:Lm/c;

    return-object v0
.end method
