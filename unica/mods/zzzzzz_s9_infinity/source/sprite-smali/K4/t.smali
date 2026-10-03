.class public abstract enum LK4/t;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field public static final enum d:LK4/r;

.field public static final enum e:LK4/p;

.field public static final enum f:LK4/s;

.field public static final enum g:LK4/q;

.field public static final synthetic h:[LK4/t;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LK4/r;

    invoke-direct {v0}, LK4/r;-><init>()V

    sput-object v0, LK4/t;->d:LK4/r;

    new-instance v1, LK4/p;

    invoke-direct {v1}, LK4/p;-><init>()V

    sput-object v1, LK4/t;->e:LK4/p;

    new-instance v2, LK4/s;

    invoke-direct {v2}, LK4/s;-><init>()V

    sput-object v2, LK4/t;->f:LK4/s;

    new-instance v3, LK4/q;

    invoke-direct {v3}, LK4/q;-><init>()V

    sput-object v3, LK4/t;->g:LK4/q;

    filled-new-array {v0, v1, v2, v3}, [LK4/t;

    move-result-object v0

    sput-object v0, LK4/t;->h:[LK4/t;

    return-void
.end method

.method public static b(LJ4/b0;)LK4/t;
    .locals 9

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, LJ4/C;->z0()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, LK4/t;->e:LK4/p;

    goto :goto_0

    :cond_0
    instance-of v0, p0, LJ4/l;

    if-eqz v0, :cond_1

    move-object v0, p0

    check-cast v0, LJ4/l;

    :cond_1
    sget-object v7, LK4/f;->e:LK4/f;

    new-instance v0, LK4/b;

    const/4 v4, 0x0

    const/16 v8, 0x1c

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, LK4/b;-><init>(ZZZLK4/g;LK4/f;LK4/c;I)V

    invoke-static {p0}, LJ4/c;->k(LJ4/C;)LJ4/G;

    move-result-object p0

    sget-object v1, LJ4/e;->b:LJ4/e;

    invoke-static {v0, p0, v1}, LJ4/c;->f(LK4/b;LM4/d;LJ4/c;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, LK4/t;->g:LK4/q;

    goto :goto_0

    :cond_2
    sget-object p0, LK4/t;->f:LK4/s;

    :goto_0
    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)LK4/t;
    .locals 1

    const-class v0, LK4/t;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, LK4/t;

    return-object p0
.end method

.method public static values()[LK4/t;
    .locals 1

    sget-object v0, LK4/t;->h:[LK4/t;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [LK4/t;

    return-object v0
.end method


# virtual methods
.method public abstract a(LJ4/b0;)LK4/t;
.end method
