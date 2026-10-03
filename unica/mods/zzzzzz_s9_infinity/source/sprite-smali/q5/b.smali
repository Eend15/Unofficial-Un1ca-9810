.class public final Lq5/b;
.super LY4/a;
.source "SourceFile"


# instance fields
.field public final synthetic g:I

.field public final synthetic h:Lq5/c;


# direct methods
.method public constructor <init>(Lq5/c;I)V
    .locals 0

    iput p2, p0, Lq5/b;->g:I

    iput-object p1, p0, Lq5/b;->h:Lq5/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, LY4/a;->f:[Ljava/lang/Object;

    const/4 p1, 0x0

    iput p1, p0, LY4/a;->d:I

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, LY4/a;->f(I)V

    return-void
.end method


# virtual methods
.method public final h()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lq5/b;->g:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

    :pswitch_1
    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

    :pswitch_2
    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

    :pswitch_3
    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x5

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

    :pswitch_4
    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

    :pswitch_5
    new-instance v0, Lm5/a;

    iget-object p0, p0, Lq5/b;->h:Lq5/c;

    iget-object p0, p0, Lq5/c;->e:Lq5/c;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lm5/a;-><init>(Lq5/c;I)V

    return-object v0

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
