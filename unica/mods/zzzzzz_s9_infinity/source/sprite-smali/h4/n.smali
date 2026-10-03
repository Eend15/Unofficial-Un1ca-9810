.class public final Lh4/n;
.super LX3/F;
.source "SourceFile"


# static fields
.field public static final synthetic p:[LL3/l;


# instance fields
.field public final j:La4/z;

.field public final k:Landroidx/recyclerview/widget/b;

.field public final l:LI4/i;

.field public final m:Lh4/d;

.field public final n:LI4/c;

.field public final o:LV3/h;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, LF3/o;

    sget-object v1, LF3/t;->a:LF3/u;

    const-class v2, Lh4/n;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v3

    const-string v4, "binaryClasses"

    const-string v5, "getBinaryClasses$descriptors_jvm()Ljava/util/Map;"

    invoke-direct {v0, v3, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v0

    new-instance v3, LF3/o;

    invoke-virtual {v1, v2}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object v2

    const-string v4, "partToFacade"

    const-string v5, "getPartToFacade()Ljava/util/HashMap;"

    invoke-direct {v3, v2, v4, v5}, LF3/o;-><init>(LL3/b;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, LF3/u;->f(LF3/o;)LL3/k;

    move-result-object v1

    filled-new-array {v0, v1}, [LL3/l;

    move-result-object v0

    sput-object v0, Lh4/n;->p:[LL3/l;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/b;La4/z;)V
    .locals 4

    const-string v0, "outerContext"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, p2, La4/z;->a:Ls4/c;

    iget-object v0, v0, Lg4/a;->o:LX3/D;

    invoke-direct {p0, v0, v1}, LX3/F;-><init>(LU3/x;Ls4/c;)V

    iput-object p2, p0, Lh4/n;->j:La4/z;

    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {p1, p0, v1, v0}, Le0/a;->u(Landroidx/recyclerview/widget/b;LU3/f;La4/n;I)Landroidx/recyclerview/widget/b;

    move-result-object p1

    iput-object p1, p0, Lh4/n;->k:Landroidx/recyclerview/widget/b;

    iget-object v0, p1, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast v0, Lg4/a;

    iget-object v1, v0, Lg4/a;->a:LI4/l;

    new-instance v2, Lh4/m;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lh4/m;-><init>(Lh4/n;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/i;

    invoke-direct {v3, v1, v2}, LI4/h;-><init>(LI4/l;LE3/a;)V

    iput-object v3, p0, Lh4/n;->l:LI4/i;

    new-instance v2, Lh4/d;

    invoke-direct {v2, p1, p2, p0}, Lh4/d;-><init>(Landroidx/recyclerview/widget/b;La4/z;Lh4/n;)V

    iput-object v2, p0, Lh4/n;->m:Lh4/d;

    new-instance v2, Lh4/m;

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lh4/m;-><init>(Lh4/n;I)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, LI4/c;

    invoke-direct {v3, v1, v2}, LI4/i;-><init>(LI4/l;LE3/a;)V

    iput-object v3, p0, Lh4/n;->n:LI4/c;

    iget-object v0, v0, Lg4/a;->v:Ld4/t;

    iget-boolean v0, v0, Ld4/t;->b:Z

    if-eqz v0, :cond_0

    sget-object p1, LV3/g;->a:LV3/f;

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Le0/a;->U(Landroidx/recyclerview/widget/b;Lj4/b;)Lg4/c;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lh4/n;->o:LV3/h;

    new-instance p1, Lh4/m;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Lh4/m;-><init>(Lh4/n;I)V

    invoke-virtual {v1, p1}, LI4/l;->a(LE3/a;)LI4/i;

    return-void
.end method


# virtual methods
.method public final i()LU3/L;
    .locals 1

    new-instance v0, Landroidx/recyclerview/widget/y;

    invoke-direct {v0, p0}, Landroidx/recyclerview/widget/y;-><init>(Lh4/n;)V

    return-object v0
.end method

.method public final l0()LC4/o;
    .locals 0

    iget-object p0, p0, Lh4/n;->m:Lh4/d;

    return-object p0
.end method

.method public final p()LV3/h;
    .locals 0

    iget-object p0, p0, Lh4/n;->o:LV3/h;

    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Lazy Java package fragment: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LX3/F;->h:Ls4/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " of module "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lh4/n;->k:Landroidx/recyclerview/widget/b;

    iget-object p0, p0, Landroidx/recyclerview/widget/b;->e:Ljava/lang/Object;

    check-cast p0, Lg4/a;

    iget-object p0, p0, Lg4/a;->o:LX3/D;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
