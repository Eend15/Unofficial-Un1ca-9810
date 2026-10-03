.class public abstract Le4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/f;

.field public static final b:Ls4/f;

.field public static final c:Ls4/f;

.field public static final d:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-string v0, "message"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, Le4/c;->a:Ls4/f;

    const-string v0, "allowedTargets"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, Le4/c;->b:Ls4/f;

    const-string v0, "value"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, Le4/c;->c:Ls4/f;

    sget-object v0, LR3/o;->s:Ls4/c;

    sget-object v1, Ld4/x;->c:Ls4/c;

    new-instance v2, Lq3/f;

    invoke-direct {v2, v0, v1}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v3, LR3/o;->v:Ls4/c;

    sget-object v4, Ld4/x;->d:Ls4/c;

    new-instance v5, Lq3/f;

    invoke-direct {v5, v3, v4}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v6, LR3/o;->w:Ls4/c;

    sget-object v7, Ld4/x;->g:Ls4/c;

    new-instance v8, Lq3/f;

    invoke-direct {v8, v6, v7}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v9, LR3/o;->x:Ls4/c;

    sget-object v10, Ld4/x;->f:Ls4/c;

    new-instance v11, Lq3/f;

    invoke-direct {v11, v9, v10}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v5, v8, v11}, [Lq3/f;

    move-result-object v2

    invoke-static {v2}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v2

    sput-object v2, Le4/c;->d:Ljava/lang/Object;

    new-instance v2, Lq3/f;

    invoke-direct {v2, v1, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Lq3/f;

    invoke-direct {v0, v4, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ld4/x;->e:Ls4/c;

    sget-object v3, LR3/o;->m:Ls4/c;

    new-instance v4, Lq3/f;

    invoke-direct {v4, v1, v3}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v1, Lq3/f;

    invoke-direct {v1, v7, v6}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lq3/f;

    invoke-direct {v3, v10, v9}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v2, v0, v4, v1, v3}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    return-void
.end method

.method public static a(Ls4/c;Lj4/b;Landroidx/recyclerview/widget/b;)Lf4/h;
    .locals 2

    const-string v0, "kotlinName"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotationOwner"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, LR3/o;->m:Ls4/c;

    invoke-virtual {p0, v0}, Ls4/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ld4/x;->e:Ls4/c;

    const-string v1, "DEPRECATED_ANNOTATION"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Lj4/b;->a(Ls4/c;)La4/c;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Le4/g;

    invoke-direct {p0, v0, p2}, Le4/g;-><init>(La4/c;Landroidx/recyclerview/widget/b;)V

    return-object p0

    :cond_1
    :goto_0
    sget-object v0, Le4/c;->d:Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ls4/c;

    const/4 v0, 0x0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1, p0}, Lj4/b;->a(Ls4/c;)La4/c;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    invoke-static {p0, p2, p1}, Le4/c;->b(La4/c;Landroidx/recyclerview/widget/b;Z)Lf4/h;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method public static b(La4/c;Landroidx/recyclerview/widget/b;Z)Lf4/h;
    .locals 2

    const-string v0, "annotation"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "c"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, La4/c;->a:Ljava/lang/annotation/Annotation;

    invoke-static {v0}, Lw0/f;->u(Ljava/lang/annotation/Annotation;)LL3/b;

    move-result-object v0

    invoke-static {v0}, Lw0/f;->x(LL3/b;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object v0

    sget-object v1, Ld4/x;->c:Ls4/c;

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance p2, Le4/j;

    invoke-direct {p2, p0, p1}, Le4/j;-><init>(La4/c;Landroidx/recyclerview/widget/b;)V

    goto :goto_0

    :cond_0
    sget-object v1, Ld4/x;->d:Ls4/c;

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance p2, Le4/i;

    invoke-direct {p2, p0, p1}, Le4/i;-><init>(La4/c;Landroidx/recyclerview/widget/b;)V

    goto :goto_0

    :cond_1
    sget-object v1, Ld4/x;->g:Ls4/c;

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance p2, Le4/b;

    sget-object v0, LR3/o;->w:Ls4/c;

    invoke-direct {p2, p1, p0, v0}, Le4/b;-><init>(Landroidx/recyclerview/widget/b;La4/c;Ls4/c;)V

    goto :goto_0

    :cond_2
    sget-object v1, Ld4/x;->f:Ls4/c;

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance p2, Le4/b;

    sget-object v0, LR3/o;->x:Ls4/c;

    invoke-direct {p2, p1, p0, v0}, Le4/b;-><init>(Landroidx/recyclerview/widget/b;La4/c;Ls4/c;)V

    goto :goto_0

    :cond_3
    sget-object v1, Ld4/x;->e:Ls4/c;

    invoke-static {v1}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ls4/b;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 p2, 0x0

    goto :goto_0

    :cond_4
    new-instance v0, Lh4/f;

    invoke-direct {v0, p0, p1, p2}, Lh4/f;-><init>(La4/c;Landroidx/recyclerview/widget/b;Z)V

    move-object p2, v0

    :goto_0
    return-object p2
.end method
