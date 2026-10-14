.class public abstract Le5/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le5/B;


# instance fields
.field private final delegate:Le5/B;


# direct methods
.method public constructor <init>(Le5/B;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le5/o;->delegate:Le5/B;

    return-void
.end method


# virtual methods
.method public final -deprecated_delegate()Le5/B;
    .locals 0

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    return-object p0
.end method

.method public close()V
    .locals 0

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    invoke-interface {p0}, Le5/B;->close()V

    return-void
.end method

.method public final delegate()Le5/B;
    .locals 0

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    return-object p0
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    invoke-interface {p0}, Le5/B;->flush()V

    return-void
.end method

.method public timeout()Le5/G;
    .locals 0

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    invoke-interface {p0}, Le5/B;->timeout()Le5/G;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public write(Le5/j;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "source"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Le5/o;->delegate:Le5/B;

    invoke-interface {p0, p1, p2, p3}, Le5/B;->write(Le5/j;J)V

    return-void
.end method
