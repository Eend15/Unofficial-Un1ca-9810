.class public final La4/n;
.super La4/r;
.source "SourceFile"

# interfaces
.implements La4/f;
.implements La4/y;
.implements Lj4/b;
.implements Lj4/e;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    const-string v0, "klass"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/n;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ls4/c;)La4/c;
    .locals 0

    invoke-static {p0, p1}, LR3/f;->z(La4/f;Ls4/c;)La4/c;

    move-result-object p0

    return-object p0
.end method

.method public final b()I
    .locals 0

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result p0

    return p0
.end method

.method public final c()Ljava/lang/reflect/AnnotatedElement;
    .locals 0

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final d()Ljava/util/List;
    .locals 3

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object p0

    const-string v0, "klass.declaredFields"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object p0

    sget-object v0, La4/k;->l:La4/k;

    new-instance v1, LU4/f;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, v0}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    sget-object p0, La4/l;->l:La4/l;

    invoke-static {v1, p0}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object p0

    invoke-static {p0}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final e()Ls4/c;
    .locals 0

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-static {p0}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p0

    invoke-virtual {p0}, Ls4/b;->b()Ls4/c;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, La4/n;

    if-eqz v0, :cond_0

    check-cast p1, La4/n;

    iget-object p1, p1, La4/n;->a:Ljava/lang/Class;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-static {p0, p1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final f()Ljava/util/List;
    .locals 3

    iget-object v0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    const-string v1, "klass.declaredMethods"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lr3/h;->c0([Ljava/lang/Object;)LU4/i;

    move-result-object v0

    new-instance v1, LF4/a;

    const/16 v2, 0xa

    invoke-direct {v1, v2, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    new-instance p0, LU4/f;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v1}, LU4/f;-><init>(LU4/i;ZLE3/b;)V

    sget-object v0, La4/m;->l:La4/m;

    invoke-static {p0, v0}, LU4/j;->f0(LU4/i;LE3/b;)LU4/q;

    move-result-object p0

    invoke-static {p0}, LU4/j;->h0(LU4/i;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final hashCode()I
    .locals 0

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public final p()Ljava/util/Collection;
    .locals 0

    invoke-static {p0}, LR3/f;->F(La4/f;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final q()Ljava/util/ArrayList;
    .locals 5

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object p0

    const-string v0, "klass.typeParameters"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    new-instance v4, La4/C;

    invoke-direct {v4, v3}, La4/C;-><init>(Ljava/lang/reflect/TypeVariable;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, La4/n;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, La4/n;->a:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
