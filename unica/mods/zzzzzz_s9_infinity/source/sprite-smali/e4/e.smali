.class public abstract Le4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static final b:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 12

    const-class v0, LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v1, Lq3/f;

    const-string v2, "PACKAGE"

    invoke-direct {v1, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->f:LV3/n;

    sget-object v2, LV3/n;->r:LV3/n;

    invoke-static {v0, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v2, Lq3/f;

    const-string v3, "TYPE"

    invoke-direct {v2, v3, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->g:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v3, Lq3/f;

    const-string v4, "ANNOTATION_TYPE"

    invoke-direct {v3, v4, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->h:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v4, Lq3/f;

    const-string v5, "TYPE_PARAMETER"

    invoke-direct {v4, v5, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->j:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v5, Lq3/f;

    const-string v6, "FIELD"

    invoke-direct {v5, v6, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->k:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v6, Lq3/f;

    const-string v7, "LOCAL_VARIABLE"

    invoke-direct {v6, v7, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->l:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v7, Lq3/f;

    const-string v8, "PARAMETER"

    invoke-direct {v7, v8, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->m:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v8, Lq3/f;

    const-string v9, "CONSTRUCTOR"

    invoke-direct {v8, v9, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->n:LV3/n;

    sget-object v9, LV3/n;->o:LV3/n;

    sget-object v10, LV3/n;->p:LV3/n;

    invoke-static {v0, v9, v10}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v9, Lq3/f;

    const-string v10, "METHOD"

    invoke-direct {v9, v10, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/n;->q:LV3/n;

    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    new-instance v10, Lq3/f;

    const-string v11, "TYPE_USE"

    invoke-direct {v10, v11, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array/range {v1 .. v10}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le4/e;->a:Ljava/lang/Object;

    sget-object v0, LV3/m;->d:LV3/m;

    new-instance v1, Lq3/f;

    const-string v2, "RUNTIME"

    invoke-direct {v1, v2, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/m;->e:LV3/m;

    new-instance v2, Lq3/f;

    const-string v3, "CLASS"

    invoke-direct {v2, v3, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v0, LV3/m;->f:LV3/m;

    new-instance v3, Lq3/f;

    const-string v4, "SOURCE"

    invoke-direct {v3, v4, v0}, Lq3/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    filled-new-array {v1, v2, v3}, [Lq3/f;

    move-result-object v0

    invoke-static {v0}, Lr3/v;->f0([Lq3/f;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Le4/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/util/List;)Lx4/b;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, La4/s;

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, La4/s;

    iget-object v1, v1, La4/s;->b:Ljava/lang/Enum;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    invoke-virtual {v1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Le4/e;->a:Ljava/lang/Object;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/EnumSet;

    if-nez v1, :cond_2

    sget-object v1, Lr3/t;->d:Lr3/t;

    :cond_2
    invoke-static {p0, v1}, Lr3/p;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)V

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p0}, Lr3/l;->j0(Ljava/lang/Iterable;)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LV3/n;

    new-instance v2, Lx4/h;

    sget-object v3, LR3/o;->t:Ls4/c;

    invoke-static {v3}, Ls4/b;->j(Ls4/c;)Ls4/b;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lx4/h;-><init>(Ls4/b;Ls4/f;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_4
    new-instance p0, Lx4/b;

    sget-object v1, Le4/d;->d:Le4/d;

    invoke-direct {p0, v0, v1}, Lx4/b;-><init>(Ljava/util/List;LE3/b;)V

    return-object p0
.end method
