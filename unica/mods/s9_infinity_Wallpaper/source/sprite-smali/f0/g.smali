.class public final Lf0/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le0/c;


# instance fields
.field public final d:Landroid/content/Context;

.field public final e:Ljava/lang/String;

.field public final f:La0/l;

.field public final g:Z

.field public final h:Z

.field public final i:Lq3/j;

.field public j:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;La0/l;ZZ)V
    .locals 1

    const-string v0, "callback"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf0/g;->d:Landroid/content/Context;

    iput-object p2, p0, Lf0/g;->e:Ljava/lang/String;

    iput-object p3, p0, Lf0/g;->f:La0/l;

    iput-boolean p4, p0, Lf0/g;->g:Z

    iput-boolean p5, p0, Lf0/g;->h:Z

    new-instance p1, La0/o;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, La0/o;-><init>(ILjava/lang/Object;)V

    new-instance p2, Lq3/j;

    invoke-direct {p2, p1}, Lq3/j;-><init>(LE3/a;)V

    iput-object p2, p0, Lf0/g;->i:Lq3/j;

    return-void
.end method


# virtual methods
.method public final O()Lf0/c;
    .locals 1

    iget-object p0, p0, Lf0/g;->i:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf0/f;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lf0/f;->a(Z)Lf0/c;

    move-result-object p0

    return-object p0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lf0/g;->i:Lq3/j;

    iget-object v0, v0, Lq3/j;->e:Ljava/lang/Object;

    sget-object v1, Lq3/l;->a:Lq3/l;

    if-eq v0, v1, :cond_0

    iget-object p0, p0, Lf0/g;->i:Lq3/j;

    invoke-virtual {p0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lf0/f;

    invoke-virtual {p0}, Lf0/f;->close()V

    :cond_0
    return-void
.end method

.method public final setWriteAheadLoggingEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lf0/g;->i:Lq3/j;

    iget-object v0, v0, Lq3/j;->e:Ljava/lang/Object;

    sget-object v1, Lq3/l;->a:Lq3/l;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lf0/g;->i:Lq3/j;

    invoke-virtual {v0}, Lq3/j;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lf0/f;

    const-string v1, "sQLiteOpenHelper"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    :cond_0
    iput-boolean p1, p0, Lf0/g;->j:Z

    return-void
.end method
