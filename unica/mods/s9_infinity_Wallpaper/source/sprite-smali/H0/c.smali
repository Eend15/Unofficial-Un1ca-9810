.class public final LH0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK/p;


# instance fields
.field public d:I

.field public final e:Landroid/view/View;

.field public f:I


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LH0/c;->e:Landroid/view/View;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;II)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, LH0/c;->d:I

    iput-object p1, p0, LH0/c;->e:Landroid/view/View;

    iput p3, p0, LH0/c;->f:I

    return-void
.end method


# virtual methods
.method public c(Landroid/view/View;LK/U;)LK/U;
    .locals 3

    iget-object p1, p2, LK/U;->a:LK/S;

    const/4 v0, 0x7

    invoke-virtual {p1, v0}, LK/S;->f(I)LC/b;

    move-result-object p1

    iget p1, p1, LC/b;->b:I

    iget-object v0, p0, LH0/c;->e:Landroid/view/View;

    iget v1, p0, LH0/c;->d:I

    if-ltz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    add-int/2addr v1, p1

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getPaddingLeft()I

    move-result v1

    iget p0, p0, LH0/c;->f:I

    add-int/2addr p0, p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, v1, p0, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method
