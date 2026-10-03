.class public final LW4/F;
.super LW4/G;
.source "SourceFile"


# instance fields
.field public final f:LW4/e;

.field public final synthetic g:LW4/I;


# direct methods
.method public constructor <init>(LW4/I;JLW4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LW4/F;->g:LW4/I;

    iput-wide p2, p0, LW4/G;->d:J

    const/4 p1, -0x1

    iput p1, p0, LW4/G;->e:I

    iput-object p4, p0, LW4/F;->f:LW4/e;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, LW4/F;->f:LW4/e;

    iget-object p0, p0, LW4/F;->g:LW4/I;

    invoke-virtual {v0, p0}, LW4/e;->r(LW4/q;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, LW4/G;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, LW4/F;->f:LW4/e;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
