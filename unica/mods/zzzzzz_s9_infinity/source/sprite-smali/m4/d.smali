.class public final Lm4/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ll4/j;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:Lm4/f;


# direct methods
.method public synthetic constructor <init>(Lm4/f;I)V
    .locals 0

    iput p2, p0, Lm4/d;->d:I

    iput-object p1, p0, Lm4/d;->e:Lm4/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a(Ls4/f;Lx4/f;)V
    .locals 0

    return-void
.end method

.method private final b(Ls4/f;Lx4/f;)V
    .locals 0

    return-void
.end method

.method private final c()V
    .locals 0

    return-void
.end method

.method private final d()V
    .locals 0

    return-void
.end method

.method private final e(Ls4/f;Ls4/b;Ls4/f;)V
    .locals 0

    return-void
.end method

.method private final f(Ls4/f;Ls4/b;Ls4/f;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    iget p0, p0, Lm4/d;->d:I

    return-void
.end method

.method public final i(Ls4/f;)Ll4/k;
    .locals 1

    iget v0, p0, Lm4/d;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "data"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "filePartClassNames"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "strings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lm4/e;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lm4/e;-><init>(Lm4/d;I)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    new-instance p1, Lm4/e;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lm4/e;-><init>(Lm4/d;I)V

    :goto_1
    return-object p1

    :pswitch_0
    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "d1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance p1, Lm4/c;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lm4/c;-><init>(Lm4/d;I)V

    goto :goto_2

    :cond_3
    const-string v0, "d2"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    new-instance p1, Lm4/c;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lm4/c;-><init>(Lm4/d;I)V

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final n(Ls4/f;Lx4/f;)V
    .locals 0

    iget p0, p0, Lm4/d;->d:I

    return-void
.end method

.method public final r(Ls4/b;Ls4/f;)Ll4/j;
    .locals 0

    iget p0, p0, Lm4/d;->d:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const/4 p0, 0x0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final s(Ls4/f;Ls4/b;Ls4/f;)V
    .locals 0

    iget p0, p0, Lm4/d;->d:I

    return-void
.end method

.method public final t(Ls4/f;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lm4/d;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "version"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lm4/d;->e:Lm4/f;

    if-eqz v0, :cond_0

    instance-of p1, p2, [I

    if-eqz p1, :cond_2

    check-cast p2, [I

    iput-object p2, p0, Lm4/f;->a:[I

    goto :goto_1

    :cond_0
    const-string v0, "multifileClassName"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lm4/f;->b:Ljava/lang/String;

    :cond_2
    :goto_1
    return-void

    :pswitch_0
    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "k"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object p0, p0, Lm4/d;->e:Lm4/f;

    if-eqz v0, :cond_4

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    check-cast p2, Ljava/lang/Integer;

    sget-object p1, Lm4/a;->e:Ljava/util/LinkedHashMap;

    invoke-virtual {p1, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm4/a;

    if-nez p1, :cond_3

    sget-object p1, Lm4/a;->f:Lm4/a;

    :cond_3
    iput-object p1, p0, Lm4/f;->g:Lm4/a;

    goto :goto_2

    :cond_4
    const-string v0, "mv"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of p1, p2, [I

    if-eqz p1, :cond_8

    check-cast p2, [I

    iput-object p2, p0, Lm4/f;->a:[I

    goto :goto_2

    :cond_5
    const-string v0, "xs"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lm4/f;->b:Ljava/lang/String;

    goto :goto_2

    :cond_6
    const-string v0, "xi"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    instance-of p1, p2, Ljava/lang/Integer;

    if-eqz p1, :cond_8

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lm4/f;->c:I

    goto :goto_2

    :cond_7
    const-string v0, "pn"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_8

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_8
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
