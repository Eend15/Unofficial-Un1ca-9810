.class public final LF4/k;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LF4/i;

.field public final b:Lp4/f;

.field public final c:LU3/j;

.field public final d:LX3/C;

.field public final e:Lp4/h;

.field public final f:Lp4/a;

.field public final g:Ll4/e;

.field public final h:LF4/F;

.field public final i:LF4/u;


# direct methods
.method public constructor <init>(LF4/i;Lp4/f;LU3/j;LX3/C;Lp4/h;Lp4/a;Ll4/e;LF4/F;Ljava/util/List;)V
    .locals 1

    const-string v0, "components"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "containingDeclaration"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p4, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "versionRequirementTable"

    invoke-static {p5, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "metadataVersion"

    invoke-static {p6, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameters"

    invoke-static {p9, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF4/k;->a:LF4/i;

    iput-object p2, p0, LF4/k;->b:Lp4/f;

    iput-object p3, p0, LF4/k;->c:LU3/j;

    iput-object p4, p0, LF4/k;->d:LX3/C;

    iput-object p5, p0, LF4/k;->e:Lp4/h;

    iput-object p6, p0, LF4/k;->f:Lp4/a;

    iput-object p7, p0, LF4/k;->g:Ll4/e;

    new-instance v0, LF4/F;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "Deserializer for \""

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p3}, LU3/j;->r()Ls4/f;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p2, 0x22

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string p1, "[container not found]"

    if-nez p7, :cond_0

    :goto_0
    move-object p6, p1

    goto :goto_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Class \'"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p7}, Ll4/e;->a()Ls4/b;

    move-result-object p3

    invoke-virtual {p3}, Ls4/b;->b()Ls4/c;

    move-result-object p3

    invoke-virtual {p3}, Ls4/c;->b()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p3, 0x27

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    move-object p6, p2

    :goto_1
    move-object p1, v0

    move-object p2, p0

    move-object p3, p8

    move-object p4, p9

    invoke-direct/range {p1 .. p6}, LF4/F;-><init>(LF4/k;LF4/F;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, LF4/k;->h:LF4/F;

    new-instance p1, LF4/u;

    invoke-direct {p1, p0}, LF4/u;-><init>(LF4/k;)V

    iput-object p1, p0, LF4/k;->i:LF4/u;

    return-void
.end method

.method public static synthetic b(LF4/k;LX3/q;Ljava/util/List;)LF4/k;
    .locals 7

    iget-object v3, p0, LF4/k;->b:Lp4/f;

    iget-object v4, p0, LF4/k;->d:LX3/C;

    iget-object v5, p0, LF4/k;->e:Lp4/h;

    iget-object v6, p0, LF4/k;->f:Lp4/a;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, LF4/k;->a(LU3/j;Ljava/util/List;Lp4/f;LX3/C;Lp4/h;Lp4/a;)LF4/k;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(LU3/j;Ljava/util/List;Lp4/f;LX3/C;Lp4/h;Lp4/a;)LF4/k;
    .locals 11

    move-object v0, p0

    move-object/from16 v6, p6

    const-string v1, "typeParameterProtos"

    move-object v9, p2

    invoke-static {p2, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "nameResolver"

    move-object v2, p3

    invoke-static {p3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "typeTable"

    move-object v4, p4

    invoke-static {p4, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "versionRequirementTable"

    move-object/from16 v3, p5

    invoke-static {v3, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "metadataVersion"

    invoke-static {v6, v1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v10, LF4/k;

    iget v1, v6, Lp4/a;->b:I

    const/4 v5, 0x1

    if-ne v1, v5, :cond_0

    const/4 v1, 0x4

    iget v5, v6, Lp4/a;->c:I

    if-lt v5, v1, :cond_0

    move-object v5, v3

    goto :goto_0

    :cond_0
    iget-object v1, v0, LF4/k;->e:Lp4/h;

    move-object v5, v1

    :goto_0
    iget-object v8, v0, LF4/k;->h:LF4/F;

    iget-object v1, v0, LF4/k;->a:LF4/i;

    iget-object v7, v0, LF4/k;->g:Ll4/e;

    move-object v0, v10

    move-object v2, p3

    move-object v3, p1

    move-object v4, p4

    move-object/from16 v6, p6

    move-object v9, p2

    invoke-direct/range {v0 .. v9}, LF4/k;-><init>(LF4/i;Lp4/f;LU3/j;LX3/C;Lp4/h;Lp4/a;Ll4/e;LF4/F;Ljava/util/List;)V

    return-object v10
.end method
