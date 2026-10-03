.class public final La2/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Z

.field public h:Z

.field public i:Ljava/lang/String;

.field public final j:Landroid/util/ArrayMap;

.field public final k:Landroid/util/ArrayMap;

.field public final l:Landroid/util/ArrayMap;

.field public final m:Landroid/util/ArrayMap;

.field public final n:Landroid/util/ArrayMap;

.field public final o:Landroid/util/ArrayMap;

.field public final p:Landroid/util/ArrayMap;

.field public q:La2/k;

.field public final r:La2/l;

.field public s:LA1/e;

.field public t:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, La2/q;->a:Ljava/lang/String;

    iput-object v0, p0, La2/q;->b:Ljava/lang/String;

    iput-object v0, p0, La2/q;->c:Ljava/lang/String;

    iput-object v0, p0, La2/q;->d:Ljava/lang/String;

    iput-object v0, p0, La2/q;->e:Ljava/lang/String;

    iput-object v0, p0, La2/q;->f:Ljava/lang/String;

    iput-object v0, p0, La2/q;->i:Ljava/lang/String;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->j:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->k:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->l:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->m:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->n:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->o:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, La2/q;->p:Landroid/util/ArrayMap;

    new-instance v0, La2/k;

    invoke-direct {v0}, La2/k;-><init>()V

    iput-object v0, p0, La2/q;->q:La2/k;

    new-instance v0, La2/l;

    invoke-direct {v0}, La2/l;-><init>()V

    iput-object v0, p0, La2/q;->r:La2/l;

    new-instance v0, LA1/e;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LA1/e;-><init>(IZ)V

    iput-object v0, p0, La2/q;->s:LA1/e;

    new-instance v0, Landroid/graphics/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, La2/q;->t:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    iget-object v0, p0, La2/q;->j:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, La2/q;->k:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, La2/q;->l:Landroid/util/ArrayMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const-string v4, "next(...)"

    const-string v5, "iterator(...)"

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/d;

    iget-object v6, v2, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    invoke-static {v6, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, La2/b;

    iput-object v3, v5, La2/b;->c:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget-object v2, v2, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, La2/q;->m:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, La2/q;->n:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, La2/q;->q:La2/k;

    iget-object v1, v0, La2/k;->i:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, La2/k;->j:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La2/f;

    invoke-virtual {v6}, La2/f;->a()V

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iput-object v3, v0, La2/k;->l:Ll5/a;

    iget-object v0, p0, La2/q;->o:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, La2/q;->p:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object p0, p0, La2/q;->s:LA1/e;

    iget-object p0, p0, LA1/e;->d:Ljava/lang/Object;

    check-cast p0, Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/l;

    iget-object v1, v1, La2/l;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-static {v2, v5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, La2/m;

    iget-object v6, v3, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v6, v3, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v6, v3, La2/m;->d:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V

    iget-object v3, v3, La2/m;->e:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->clear()V

    goto :goto_4

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Landroid/util/ArrayMap;->clear()V

    return-void
.end method

.method public final b()La2/k;
    .locals 0

    iget-object p0, p0, La2/q;->q:La2/k;

    return-object p0
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, La2/q;->f:Ljava/lang/String;

    return-object p0
.end method
