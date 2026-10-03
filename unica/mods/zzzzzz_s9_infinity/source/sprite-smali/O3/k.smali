.class public final LO3/k;
.super LO3/n0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:LX3/L;

.field public final g:Ln4/G;

.field public final h:Lq4/d;

.field public final i:Lp4/f;

.field public final j:LX3/C;


# direct methods
.method public constructor <init>(LX3/L;Ln4/G;Lq4/d;Lp4/f;LX3/C;)V
    .locals 2

    const-string v0, "proto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/k;->f:LX3/L;

    iput-object p2, p0, LO3/k;->g:Ln4/G;

    iput-object p3, p0, LO3/k;->h:Lq4/d;

    iput-object p4, p0, LO3/k;->i:Lp4/f;

    iput-object p5, p0, LO3/k;->j:LX3/C;

    iget v0, p3, Lq4/d;->e:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    iget-object p1, p3, Lq4/d;->h:Lq4/c;

    const-string p2, "signature.getter"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p1, p1, Lq4/c;->f:I

    invoke-interface {p4, p1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p1

    iget-object p3, p3, Lq4/d;->h:Lq4/c;

    invoke-static {p3, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget p2, p3, Lq4/c;->g:I

    invoke-interface {p4, p2}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :cond_0
    const/4 p3, 0x1

    invoke-static {p2, p4, p5, p3}, Lr4/h;->b(Ln4/G;Lp4/f;LX3/C;Z)Lr4/d;

    move-result-object p2

    if-eqz p2, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p5, p2, Lr4/d;->b:Ljava/lang/String;

    invoke-static {p5}, Ld4/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object p5, p1

    check-cast p5, LX3/q;

    invoke-virtual {p5}, LX3/q;->g()LU3/j;

    move-result-object p5

    const-string v0, "descriptor.containingDeclaration"

    invoke-static {p5, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, LX3/L;->b()LU3/n;

    move-result-object v0

    sget-object v1, LU3/o;->d:LU3/n;

    invoke-static {v0, v1}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "$"

    if-eqz v0, :cond_2

    instance-of v0, p5, LH4/l;

    if-eqz v0, :cond_2

    check-cast p5, LH4/l;

    sget-object p1, Lq4/j;->i:Lt4/o;

    const-string v0, "JvmProtoBuf.classModuleName"

    invoke-static {p1, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p5, p5, LH4/l;->h:Ln4/j;

    invoke-static {p5, p1}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-interface {p4, p1}, Lp4/f;->n(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string p1, "main"

    :goto_0
    sget-object p4, Ls4/g;->a:LV4/l;

    iget-object p4, p4, LV4/l;->d:Ljava/util/regex/Pattern;

    invoke-virtual {p4, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p4, "_"

    invoke-virtual {p1, p4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p4, "replaceAll(...)"

    invoke-static {p1, p4}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, LX3/L;->b()LU3/n;

    move-result-object p4

    sget-object v0, LU3/o;->a:LU3/n;

    invoke-static {p4, v0}, LF3/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    instance-of p4, p5, LU3/B;

    if-eqz p4, :cond_3

    check-cast p1, LH4/t;

    iget-object p1, p1, LH4/t;->F:Ll4/e;

    if-eqz p1, :cond_3

    iget-object p4, p1, Ll4/e;->e:LA4/b;

    if-eqz p4, :cond_3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Ll4/e;->d:LA4/b;

    invoke-virtual {p1}, LA4/b;->d()Ljava/lang/String;

    move-result-object p1

    const-string p5, "className.internalName"

    invoke-static {p1, p5}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 p5, 0x2f

    invoke-static {p1, p5, p1}, LV4/m;->K0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p1

    invoke-virtual {p1}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    const-string p1, ""

    :goto_1
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "()"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lr4/d;->c:Ljava/lang/String;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    iput-object p1, p0, LO3/k;->e:Ljava/lang/String;

    return-void

    :cond_4
    new-instance p0, LD3/a;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "No field signature for property: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, LD3/a;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LO3/k;->e:Ljava/lang/String;

    return-object p0
.end method
