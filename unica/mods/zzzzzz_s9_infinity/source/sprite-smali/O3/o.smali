.class public final LO3/o;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:LU3/b;

.field public final synthetic e:I


# direct methods
.method public constructor <init>(LU3/b;I)V
    .locals 0

    iput-object p1, p0, LO3/o;->d:LU3/b;

    iput p2, p0, LO3/o;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LO3/o;->d:LU3/b;

    invoke-interface {v0}, LU3/a;->n0()Ljava/util/List;

    move-result-object v0

    iget p0, p0, LO3/o;->e:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "descriptor.valueParameters[i]"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, LU3/H;

    return-object p0
.end method
