.class public final LR0/b;
.super LB/c;
.source "SourceFile"


# instance fields
.field public final synthetic e:LK/I;

.field public final synthetic f:LR0/d;


# direct methods
.method public constructor <init>(LR0/d;LK/I;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LR0/b;->f:LR0/d;

    iput-object p2, p0, LR0/b;->e:LK/I;

    return-void
.end method


# virtual methods
.method public final d(I)V
    .locals 2

    iget-object v0, p0, LR0/b;->f:LR0/d;

    const/4 v1, 0x1

    iput-boolean v1, v0, LR0/d;->m:Z

    iget-object p0, p0, LR0/b;->e:LK/I;

    invoke-virtual {p0, p1}, LK/I;->g0(I)V

    return-void
.end method

.method public final e(Landroid/graphics/Typeface;)V
    .locals 2

    iget-object v0, p0, LR0/b;->f:LR0/d;

    iget v1, v0, LR0/d;->c:I

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object p1

    iput-object p1, v0, LR0/d;->n:Landroid/graphics/Typeface;

    const/4 p1, 0x1

    iput-boolean p1, v0, LR0/d;->m:Z

    iget-object p1, v0, LR0/d;->n:Landroid/graphics/Typeface;

    const/4 v0, 0x0

    iget-object p0, p0, LR0/b;->e:LK/I;

    invoke-virtual {p0, p1, v0}, LK/I;->h0(Landroid/graphics/Typeface;Z)V

    return-void
.end method
