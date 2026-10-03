.class public final Lc2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/HashMap;

.field public final d:La2/q;

.field public e:Z

.field public final f:Ljava/util/HashMap;

.field public g:La2/k;

.field public h:LA1/e;

.field public i:La2/f;

.field public j:La2/o;

.field public k:La2/d;

.field public l:La2/f;

.field public m:La2/b;

.field public n:La2/h;

.field public o:LS2/b;

.field public p:La2/j;

.field public q:La2/m;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filePath"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lc2/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lc2/b;->b:Ljava/lang/String;

    new-instance p1, Lq3/f;

    const-string p2, "wallpaper"

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lq3/f;

    const-string v2, "content"

    invoke-direct {v1, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lq3/f;

    const-string v4, "template"

    invoke-direct {v3, v4, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1, v1, v3}, [Lq3/f;

    move-result-object p1

    invoke-static {p1}, Lr3/v;->c0([Lq3/f;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lc2/b;->c:Ljava/util/HashMap;

    new-instance p1, La2/q;

    invoke-direct {p1}, La2/q;-><init>()V

    iput-object p1, p0, Lc2/b;->d:La2/q;

    new-instance p1, Lq3/f;

    invoke-direct {p1, p2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance p2, Lq3/f;

    invoke-direct {p2, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lq3/f;

    invoke-direct {v1, v4, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {p1, p2, v1}, [Lq3/f;

    move-result-object p1

    invoke-static {p1}, Lr3/v;->c0([Lq3/f;)Ljava/util/HashMap;

    move-result-object p1

    iput-object p1, p0, Lc2/b;->f:Ljava/util/HashMap;

    return-void
.end method

.method public static a(La2/f;Lc1/i;)V
    .locals 5

    iget-object v0, p1, Lc1/i;->d:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v1, "<set-?>"

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La2/f;->a:Ljava/lang/String;

    iget-object v0, p1, Lc1/i;->w:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La2/f;->r:Ljava/lang/String;

    iget-object v0, p1, Lc1/i;->e:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, La2/f;->p:Z

    iget-object v0, p1, Lc1/i;->g:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La2/f;->q:Ljava/lang/String;

    iget-object v0, p1, Lc1/i;->f:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    const-string v2, "getValue(...)"

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "toUpperCase(...)"

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, La2/i;->valueOf(Ljava/lang/String;)La2/i;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La2/f;->b:La2/i;

    iget-object v0, p1, Lc1/i;->h:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, La2/e;->valueOf(Ljava/lang/String;)La2/e;

    move-result-object v0

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La2/f;->s:La2/e;

    iget-object v0, p1, Lc1/i;->i:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, La2/f;->c:I

    iget-object v0, p1, Lc1/i;->j:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, La2/f;->d:I

    iget-object v0, p1, Lc1/i;->k:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, La2/f;->e:I

    iget-object v0, p1, Lc1/i;->l:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    iput v0, p0, La2/f;->f:I

    iget-object v0, p1, Lc1/i;->m:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, La2/f;->t:F

    iget-object v0, p1, Lc1/i;->n:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, La2/f;->u:F

    iget-object v0, p1, Lc1/i;->o:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, La2/f;->h:Ljava/lang/String;

    iget-object v0, p1, Lc1/i;->p:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, La2/f;->v:F

    iget-object v0, p1, Lc1/i;->q:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, La2/f;->w:F

    iget-object v0, p1, Lc1/i;->r:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, La2/f;->x:F

    iget-object v0, p1, Lc1/i;->y:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, La2/f;->y:F

    iget-object v0, p1, Lc1/i;->u:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, La2/f;->E:Z

    iget-object v0, p1, Lc1/i;->v:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, La2/f;->F:Z

    iget-object v0, p1, Lc1/i;->x:Lb1/a;

    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, La2/f;->G:Z

    iget-object v0, p1, Lc1/i;->s:Lb1/a;

    iget-object v1, v0, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "#0001"

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {v0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/String;

    :goto_0
    iput-object v0, p0, La2/f;->z:Ljava/lang/String;

    iget-object p1, p1, Lc1/i;->t:Lb1/a;

    iget-object v0, p1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#FFFF"

    goto :goto_1

    :cond_1
    iget-object p1, p1, Lb1/a;->b:Ljava/lang/Object;

    invoke-static {p1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/String;

    :goto_1
    iput-object p1, p0, La2/f;->A:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b(La1/a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x2

    const/4 v3, 0x1

    instance-of v4, v1, Lc1/E;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "<set-?>"

    iget-object v8, v0, Lc2/b;->a:Landroid/content/Context;

    iget-object v9, v0, Lc2/b;->d:La2/q;

    const-string v10, "getChildNodes(...)"

    if-eqz v4, :cond_0

    check-cast v1, Lc1/E;

    new-instance v4, LS2/b;

    invoke-direct {v4, v8, v9, v2}, LS2/b;-><init>(Landroid/content/Context;La2/q;I)V

    iput-object v4, v0, Lc2/b;->o:LS2/b;

    iget-object v2, v1, Lc1/E;->d:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->b:Ljava/lang/String;

    iget-object v2, v1, Lc1/E;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->c:Ljava/lang/String;

    iget-object v2, v1, Lc1/E;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->d:Ljava/lang/String;

    iget-object v2, v1, Lc1/E;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->e:Ljava/lang/String;

    iget-object v2, v1, Lc1/E;->h:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->f:Ljava/lang/String;

    iget-object v2, v1, Lc1/E;->i:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v9, La2/q;->h:Z

    iget-object v2, v1, Lc1/E;->j:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v9, La2/q;->g:Z

    iget-object v2, v1, Lc1/E;->k:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->i:Ljava/lang/String;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v5, v2, :cond_88

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    add-int/2addr v5, v3

    goto :goto_0

    :cond_0
    instance-of v4, v1, Lc1/j;

    if-eqz v4, :cond_1

    check-cast v1, Lc1/j;

    new-instance v4, LS2/b;

    invoke-direct {v4, v8, v9, v2}, LS2/b;-><init>(Landroid/content/Context;La2/q;I)V

    iput-object v4, v0, Lc2/b;->o:LS2/b;

    iget-object v2, v1, Lc1/j;->d:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->b:Ljava/lang/String;

    iget-object v2, v1, Lc1/j;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->c:Ljava/lang/String;

    iget-object v2, v1, Lc1/j;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->d:Ljava/lang/String;

    iget-object v2, v1, Lc1/j;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->f:Ljava/lang/String;

    iget-object v2, v1, Lc1/j;->h:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v9, La2/q;->g:Z

    iget-object v2, v1, Lc1/j;->i:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->i:Ljava/lang/String;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1
    if-ge v5, v2, :cond_88

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    add-int/2addr v5, v3

    goto :goto_1

    :cond_1
    instance-of v4, v1, Lc1/C;

    if-eqz v4, :cond_2

    check-cast v1, Lc1/C;

    new-instance v4, LS2/b;

    invoke-direct {v4, v8, v9, v2}, LS2/b;-><init>(Landroid/content/Context;La2/q;I)V

    iput-object v4, v0, Lc2/b;->o:LS2/b;

    iget-object v2, v1, Lc1/C;->d:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->d:Ljava/lang/String;

    iget-object v2, v1, Lc1/C;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->e:Ljava/lang/String;

    iget-object v2, v1, Lc1/C;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v9, La2/q;->f:Ljava/lang/String;

    iget-object v2, v1, Lc1/C;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v9, La2/q;->h:Z

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_2
    if-ge v5, v2, :cond_88

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    add-int/2addr v5, v3

    goto :goto_2

    :cond_2
    instance-of v2, v1, Lc1/x;

    if-eqz v2, :cond_3

    check-cast v1, Lc1/x;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_3
    if-ge v5, v2, :cond_88

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    add-int/2addr v5, v3

    goto :goto_3

    :cond_3
    instance-of v2, v1, Lc1/n;

    const/4 v4, 0x0

    const-string v11, "resource"

    const-string v12, ""

    if-eqz v2, :cond_7

    check-cast v1, Lc1/n;

    new-instance v2, La2/o;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sget-object v6, La2/n;->d:[La2/n;

    iput-object v12, v2, La2/o;->a:Ljava/lang/String;

    iput-object v12, v2, La2/o;->b:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v2, La2/o;->c:Ljava/util/ArrayList;

    iput-object v2, v0, Lc2/b;->j:La2/o;

    iget-object v6, v1, Lc1/n;->e:Lb1/a;

    iget-object v6, v6, Lb1/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v2, La2/o;->b:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->j:La2/o;

    if-eqz v2, :cond_6

    iget-object v6, v1, Lc1/n;->d:Lb1/a;

    iget-object v6, v6, Lb1/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v2, La2/o;->a:Ljava/lang/String;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_4
    if-ge v5, v2, :cond_4

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La1/a;

    invoke-static {v6, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lc2/b;->b(La1/a;)V

    add-int/2addr v5, v3

    goto :goto_4

    :cond_4
    iget-object v1, v9, La2/q;->k:Landroid/util/ArrayMap;

    iget-object v0, v0, Lc2/b;->j:La2/o;

    if-eqz v0, :cond_5

    iget-object v2, v0, La2/o;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_5
    invoke-static {v11}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_6
    invoke-static {v11}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_7
    instance-of v2, v1, Lc1/w;

    if-eqz v2, :cond_9

    check-cast v1, Lc1/w;

    iget-object v0, v0, Lc2/b;->j:La2/o;

    if-eqz v0, :cond_8

    iget-object v0, v0, La2/o;->c:Ljava/util/ArrayList;

    iget-object v1, v1, Lc1/w;->d:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_8
    invoke-static {v11}, LF3/k;->m(Ljava/lang/String;)V

    throw v4

    :cond_9
    instance-of v2, v1, Lc1/f;

    if-eqz v2, :cond_a

    check-cast v1, Lc1/f;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_5
    if-ge v5, v2, :cond_88

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    add-int/2addr v5, v3

    goto :goto_5

    :cond_a
    instance-of v2, v1, Lc1/m;

    const-string v11, "/"

    iget-object v13, v0, Lc2/b;->b:Ljava/lang/String;

    const-string v14, "frame"

    const-string v15, "animation"

    if-eqz v2, :cond_1d

    check-cast v1, Lc1/m;

    new-instance v2, La2/d;

    sget-object v12, La2/c;->d:La2/c;

    invoke-direct {v2, v12}, La2/d;-><init>(La2/c;)V

    iput-object v2, v0, Lc2/b;->k:La2/d;

    iget-object v12, v1, Lc1/m;->d:Lb1/a;

    iget-object v12, v12, Lb1/a;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v2, La2/d;->b:Ljava/lang/String;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v12, v5

    :goto_6
    if-ge v12, v2, :cond_b

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La1/a;

    invoke-static {v5, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Lc2/b;->b(La1/a;)V

    add-int/2addr v12, v3

    const/4 v5, 0x0

    goto :goto_6

    :cond_b
    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_18

    iget-object v5, v1, Lc1/m;->g:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v2, La2/d;->d:I

    iget-object v2, v9, La2/q;->k:Landroid/util/ArrayMap;

    iget-object v5, v1, Lc1/m;->e:Lb1/a;

    iget-object v10, v5, Lb1/a;->b:Ljava/lang/Object;

    invoke-virtual {v2, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La2/o;

    if-eqz v2, :cond_c

    iget-object v10, v2, La2/o;->c:Ljava/util/ArrayList;

    if-eqz v10, :cond_c

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    goto :goto_7

    :cond_c
    move-object v10, v4

    :goto_7
    invoke-static {v10}, LF3/k;->c(Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    const/4 v4, 0x0

    const/16 v16, 0x0

    :goto_8
    if-ge v4, v12, :cond_19

    new-instance v3, La2/b;

    move/from16 p1, v12

    iget-object v12, v0, Lc2/b;->k:La2/d;

    if-eqz v12, :cond_17

    invoke-direct {v3}, La2/b;-><init>()V

    iput-object v3, v0, Lc2/b;->m:La2/b;

    iget-object v12, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    invoke-static {v12, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v3, La2/b;->a:Ljava/lang/String;

    iget-object v3, v0, Lc2/b;->m:La2/b;

    if-eqz v3, :cond_16

    iget-object v12, v1, Lc1/m;->f:Lb1/a;

    iget-object v12, v12, Lb1/a;->b:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Number;

    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    move-result v12

    iput v12, v3, La2/b;->b:I

    iget-object v3, v0, Lc2/b;->k:La2/d;

    if-eqz v3, :cond_15

    iget v3, v3, La2/d;->d:I

    add-int/2addr v3, v4

    if-gtz v16, :cond_d

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-lt v3, v12, :cond_e

    :cond_d
    const/4 v3, 0x1

    add-int/lit8 v12, v16, 0x1

    move/from16 v3, v16

    move/from16 v16, v12

    :cond_e
    iget-object v12, v2, La2/o;->c:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    const-string v12, "get(...)"

    invoke-static {v3, v12}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v3, Ljava/lang/String;

    iget-object v12, v9, La2/q;->n:Landroid/util/ArrayMap;

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v17, v2

    iget-object v2, v0, Lc2/b;->m:La2/b;

    if-eqz v2, :cond_f

    invoke-virtual {v12, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    iput-object v3, v2, La2/b;->c:Landroid/graphics/drawable/Drawable;

    move-object/from16 v18, v5

    goto :goto_9

    :cond_f
    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_10
    move-object/from16 v17, v2

    iget-object v2, v0, Lc2/b;->m:La2/b;

    if-eqz v2, :cond_14

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v5

    iput-object v5, v2, La2/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v2, v0, Lc2/b;->m:La2/b;

    if-eqz v2, :cond_13

    iget-object v2, v2, La2/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v12, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9
    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_12

    iget-object v2, v2, La2/d;->e:Ljava/util/ArrayList;

    iget-object v3, v0, Lc2/b;->m:La2/b;

    if-eqz v3, :cond_11

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    add-int/2addr v4, v2

    move/from16 v12, p1

    move v3, v2

    move-object/from16 v2, v17

    move-object/from16 v5, v18

    goto/16 :goto_8

    :cond_11
    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v2, 0x0

    throw v2

    :cond_12
    const/4 v2, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_13
    const/4 v2, 0x0

    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_14
    const/4 v2, 0x0

    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_15
    const/4 v2, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_16
    const/4 v2, 0x0

    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_17
    const/4 v2, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_18
    move-object v2, v4

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v2

    :cond_19
    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_1c

    iget-object v1, v1, Lc1/m;->h:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, La2/d;->g:Z

    iget-object v1, v9, La2/q;->l:Landroid/util/ArrayMap;

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_1b

    iget-object v3, v2, La2/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lc2/b;->k:La2/d;

    if-eqz v0, :cond_1a

    iget-object v0, v0, La2/d;->b:Ljava/lang/String;

    iget-object v1, v9, La2/q;->m:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_1a
    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_1b
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1c
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_1d
    instance-of v2, v1, Lc1/d;

    if-eqz v2, :cond_25

    check-cast v1, Lc1/d;

    new-instance v2, La2/b;

    iget-object v3, v0, Lc2/b;->k:La2/d;

    if-eqz v3, :cond_24

    invoke-direct {v2}, La2/b;-><init>()V

    iput-object v2, v0, Lc2/b;->m:La2/b;

    iget-object v3, v1, Lc1/d;->d:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, La2/b;->a:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->m:La2/b;

    if-eqz v2, :cond_23

    iget-object v1, v1, Lc1/d;->e:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v2, La2/b;->b:I

    iget-object v1, v9, La2/q;->k:Landroid/util/ArrayMap;

    iget-object v2, v0, Lc2/b;->m:La2/b;

    if-eqz v2, :cond_22

    iget-object v2, v2, La2/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La2/o;

    if-eqz v1, :cond_1e

    iget-object v1, v1, La2/o;->c:Ljava/util/ArrayList;

    if-eqz v1, :cond_1e

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_a

    :cond_1e
    const/4 v1, 0x0

    :goto_a
    iget-object v2, v0, Lc2/b;->m:La2/b;

    if-eqz v2, :cond_21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Le0/a;->T(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, v2, La2/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v1, v0, Lc2/b;->k:La2/d;

    if-eqz v1, :cond_20

    iget-object v1, v1, La2/d;->e:Ljava/util/ArrayList;

    iget-object v0, v0, Lc2/b;->m:La2/b;

    if-eqz v0, :cond_1f

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_1f
    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_20
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_21
    const/4 v0, 0x0

    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_22
    const/4 v0, 0x0

    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_23
    const/4 v0, 0x0

    invoke-static {v14}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_24
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_25
    instance-of v2, v1, Lc1/D;

    if-eqz v2, :cond_2f

    check-cast v1, Lc1/D;

    new-instance v2, La2/d;

    sget-object v3, La2/c;->e:La2/c;

    invoke-direct {v2, v3}, La2/d;-><init>(La2/c;)V

    iput-object v2, v0, Lc2/b;->k:La2/d;

    iget-object v3, v1, Lc1/D;->d:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, La2/d;->b:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_2e

    iget-object v2, v1, Lc1/D;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_2d

    iget-object v2, v1, Lc1/D;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_2c

    iget-object v2, v1, Lc1/D;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_2b

    iget-object v2, v1, Lc1/D;->h:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_2a

    iget-object v2, v1, Lc1/D;->i:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_29

    iget-object v2, v1, Lc1/D;->j:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_28

    iget-object v1, v1, Lc1/D;->k:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    iput v1, v2, La2/d;->c:I

    iget-object v1, v9, La2/q;->l:Landroid/util/ArrayMap;

    iget-object v2, v0, Lc2/b;->k:La2/d;

    if-eqz v2, :cond_27

    iget-object v3, v2, La2/d;->b:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lc2/b;->k:La2/d;

    if-eqz v0, :cond_26

    iget-object v0, v0, La2/d;->b:Ljava/lang/String;

    iget-object v1, v9, La2/q;->m:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_26
    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_27
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_29
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_2a
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_2c
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_2d
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_2e
    const/4 v0, 0x0

    invoke-static {v15}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_2f
    instance-of v2, v1, Lc1/u;

    const-string v3, "layout"

    if-eqz v2, :cond_3b

    check-cast v1, Lc1/u;

    new-instance v2, La2/k;

    invoke-direct {v2}, La2/k;-><init>()V

    iput-object v2, v0, Lc2/b;->g:La2/k;

    iget-object v2, v1, Lc1/u;->d:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_3a

    iget-object v4, v1, Lc1/u;->e:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v2, La2/k;->a:I

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_39

    iget-object v4, v1, Lc1/u;->f:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    iput v4, v2, La2/k;->b:I

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_38

    iget-object v4, v1, Lc1/u;->g:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/k;->c:F

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_37

    iget-object v4, v1, Lc1/u;->h:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/k;->d:F

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_36

    iget-object v4, v1, Lc1/u;->i:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/k;->e:F

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_35

    iget-object v4, v1, Lc1/u;->j:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/k;->f:F

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_34

    iget-object v4, v1, Lc1/u;->k:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/k;->g:F

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_33

    iget-object v4, v1, Lc1/u;->l:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, La2/k;->h:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->g:La2/k;

    if-eqz v2, :cond_32

    iget-object v4, v1, Lc1/u;->m:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, La2/k;->k:Ljava/lang/String;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_b
    if-ge v5, v2, :cond_30

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto :goto_b

    :cond_30
    iget-object v0, v0, Lc2/b;->g:La2/k;

    if-eqz v0, :cond_31

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v9, La2/q;->q:La2/k;

    goto/16 :goto_1b

    :cond_31
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_32
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_33
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_34
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_35
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_36
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_37
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_38
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_39
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_3a
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_3b
    instance-of v2, v1, Lc1/i;

    const-string v4, "container"

    if-eqz v2, :cond_3f

    check-cast v1, Lc1/i;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lc2/b;->e:Z

    new-instance v2, La2/f;

    invoke-direct {v2}, La2/f;-><init>()V

    iput-object v2, v0, Lc2/b;->l:La2/f;

    invoke-static {v2, v1}, Lc2/b;->a(La2/f;Lc1/i;)V

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v2, :cond_3c

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La1/a;

    invoke-static {v6, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lc2/b;->b(La1/a;)V

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_c

    :cond_3c
    iget-object v1, v0, Lc2/b;->g:La2/k;

    if-eqz v1, :cond_3e

    iget-object v1, v1, La2/k;->j:Ljava/util/ArrayList;

    iget-object v0, v0, Lc2/b;->l:La2/f;

    if-eqz v0, :cond_3d

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_3d
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_3e
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_3f
    instance-of v2, v1, Lc1/l;

    const-string v3, "element"

    if-eqz v2, :cond_54

    check-cast v1, Lc1/l;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lc2/b;->e:Z

    new-instance v2, La2/f;

    invoke-direct {v2}, La2/f;-><init>()V

    iput-object v2, v0, Lc2/b;->i:La2/f;

    iget-object v5, v1, Lc1/l;->d:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->a:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_53

    iget-object v5, v1, Lc1/l;->e:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    const-string v6, "getValue(...)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Ljava/lang/String;

    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "toUpperCase(...)"

    invoke-static {v5, v6}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, La2/i;->valueOf(Ljava/lang/String;)La2/i;

    move-result-object v5

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->b:La2/i;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_52

    iget-object v5, v1, Lc1/l;->f:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v2, La2/f;->c:I

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_51

    iget-object v5, v1, Lc1/l;->g:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v2, La2/f;->d:I

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_50

    iget-object v5, v1, Lc1/l;->h:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v2, La2/f;->e:I

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_4f

    iget-object v5, v1, Lc1/l;->i:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v2, La2/f;->f:I

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_4e

    iget-object v5, v1, Lc1/l;->j:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->g:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_4d

    iget-object v5, v1, Lc1/l;->k:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->h:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_4c

    iget-object v5, v1, Lc1/l;->l:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    iput v5, v2, La2/f;->i:I

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_4b

    iget-object v5, v1, Lc1/l;->n:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->l:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_4a

    iget-object v5, v1, Lc1/l;->m:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->j:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_49

    iget-object v5, v1, Lc1/l;->o:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->k:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_48

    iget-object v5, v1, Lc1/l;->p:Lb1/a;

    iget-object v5, v5, Lb1/a;->b:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    invoke-static {v5, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v2, La2/f;->m:Ljava/lang/String;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_d
    if-ge v5, v2, :cond_40

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, La1/a;

    invoke-static {v6, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Lc2/b;->b(La1/a;)V

    const/4 v6, 0x1

    add-int/2addr v5, v6

    goto :goto_d

    :cond_40
    iget-object v1, v0, Lc2/b;->l:La2/f;

    if-eqz v1, :cond_47

    iget-object v1, v1, La2/f;->C:Ljava/util/ArrayList;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_46

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v9, La2/q;->o:Landroid/util/ArrayMap;

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_45

    iget v2, v2, La2/f;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, v9, La2/q;->o:Landroid/util/ArrayMap;

    if-nez v1, :cond_42

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, v0, Lc2/b;->i:La2/f;

    if-eqz v4, :cond_41

    iget v4, v4, La2/f;->i:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    :cond_41
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_42
    :goto_e
    iget-object v1, v0, Lc2/b;->i:La2/f;

    if-eqz v1, :cond_44

    iget v1, v1, La2/f;->i:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_88

    iget-object v0, v0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_43

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_43
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_44
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_45
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_46
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_47
    const/4 v0, 0x0

    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_48
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_49
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4a
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4b
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4c
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4d
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4e
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_4f
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_50
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_51
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_52
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_53
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_54
    instance-of v2, v1, Lc1/g;

    if-eqz v2, :cond_6d

    check-cast v1, Lc1/g;

    iget-object v2, v0, Lc2/b;->l:La2/f;

    if-eqz v2, :cond_6c

    iget-boolean v4, v0, Lc2/b;->e:Z

    if-eqz v4, :cond_56

    iget-object v2, v0, Lc2/b;->i:La2/f;

    if-eqz v2, :cond_55

    goto :goto_f

    :cond_55
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_56
    :goto_f
    new-instance v3, La2/h;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    iput-object v12, v3, La2/h;->a:Ljava/lang/String;

    iput-object v12, v3, La2/h;->b:Ljava/lang/String;

    iput-object v3, v0, Lc2/b;->n:La2/h;

    iget-object v4, v1, Lc1/g;->d:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, La2/h;->a:Ljava/lang/String;

    iget-object v3, v9, La2/q;->m:Landroid/util/ArrayMap;

    iget-object v1, v1, Lc1/g;->e:Lb1/a;

    iget-object v4, v1, Lb1/a;->b:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    const-string v4, "behavior"

    if-nez v3, :cond_57

    goto :goto_10

    :cond_57
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eqz v5, :cond_5b

    :goto_10
    iget-object v5, v1, Lb1/a;->b:Ljava/lang/Object;

    iget-object v6, v9, La2/q;->l:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, La2/d;

    if-eqz v5, :cond_5c

    new-instance v8, La2/d;

    iget-object v10, v5, La2/d;->a:La2/c;

    invoke-direct {v8, v10}, La2/d;-><init>(La2/c;)V

    iget-object v10, v5, La2/d;->b:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "_"

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v10, v8, La2/d;->b:Ljava/lang/String;

    iget v10, v5, La2/d;->c:I

    iput v10, v8, La2/d;->c:I

    iget v10, v5, La2/d;->f:I

    iput v10, v8, La2/d;->f:I

    iget v10, v5, La2/d;->d:I

    iput v10, v8, La2/d;->d:I

    iget-boolean v10, v5, La2/d;->g:Z

    iput-boolean v10, v8, La2/d;->g:Z

    iget-object v5, v5, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-string v10, "iterator(...)"

    invoke-static {v5, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_58

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    const-string v11, "next(...)"

    invoke-static {v10, v11}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v10, La2/b;

    new-instance v11, La2/b;

    invoke-direct {v11}, La2/b;-><init>()V

    iget-object v12, v10, La2/b;->a:Ljava/lang/String;

    invoke-static {v12, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v11, La2/b;->a:Ljava/lang/String;

    iget v12, v10, La2/b;->b:I

    iput v12, v11, La2/b;->b:I

    iget-object v10, v10, La2/b;->c:Landroid/graphics/drawable/Drawable;

    iput-object v10, v11, La2/b;->c:Landroid/graphics/drawable/Drawable;

    iget-object v10, v8, La2/d;->e:Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_58
    iget-object v5, v8, La2/d;->b:Ljava/lang/String;

    invoke-virtual {v6, v5, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, v0, Lc2/b;->n:La2/h;

    if-eqz v5, :cond_5a

    iget-object v6, v8, La2/d;->b:Ljava/lang/String;

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v5, La2/h;->b:Ljava/lang/String;

    iget-object v5, v0, Lc2/b;->n:La2/h;

    if-eqz v5, :cond_59

    const/4 v6, 0x1

    iput-boolean v6, v5, La2/h;->c:Z

    goto :goto_12

    :cond_59
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_5a
    const/4 v0, 0x0

    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_5b
    iget-object v5, v0, Lc2/b;->n:La2/h;

    if-eqz v5, :cond_6b

    iget-object v6, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v5, La2/h;->b:Ljava/lang/String;

    :cond_5c
    :goto_12
    if-eqz v3, :cond_5d

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v5, 0x1

    add-int/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_13

    :cond_5d
    const/4 v3, 0x0

    :goto_13
    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    iget-object v5, v9, La2/q;->m:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc2/b;->o:LS2/b;

    const-string v3, "resourceManager"

    if-eqz v1, :cond_6a

    iget-object v1, v2, La2/f;->b:La2/i;

    const-string v5, "type"

    invoke-static {v1, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v5, La2/i;->e:La2/i;

    if-eq v1, v5, :cond_63

    iget-object v1, v0, Lc2/b;->o:LS2/b;

    if-eqz v1, :cond_62

    iget-object v5, v2, La2/f;->b:La2/i;

    iget-object v5, v5, La2/i;->d:Ljava/lang/String;

    iget-object v1, v1, LS2/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_5f

    iget-object v1, v0, Lc2/b;->o:LS2/b;

    if-eqz v1, :cond_5e

    iget-object v5, v2, La2/f;->b:La2/i;

    iget-object v5, v5, La2/i;->d:Ljava/lang/String;

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, v1, LS2/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v5, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_5e
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_5f
    :goto_14
    iget-object v1, v0, Lc2/b;->o:LS2/b;

    if-eqz v1, :cond_61

    iget-object v3, v2, La2/f;->b:La2/i;

    iget-object v3, v3, La2/i;->d:Ljava/lang/String;

    iget-object v1, v1, LS2/b;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_63

    iget-object v3, v0, Lc2/b;->n:La2/h;

    if-eqz v3, :cond_60

    iget-object v3, v3, La2/h;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_60
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_61
    const/4 v1, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_62
    const/4 v1, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v1

    :cond_63
    :goto_15
    iget-object v1, v0, Lc2/b;->n:La2/h;

    if-eqz v1, :cond_69

    iget-object v3, v1, La2/h;->a:Ljava/lang/String;

    const-string v5, "trigger"

    invoke-static {v3, v5}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v5, v2, La2/f;->o:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_64

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :cond_64
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v3, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lc2/b;->n:La2/h;

    if-eqz v1, :cond_68

    iget-object v1, v1, La2/h;->a:Ljava/lang/String;

    iget-object v3, v9, La2/q;->j:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_66

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v5, v0, Lc2/b;->n:La2/h;

    if-eqz v5, :cond_65

    iget-object v5, v5, La2/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    :cond_65
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_66
    :goto_16
    iget-object v0, v0, Lc2/b;->n:La2/h;

    if-eqz v0, :cond_67

    iget-object v0, v0, La2/h;->a:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_88

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1b

    :cond_67
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_68
    const/4 v0, 0x0

    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_69
    const/4 v0, 0x0

    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6a
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6b
    const/4 v0, 0x0

    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6c
    const/4 v0, 0x0

    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_6d
    instance-of v2, v1, Lc1/p;

    if-eqz v2, :cond_6e

    check-cast v1, Lc1/p;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v2, :cond_88

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La1/a;

    invoke-static {v3, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc2/b;->b(La1/a;)V

    const/4 v3, 0x1

    add-int/2addr v5, v3

    goto :goto_17

    :cond_6e
    instance-of v2, v1, Lc1/k;

    const-string v3, "joint"

    if-eqz v2, :cond_74

    check-cast v1, Lc1/k;

    new-instance v2, La2/g;

    invoke-direct {v2}, La2/j;-><init>()V

    iput-object v2, v0, Lc2/b;->p:La2/j;

    iget-object v4, v1, Lc1/k;->d:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, La2/j;->a:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_73

    check-cast v2, La2/g;

    iget-object v4, v1, Lc1/k;->e:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/g;->c:F

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_72

    check-cast v2, La2/g;

    iget-object v4, v1, Lc1/k;->f:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/g;->d:F

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_71

    check-cast v2, La2/g;

    iget-object v4, v1, Lc1/k;->g:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/g;->e:F

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_18
    if-ge v5, v2, :cond_6f

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto :goto_18

    :cond_6f
    iget-object v1, v9, La2/q;->p:Landroid/util/ArrayMap;

    iget-object v0, v0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_70

    iget-object v2, v0, La2/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_70
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_71
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_72
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_73
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_74
    instance-of v2, v1, Lc1/y;

    if-eqz v2, :cond_7c

    check-cast v1, Lc1/y;

    new-instance v2, La2/p;

    invoke-direct {v2}, La2/j;-><init>()V

    iput-object v2, v0, Lc2/b;->p:La2/j;

    iget-object v4, v1, Lc1/y;->d:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, La2/j;->a:Ljava/lang/String;

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_7b

    check-cast v2, La2/p;

    iget-object v4, v1, Lc1/y;->e:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, La2/p;->c:Z

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_7a

    check-cast v2, La2/p;

    iget-object v4, v1, Lc1/y;->f:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v2, La2/p;->d:Z

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_79

    check-cast v2, La2/p;

    iget-object v4, v1, Lc1/y;->g:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/p;->e:F

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_78

    check-cast v2, La2/p;

    iget-object v4, v1, Lc1/y;->h:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/p;->f:F

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_77

    check-cast v2, La2/p;

    iget-object v4, v1, Lc1/y;->i:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, La2/p;->g:F

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v5, 0x0

    :goto_19
    if-ge v5, v2, :cond_75

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, La1/a;

    invoke-static {v4, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lc2/b;->b(La1/a;)V

    const/4 v4, 0x1

    add-int/2addr v5, v4

    goto :goto_19

    :cond_75
    iget-object v1, v9, La2/q;->p:Landroid/util/ArrayMap;

    iget-object v0, v0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_76

    iget-object v2, v0, La2/j;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1b

    :cond_76
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_77
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_78
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_79
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_7a
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_7b
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_7c
    instance-of v2, v1, Lc1/c;

    if-eqz v2, :cond_83

    check-cast v1, Lc1/c;

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_82

    iget-object v4, v1, Lc1/c;->d:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, La2/j;->b:Lw0/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, Lw0/i;->e:Ljava/lang/Object;

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_81

    iget-object v4, v1, Lc1/c;->e:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v2, v2, La2/j;->b:Lw0/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v2, Lw0/i;->f:Ljava/lang/Object;

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_80

    iget-object v2, v2, La2/j;->b:Lw0/i;

    iget-object v2, v2, Lw0/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v4, v1, Lc1/c;->f:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_7f

    iget-object v2, v2, La2/j;->b:Lw0/i;

    iget-object v2, v2, Lw0/i;->g:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v4, v1, Lc1/c;->g:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->y:F

    iget-object v2, v0, Lc2/b;->p:La2/j;

    if-eqz v2, :cond_7e

    iget-object v2, v2, La2/j;->b:Lw0/i;

    iget-object v2, v2, Lw0/i;->h:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/PointF;

    iget-object v4, v1, Lc1/c;->h:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->floatValue()F

    move-result v4

    iput v4, v2, Landroid/graphics/PointF;->x:F

    iget-object v0, v0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_7d

    iget-object v0, v0, La2/j;->b:Lw0/i;

    iget-object v0, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v1, v1, Lc1/c;->i:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_1b

    :cond_7d
    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_7e
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_7f
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_80
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_81
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_82
    const/4 v0, 0x0

    invoke-static {v3}, LF3/k;->m(Ljava/lang/String;)V

    throw v0

    :cond_83
    instance-of v2, v1, Lc1/b;

    if-eqz v2, :cond_85

    check-cast v1, Lc1/b;

    new-instance v2, La2/a;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v12, v2, La2/a;->a:Ljava/lang/String;

    iput-object v12, v2, La2/a;->b:Ljava/lang/String;

    iget-object v3, v1, Lc1/b;->d:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v1, Lc1/b;->e:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, La2/a;->a:Ljava/lang/String;

    iget-object v3, v1, Lc1/b;->f:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    invoke-static {v3, v7}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, La2/a;->b:Ljava/lang/String;

    iget-object v3, v1, Lc1/b;->g:Lb1/a;

    iget-object v3, v3, Lb1/a;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->floatValue()F

    move-result v3

    iput v3, v2, La2/a;->c:F

    iget-object v1, v1, Lc1/b;->h:Lb1/a;

    iget-object v1, v1, Lb1/a;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v2, La2/a;->d:F

    iget-object v0, v0, Lc2/b;->l:La2/f;

    if-eqz v0, :cond_84

    iget-object v0, v0, La2/f;->D:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1b

    :cond_84
    invoke-static {v4}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_85
    instance-of v2, v1, Lc1/v;

    if-eqz v2, :cond_88

    check-cast v1, Lc1/v;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const-string v3, "loadModularSpecNode: count = "

    invoke-static {v2, v3}, Li4/b;->e(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "SpecNodeUtils"

    invoke-static {v5, v2, v4}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v2, LA1/e;

    const/16 v4, 0x19

    invoke-direct {v2, v4, v3}, LA1/e;-><init>(IZ)V

    iput-object v2, v0, Lc2/b;->h:LA1/e;

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v5, v3

    :goto_1a
    if-ge v5, v2, :cond_86

    invoke-virtual {v1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, La1/a;

    invoke-static {v3, v10}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lc2/b;->c(La1/a;)V

    const/4 v3, 0x1

    add-int/2addr v5, v3

    goto :goto_1a

    :cond_86
    iget-object v0, v0, Lc2/b;->h:LA1/e;

    if-eqz v0, :cond_87

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, v9, La2/q;->s:LA1/e;

    goto :goto_1b

    :cond_87
    const-string v0, "modluar"

    invoke-static {v0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0

    :cond_88
    :goto_1b
    return-void
.end method

.method public final c(La1/a;)V
    .locals 9

    instance-of v0, p1, Lc1/t;

    const-string v1, "modluar"

    const-string v2, "<set-?>"

    const/4 v3, 0x0

    const-string v4, "getChildNodes(...)"

    const/4 v5, 0x0

    if-eqz v0, :cond_1

    check-cast p1, Lc1/t;

    new-instance v0, La2/l;

    invoke-direct {v0}, La2/l;-><init>()V

    iget-object v6, p1, Lc1/t;->d:Lb1/a;

    iget-object v6, v6, Lb1/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lc2/b;->h:LA1/e;

    if-eqz v2, :cond_0

    iget-object v1, v2, LA1/e;->d:Ljava/lang/Object;

    check-cast v1, Landroid/util/ArrayMap;

    invoke-virtual {v1, v6, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    if-ge v5, v0, :cond_33

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/a;

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1
    instance-of v0, p1, Lc1/s;

    const-string v6, "layoutArrayItem"

    const/4 v7, 0x1

    if-eqz v0, :cond_7

    check-cast p1, Lc1/s;

    new-instance v0, La2/m;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const-string v8, ""

    iput-object v8, v0, La2/m;->a:Ljava/lang/String;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, La2/m;->b:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, La2/m;->c:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, La2/m;->d:Landroid/util/ArrayMap;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, La2/m;->e:Landroid/util/ArrayMap;

    iput-object v0, p0, Lc2/b;->q:La2/m;

    iget-object v8, p1, Lc1/s;->d:Lb1/a;

    iget-object v8, v8, Lb1/a;->b:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-static {v8, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v8, v0, La2/m;->a:Ljava/lang/String;

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_1
    if-ge v5, v0, :cond_2

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lc2/b;->h:LA1/e;

    if-eqz p1, :cond_6

    iget-object p1, p1, LA1/e;->d:Ljava/lang/Object;

    check-cast p1, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    sub-int/2addr p1, v7

    iget-object v0, p0, Lc2/b;->h:LA1/e;

    if-eqz v0, :cond_5

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->h:LA1/e;

    if-eqz v0, :cond_4

    iget-object v0, v0, LA1/e;->d:Ljava/lang/Object;

    check-cast v0, Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La2/l;

    if-eqz p1, :cond_33

    iget-object p1, p1, La2/l;->a:Ljava/util/ArrayList;

    if-eqz p1, :cond_33

    iget-object p0, p0, Lc2/b;->q:La2/m;

    if-eqz p0, :cond_3

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_7

    :cond_3
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_4
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_5
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_6
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_7
    instance-of v0, p1, Lc1/p;

    if-eqz v0, :cond_8

    check-cast p1, Lc1/p;

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v5, v0, :cond_33

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La1/a;

    invoke-static {v1, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_8
    instance-of v0, p1, Lc1/k;

    const-string v1, "joint"

    if-eqz v0, :cond_f

    check-cast p1, Lc1/k;

    new-instance v0, La2/g;

    invoke-direct {v0}, La2/j;-><init>()V

    iput-object v0, p0, Lc2/b;->p:La2/j;

    iget-object v7, p1, Lc1/k;->d:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/j;->a:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_e

    check-cast v0, La2/g;

    iget-object v2, p1, Lc1/k;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, La2/g;->c:F

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_d

    check-cast v0, La2/g;

    iget-object v2, p1, Lc1/k;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, La2/g;->d:F

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_c

    check-cast v0, La2/g;

    iget-object v2, p1, Lc1/k;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, La2/g;->e:F

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_3
    if-ge v5, v0, :cond_9

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    iget-object p1, p0, Lc2/b;->q:La2/m;

    if-eqz p1, :cond_b

    iget-object p0, p0, Lc2/b;->p:La2/j;

    if-eqz p0, :cond_a

    iget-object v0, p0, La2/j;->a:Ljava/lang/String;

    iget-object p1, p1, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_a
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_b
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_c
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_d
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_e
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_f
    instance-of v0, p1, Lc1/y;

    if-eqz v0, :cond_18

    check-cast p1, Lc1/y;

    new-instance v0, La2/p;

    invoke-direct {v0}, La2/j;-><init>()V

    iput-object v0, p0, Lc2/b;->p:La2/j;

    iget-object v7, p1, Lc1/y;->d:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/j;->a:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_17

    check-cast v0, La2/p;

    iget-object v2, p1, Lc1/y;->e:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, La2/p;->c:Z

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_16

    check-cast v0, La2/p;

    iget-object v2, p1, Lc1/y;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iput-boolean v2, v0, La2/p;->d:Z

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_15

    check-cast v0, La2/p;

    iget-object v2, p1, Lc1/y;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, La2/p;->e:F

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_14

    check-cast v0, La2/p;

    iget-object v2, p1, Lc1/y;->h:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, La2/p;->f:F

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_13

    check-cast v0, La2/p;

    iget-object v2, p1, Lc1/y;->i:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, La2/p;->g:F

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_4
    if-ge v5, v0, :cond_10

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_10
    iget-object p1, p0, Lc2/b;->q:La2/m;

    if-eqz p1, :cond_12

    iget-object p0, p0, Lc2/b;->p:La2/j;

    if-eqz p0, :cond_11

    iget-object v0, p0, La2/j;->a:Ljava/lang/String;

    iget-object p1, p1, La2/m;->b:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_11
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_12
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_13
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_14
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_15
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_16
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_17
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_18
    instance-of v0, p1, Lc1/c;

    if-eqz v0, :cond_1f

    check-cast p1, Lc1/c;

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_1e

    iget-object v4, p1, Lc1/c;->d:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, La2/j;->b:Lw0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lw0/i;->e:Ljava/lang/Object;

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_1d

    iget-object v4, p1, Lc1/c;->e:Lb1/a;

    iget-object v4, v4, Lb1/a;->b:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v0, v0, La2/j;->b:Lw0/i;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v4, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v0, Lw0/i;->f:Ljava/lang/Object;

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_1c

    iget-object v0, v0, La2/j;->b:Lw0/i;

    iget-object v0, v0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v2, p1, Lc1/c;->f:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_1b

    iget-object v0, v0, La2/j;->b:Lw0/i;

    iget-object v0, v0, Lw0/i;->g:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v2, p1, Lc1/c;->g:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lc2/b;->p:La2/j;

    if-eqz v0, :cond_1a

    iget-object v0, v0, La2/j;->b:Lw0/i;

    iget-object v0, v0, Lw0/i;->h:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/PointF;

    iget-object v2, p1, Lc1/c;->h:Lb1/a;

    iget-object v2, v2, Lb1/a;->b:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, v0, Landroid/graphics/PointF;->x:F

    iget-object p0, p0, Lc2/b;->p:La2/j;

    if-eqz p0, :cond_19

    iget-object p0, p0, La2/j;->b:Lw0/i;

    iget-object p0, p0, Lw0/i;->h:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/PointF;

    iget-object p1, p1, Lc1/c;->i:Lb1/a;

    iget-object p1, p1, Lb1/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Landroid/graphics/PointF;->y:F

    goto/16 :goto_7

    :cond_19
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1a
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1b
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1c
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1d
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1e
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_1f
    instance-of v0, p1, Lc1/i;

    const-string v1, "container"

    if-eqz v0, :cond_23

    check-cast p1, Lc1/i;

    iput-boolean v5, p0, Lc2/b;->e:Z

    new-instance v0, La2/f;

    invoke-direct {v0}, La2/f;-><init>()V

    iput-object v0, p0, Lc2/b;->l:La2/f;

    invoke-static {v0, p1}, Lc2/b;->a(La2/f;Lc1/i;)V

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_5
    if-ge v5, v0, :cond_20

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_20
    iget-object p1, p0, Lc2/b;->q:La2/m;

    if-eqz p1, :cond_22

    iget-object p0, p0, Lc2/b;->l:La2/f;

    if-eqz p0, :cond_21

    iget-object v0, p0, La2/f;->a:Ljava/lang/String;

    iget-object p1, p1, La2/m;->c:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0, p0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_7

    :cond_21
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_22
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_23
    instance-of v0, p1, Lc1/l;

    if-eqz v0, :cond_33

    check-cast p1, Lc1/l;

    iput-boolean v7, p0, Lc2/b;->e:Z

    new-instance v0, La2/f;

    invoke-direct {v0}, La2/f;-><init>()V

    iput-object v0, p0, Lc2/b;->i:La2/f;

    iget-object v6, p1, Lc1/l;->d:Lb1/a;

    iget-object v6, v6, Lb1/a;->b:Ljava/lang/Object;

    check-cast v6, Ljava/lang/String;

    invoke-static {v6, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v6, v0, La2/f;->a:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    const-string v6, "element"

    if-eqz v0, :cond_32

    iget-object v7, p1, Lc1/l;->e:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    const-string v8, "getValue(...)"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/String;

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v7, v8}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "toUpperCase(...)"

    invoke-static {v7, v8}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v7}, La2/i;->valueOf(Ljava/lang/String;)La2/i;

    move-result-object v7

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->b:La2/i;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_31

    iget-object v7, p1, Lc1/l;->f:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v0, La2/f;->c:I

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_30

    iget-object v7, p1, Lc1/l;->g:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v0, La2/f;->d:I

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_2f

    iget-object v7, p1, Lc1/l;->h:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v0, La2/f;->e:I

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_2e

    iget-object v7, p1, Lc1/l;->i:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v0, La2/f;->f:I

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_2d

    iget-object v7, p1, Lc1/l;->j:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->g:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_2c

    iget-object v7, p1, Lc1/l;->k:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->h:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_2b

    iget-object v7, p1, Lc1/l;->l:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    iput v7, v0, La2/f;->i:I

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_2a

    iget-object v7, p1, Lc1/l;->n:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->l:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_29

    iget-object v7, p1, Lc1/l;->m:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->j:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_28

    iget-object v7, p1, Lc1/l;->o:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->k:Ljava/lang/String;

    iget-object v0, p0, Lc2/b;->i:La2/f;

    if-eqz v0, :cond_27

    iget-object v7, p1, Lc1/l;->p:Lb1/a;

    iget-object v7, v7, Lb1/a;->b:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-static {v7, v2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v7, v0, La2/f;->m:Ljava/lang/String;

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-ge v5, v0, :cond_24

    invoke-virtual {p1}, La1/a;->b()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, La1/a;

    invoke-static {v2, v4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lc2/b;->c(La1/a;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_24
    iget-object p1, p0, Lc2/b;->l:La2/f;

    if-eqz p1, :cond_26

    iget-object p1, p1, La2/f;->C:Ljava/util/ArrayList;

    iget-object p0, p0, Lc2/b;->i:La2/f;

    if-eqz p0, :cond_25

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_25
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_26
    invoke-static {v1}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_27
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_28
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_29
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2a
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2b
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2c
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2d
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2e
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_2f
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_30
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_31
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_32
    invoke-static {v6}, LF3/k;->m(Ljava/lang/String;)V

    throw v3

    :cond_33
    :goto_7
    return-void
.end method

.method public final d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    const-string v0, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.ContentSpecNode"

    iget-object v1, p0, Lc2/b;->f:Ljava/util/HashMap;

    const-string v2, "wallpaper"

    invoke-virtual {v1, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    iget-object v3, p0, Lc2/b;->c:Ljava/util/HashMap;

    const-string v4, "template"

    const-string v5, "content"

    const/4 v6, 0x0

    const-string v7, "SpecNodeUtils"

    if-eqz p1, :cond_3

    invoke-virtual {v1, v5, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "Wallpaper and Content XML is NOT valid"

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lc1/E;

    invoke-direct {p1}, Lc1/E;-><init>()V

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_0
    :try_start_0
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, La4/x;->K(Ljava/lang/String;)La1/a;

    move-result-object p1

    invoke-static {p1, v0}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc1/j;

    invoke-virtual {v3, v5, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Lc1/E;

    invoke-direct {p2}, Lc1/E;-><init>()V

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v8, "CONTENT spec node xml parsing error = "

    invoke-direct {p2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v0}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc1/j;

    iget-object p1, p1, Lc1/j;->e:Lb1/a;

    iget-object p1, p1, Lb1/a;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TemplateName is NOT valid"

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lc1/E;

    invoke-direct {p1}, Lc1/E;-><init>()V

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v1, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Template XML is NOT valid"

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p1, Lc1/E;

    invoke-direct {p1}, Lc1/E;-><init>()V

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    :try_start_1
    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, La4/x;->K(Ljava/lang/String;)La1/a;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.TemplateSpecNode"

    invoke-static {p1, p2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc1/C;

    invoke-virtual {v3, v4, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance p2, Lc1/C;

    invoke-direct {p2}, Lc1/C;-><init>()V

    invoke-virtual {v3, v4, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "TEMPLATE spec node xml parsing error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :try_start_2
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, La4/x;->K(Ljava/lang/String;)La1/a;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type com.samsung.android.app.dressroom.wallpaperxml.spec.wallpaper.WallpaperSpecNode"

    invoke-static {p1, p2}, LF3/k;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lc1/E;

    invoke-virtual {v3, v2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception p1

    new-instance p2, Lc1/E;

    invoke-direct {p2}, Lc1/E;-><init>()V

    invoke-virtual {v3, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "WALLPAPER spec node xml parsing error = "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v6, [Ljava/lang/Object;

    invoke-static {v7, p1, p2}, Lf2/j;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La1/a;

    if-eqz p1, :cond_4

    const-string p2, "saveSpecNode: Wallpaper spec node load"

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v7, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc2/b;->b(La1/a;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La1/a;

    if-eqz p1, :cond_5

    const-string p2, "saveSpecNode: Content spec node load"

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v7, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc2/b;->b(La1/a;)V

    :cond_5
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, La1/a;

    if-eqz p1, :cond_6

    const-string p2, "saveSpecNode: Template spec node load"

    new-array p3, v6, [Ljava/lang/Object;

    invoke-static {v7, p2, p3}, Lf2/j;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lc2/b;->b(La1/a;)V

    :cond_6
    :goto_2
    return-void
.end method
