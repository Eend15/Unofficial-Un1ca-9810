.class public final LG4/c;
.super LX3/F;
.source "SourceFile"

# interfaces
.implements LU3/B;


# instance fields
.field public final j:Lo4/a;

.field public final k:Lw0/e;

.field public final l:Lw0/i;

.field public m:Ln4/E;

.field public n:LH4/s;


# direct methods
.method public constructor <init>(Ls4/c;LI4/o;LU3/x;Ln4/E;Lo4/a;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "module"

    invoke-static {p3, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, p1}, LX3/F;-><init>(LU3/x;Ls4/c;)V

    iput-object p5, p0, LG4/c;->j:Lo4/a;

    new-instance p1, Lw0/e;

    iget-object p2, p4, Ln4/E;->g:Ln4/L;

    const-string p3, "proto.strings"

    invoke-static {p2, p3}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p3, p4, Ln4/E;->h:Ln4/K;

    const-string v0, "proto.qualifiedNames"

    invoke-static {p3, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "strings"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "qualifiedNames"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p2, p1, Lw0/e;->d:Ljava/lang/Object;

    iput-object p3, p1, Lw0/e;->e:Ljava/lang/Object;

    iput-object p1, p0, LG4/c;->k:Lw0/e;

    new-instance p2, Lw0/i;

    new-instance p3, LF4/a;

    const/4 v0, 0x2

    invoke-direct {p3, v0, p0}, LF4/a;-><init>(ILjava/lang/Object;)V

    invoke-direct {p2, p4, p1, p5, p3}, Lw0/i;-><init>(Ln4/E;Lw0/e;Lo4/a;LF4/a;)V

    iput-object p2, p0, LG4/c;->l:Lw0/i;

    iput-object p4, p0, LG4/c;->m:Ln4/E;

    return-void
.end method


# virtual methods
.method public final I0(LF4/i;)V
    .locals 11

    const-string v0, "components"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, LG4/c;->m:Ln4/E;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, LG4/c;->m:Ln4/E;

    new-instance v1, LH4/s;

    iget-object v4, v0, Ln4/E;->i:Ln4/C;

    const-string v0, "proto.`package`"

    invoke-static {v4, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scope of "

    invoke-static {p0, v0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, LC4/g;

    const/4 v0, 0x4

    invoke-direct {v10, v0, p0}, LC4/g;-><init>(ILjava/lang/Object;)V

    iget-object v6, p0, LG4/c;->j:Lo4/a;

    const/4 v7, 0x0

    iget-object v5, p0, LG4/c;->k:Lw0/e;

    move-object v2, v1

    move-object v3, p0

    move-object v8, p1

    invoke-direct/range {v2 .. v10}, LH4/s;-><init>(LU3/B;Ln4/C;Lp4/f;Lp4/a;Ll4/e;LF4/i;Ljava/lang/String;LE3/a;)V

    iput-object v1, p0, LG4/c;->n:LH4/s;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Repeated call to DeserializedPackageFragmentImpl::initialize"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final l0()LC4/o;
    .locals 0

    iget-object p0, p0, LG4/c;->n:LH4/s;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, "_memberScope"

    invoke-static {p0}, LF3/k;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    throw p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "builtins package fragment for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, LX3/F;->h:Ls4/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lz4/e;->j(LU3/j;)LU3/x;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
