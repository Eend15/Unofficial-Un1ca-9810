.class public final LW3/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW3/b;
.implements LW3/d;


# static fields
.field public static final b:LW3/a;

.field public static final c:LW3/a;

.field public static final d:LW3/a;

.field public static final e:LW3/a;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LW3/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LW3/a;-><init>(I)V

    sput-object v0, LW3/a;->b:LW3/a;

    new-instance v0, LW3/a;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LW3/a;-><init>(I)V

    sput-object v0, LW3/a;->c:LW3/a;

    new-instance v0, LW3/a;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LW3/a;-><init>(I)V

    sput-object v0, LW3/a;->d:LW3/a;

    new-instance v0, LW3/a;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, LW3/a;-><init>(I)V

    sput-object v0, LW3/a;->e:LW3/a;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LW3/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls4/f;LU3/e;)Ljava/util/Collection;
    .locals 0

    const-string p0, "name"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "classDescriptor"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public b(LU3/e;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public c(LU3/e;LH4/u;)Z
    .locals 0

    iget p0, p0, LW3/a;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, LD4/a;->p()LV3/h;

    move-result-object p0

    sget-object p1, LW3/e;->a:Ls4/c;

    invoke-interface {p0, p1}, LV3/h;->e(Ls4/c;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :pswitch_0
    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public d(LU3/e;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public e(LU3/e;)Ljava/util/Collection;
    .locals 0

    const-string p0, "classDescriptor"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method
