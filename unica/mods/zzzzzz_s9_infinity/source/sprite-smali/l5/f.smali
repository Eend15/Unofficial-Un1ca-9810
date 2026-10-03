.class public final Ll5/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lg5/a;

.field public b:[Ll5/a;

.field public c:[Lm5/a;

.field public d:[Ln5/c;

.field public e:[Lm5/f;

.field public f:[Lm5/f;

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public final l:Lm5/d;

.field public final m:Lk5/g;

.field public final n:Lw0/m;

.field public final o:Lg4/e;

.field public final p:Lm5/d;

.field public final q:Lg4/e;

.field public final r:Lw0/e;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lm5/d;

    invoke-direct {v0}, Lm5/d;-><init>()V

    iput-object v0, p0, Ll5/f;->l:Lm5/d;

    new-instance v0, Lk5/g;

    invoke-direct {v0}, Lk5/g;-><init>()V

    iput-object v0, p0, Ll5/f;->m:Lk5/g;

    new-instance v0, Lw0/m;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lw0/m;-><init>(I)V

    iput-object v0, p0, Ll5/f;->n:Lw0/m;

    new-instance v0, Lg4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll5/f;->o:Lg4/e;

    new-instance v0, Lm5/d;

    invoke-direct {v0}, Lm5/d;-><init>()V

    iput-object v0, p0, Ll5/f;->p:Lm5/d;

    new-instance v0, Lg4/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ll5/f;->q:Lg4/e;

    new-instance v0, Lw0/e;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    iput-object v2, v0, Lw0/e;->d:Ljava/lang/Object;

    new-array v1, v1, [F

    iput-object v1, v0, Lw0/e;->e:Ljava/lang/Object;

    iput-object v0, p0, Ll5/f;->r:Lw0/e;

    return-void
.end method


# virtual methods
.method public final a(Ll5/a;)V
    .locals 2

    iget v0, p0, Ll5/f;->g:I

    iput v0, p1, Ll5/a;->b:I

    iget-object v1, p0, Ll5/f;->b:[Ll5/a;

    aput-object p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ll5/f;->g:I

    return-void
.end method

.method public final b(IIILg5/a;)V
    .locals 1

    iput p1, p0, Ll5/f;->j:I

    iput p2, p0, Ll5/f;->k:I

    const/4 v0, 0x0

    iput v0, p0, Ll5/f;->g:I

    iput v0, p0, Ll5/f;->i:I

    iput v0, p0, Ll5/f;->h:I

    iput-object p4, p0, Ll5/f;->a:Lg5/a;

    iget-object p4, p0, Ll5/f;->b:[Ll5/a;

    if-eqz p4, :cond_0

    array-length p4, p4

    if-le p1, p4, :cond_1

    :cond_0
    new-array p4, p1, [Ll5/a;

    iput-object p4, p0, Ll5/f;->b:[Ll5/a;

    :cond_1
    iget-object p4, p0, Ll5/f;->d:[Ln5/c;

    if-eqz p4, :cond_2

    array-length p4, p4

    if-le p3, p4, :cond_3

    :cond_2
    new-array p3, p3, [Ln5/c;

    iput-object p3, p0, Ll5/f;->d:[Ln5/c;

    :cond_3
    iget-object p3, p0, Ll5/f;->c:[Lm5/a;

    if-eqz p3, :cond_4

    array-length p3, p3

    if-le p2, p3, :cond_5

    :cond_4
    new-array p2, p2, [Lm5/a;

    iput-object p2, p0, Ll5/f;->c:[Lm5/a;

    :cond_5
    iget-object p2, p0, Ll5/f;->f:[Lm5/f;

    if-eqz p2, :cond_6

    array-length p3, p2

    if-le p1, p3, :cond_8

    :cond_6
    if-nez p2, :cond_7

    new-array p2, v0, [Lm5/f;

    :cond_7
    new-array p1, p1, [Lm5/f;

    iput-object p1, p0, Ll5/f;->f:[Lm5/f;

    array-length p3, p2

    invoke-static {p2, v0, p1, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p2

    :goto_0
    iget-object p2, p0, Ll5/f;->f:[Lm5/f;

    array-length p3, p2

    if-ge p1, p3, :cond_8

    new-instance p3, Lm5/f;

    const/4 p4, 0x1

    invoke-direct {p3, p4}, Lm5/f;-><init>(I)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_8
    iget-object p1, p0, Ll5/f;->e:[Lm5/f;

    if-eqz p1, :cond_9

    iget p2, p0, Ll5/f;->j:I

    array-length p3, p1

    if-le p2, p3, :cond_b

    :cond_9
    if-nez p1, :cond_a

    new-array p1, v0, [Lm5/f;

    :cond_a
    iget p2, p0, Ll5/f;->j:I

    new-array p2, p2, [Lm5/f;

    iput-object p2, p0, Ll5/f;->e:[Lm5/f;

    array-length p3, p1

    invoke-static {p1, v0, p2, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    :goto_1
    iget-object p2, p0, Ll5/f;->e:[Lm5/f;

    array-length p3, p2

    if-ge p1, p3, :cond_b

    new-instance p3, Lm5/f;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Lm5/f;-><init>(I)V

    aput-object p3, p2, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_b
    return-void
.end method

.method public final c([Lm5/e;)V
    .locals 8

    iget-object v0, p0, Ll5/f;->a:Lg5/a;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ll5/f;->i:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Ll5/f;->c:[Lm5/a;

    aget-object v2, v2, v1

    aget-object v2, p1, v1

    iget v3, v2, Lm5/e;->m:I

    iget-object v3, p0, Ll5/f;->r:Lw0/e;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move v4, v0

    :goto_1
    iget v5, v2, Lm5/e;->m:I

    if-ge v4, v5, :cond_1

    iget-object v5, v3, Lw0/e;->d:Ljava/lang/Object;

    check-cast v5, [F

    iget-object v6, v2, Lm5/e;->a:[LU0/r;

    aget-object v6, v6, v4

    iget v7, v6, LU0/r;->a:F

    aput v7, v5, v4

    iget-object v5, v3, Lw0/e;->e:Ljava/lang/Object;

    check-cast v5, [F

    iget v6, v6, LU0/r;->b:F

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Ll5/f;->a:Lg5/a;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
