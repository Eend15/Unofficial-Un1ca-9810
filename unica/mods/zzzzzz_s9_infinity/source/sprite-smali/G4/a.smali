.class public final LG4/a;
.super LE4/a;
.source "SourceFile"


# static fields
.field public static final m:LG4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    new-instance v14, LG4/a;

    new-instance v1, Lt4/i;

    invoke-direct {v1}, Lt4/i;-><init>()V

    sget-object v2, Lo4/b;->a:Lt4/o;

    invoke-virtual {v1, v2}, Lt4/i;->a(Lt4/o;)V

    sget-object v4, Lo4/b;->b:Lt4/o;

    invoke-virtual {v1, v4}, Lt4/i;->a(Lt4/o;)V

    sget-object v3, Lo4/b;->c:Lt4/o;

    invoke-virtual {v1, v3}, Lt4/i;->a(Lt4/o;)V

    sget-object v5, Lo4/b;->d:Lt4/o;

    invoke-virtual {v1, v5}, Lt4/i;->a(Lt4/o;)V

    sget-object v6, Lo4/b;->e:Lt4/o;

    invoke-virtual {v1, v6}, Lt4/i;->a(Lt4/o;)V

    sget-object v7, Lo4/b;->f:Lt4/o;

    invoke-virtual {v1, v7}, Lt4/i;->a(Lt4/o;)V

    sget-object v8, Lo4/b;->g:Lt4/o;

    invoke-virtual {v1, v8}, Lt4/i;->a(Lt4/o;)V

    sget-object v10, Lo4/b;->h:Lt4/o;

    invoke-virtual {v1, v10}, Lt4/i;->a(Lt4/o;)V

    sget-object v9, Lo4/b;->i:Lt4/o;

    invoke-virtual {v1, v9}, Lt4/i;->a(Lt4/o;)V

    sget-object v11, Lo4/b;->j:Lt4/o;

    invoke-virtual {v1, v11}, Lt4/i;->a(Lt4/o;)V

    sget-object v12, Lo4/b;->k:Lt4/o;

    invoke-virtual {v1, v12}, Lt4/i;->a(Lt4/o;)V

    sget-object v13, Lo4/b;->l:Lt4/o;

    invoke-virtual {v1, v13}, Lt4/i;->a(Lt4/o;)V

    move-object v0, v14

    invoke-direct/range {v0 .. v13}, LE4/a;-><init>(Lt4/i;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;Lt4/o;)V

    sput-object v14, LG4/a;->m:LG4/a;

    return-void
.end method

.method public static a(Ls4/c;)Ljava/lang/String;
    .locals 4

    const-string v0, "fqName"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ls4/c;->b()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x2f

    invoke-static {v1, v2, v3}, LV4/u;->k0(Ljava/lang/String;CC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ls4/c;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "default-package"

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ls4/c;->f()Ls4/f;

    move-result-object p0

    invoke-virtual {p0}, Ls4/f;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "fqName.shortName().asString()"

    invoke-static {p0, v1}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    const-string v1, ".kotlin_builtins"

    invoke-static {v1, p0}, LF3/k;->l(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
