.class public final Lv/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Lv/j;

.field public final c:Lv/i;

.field public final d:Lv/h;

.field public final e:Lv/k;

.field public f:Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lv/j;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lv/j;->a:I

    iput v1, v0, Lv/j;->b:I

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v0, Lv/j;->c:F

    const/high16 v3, 0x7fc00000    # Float.NaN

    iput v3, v0, Lv/j;->d:F

    iput-object v0, p0, Lv/g;->b:Lv/j;

    new-instance v0, Lv/i;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v4, -0x1

    iput v4, v0, Lv/i;->a:I

    iput v1, v0, Lv/i;->b:I

    iput v4, v0, Lv/i;->c:I

    iput v3, v0, Lv/i;->d:F

    iput v3, v0, Lv/i;->e:F

    iput v3, v0, Lv/i;->f:F

    iput v4, v0, Lv/i;->g:I

    const/4 v5, 0x0

    iput-object v5, v0, Lv/i;->h:Ljava/lang/String;

    iput v4, v0, Lv/i;->i:I

    iput-object v0, p0, Lv/g;->c:Lv/i;

    new-instance v0, Lv/h;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, v0, Lv/h;->a:Z

    iput v4, v0, Lv/h;->d:I

    iput v4, v0, Lv/h;->e:I

    const/high16 v6, -0x40800000    # -1.0f

    iput v6, v0, Lv/h;->f:F

    const/4 v7, 0x1

    iput-boolean v7, v0, Lv/h;->g:Z

    iput v4, v0, Lv/h;->h:I

    iput v4, v0, Lv/h;->i:I

    iput v4, v0, Lv/h;->j:I

    iput v4, v0, Lv/h;->k:I

    iput v4, v0, Lv/h;->l:I

    iput v4, v0, Lv/h;->m:I

    iput v4, v0, Lv/h;->n:I

    iput v4, v0, Lv/h;->o:I

    iput v4, v0, Lv/h;->p:I

    iput v4, v0, Lv/h;->q:I

    iput v4, v0, Lv/h;->r:I

    iput v4, v0, Lv/h;->s:I

    iput v4, v0, Lv/h;->t:I

    iput v4, v0, Lv/h;->u:I

    iput v4, v0, Lv/h;->v:I

    const/high16 v8, 0x3f000000    # 0.5f

    iput v8, v0, Lv/h;->w:F

    iput v8, v0, Lv/h;->x:F

    iput-object v5, v0, Lv/h;->y:Ljava/lang/String;

    iput v4, v0, Lv/h;->z:I

    iput v1, v0, Lv/h;->A:I

    const/4 v5, 0x0

    iput v5, v0, Lv/h;->B:F

    iput v4, v0, Lv/h;->C:I

    iput v4, v0, Lv/h;->D:I

    iput v4, v0, Lv/h;->E:I

    iput v1, v0, Lv/h;->F:I

    iput v1, v0, Lv/h;->G:I

    iput v1, v0, Lv/h;->H:I

    iput v1, v0, Lv/h;->I:I

    iput v1, v0, Lv/h;->J:I

    iput v1, v0, Lv/h;->K:I

    iput v1, v0, Lv/h;->L:I

    const/high16 v8, -0x80000000

    iput v8, v0, Lv/h;->M:I

    iput v8, v0, Lv/h;->N:I

    iput v8, v0, Lv/h;->O:I

    iput v8, v0, Lv/h;->P:I

    iput v8, v0, Lv/h;->Q:I

    iput v8, v0, Lv/h;->R:I

    iput v8, v0, Lv/h;->S:I

    iput v6, v0, Lv/h;->T:F

    iput v6, v0, Lv/h;->U:F

    iput v1, v0, Lv/h;->V:I

    iput v1, v0, Lv/h;->W:I

    iput v1, v0, Lv/h;->X:I

    iput v1, v0, Lv/h;->Y:I

    iput v1, v0, Lv/h;->Z:I

    iput v1, v0, Lv/h;->a0:I

    iput v1, v0, Lv/h;->b0:I

    iput v1, v0, Lv/h;->c0:I

    iput v2, v0, Lv/h;->d0:F

    iput v2, v0, Lv/h;->e0:F

    iput v4, v0, Lv/h;->f0:I

    iput v1, v0, Lv/h;->g0:I

    iput v4, v0, Lv/h;->h0:I

    iput-boolean v1, v0, Lv/h;->l0:Z

    iput-boolean v1, v0, Lv/h;->m0:Z

    iput-boolean v7, v0, Lv/h;->n0:Z

    iput v1, v0, Lv/h;->o0:I

    iput-object v0, p0, Lv/g;->d:Lv/h;

    new-instance v0, Lv/k;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput v5, v0, Lv/k;->a:F

    iput v5, v0, Lv/k;->b:F

    iput v5, v0, Lv/k;->c:F

    iput v2, v0, Lv/k;->d:F

    iput v2, v0, Lv/k;->e:F

    iput v3, v0, Lv/k;->f:F

    iput v3, v0, Lv/k;->g:F

    iput v4, v0, Lv/k;->h:I

    iput v5, v0, Lv/k;->i:F

    iput v5, v0, Lv/k;->j:F

    iput v5, v0, Lv/k;->k:F

    iput-boolean v1, v0, Lv/k;->l:Z

    iput v5, v0, Lv/k;->m:F

    iput-object v0, p0, Lv/g;->e:Lv/k;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lv/g;->f:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public final a(Lv/c;)V
    .locals 1

    iget-object p0, p0, Lv/g;->d:Lv/h;

    iget v0, p0, Lv/h;->h:I

    iput v0, p1, Lv/c;->e:I

    iget v0, p0, Lv/h;->i:I

    iput v0, p1, Lv/c;->f:I

    iget v0, p0, Lv/h;->j:I

    iput v0, p1, Lv/c;->g:I

    iget v0, p0, Lv/h;->k:I

    iput v0, p1, Lv/c;->h:I

    iget v0, p0, Lv/h;->l:I

    iput v0, p1, Lv/c;->i:I

    iget v0, p0, Lv/h;->m:I

    iput v0, p1, Lv/c;->j:I

    iget v0, p0, Lv/h;->n:I

    iput v0, p1, Lv/c;->k:I

    iget v0, p0, Lv/h;->o:I

    iput v0, p1, Lv/c;->l:I

    iget v0, p0, Lv/h;->p:I

    iput v0, p1, Lv/c;->m:I

    iget v0, p0, Lv/h;->q:I

    iput v0, p1, Lv/c;->n:I

    iget v0, p0, Lv/h;->r:I

    iput v0, p1, Lv/c;->o:I

    iget v0, p0, Lv/h;->s:I

    iput v0, p1, Lv/c;->s:I

    iget v0, p0, Lv/h;->t:I

    iput v0, p1, Lv/c;->t:I

    iget v0, p0, Lv/h;->u:I

    iput v0, p1, Lv/c;->u:I

    iget v0, p0, Lv/h;->v:I

    iput v0, p1, Lv/c;->v:I

    iget v0, p0, Lv/h;->F:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget v0, p0, Lv/h;->G:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    iget v0, p0, Lv/h;->H:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget v0, p0, Lv/h;->I:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    iget v0, p0, Lv/h;->R:I

    iput v0, p1, Lv/c;->A:I

    iget v0, p0, Lv/h;->Q:I

    iput v0, p1, Lv/c;->B:I

    iget v0, p0, Lv/h;->N:I

    iput v0, p1, Lv/c;->x:I

    iget v0, p0, Lv/h;->P:I

    iput v0, p1, Lv/c;->z:I

    iget v0, p0, Lv/h;->w:F

    iput v0, p1, Lv/c;->E:F

    iget v0, p0, Lv/h;->x:F

    iput v0, p1, Lv/c;->F:F

    iget v0, p0, Lv/h;->z:I

    iput v0, p1, Lv/c;->p:I

    iget v0, p0, Lv/h;->A:I

    iput v0, p1, Lv/c;->q:I

    iget v0, p0, Lv/h;->B:F

    iput v0, p1, Lv/c;->r:F

    iget-object v0, p0, Lv/h;->y:Ljava/lang/String;

    iput-object v0, p1, Lv/c;->G:Ljava/lang/String;

    iget v0, p0, Lv/h;->C:I

    iput v0, p1, Lv/c;->T:I

    iget v0, p0, Lv/h;->D:I

    iput v0, p1, Lv/c;->U:I

    iget v0, p0, Lv/h;->T:F

    iput v0, p1, Lv/c;->I:F

    iget v0, p0, Lv/h;->U:F

    iput v0, p1, Lv/c;->H:F

    iget v0, p0, Lv/h;->W:I

    iput v0, p1, Lv/c;->K:I

    iget v0, p0, Lv/h;->V:I

    iput v0, p1, Lv/c;->J:I

    iget-boolean v0, p0, Lv/h;->l0:Z

    iput-boolean v0, p1, Lv/c;->W:Z

    iget-boolean v0, p0, Lv/h;->m0:Z

    iput-boolean v0, p1, Lv/c;->X:Z

    iget v0, p0, Lv/h;->X:I

    iput v0, p1, Lv/c;->L:I

    iget v0, p0, Lv/h;->Y:I

    iput v0, p1, Lv/c;->M:I

    iget v0, p0, Lv/h;->Z:I

    iput v0, p1, Lv/c;->P:I

    iget v0, p0, Lv/h;->a0:I

    iput v0, p1, Lv/c;->Q:I

    iget v0, p0, Lv/h;->b0:I

    iput v0, p1, Lv/c;->N:I

    iget v0, p0, Lv/h;->c0:I

    iput v0, p1, Lv/c;->O:I

    iget v0, p0, Lv/h;->d0:F

    iput v0, p1, Lv/c;->R:F

    iget v0, p0, Lv/h;->e0:F

    iput v0, p1, Lv/c;->S:F

    iget v0, p0, Lv/h;->E:I

    iput v0, p1, Lv/c;->V:I

    iget v0, p0, Lv/h;->f:F

    iput v0, p1, Lv/c;->c:F

    iget v0, p0, Lv/h;->d:I

    iput v0, p1, Lv/c;->a:I

    iget v0, p0, Lv/h;->e:I

    iput v0, p1, Lv/c;->b:I

    iget v0, p0, Lv/h;->b:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    iget v0, p0, Lv/h;->c:I

    iput v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iget-object v0, p0, Lv/h;->k0:Ljava/lang/String;

    if-eqz v0, :cond_0

    iput-object v0, p1, Lv/c;->Y:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lv/h;->o0:I

    iput v0, p1, Lv/c;->Z:I

    iget v0, p0, Lv/h;->K:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    iget p0, p0, Lv/h;->J:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    invoke-virtual {p1}, Lv/c;->a()V

    return-void
