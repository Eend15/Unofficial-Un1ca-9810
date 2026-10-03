.class public final synthetic LS1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LF3/s;

.field public final synthetic f:LS1/f;

.field public final synthetic g:La2/f;


# direct methods
.method public synthetic constructor <init>(LF3/s;LS1/f;La2/f;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    iput v0, p0, LS1/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS1/c;->e:LF3/s;

    iput-object p2, p0, LS1/c;->f:LS1/f;

    iput-object p3, p0, LS1/c;->g:La2/f;

    return-void
.end method

.method public synthetic constructor <init>(LS1/f;La2/f;LF3/s;)V
    .locals 1

    .line 2
    const/4 v0, 0x0

    iput v0, p0, LS1/c;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LS1/c;->f:LS1/f;

    iput-object p2, p0, LS1/c;->g:La2/f;

    iput-object p3, p0, LS1/c;->e:LF3/s;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, LS1/c;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LS1/c;->e:LF3/s;

    iget-object v0, v0, LF3/s;->d:Ljava/lang/Object;

    const-string v1, "default"

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    iget-object v2, p0, LS1/c;->f:LS1/f;

    if-eqz v0, :cond_0

    iget-object v0, v2, LS1/f;->e:Ln1/a;

    invoke-virtual {v0}, Ln1/a;->p()LS2/b;

    move-result-object v0

    iget-object p0, p0, LS1/c;->g:La2/f;

    iget-object v3, p0, La2/f;->b:La2/i;

    const-string v4, "type"

    invoke-static {v3, v4}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v0, v0, LS2/b;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumMap;

    invoke-virtual {v0, v3, v5}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v2, LS1/f;->e:Ln1/a;

    invoke-virtual {v0}, Ln1/a;->p()LS2/b;

    move-result-object v0

    invoke-virtual {v0, p0, v4}, LS2/b;->n(La2/f;I)V

    iget-object v0, v2, LS1/f;->r:Lw0/m;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lw0/m;->t()V

    iget-object v0, v0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumMap;

    iget-object p0, p0, La2/f;->b:La2/i;

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-boolean p0, v2, LS1/f;->A:Z

    if-nez p0, :cond_1

    iget-object p0, v2, LS1/f;->r:Lw0/m;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lw0/m;->i()V

    :cond_1
    return-void

    :pswitch_0
    iget-object v0, p0, LS1/c;->f:LS1/f;

    iget-object v0, v0, LS1/f;->r:Lw0/m;

    if-eqz v0, :cond_2

    iget-object v1, p0, LS1/c;->e:LF3/s;

    iget-object v1, v1, LF3/s;->d:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    const-string v2, "element"

    iget-object p0, p0, LS1/c;->g:La2/f;

    invoke-static {p0, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "trigger"

    invoke-static {v1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lw0/m;->t()V

    iget-object v0, v0, Lw0/m;->d:Ljava/lang/Object;

    check-cast v0, Ljava/util/EnumMap;

    iget-object p0, p0, La2/f;->b:La2/i;

    invoke-virtual {v0, p0, v1}, Ljava/util/EnumMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
