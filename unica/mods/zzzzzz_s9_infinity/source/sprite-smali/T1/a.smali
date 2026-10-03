.class public final LT1/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:La2/f;

.field public final b:Landroid/view/View;

.field public final c:La2/d;

.field public final d:La2/d;

.field public final e:LP1/b;

.field public f:Landroid/view/ViewPropertyAnimator;

.field public g:LP1/c;

.field public final synthetic h:Ln1/a;


# direct methods
.method public constructor <init>(Ln1/a;La2/f;Landroid/view/View;La2/d;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LT1/a;->h:Ln1/a;

    iput-object p2, p0, LT1/a;->a:La2/f;

    iput-object p3, p0, LT1/a;->b:Landroid/view/View;

    iput-object p4, p0, LT1/a;->c:La2/d;

    iput-object p4, p0, LT1/a;->d:La2/d;

    sget-object p2, La2/c;->d:La2/c;

    iget-object v0, p4, La2/d;->a:La2/c;

    if-ne v0, p2, :cond_0

    new-instance p2, LP1/b;

    const/4 v0, 0x1

    invoke-direct {p2, p1, p3, p4, v0}, LP1/b;-><init>(Ljava/lang/Object;Landroid/view/View;La2/d;I)V

    iput-object p2, p0, LT1/a;->e:LP1/b;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()LP1/b;
    .locals 0

    iget-object p0, p0, LT1/a;->e:LP1/b;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "frameRunnable"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method
