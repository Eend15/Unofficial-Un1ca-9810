.class public abstract LP3/p;
.super LP3/u;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Field;ZZ)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, LP3/p;->e:I

    .line 9
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v1, "Void.TYPE"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p3, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 11
    :goto_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v1

    const-string v2, "field.genericType"

    invoke-static {v1, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v1}, [Ljava/lang/reflect/Type;

    move-result-object v1

    .line 12
    invoke-direct {p0, p1, v0, p3, v1}, LP3/u;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    iput-boolean p2, p0, LP3/p;->f:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/reflect/Method;ZI)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LP3/p;->e:I

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result p2

    invoke-static {p2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object p3

    const-string v0, "method.genericParameterTypes"

    invoke-static {p3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3}, LP3/p;-><init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/reflect/Method;Z[Ljava/lang/reflect/Type;)V
    .locals 2

    const/4 v0, 0x1

    iput v0, p0, LP3/p;->e:I

    .line 3
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "method.genericReturnType"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 5
    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, LP3/u;-><init>(Ljava/lang/reflect/Member;Ljava/lang/reflect/Type;Ljava/lang/Class;[Ljava/lang/reflect/Type;)V

    .line 6
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 8
    iput-boolean p1, p0, LP3/p;->f:Z

    return-void
.end method


# virtual methods
.method public a([Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, LP3/p;->e:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, LP3/u;->a([Ljava/lang/Object;)V

    return-void

    :pswitch_0
    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    iget-boolean p0, p0, LP3/p;->f:Z

    if-eqz p0, :cond_1

    invoke-static {p1}, Lr3/h;->q0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "null is not allowed as a value for this property."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public c([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-string v0, "args"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Method;

    array-length v1, p1

    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    iget-boolean p0, p0, LP3/p;->f:Z

    if-eqz p0, :cond_0

    sget-object p1, Lq3/m;->a:Lq3/m;

    :cond_0
    return-object p1
.end method

.method public m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, LP3/p;->a([Ljava/lang/Object;)V

    iget-object v0, p0, LP3/u;->b:Ljava/lang/reflect/Member;

    check-cast v0, Ljava/lang/reflect/Field;

    iget-object p0, p0, LP3/u;->d:Ljava/lang/Class;

    if-eqz p0, :cond_0

    invoke-static {p1}, Lr3/h;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1}, Lr3/h;->q0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object p0, Lq3/m;->a:Lq3/m;

    return-object p0
.end method
