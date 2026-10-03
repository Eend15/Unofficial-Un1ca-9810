.class public final synthetic LH4/k;
.super LF3/h;
.source "SourceFile"

# interfaces
.implements LE3/b;


# instance fields
.field public final synthetic l:I


# direct methods
.method public synthetic constructor <init>(IILjava/lang/Object;)V
    .locals 0

    iput p2, p0, LH4/k;->l:I

    invoke-direct {p0, p1, p3}, LF3/h;-><init>(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final b()LL3/d;
    .locals 1

    iget p0, p0, LH4/k;->l:I

    packed-switch p0, :pswitch_data_0

    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, Lh4/l;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0

    :pswitch_0
    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, Lh4/l;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0

    :pswitch_1
    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, Ld4/d;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0

    :pswitch_2
    sget-object p0, LF3/t;->a:LF3/u;

    const-class v0, LH4/g;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final c()Ljava/lang/String;
    .locals 0

    iget p0, p0, LH4/k;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "searchMethodsInSupertypesWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    return-object p0

    :pswitch_0
    const-string p0, "searchMethodsByNameWithoutBuiltinMagic(Lorg/jetbrains/kotlin/name/Name;)Ljava/util/Collection;"

    return-object p0

    :pswitch_1
    const-string p0, "computeTypeQualifierNickname(Lorg/jetbrains/kotlin/descriptors/ClassDescriptor;)Lorg/jetbrains/kotlin/descriptors/annotations/AnnotationDescriptor;"

    return-object p0

    :pswitch_2
    const-string p0, "<init>(Lorg/jetbrains/kotlin/serialization/deserialization/descriptors/DeserializedClassDescriptor;Lorg/jetbrains/kotlin/types/checker/KotlinTypeRefiner;)V"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget v0, p0, LH4/k;->l:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Ls4/f;

    const-string v0, "p0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    check-cast p0, Lh4/l;

    invoke-static {p0, p1}, Lh4/l;->w(Lh4/l;Ls4/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_0
    check-cast p1, Ls4/f;

    const-string v0, "p0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    check-cast p0, Lh4/l;

    invoke-static {p0, p1}, Lh4/l;->v(Lh4/l;Ls4/f;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :pswitch_1
    check-cast p1, LU3/e;

    const-string v0, "p0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    check-cast p0, Ld4/d;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1}, LV3/a;->p()LV3/h;

    move-result-object v0

    sget-object v1, Ld4/b;->a:Ls4/c;

    invoke-interface {v0, v1}, LV3/h;->e(Ls4/c;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, LV3/a;->p()LV3/h;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LV3/b;

    invoke-virtual {p0, v0}, Ld4/d;->d(LV3/b;)LV3/b;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    :cond_2
    :goto_0
    return-object v1

    :pswitch_2
    check-cast p1, LK4/g;

    const-string v0, "p0"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, LH4/g;

    iget-object p0, p0, LF3/c;->e:Ljava/lang/Object;

    check-cast p0, LH4/l;

    invoke-direct {v0, p0, p1}, LH4/g;-><init>(LH4/l;LK4/g;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final r()Ljava/lang/String;
    .locals 0

    iget p0, p0, LH4/k;->l:I

    packed-switch p0, :pswitch_data_0

    const-string p0, "searchMethodsInSupertypesWithoutBuiltinMagic"

    return-object p0

    :pswitch_0
    const-string p0, "searchMethodsByNameWithoutBuiltinMagic"

    return-object p0

    :pswitch_1
    const-string p0, "computeTypeQualifierNickname"

    return-object p0

    :pswitch_2
    const-string p0, "<init>"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
