.class public final La2/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/lang/String;

.field public B:Ll5/a;

.field public final C:Ljava/util/ArrayList;

.field public final D:Ljava/util/ArrayList;

.field public E:Z

.field public F:Z

.field public G:Z

.field public H:Z

.field public a:Ljava/lang/String;

.field public b:La2/i;

.field public c:I

.field public d:I

.field public e:I

.field public f:I

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:I

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:Ljava/lang/String;

.field public m:Ljava/lang/String;

.field public n:Landroid/view/View;

.field public final o:Landroid/util/ArrayMap;

.field public p:Z

.field public q:Ljava/lang/String;

.field public r:Ljava/lang/String;

.field public s:La2/e;

.field public t:F

.field public u:F

.field public v:F

.field public w:F

.field public x:F

.field public y:F

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La2/f;->a:Ljava/lang/String;

    sget-object v1, La2/i;->e:La2/i;

    iput-object v1, p0, La2/f;->b:La2/i;

    iput-object v0, p0, La2/f;->g:Ljava/lang/String;

    iput-object v0, p0, La2/f;->h:Ljava/lang/String;

    iput-object v0, p0, La2/f;->j:Ljava/lang/String;

    iput-object v0, p0, La2/f;->k:Ljava/lang/String;

    iput-object v0, p0, La2/f;->l:Ljava/lang/String;

    const-string v1, "fitXY"

    iput-object v1, p0, La2/f;->m:Ljava/lang/String;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, La2/f;->o:Landroid/util/ArrayMap;

    const-string v1, "dynamic"

    iput-object v1, p0, La2/f;->q:Ljava/lang/String;

    iput-object v0, p0, La2/f;->r:Ljava/lang/String;

    sget-object v0, La2/e;->d:La2/e;

    iput-object v0, p0, La2/f;->s:La2/e;

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, La2/f;->t:F

    const-string v0, "1"

    iput-object v0, p0, La2/f;->z:Ljava/lang/String;

    const-string v0, "#FFFF"

    iput-object v0, p0, La2/f;->A:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/f;->C:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, La2/f;->D:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, La2/f;->n:Landroid/view/View;

    iget-object v0, p0, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, La2/f;->C:Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/f;

    invoke-virtual {v1}, La2/f;->a()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final b()Z
    .locals 1

    iget-object p0, p0, La2/f;->b:La2/i;

    sget-object v0, La2/i;->f:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->g:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->h:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->i:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->j:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->k:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->l:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->m:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->n:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->o:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->p:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->q:La2/i;

    if-eq p0, v0, :cond_1

    sget-object v0, La2/i;->r:La2/i;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
