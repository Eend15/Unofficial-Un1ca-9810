.class public final Ln5/f;
.super Ln5/d;
.source "SourceFile"


# instance fields
.field public final e:Lk5/i;

.field public final f:Lk5/i;

.field public g:F

.field public h:Z

.field public i:F

.field public j:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ln5/d;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Ln5/d;->a:I

    new-instance v0, Lk5/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lk5/i;-><init>(FF)V

    iput-object v0, p0, Ln5/f;->e:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0, v1, v1}, Lk5/i;-><init>(FF)V

    iput-object v0, p0, Ln5/f;->f:Lk5/i;

    iput v1, p0, Ln5/f;->g:F

    iput v1, p0, Ln5/f;->i:F

    iput v1, p0, Ln5/f;->j:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Ln5/f;->h:Z

    return-void
.end method
