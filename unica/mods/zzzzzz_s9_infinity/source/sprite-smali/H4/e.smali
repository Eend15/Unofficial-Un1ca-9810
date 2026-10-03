.class public final LH4/e;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LH4/g;


# direct methods
.method public synthetic constructor <init>(LH4/g;I)V
    .locals 0

    iput p2, p0, LH4/e;->d:I

    iput-object p1, p0, LH4/e;->e:LH4/g;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, LH4/e;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, LH4/e;->e:LH4/g;

    iget-object v0, p0, LH4/g;->g:LK4/g;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "classDescriptor"

    iget-object p0, p0, LH4/g;->j:LH4/l;

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LH4/l;->E()LJ4/M;

    move-result-object p0

    check-cast p0, LJ4/h;

    invoke-virtual {p0}, LJ4/h;->f()Ljava/util/Collection;

    move-result-object p0

    const-string v0, "classDescriptor.typeConstructor.supertypes"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    sget-object v0, LC4/f;->m:LC4/f;

    sget-object v1, LC4/o;->a:LC4/m;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, LC4/l;->e:LC4/l;

    iget-object p0, p0, LH4/e;->e:LH4/g;

    invoke-virtual {p0, v0, v1}, LH4/r;->i(LC4/f;LE3/b;)Ljava/util/List;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
