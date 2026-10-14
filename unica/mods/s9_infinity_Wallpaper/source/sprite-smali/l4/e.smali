.class public final Ll4/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LH4/m;


# instance fields
.field public final d:LA4/b;

.field public final e:LA4/b;

.field public final f:LZ3/c;


# direct methods
.method public constructor <init>(LZ3/c;Ln4/C;Lr4/g;I)V
    .locals 4

    const-string v0, "kotlinClass"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageProto"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abiStability"

    invoke-static {p4, v0}, LB/a;->t(ILjava/lang/String;)V

    iget-object p4, p1, LZ3/c;->a:Ljava/lang/Class;

    invoke-static {p4}, La4/b;->a(Ljava/lang/Class;)Ls4/b;

    move-result-object p4

    invoke-static {p4}, LA4/b;->b(Ls4/b;)LA4/b;

    move-result-object p4

    iget-object v0, p1, LZ3/c;->b:Lm4/b;

    sget-object v1, Lm4/a;->k:Lm4/a;

    iget-object v2, v0, Lm4/b;->a:Lm4/a;

    const/4 v3, 0x0

    if-ne v2, v1, :cond_0

    iget-object v0, v0, Lm4/b;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    invoke-static {v0}, LA4/b;->c(Ljava/lang/String;)LA4/b;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Ll4/e;->d:LA4/b;

    iput-object v3, p0, Ll4/e;->e:LA4/b;

    iput-object p1, p0, Ll4/e;->f:LZ3/c;

    sget-object p0, Lq4/j;->m:Lt4/o;

    const-string p1, "packageModuleName"

    invoke-static {p0, p1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, p0}, Lj0/s;->x(Lt4/m;Lt4/o;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-virtual {p3, p0}, Lr4/g;->n(I)Ljava/lang/String;

    :goto_2
    return-void
.end method


# virtual methods
.method public final a()Ls4/b;
    .locals 6

    new-instance v0, Ls4/b;

    iget-object p0, p0, Ll4/e;->d:LA4/b;

    iget-object v1, p0, LA4/b;->a:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    const/16 v4, 0x2f

    if-ne v2, v3, :cond_1

    sget-object v1, Ls4/c;->c:Ls4/c;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x7

    invoke-static {p0}, LA4/b;->a(I)V

    const/4 p0, 0x0

    throw p0

    :cond_1
    new-instance v3, Ls4/c;

    const/4 v5, 0x0

    invoke-virtual {v1, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    invoke-virtual {v1, v4, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ls4/c;-><init>(Ljava/lang/String;)V

    move-object v1, v3

    :goto_0
    invoke-virtual {p0}, LA4/b;->d()Ljava/lang/String;

    move-result-object p0

    const-string v2, "className.internalName"

    invoke-static {p0, v2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, v4, p0}, LV4/m;->K0(Ljava/lang/String;CLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ls4/b;-><init>(Ls4/c;Ls4/f;)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Ll4/e;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ll4/e;->d:LA4/b;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
