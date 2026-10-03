.class public final LD4/b;
.super LD4/a;
.source "SourceFile"


# instance fields
.field public final e:LX3/q;


# direct methods
.method public constructor <init>(LU3/a;LJ4/C;)V
    .locals 4

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, LD4/a;-><init>(LJ4/C;)V

    check-cast p1, LX3/q;

    iput-object p1, p0, LD4/b;->e:LX3/q;

    return-void

    :cond_0
    const/4 p0, 0x2

    const-string p1, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "kotlin/reflect/jvm/internal/impl/resolve/scopes/receivers/ExtensionReceiver"

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "receiverType"

    aput-object v3, p2, v2

    aput-object v0, p2, v1

    const-string v0, "<init>"

    aput-object v0, p2, p0

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, LD4/a;->j()LJ4/C;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Ext {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LD4/b;->e:LX3/q;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
