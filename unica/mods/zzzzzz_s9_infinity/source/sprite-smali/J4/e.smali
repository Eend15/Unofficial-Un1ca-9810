.class public final LJ4/e;
.super LJ4/c;
.source "SourceFile"


# static fields
.field public static final b:LJ4/e;

.field public static final c:LJ4/e;

.field public static final d:LJ4/e;


# instance fields
.field public final synthetic a:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, LJ4/e;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LJ4/e;-><init>(I)V

    sput-object v0, LJ4/e;->b:LJ4/e;

    new-instance v0, LJ4/e;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LJ4/e;-><init>(I)V

    sput-object v0, LJ4/e;->c:LJ4/e;

    new-instance v0, LJ4/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LJ4/e;-><init>(I)V

    sput-object v0, LJ4/e;->d:LJ4/e;

    return-void
.end method

.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, LJ4/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final w(LK4/b;LM4/c;)LM4/d;
    .locals 0

    iget p0, p0, LJ4/e;->a:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, LK4/b;->g:LK4/c;

    invoke-interface {p0, p2}, LK4/c;->S(LM4/c;)LM4/d;

    move-result-object p0

    return-object p0

    :pswitch_0
    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Should not be called"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_1
    const-string p0, "context"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "type"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p1, LK4/b;->g:LK4/c;

    invoke-interface {p0, p2}, LK4/c;->r(LM4/c;)LM4/d;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
