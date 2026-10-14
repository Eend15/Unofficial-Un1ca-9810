.class public final Lm5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lk5/i;

.field public final b:Lk5/i;

.field public final c:Lk5/i;

.field public d:I

.field public e:I

.field public f:F

.field public g:F

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public j:F

.field public k:F

.field public l:I

.field public m:F

.field public n:F

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lk5/i;

    iput-object v0, p0, Lm5/b;->a:[Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/b;->b:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/b;->c:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/b;->h:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lm5/b;->i:Lk5/i;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lm5/b;->a:[Lk5/i;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    new-instance v2, Lk5/i;

    invoke-direct {v2}, Lk5/i;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
