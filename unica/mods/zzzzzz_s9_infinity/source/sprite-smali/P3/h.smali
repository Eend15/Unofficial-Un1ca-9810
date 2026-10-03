.class public final LP3/h;
.super LP3/u;
.source "SourceFile"


# instance fields
.field public final synthetic e:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;I)V
    .locals 0

    iput p5, p0, LP3/h;->e:I

    invoke-direct {p0, p1, p2, p3, p4}, LP3/u;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    return-void
.end method


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LP3/h;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    iget-object p0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Constructor;

    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    iget-object p0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast p0, Ljava/lang/reflect/Constructor;

    new-instance v0, LA1/e;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, LA1/e;-><init>(I)V

    invoke-virtual {v0, p1}, LA1/e;->P(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1}, LA1/e;->O(Ljava/lang/Object;)V

    iget-object p1, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
