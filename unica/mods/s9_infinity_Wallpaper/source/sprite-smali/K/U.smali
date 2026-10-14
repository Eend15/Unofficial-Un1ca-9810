.class public final LK/U;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:LK/U;


# instance fields
.field public final a:LK/S;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, LK/Q;->f:LK/U;

    sput-object v0, LK/U;->b:LK/U;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, LK/S;

    invoke-direct {v0, p0}, LK/S;-><init>(LK/U;)V

    iput-object v0, p0, LK/U;->a:LK/S;

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowInsets;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, LK/Q;

    invoke-direct {v0, p0, p1}, LK/Q;-><init>(LK/U;Landroid/view/WindowInsets;)V

    iput-object v0, p0, LK/U;->a:LK/S;

    return-void
.end method

.method public static f(Landroid/view/View;Landroid/view/WindowInsets;)LK/U;
    .locals 2

    new-instance v0, LK/U;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, p1}, LK/U;-><init>(Landroid/view/WindowInsets;)V

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, LK/D;->a:Ljava/util/WeakHashMap;

    invoke-static {p0}, LK/y;->a(Landroid/view/View;)LK/U;

    move-result-object p1

    iget-object v1, v0, LK/U;->a:LK/S;

    invoke-virtual {v1, p1}, LK/S;->m(LK/U;)V

    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {v1, p0}, LK/S;->d(Landroid/view/View;)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 0

    iget-object p0, p0, LK/U;->a:LK/S;

    invoke-virtual {p0}, LK/S;->h()LC/b;

    move-result-object p0

    iget p0, p0, LC/b;->d:I

    return p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, LK/U;->a:LK/S;

    invoke-virtual {p0}, LK/S;->h()LC/b;

    move-result-object p0

    iget p0, p0, LC/b;->a:I

    return p0
.end method

.method public final c()I
    .locals 0

    iget-object p0, p0, LK/U;->a:LK/S;

    invoke-virtual {p0}, LK/S;->h()LC/b;

    move-result-object p0

    iget p0, p0, LC/b;->c:I

    return p0
.end method

.method public final d()I
    .locals 0

    iget-object p0, p0, LK/U;->a:LK/S;

    invoke-virtual {p0}, LK/S;->h()LC/b;

    move-result-object p0

    iget p0, p0, LC/b;->b:I

    return p0
.end method

.method public final e()Landroid/view/WindowInsets;
    .locals 1

    iget-object p0, p0, LK/U;->a:LK/S;

    instance-of v0, p0, LK/M;

    if-eqz v0, :cond_0

    check-cast p0, LK/M;

    iget-object p0, p0, LK/M;->c:Landroid/view/WindowInsets;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, LK/U;

    if-nez v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    check-cast p1, LK/U;

    iget-object p1, p1, LK/U;->a:LK/S;

    iget-object p0, p0, LK/U;->a:LK/S;

    invoke-static {p0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, LK/U;->a:LK/S;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, LK/S;->hashCode()I

    move-result p0

    :goto_0
    return p0
.end method
