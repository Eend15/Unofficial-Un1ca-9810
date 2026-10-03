.class public final LF2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh3/a;

.field public final b:Lh3/a;

.field public final c:Lh3/a;


# direct methods
.method public constructor <init>(Lh3/a;Lh3/a;Lh3/a;)V
    .locals 1

    const-string v0, "deviceUseCase"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "serverUseCase"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "testUseCase"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF2/g;->a:Lh3/a;

    iput-object p2, p0, LF2/g;->b:Lh3/a;

    iput-object p3, p0, LF2/g;->c:Lh3/a;

    return-void
.end method


# virtual methods
.method public final a(I)LF2/f;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    iget-object p0, p0, LF2/g;->c:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF2/f;

    goto :goto_0

    :pswitch_1
    iget-object p0, p0, LF2/g;->a:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF2/f;

    goto :goto_0

    :pswitch_2
    iget-object p0, p0, LF2/g;->b:Lh3/a;

    invoke-virtual {p0}, Lh3/a;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, LF2/f;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
