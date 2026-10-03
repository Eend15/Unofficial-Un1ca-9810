.class public final LO3/c;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final e:LO3/c;

.field public static final f:LO3/c;

.field public static final g:LO3/c;

.field public static final h:LO3/c;

.field public static final i:LO3/c;

.field public static final j:LO3/c;

.field public static final k:LO3/c;


# instance fields
.field public final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 3

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->e:LO3/c;

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->f:LO3/c;

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->g:LO3/c;

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->h:LO3/c;

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->i:LO3/c;

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->j:LO3/c;

    new-instance v0, LO3/c;

    const/4 v1, 0x1

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, LO3/c;-><init>(II)V

    sput-object v0, LO3/c;->k:LO3/c;

    return-void
.end method

.method public synthetic constructor <init>(II)V
    .locals 0

    iput p2, p0, LO3/c;->d:I

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, " | "

    const-string v1, "descriptor"

    const-string v2, "it.type"

    const-string v3, "it"

    iget p0, p0, LO3/c;->d:I

    packed-switch p0, :pswitch_data_0

    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, LX3/W;

    sget-object p0, LO3/p0;->a:Lu4/g;

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LX3/X;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LO3/p0;->d(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LX3/W;

    sget-object p0, LO3/p0;->a:Lu4/g;

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, LX3/X;

    invoke-virtual {p1}, LX3/X;->j()LJ4/C;

    move-result-object p0

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, LO3/p0;->d(LJ4/C;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    check-cast p1, LX3/L;

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lu4/g;->d:Lu4/g;

    invoke-virtual {v1, p1}, Lu4/g;->v(LU3/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LO3/q0;->b(LX3/L;)LO3/n0;

    move-result-object p1

    invoke-virtual {p1}, LO3/n0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    check-cast p1, LU3/s;

    invoke-static {p1, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lu4/g;->d:Lu4/g;

    invoke-virtual {v1, p1}, Lu4/g;->v(LU3/j;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, LO3/q0;->c(LU3/s;)LO3/n0;

    move-result-object p1

    invoke-virtual {p1}, LO3/n0;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    check-cast p1, Ljava/lang/Class;

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    check-cast p1, Ljava/lang/reflect/Method;

    invoke-static {p1, v3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object p0

    const-string p1, "it.returnType"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, La4/b;->b(Ljava/lang/Class;)Ljava/lang/String;

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
