.class public final Le5/y;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[B

.field public b:I

.field public c:I

.field public d:Z

.field public final e:Z

.field public f:Le5/y;

.field public g:Le5/y;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2000

    .line 2
    new-array v0, v0, [B

    iput-object v0, p0, Le5/y;->a:[B

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Le5/y;->e:Z

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Le5/y;->d:Z

    return-void
.end method

.method public constructor <init>([BIIZZ)V
    .locals 1

    const-string v0, "data"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Le5/y;->a:[B

    .line 7
    iput p2, p0, Le5/y;->b:I

    .line 8
    iput p3, p0, Le5/y;->c:I

    .line 9
    iput-boolean p4, p0, Le5/y;->d:Z

    .line 10
    iput-boolean p5, p0, Le5/y;->e:Z

    return-void
.end method


# virtual methods
.method public final a()Le5/y;
    .locals 4

    iget-object v0, p0, Le5/y;->f:Le5/y;

    const/4 v1, 0x0

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Le5/y;->g:Le5/y;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Le5/y;->f:Le5/y;

    iput-object v3, v2, Le5/y;->f:Le5/y;

    iget-object v2, p0, Le5/y;->f:Le5/y;

    invoke-static {v2}, LF3/k;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Le5/y;->g:Le5/y;

    iput-object v3, v2, Le5/y;->g:Le5/y;

    iput-object v1, p0, Le5/y;->f:Le5/y;

    iput-object v1, p0, Le5/y;->g:Le5/y;

    return-object v0
.end method

.method public final b(Le5/y;)V
    .locals 1

    const-string v0, "segment"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p0, p1, Le5/y;->g:Le5/y;

    iget-object v0, p0, Le5/y;->f:Le5/y;

    iput-object v0, p1, Le5/y;->f:Le5/y;

    iget-object v0, p0, Le5/y;->f:Le5/y;

    invoke-static {v0}, LF3/k;->c(Ljava/lang/Object;)V

    iput-object p1, v0, Le5/y;->g:Le5/y;

    iput-object p1, p0, Le5/y;->f:Le5/y;

    return-void
.end method

.method public final c()Le5/y;
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Le5/y;->d:Z

    new-instance v0, Le5/y;

    iget v3, p0, Le5/y;->b:I

    iget v4, p0, Le5/y;->c:I

    const/4 v5, 0x1

    const/4 v6, 0x0

    iget-object v2, p0, Le5/y;->a:[B

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Le5/y;-><init>([BIIZZ)V

    return-object v0
.end method

.method public final d(Le5/y;I)V
    .locals 5

    const-string v0, "sink"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p1, Le5/y;->e:Z

    if-eqz v0, :cond_3

    iget v0, p1, Le5/y;->c:I

    add-int v1, v0, p2

    iget-object v2, p1, Le5/y;->a:[B

    const/16 v3, 0x2000

    if-le v1, v3, :cond_2

    iget-boolean v4, p1, Le5/y;->d:Z

    if-nez v4, :cond_1

    iget v4, p1, Le5/y;->b:I

    sub-int/2addr v1, v4

    if-gt v1, v3, :cond_0

    const/4 v1, 0x0

    invoke-static {v1, v4, v0, v2, v2}, Lr3/h;->e0(III[B[B)V

    iget v0, p1, Le5/y;->c:I

    iget v3, p1, Le5/y;->b:I

    sub-int/2addr v0, v3

    iput v0, p1, Le5/y;->c:I

    iput v1, p1, Le5/y;->b:I

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_2
    :goto_0
    iget v0, p1, Le5/y;->c:I

    iget v1, p0, Le5/y;->b:I

    add-int v3, v1, p2

    iget-object v4, p0, Le5/y;->a:[B

    invoke-static {v0, v1, v3, v4, v2}, Lr3/h;->e0(III[B[B)V

    iget v0, p1, Le5/y;->c:I

    add-int/2addr v0, p2

    iput v0, p1, Le5/y;->c:I

    iget p1, p0, Le5/y;->b:I

    add-int/2addr p1, p2

    iput p1, p0, Le5/y;->b:I

    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "only owner can write"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
