.class public final Ld4/f;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final e:Ld4/f;

.field public static final f:Ld4/f;

.field public static final g:Ld4/f;

.field public static final h:Ld4/f;

.field public static final i:Ld4/f;

.field public static final j:Ld4/f;

.field public static final k:Ld4/f;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->e:Ld4/f;

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->f:Ld4/f;

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->g:Ld4/f;

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->h:Ld4/f;

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->i:Ld4/f;

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->j:Ld4/f;

    new-instance v0, Ld4/f;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Ld4/f;-><init>(II)V

    sput-object v0, Ld4/f;->k:Ld4/f;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, Ld4/f;->d:I

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    const-string v2, "it"

    iget p0, p0, Ld4/f;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, LU3/b;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, LR3/j;->y(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_4

    sget p0, Ld4/g;->l:I

    move-object p0, p1

    check-cast p0, LX3/p;

    invoke-virtual {p0}, LX3/p;->r()Ls4/f;

    move-result-object p0

    sget-object v2, Ld4/F;->e:Ljava/util/Set;

    invoke-interface {v2, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    sget-object p0, Ld4/f;->f:Ld4/f;

    invoke-static {p1, p0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object p0

    if-nez p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lj0/s;->r(LU3/a;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    sget-object p1, Ld4/F;->b:Ljava/util/ArrayList;

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    sget-object p1, Ld4/F;->d:Ljava/util/LinkedHashMap;

    invoke-static {p1, p0}, Lr3/v;->b0(Ljava/util/LinkedHashMap;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ld4/E;

    :goto_1
    move v0, v1

    :cond_4
    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LU3/b;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Ld4/e;->l:I

    check-cast p1, LX3/P;

    invoke-static {p1}, LR3/j;->y(LU3/j;)Z

    move-result p0

    if-eqz p0, :cond_5

    new-instance p0, LF4/a;

    const/16 v2, 0xb

    invoke-direct {p0, v2, p1}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1, p0}, Lz4/e;->b(LU3/b;LE3/b;)LU3/b;

    move-result-object p0

    if-eqz p0, :cond_5

    move v0, v1

    :cond_5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LU3/b;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lz4/e;->k(LU3/b;)LU3/b;

    move-result-object p0

    invoke-static {p0}, La4/x;->E(LU3/b;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LX3/W;

    check-cast p1, LX3/X;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LU3/b;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La4/x;->E(LU3/b;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, LU3/b;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p0, p1, LU3/s;

    if-eqz p0, :cond_6

    sget p0, Ld4/g;->l:I

    invoke-static {p1}, Lj0/s;->r(LU3/a;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld4/F;->f:Ljava/util/Set;

    invoke-static {p1, p0}, Lr3/j;->p0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    move v0, v1

    :cond_6
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, LU3/b;

    invoke-static {p1, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Ld4/g;->l:I

    invoke-static {p1}, Lj0/s;->r(LU3/a;)Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ld4/F;->f:Ljava/util/Set;

    invoke-static {p1, p0}, Lr3/j;->p0(Ljava/util/Collection;Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
