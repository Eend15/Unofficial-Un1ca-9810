.class public final Lh5/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh5/i;

.field public final b:Lh5/i;

.field public final c:Lh5/i;

.field public final d:[Lh5/i;

.field public e:I

.field public final f:Lk5/i;

.field public final g:Lk5/i;

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public final j:Lk5/i;

.field public final k:Lk5/i;

.field public final l:Lk5/i;

.field public final m:Lk5/i;

.field public final n:Lk5/i;

.field public final o:Lk5/i;


# direct methods
.method public constructor <init>(LM1/d;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lh5/i;

    invoke-direct {p1}, Lh5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->a:Lh5/i;

    new-instance v0, Lh5/i;

    invoke-direct {v0}, Lh5/i;-><init>()V

    iput-object v0, p0, Lh5/g;->b:Lh5/i;

    new-instance v1, Lh5/i;

    invoke-direct {v1}, Lh5/i;-><init>()V

    iput-object v1, p0, Lh5/g;->c:Lh5/i;

    filled-new-array {p1, v0, v1}, [Lh5/i;

    move-result-object p1

    iput-object p1, p0, Lh5/g;->d:[Lh5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->f:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->g:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->h:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->i:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->j:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->k:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->l:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->m:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->n:Lk5/i;

    new-instance p1, Lk5/i;

    invoke-direct {p1}, Lk5/i;-><init>()V

    iput-object p1, p0, Lh5/g;->o:Lk5/i;

    return-void
.end method


# virtual methods
.method public final a(Lk5/i;)V
    .locals 5

    iget v0, p0, Lh5/g;->e:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    iget-object v2, p0, Lh5/g;->a:Lh5/i;

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p0, 0x3

    if-eq v0, p0, :cond_0

    invoke-virtual {p1}, Lk5/i;->l()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lk5/i;->l()V

    return-void

    :cond_1
    iget-object v0, p0, Lh5/g;->b:Lh5/i;

    iget-object v1, v0, Lh5/i;->c:Lk5/i;

    iget-object v3, p0, Lh5/g;->h:Lk5/i;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Lk5/i;->d:F

    iput v4, v3, Lk5/i;->d:F

    iget v1, v1, Lk5/i;->e:F

    iput v1, v3, Lk5/i;->e:F

    iget v0, v0, Lh5/i;->d:F

    invoke-virtual {v3, v0}, Lk5/i;->h(F)V

    iget-object v0, v2, Lh5/i;->c:Lk5/i;

    iget-object p0, p0, Lh5/g;->g:Lk5/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lk5/i;->d:F

    iput v1, p0, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, p0, Lk5/i;->e:F

    iget v0, v2, Lh5/i;->d:F

    invoke-virtual {p0, v0}, Lk5/i;->h(F)V

    invoke-virtual {p0, v3}, Lk5/i;->b(Lk5/i;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk5/i;->d:F

    iput v0, p1, Lk5/i;->d:F

    iget p0, p0, Lk5/i;->e:F

    iput p0, p1, Lk5/i;->e:F

    return-void

    :cond_2
    iget-object p0, v2, Lh5/i;->c:Lk5/i;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v0, p0, Lk5/i;->d:F

    iput v0, p1, Lk5/i;->d:F

    iget p0, p0, Lk5/i;->e:F

    iput p0, p1, Lk5/i;->e:F

    return-void

    :cond_3
    invoke-virtual {p1}, Lk5/i;->l()V

    return-void
.end method

.method public final b()F
    .locals 5

    iget v0, p0, Lh5/g;->e:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v2, 0x2

    iget-object v3, p0, Lh5/g;->b:Lh5/i;

    iget-object v4, p0, Lh5/g;->a:Lh5/i;

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, v3, Lh5/i;->c:Lk5/i;

    iget-object v1, p0, Lh5/g;->i:Lk5/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lk5/i;->d:F

    iput v2, v1, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, v1, Lk5/i;->e:F

    iget-object v0, v4, Lh5/i;->c:Lk5/i;

    invoke-virtual {v1, v0}, Lk5/i;->m(Lk5/i;)V

    iget-object v0, p0, Lh5/g;->c:Lh5/i;

    iget-object v0, v0, Lh5/i;->c:Lk5/i;

    iget-object p0, p0, Lh5/g;->j:Lk5/i;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v0, Lk5/i;->d:F

    iput v2, p0, Lk5/i;->d:F

    iget v0, v0, Lk5/i;->e:F

    iput v0, p0, Lk5/i;->e:F

    iget-object v0, v4, Lh5/i;->c:Lk5/i;

    invoke-virtual {p0, v0}, Lk5/i;->m(Lk5/i;)V

    invoke-static {v1, p0}, Lk5/i;->d(Lk5/i;Lk5/i;)F

    move-result p0

    return p0

    :cond_1
    iget-object p0, v4, Lh5/i;->c:Lk5/i;

    iget-object v0, v3, Lh5/i;->c:Lk5/i;

    invoke-static {p0, v0}, Lk5/c;->P(Lk5/i;Lk5/i;)F

    move-result p0

    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/StrictMath;->sqrt(D)D

    move-result-wide v0

    double-to-float p0, v0

    return p0

    :cond_2
    return v1
.end method
