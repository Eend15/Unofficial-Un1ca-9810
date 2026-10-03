.class public abstract Landroidx/emoji2/text/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    new-array v1, v0, [Ljava/lang/Object;

    iput-object v1, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    iget-object v3, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/emoji2/text/f;->p()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iput v1, p0, Landroidx/emoji2/text/f;->a:I

    const/16 v0, 0xa

    .line 5
    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/emoji2/text/h;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroidx/emoji2/text/f;->a:I

    .line 12
    new-instance v0, Landroidx/emoji2/text/c;

    invoke-direct {v0}, Landroidx/emoji2/text/c;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    .line 13
    iput-object p1, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/I;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x80000000

    .line 7
    iput v0, p0, Landroidx/emoji2/text/f;->a:I

    .line 8
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroidx/emoji2/text/f;->c:Ljava/lang/Object;

    .line 9
    iput-object p1, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Landroidx/recyclerview/widget/I;I)Landroidx/emoji2/text/f;
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    new-instance p1, Landroidx/recyclerview/widget/z;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/z;-><init>(Landroidx/recyclerview/widget/I;I)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Landroidx/recyclerview/widget/z;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/recyclerview/widget/z;-><init>(Landroidx/recyclerview/widget/I;I)V

    return-object p1
.end method


# virtual methods
.method public abstract b(Landroid/view/View;)I
.end method

.method public abstract c(Landroid/view/View;)I
.end method

.method public abstract d(Landroid/view/View;)I
.end method

.method public abstract e(Landroid/view/View;)I
.end method

.method public abstract f()I
.end method

.method public abstract g()I
.end method

.method public abstract h()I
.end method

.method public abstract i()I
.end method

.method public abstract j()I
.end method

.method public abstract k()I
.end method

.method public abstract l()I
.end method

.method public m()I
    .locals 2

    const/high16 v0, -0x80000000

    iget v1, p0, Landroidx/emoji2/text/f;->a:I

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/emoji2/text/f;->l()I

    move-result v0

    iget p0, p0, Landroidx/emoji2/text/f;->a:I

    sub-int p0, v0, p0

    :goto_0
    return p0
.end method

.method public abstract n(Landroid/view/View;)I
.end method

.method public abstract o(Landroid/view/View;)I
.end method

.method public abstract p()Ljava/lang/Object;
.end method

.method public abstract q(I)V
.end method

.method public r()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Landroidx/emoji2/text/f;->a:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroidx/emoji2/text/f;->a:I

    iget-object p0, p0, Landroidx/emoji2/text/f;->b:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    aget-object p0, p0, v0

    return-object p0
.end method
