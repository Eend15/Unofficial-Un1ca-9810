.class public final Lh5/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lk5/i;

.field public final b:Lk5/i;

.field public final c:Lk5/i;

.field public d:F

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/i;->a:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/i;->b:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/i;->c:Lk5/i;

    return-void
.end method


# virtual methods
.method public final a(Lh5/i;)V
    .locals 3

    iget-object v0, p1, Lh5/i;->a:Lk5/i;

    iget-object v1, p0, Lh5/i;->a:Lk5/i;

    iget v2, v0, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v1, Lk5/i;->e:F

    iget-object v0, p0, Lh5/i;->b:Lk5/i;

    iget-object v1, p1, Lh5/i;->b:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    iget-object v0, p0, Lh5/i;->c:Lk5/i;

    iget-object v1, p1, Lh5/i;->c:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    iput v2, v0, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v0, Lk5/i;->e:F

    iget v0, p1, Lh5/i;->d:F

    iput v0, p0, Lh5/i;->d:F

    iget v0, p1, Lh5/i;->e:I

    iput v0, p0, Lh5/i;->e:I

    iget p1, p1, Lh5/i;->f:I

    iput p1, p0, Lh5/i;->f:I

    return-void
.end method
