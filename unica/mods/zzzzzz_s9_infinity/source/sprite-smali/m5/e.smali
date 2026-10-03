.class public final Lm5/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[LU0/r;

.field public final b:Lk5/i;

.field public final c:Lk5/a;

.field public final d:Lk5/a;

.field public e:I

.field public f:I

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [LU0/r;

    iput-object v0, p0, Lm5/e;->a:[LU0/r;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/e;->b:Lk5/i;

    new-instance v0, Lk5/a;

    invoke-direct {v0}, Lk5/a;-><init>()V

    iput-object v0, p0, Lm5/e;->c:Lk5/a;

    new-instance v0, Lk5/a;

    invoke-direct {v0}, Lk5/a;-><init>()V

    iput-object v0, p0, Lm5/e;->d:Lk5/a;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm5/e;->a:[LU0/r;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, LU0/r;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, LU0/r;-><init>(I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
