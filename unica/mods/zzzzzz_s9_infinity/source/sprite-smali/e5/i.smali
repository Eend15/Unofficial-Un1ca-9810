.class public final Le5/i;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final synthetic d:Le5/j;


# direct methods
.method public constructor <init>(Le5/j;)V
    .locals 0

    iput-object p1, p0, Le5/i;->d:Le5/j;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public final close()V
    .locals 0

    return-void
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Le5/i;->d:Le5/j;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ".outputStream()"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final write(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Le5/i;->d:Le5/j;

    invoke-virtual {p0, p1}, Le5/j;->j0(I)V

    return-void
.end method

.method public final write([BII)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Le5/i;->d:Le5/j;

    invoke-virtual {p0, p1, p2, p3}, Le5/j;->i0([BII)V

    return-void
.end method