.end method

.method public final clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lv/g;

    invoke-direct {v0}, Lv/g;-><init>()V

    iget-object v1, v0, Lv/g;->d:Lv/h;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lv/g;->d:Lv/h;

    iget-boolean v3, v2, Lv/h;->a:Z

    iput-boolean v3, v1, Lv/h;->a:Z

    iget v3, v2, Lv/h;->b:I

    iput v3, v1, Lv/h;->b:I

    iget v3, v2, Lv/h;->c:I

    iput v3, v1, Lv/h;->c:I

    iget v3, v2, Lv/h;->d:I

    iput v3, v1, Lv/h;->d:I

    iget v3, v2, Lv/h;->e:I

    iput v3, v1, Lv/h;->e:I

    iget v3, v2, Lv/h;->f:F

    iput v3, v1, Lv/h;->f:F

    iget-boolean v3, v2, Lv/h;->g:Z

    iput-boolean v3, v1, Lv/h;->g:Z

    iget v3, v2, Lv/h;->h:I

    iput v3, v1, Lv/h;->h:I

    iget v3, v2, Lv/h;->i:I

    iput v3, v1, Lv/h;->i:I

    iget v3, v2, Lv/h;->j:I

    iput v3, v1, Lv/h;->j:I

    iget v3, v2, Lv/h;->k:I

    iput v3, v1, Lv/h;->k:I

    iget v3, v2, Lv/h;->l:I

    iput v3, v1, Lv/h;->l:I

    iget v3, v2, Lv/h;->m:I

    iput v3, v1, Lv/h;->m:I

    iget v3, v2, Lv/h;->n:I

    iput v3, v1, Lv/h;->n:I

    iget v3, v2, Lv/h;->o:I

    iput v3, v1, Lv/h;->o:I

    iget v3, v2, Lv/h;->p:I

    iput v3, v1, Lv/h;->p:I

    iget v3, v2, Lv/h;->q:I

    iput v3, v1, Lv/h;->q:I

    iget v3, v2, Lv/h;->r:I

    iput v3, v1, Lv/h;->r:I

    iget v3, v2, Lv/h;->s:I

    iput v3, v1, Lv/h;->s:I

    iget v3, v2, Lv/h;->t:I

    iput v3, v1, Lv/h;->t:I

    iget v3, v2, Lv/h;->u:I

    iput v3, v1, Lv/h;->u:I

    iget v3, v2, Lv/h;->v:I

    iput v3, v1, Lv/h;->v:I

    iget v3, v2, Lv/h;->w:F

    iput v3, v1, Lv/h;->w:F

    iget v3, v2, Lv/h;->x:F

    iput v3, v1, Lv/h;->x:F

    iget-object v3, v2, Lv/h;->y:Ljava/lang/String;

    iput-object v3, v1, Lv/h;->y:Ljava/lang/String;

    iget v3, v2, Lv/h;->z:I

    iput v3, v1, Lv/h;->z:I

    iget v3, v2, Lv/h;->A:I

    iput v3, v1, Lv/h;->A:I

    iget v3, v2, Lv/h;->B:F

    iput v3, v1, Lv/h;->B:F

    iget v3, v2, Lv/h;->C:I

    iput v3, v1, Lv/h;->C:I

    iget v3, v2, Lv/h;->D:I

    iput v3, v1, Lv/h;->D:I

    iget v3, v2, Lv/h;->E:I

    iput v3, v1, Lv/h;->E:I

    iget v3, v2, Lv/h;->F:I

    iput v3, v1, Lv/h;->F:I

    iget v3, v2, Lv/h;->G:I

    iput v3, v1, Lv/h;->G:I

    iget v3, v2, Lv/h;->H:I

    iput v3, v1, Lv/h;->H:I

    iget v3, v2, Lv/h;->I:I

    iput v3, v1, Lv/h;->I:I

    iget v3, v2, Lv/h;->J:I

    iput v3, v1, Lv/h;->J:I

    iget v3, v2, Lv/h;->K:I

    iput v3, v1, Lv/h;->K:I

    iget v3, v2, Lv/h;->L:I

    iput v3, v1, Lv/h;->L:I

    iget v3, v2, Lv/h;->M:I

    iput v3, v1, Lv/h;->M:I

    iget v3, v2, Lv/h;->N:I

    iput v3, v1, Lv/h;->N:I

    iget v3, v2, Lv/h;->O:I

    iput v3, v1, Lv/h;->O:I

    iget v3, v2, Lv/h;->P:I

    iput v3, v1, Lv/h;->P:I

    iget v3, v2, Lv/h;->Q:I

    iput v3, v1, Lv/h;->Q:I

    iget v3, v2, Lv/h;->R:I

    iput v3, v1, Lv/h;->R:I

    iget v3, v2, Lv/h;->S:I

    iput v3, v1, Lv/h;->S:I

    iget v3, v2, Lv/h;->T:F

    iput v3, v1, Lv/h;->T:F

    iget v3, v2, Lv/h;->U:F

    iput v3, v1, Lv/h;->U:F

    iget v3, v2, Lv/h;->V:I

    iput v3, v1, Lv/h;->V:I

    iget v3, v2, Lv/h;->W:I

    iput v3, v1, Lv/h;->W:I

    iget v3, v2, Lv/h;->X:I

    iput v3, v1, Lv/h;->X:I

    iget v3, v2, Lv/h;->Y:I

    iput v3, v1, Lv/h;->Y:I

    iget v3, v2, Lv/h;->Z:I

    iput v3, v1, Lv/h;->Z:I

    iget v3, v2, Lv/h;->a0:I

    iput v3, v1, Lv/h;->a0:I

    iget v3, v2, Lv/h;->b0:I

    iput v3, v1, Lv/h;->b0:I

    iget v3, v2, Lv/h;->c0:I

    iput v3, v1, Lv/h;->c0:I

    iget v3, v2, Lv/h;->d0:F

    iput v3, v1, Lv/h;->d0:F

    iget v3, v2, Lv/h;->e0:F

    iput v3, v1, Lv/h;->e0:F

    iget v3, v2, Lv/h;->f0:I

    iput v3, v1, Lv/h;->f0:I

    iget v3, v2, Lv/h;->g0:I

    iput v3, v1, Lv/h;->g0:I

    iget v3, v2, Lv/h;->h0:I

    iput v3, v1, Lv/h;->h0:I

    iget-object v3, v2, Lv/h;->k0:Ljava/lang/String;

    iput-object v3, v1, Lv/h;->k0:Ljava/lang/String;

    iget-object v3, v2, Lv/h;->i0:[I

    if-eqz v3, :cond_0

    iget-object v4, v2, Lv/h;->j0:Ljava/lang/String;

    if-nez v4, :cond_0

    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v3

    iput-object v3, v1, Lv/h;->i0:[I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    iput-object v3, v1, Lv/h;->i0:[I

    :goto_0
    iget-object v3, v2, Lv/h;->j0:Ljava/lang/String;

    iput-object v3, v1, Lv/h;->j0:Ljava/lang/String;

    iget-boolean v3, v2, Lv/h;->l0:Z

    iput-boolean v3, v1, Lv/h;->l0:Z

    iget-boolean v3, v2, Lv/h;->m0:Z

    iput-boolean v3, v1, Lv/h;->m0:Z

    iget-boolean v3, v2, Lv/h;->n0:Z

    iput-boolean v3, v1, Lv/h;->n0:Z

    iget v2, v2, Lv/h;->o0:I

    iput v2, v1, Lv/h;->o0:I

    iget-object v1, v0, Lv/g;->c:Lv/i;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lv/g;->c:Lv/i;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lv/i;->a:I

    iput v3, v1, Lv/i;->a:I

    iget v3, v2, Lv/i;->c:I

    iput v3, v1, Lv/i;->c:I

    iget v3, v2, Lv/i;->e:F

    iput v3, v1, Lv/i;->e:F

    iget v2, v2, Lv/i;->d:F

    iput v2, v1, Lv/i;->d:F

    iget-object v1, v0, Lv/g;->b:Lv/j;

    iget-object v2, p0, Lv/g;->b:Lv/j;

    iget v3, v2, Lv/j;->a:I

    iput v3, v1, Lv/j;->a:I

    iget v3, v2, Lv/j;->c:F

    iput v3, v1, Lv/j;->c:F

    iget v3, v2, Lv/j;->d:F

    iput v3, v1, Lv/j;->d:F

    iget v2, v2, Lv/j;->b:I

    iput v2, v1, Lv/j;->b:I

    iget-object v1, v0, Lv/g;->e:Lv/k;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lv/g;->e:Lv/k;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lv/k;->a:F

    iput v3, v1, Lv/k;->a:F

    iget v3, v2, Lv/k;->b:F

    iput v3, v1, Lv/k;->b:F

    iget v3, v2, Lv/k;->c:F

    iput v3, v1, Lv/k;->c:F

    iget v3, v2, Lv/k;->d:F

    iput v3, v1, Lv/k;->d:F

    iget v3, v2, Lv/k;->e:F

    iput v3, v1, Lv/k;->e:F

    iget v3, v2, Lv/k;->f:F

    iput v3, v1, Lv/k;->f:F

    iget v3, v2, Lv/k;->g:F

    iput v3, v1, Lv/k;->g:F

    iget v3, v2, Lv/k;->h:I

    iput v3, v1, Lv/k;->h:I

    iget v3, v2, Lv/k;->i:F

    iput v3, v1, Lv/k;->i:F

    iget v3, v2, Lv/k;->j:F

    iput v3, v1, Lv/k;->j:F

    iget v3, v2, Lv/k;->k:F

    iput v3, v1, Lv/k;->k:F

    iget-boolean v3, v2, Lv/k;->l:Z

    iput-boolean v3, v1, Lv/k;->l:Z

    iget v2, v2, Lv/k;->m:F

    iput v2, v1, Lv/k;->m:F

    iget p0, p0, Lv/g;->a:I

    iput p0, v0, Lv/g;->a:I

    return-object v0
.end method
