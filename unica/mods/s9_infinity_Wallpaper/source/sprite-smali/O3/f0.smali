.class public final LO3/f0;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# instance fields
.field public final synthetic d:I

.field public final synthetic e:I

.field public final synthetic f:Ljava/io/Serializable;

.field public final synthetic g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILF4/C;Lq3/d;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, LO3/f0;->d:I

    .line 1
    iput p1, p0, LO3/f0;->e:I

    iput-object p2, p0, LO3/f0;->f:Ljava/io/Serializable;

    iput-object p3, p0, LO3/f0;->g:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method

.method public constructor <init>(LV4/l;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, LO3/f0;->d:I

    .line 2
    iput-object p1, p0, LO3/f0;->f:Ljava/io/Serializable;

    iput-object p2, p0, LO3/f0;->g:Ljava/lang/Object;

    iput p3, p0, LO3/f0;->e:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, LF3/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 5

    iget v0, p0, LO3/f0;->d:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, LO3/f0;->f:Ljava/io/Serializable;

    check-cast v0, LV4/l;

    const-string v1, "input"

    iget-object v2, p0, LO3/f0;->g:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v0, LV4/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, "matcher(...)"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p0, p0, LO3/f0;->e:I

    invoke-virtual {v0, p0}, Ljava/util/regex/Matcher;->find(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    new-instance p0, LV4/j;

    invoke-direct {p0, v0, v2}, LV4/j;-><init>(Ljava/util/regex/Matcher;Ljava/lang/CharSequence;)V

    :goto_0
    return-object p0

    :pswitch_0
    iget-object v0, p0, LO3/f0;->f:Ljava/io/Serializable;

    check-cast v0, LF4/C;

    iget-object v1, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v1, LO3/g0;

    iget-object v1, v1, LO3/g0;->a:LO3/k0;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, LO3/k0;->invoke()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Type;

    goto :goto_1

    :cond_1
    move-object v1, v2

    :goto_1
    instance-of v3, v1, Ljava/lang/Class;

    if-eqz v3, :cond_3

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object p0

    goto :goto_2

    :cond_2
    const-class p0, Ljava/lang/Object;

    :goto_2
    const-string v0, "if (javaType.isArray) ja\u2026Type else Any::class.java"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_3
    instance-of v3, v1, Ljava/lang/reflect/GenericArrayType;

    iget-object v0, v0, LF4/C;->e:Ljava/lang/Object;

    check-cast v0, LO3/g0;

    iget v4, p0, LO3/f0;->e:I

    if-eqz v3, :cond_5

    if-nez v4, :cond_4

    check-cast v1, Ljava/lang/reflect/GenericArrayType;

    invoke-interface {v1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "javaType.genericComponentType"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    new-instance p0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Array type has been queried for a non-0th argument: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_9

    iget-object p0, p0, LO3/f0;->g:Ljava/lang/Object;

    invoke-interface {p0}, Lq3/d;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    check-cast p0, Ljava/lang/reflect/WildcardType;

    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "argument.lowerBounds"

    invoke-static {v0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v1, v0

    if-nez v1, :cond_7

    goto :goto_3

    :cond_7
    const/4 v1, 0x0

    aget-object v2, v0, v1

    :goto_3
    if-eqz v2, :cond_8

    move-object p0, v2

    goto :goto_4

    :cond_8
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    move-result-object p0

    const-string v0, "argument.upperBounds"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lr3/h;->l0([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Type;

    :goto_4
    const-string v0, "if (argument !is Wildcar\u2026ument.upperBounds.first()"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_5
    return-object p0

    :cond_9
    new-instance p0, LD3/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Non-generic type has been queried for arguments: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
