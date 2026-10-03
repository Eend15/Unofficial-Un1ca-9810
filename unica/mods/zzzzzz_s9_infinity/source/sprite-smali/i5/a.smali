.class public final Li5/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Li5/c;

.field public b:[I

.field public c:I

.field public d:I

.field public e:[Li5/e;

.field public f:I

.field public g:I

.field public h:I


# direct methods
.method public constructor <init>(Li5/c;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Li5/a;->f:I

    const/4 v1, 0x0

    iput v1, p0, Li5/a;->g:I

    new-array v2, v0, [Li5/e;

    iput-object v2, p0, Li5/a;->e:[Li5/e;

    move v2, v1

    :goto_0
    iget v3, p0, Li5/a;->f:I

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Li5/a;->e:[Li5/e;

    new-instance v4, Li5/e;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iput v0, p0, Li5/a;->c:I

    iput v1, p0, Li5/a;->d:I

    new-array v0, v0, [I

    iput-object v0, p0, Li5/a;->b:[I

    iput-object p1, p0, Li5/a;->a:Li5/c;

    const/4 p1, -0x1

    iput p1, p0, Li5/a;->h:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 4

    iget v0, p0, Li5/a;->d:I

    iget v1, p0, Li5/a;->c:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Li5/a;->b:[I

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Li5/a;->c:I

    new-array v1, v1, [I

    iput-object v1, p0, Li5/a;->b:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iget-object v0, p0, Li5/a;->b:[I

    iget v1, p0, Li5/a;->d:I

    aput p1, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Li5/a;->d:I

    return-void
.end method
