.class public final Ln5/b;
.super Ln5/d;
.source "SourceFile"


# instance fields
.field public final e:Lk5/i;

.field public final f:Lk5/i;

.field public g:F

.field public h:F

.field public i:F


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ln5/d;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Ln5/d;->a:I

    new-instance v0, Lk5/i;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lk5/i;-><init>(FF)V

    iput-object v0, p0, Ln5/b;->e:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0, v1, v1}, Lk5/i;-><init>(FF)V

    iput-object v0, p0, Ln5/b;->f:Lk5/i;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ln5/b;->g:F

    iput v1, p0, Ln5/b;->h:F

    iput v1, p0, Ln5/b;->i:F

    return-void
.end method
