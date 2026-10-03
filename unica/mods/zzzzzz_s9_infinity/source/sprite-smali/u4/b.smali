.class public final Lu4/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu4/c;


# static fields
.field public static final b:Lu4/b;

.field public static final c:Lu4/b;

.field public static final d:Lu4/b;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lu4/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lu4/b;-><init>(I)V

    sput-object v0, Lu4/b;->b:Lu4/b;

    new-instance v0, Lu4/b;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lu4/b;-><init>(I)V

    sput-object v0, Lu4/b;->c:Lu4/b;

    new-instance v0, Lu4/b;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lu4/b;-><init>(I)V

    sput-object v0, Lu4/b;->d:Lu4/b;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lu4/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(LU3/g;)Ljava/lang/String;
    .locals 2

    invoke-interface {p0}, LU3/j;->r()Ls4/f;

    move-result-object v0

    const-string v1, "descriptor.name"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lp4/g;->P(Ls4/f;)Ljava/lang/String;

    move-result-object v0

    instance-of v1, p0, LU3/O;

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {p0}, LU3/j;->g()LU3/j;

    move-result-object p0

    const-string v1, "descriptor.containingDeclaration"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v1, p0, LU3/e;

    if-eqz v1, :cond_1

    check-cast p0, LU3/g;

    invoke-static {p0}, Lu4/b;->b(LU3/g;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    instance-of v1, p0, LU3/B;

    if-eqz v1, :cond_2

    check-cast p0, LU3/B;

    check-cast p0, LX3/F;

    iget-object p0, p0, LX3/F;->h:Ls4/c;

    invoke-virtual {p0}, Ls4/c;->i()Ls4/e;

    move-result-object p0

    const-string v1, "descriptor.fqName.toUnsafe()"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls4/e;->e()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2e

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    return-object v0
.end method


# virtual methods
.method public final a(LU3/g;Lu4/g;)Ljava/lang/String;
    .locals 0

    iget p0, p0, Lu4/b;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "renderer"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lu4/b;->b(LU3/g;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "renderer"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LU3/O;

    if-eqz p0, :cond_0

    check-cast p1, LU3/O;

    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object p0

    const-string p1, "classifier.name"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, LU3/j;->g()LU3/j;

    move-result-object p1

    instance-of p2, p1, LU3/e;

    if-nez p2, :cond_1

    new-instance p1, Lr3/x;

    invoke-direct {p1, p0}, Lr3/x;-><init>(Ljava/util/ArrayList;)V

    invoke-static {p1}, Lp4/g;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :pswitch_1
    const-string p0, "renderer"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LU3/O;

    if-eqz p0, :cond_2

    check-cast p1, LU3/O;

    invoke-interface {p1}, LU3/j;->r()Ls4/f;

    move-result-object p0

    const-string p1, "classifier.name"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lu4/g;->K(Ls4/f;Z)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lv4/f;->g(LU3/j;)Ls4/e;

    move-result-object p0

    const-string p1, "getFqName(classifier)"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ls4/e;->e()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lp4/g;->Q(Ljava/util/List;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lu4/g;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
