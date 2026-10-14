.class public final Lh5/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La0/l;

.field public final b:Lk5/h;

.field public final c:Lk5/i;

.field public d:Lk5/i;

.field public e:Lk5/i;

.field public final f:Lk5/i;

.field public final g:Lk5/i;

.field public final h:Lk5/i;

.field public final i:Lk5/i;

.field public j:F

.field public k:Z

.field public final l:Lk5/i;

.field public final m:Lk5/i;

.field public final n:[Lo1/b;

.field public final o:[Lo1/b;

.field public final p:[Lo1/b;

.field public final q:Lh5/c;

.field public final r:Lh5/a;

.field public final s:Lh5/a;

.field public final t:Lk5/i;

.field public final u:Lk5/i;


# direct methods
.method public constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, La0/l;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, La0/l;-><init>(IZ)V

    iput-object v0, p0, Lh5/b;->a:La0/l;

    new-instance v0, Lk5/h;

    invoke-direct {v0}, Lk5/h;-><init>()V

    iput-object v0, p0, Lh5/b;->b:Lk5/h;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->c:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->d:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->e:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->f:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->g:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->h:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->i:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->l:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lh5/b;->m:Lk5/i;

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lo1/b;

    iput-object v1, p0, Lh5/b;->n:[Lo1/b;

    new-array v1, v0, [Lo1/b;

    iput-object v1, p0, Lh5/b;->o:[Lo1/b;

    new-array v1, v0, [Lo1/b;

    iput-object v1, p0, Lh5/b;->p:[Lo1/b;

    new-instance v1, Lh5/c;

    invoke-direct {v1}, Lh5/c;-><init>()V

    iput-object v1, p0, Lh5/b;->q:Lh5/c;

    new-instance v1, Lh5/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lh5/b;->r:Lh5/a;

    new-instance v1, Lh5/a;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lh5/b;->s:Lh5/a;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/b;->t:Lk5/i;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, p0, Lh5/b;->u:Lk5/i;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lh5/b;->n:[Lo1/b;

    new-instance v3, Lo1/b;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lo1/b;-><init>(I)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lh5/b;->o:[Lo1/b;

    new-instance v3, Lo1/b;

    invoke-direct {v3, v4}, Lo1/b;-><init>(I)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lh5/b;->p:[Lo1/b;

    new-instance v3, Lo1/b;

    invoke-direct {v3, v4}, Lo1/b;-><init>(I)V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
