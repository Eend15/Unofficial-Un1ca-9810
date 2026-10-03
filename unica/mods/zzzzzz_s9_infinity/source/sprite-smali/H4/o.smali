.class public final LH4/o;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:LH4/q;

.field public final synthetic f:LH4/r;


# direct methods
.method public synthetic constructor <init>(LH4/q;LH4/r;I)V
    .locals 0

    iput p3, p0, LH4/o;->d:I

    iput-object p1, p0, LH4/o;->e:LH4/q;

    iput-object p2, p0, LH4/o;->f:LH4/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, LH4/o;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LH4/o;->e:LH4/q;

    iget-object v0, v0, LH4/q;->b:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, LH4/o;->f:LH4/r;

    invoke-virtual {p0}, LH4/r;->p()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object v0, p0, LH4/o;->e:LH4/q;

    iget-object v0, v0, LH4/q;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    iget-object p0, p0, LH4/o;->f:LH4/r;

    invoke-virtual {p0}, LH4/r;->o()Ljava/util/Set;

    move-result-object p0

    invoke-static {v0, p0}, Lr3/y;->c0(Ljava/util/Set;Ljava/util/Collection;)Ljava/util/LinkedHashSet;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
