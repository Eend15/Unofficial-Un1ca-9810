.class public final Lq5/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lq5/a;

.field public final b:Lq5/a;

.field public final c:Lq5/a;

.field public final d:Lq5/a;

.field public final e:Lq5/c;

.field public final f:Lq5/b;

.field public final g:Lq5/b;

.field public final h:Lq5/b;

.field public final i:Lq5/b;

.field public final j:Lq5/b;

.field public final k:Lq5/b;

.field public final l:Lq5/b;

.field public final m:Lh5/d;

.field public final n:Lh5/o;

.field public final o:LM1/d;


# direct methods
.method public constructor <init>()V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object p0, p0, Lq5/c;->e:Lq5/c;

    new-instance v0, Lq5/b;

    sget v1, Lk5/e;->a:I

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->f:Lq5/b;

    new-instance v0, Lq5/b;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->g:Lq5/b;

    new-instance v0, Lq5/b;

    const/4 v3, 0x2

    invoke-direct {v0, p0, v3}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->h:Lq5/b;

    new-instance v0, Lq5/b;

    const/4 v4, 0x3

    invoke-direct {v0, p0, v4}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->i:Lq5/b;

    new-instance v0, Lq5/b;

    const/4 v5, 0x4

    invoke-direct {v0, p0, v5}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->j:Lq5/b;

    new-instance v0, Lq5/b;

    const/4 v6, 0x5

    invoke-direct {v0, p0, v6}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->k:Lq5/b;

    new-instance v0, Lq5/b;

    const/4 v7, 0x6

    invoke-direct {v0, p0, v7}, Lq5/b;-><init>(Lq5/c;I)V

    iput-object v0, p0, Lq5/c;->l:Lq5/b;

    new-instance v0, Lq5/a;

    invoke-direct {v0, v5}, Lq5/a;-><init>(I)V

    iput-object v0, p0, Lq5/c;->a:Lq5/a;

    new-instance v0, Lq5/a;

    invoke-direct {v0, v6}, Lq5/a;-><init>(I)V

    iput-object v0, p0, Lq5/c;->b:Lq5/a;

    new-instance v0, Lq5/a;

    invoke-direct {v0, v1}, Lq5/a;-><init>(I)V

    iput-object v0, p0, Lq5/c;->c:Lq5/a;

    new-instance v0, Lq5/a;

    invoke-direct {v0, v2}, Lq5/a;-><init>(I)V

    new-instance v0, Lq5/a;

    invoke-direct {v0, v3}, Lq5/a;-><init>(I)V

    iput-object v0, p0, Lq5/c;->d:Lq5/a;

    new-instance v0, Lq5/a;

    invoke-direct {v0, v4}, Lq5/a;-><init>(I)V

    new-instance v0, LM1/d;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lh5/g;

    invoke-direct {v1, v0}, Lh5/g;-><init>(LM1/d;)V

    iput-object v1, v0, LM1/d;->a:Ljava/lang/Object;

    new-array v1, v4, [I

    iput-object v1, v0, LM1/d;->b:Ljava/lang/Object;

    new-array v1, v4, [I

    iput-object v1, v0, LM1/d;->c:Ljava/lang/Object;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, v0, LM1/d;->d:Ljava/lang/Object;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, v0, LM1/d;->e:Ljava/lang/Object;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, v0, LM1/d;->f:Ljava/lang/Object;

    new-instance v1, Lk5/i;

    invoke-direct {v1}, Lk5/i;-><init>()V

    iput-object v1, v0, LM1/d;->g:Ljava/lang/Object;

    iput-object v0, p0, Lq5/c;->o:LM1/d;

    new-instance v0, Lh5/d;

    invoke-direct {v0, p0}, Lh5/d;-><init>(Lq5/c;)V

    iput-object v0, p0, Lq5/c;->m:Lh5/d;

    new-instance v0, Lh5/o;

    invoke-direct {v0, p0}, Lh5/o;-><init>(Lq5/c;)V

    iput-object v0, p0, Lq5/c;->n:Lh5/o;

    return-void
.end method


# virtual methods
.method public final a()Lk5/d;
    .locals 0

    iget-object p0, p0, Lq5/c;->d:Lq5/a;

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->r()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk5/d;

    return-object p0
.end method

.method public final b()Lk5/i;
    .locals 0

    iget-object p0, p0, Lq5/c;->a:Lq5/a;

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->r()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lk5/i;

    return-object p0
.end method

.method public final c(I)V
    .locals 1

    iget-object p0, p0, Lq5/c;->a:Lq5/a;

    iget v0, p0, Landroidx/emoji2/text/f;->a:I

    sub-int/2addr v0, p1

    iput v0, p0, Landroidx/emoji2/text/f;->a:I

    return-void
.end method
