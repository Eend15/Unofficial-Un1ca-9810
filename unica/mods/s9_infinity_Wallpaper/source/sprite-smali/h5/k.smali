.class public final Lh5/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[Lh5/l;

.field public final b:Lk5/i;

.field public final c:Lk5/i;

.field public d:I

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lh5/l;

    iput-object v1, p0, Lh5/k;->a:[Lh5/l;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lh5/k;->a:[Lh5/l;

    new-instance v4, Lh5/l;

    invoke-direct {v4}, Lh5/l;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/k;->b:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/k;->c:Lk5/i;

    iput v1, p0, Lh5/k;->e:I

    return-void
.end method
