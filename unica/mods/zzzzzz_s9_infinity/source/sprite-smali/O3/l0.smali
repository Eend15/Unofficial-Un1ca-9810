.class public final LO3/l0;
.super LO3/n0;
.source "SourceFile"


# instance fields
.field public final e:LF3/l;

.field public volatile f:Ljava/lang/Object;


# direct methods
.method public constructor <init>(LE3/a;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, LO3/l0;->f:Ljava/lang/Object;

    check-cast p1, LF3/l;

    iput-object p1, p0, LO3/l0;->e:LF3/l;

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, LO3/l0;->f:Ljava/lang/Object;

    sget-object v1, LO3/n0;->d:LO3/m0;

    if-eqz v0, :cond_1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, LO3/l0;->e:LF3/l;

    invoke-interface {v0}, LE3/a;->invoke()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object v1, v0

    :goto_0
    iput-object v1, p0, LO3/l0;->f:Ljava/lang/Object;

    return-object v0
.end method
