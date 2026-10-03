.class public abstract LV3/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ls4/f;

.field public static final b:Ls4/f;

.field public static final c:Ls4/f;

.field public static final d:Ls4/f;

.field public static final e:Ls4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "message"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LV3/e;->a:Ls4/f;

    const-string v0, "replaceWith"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LV3/e;->b:Ls4/f;

    const-string v0, "level"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LV3/e;->c:Ls4/f;

    const-string v0, "expression"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LV3/e;->d:Ls4/f;

    const-string v0, "imports"

    invoke-static {v0}, Ls4/f;->e(Ljava/lang/String;)Ls4/f;

    move-result-object v0

    sput-object v0, LV3/e;->e:Ls4/f;

    return-void
.end method
