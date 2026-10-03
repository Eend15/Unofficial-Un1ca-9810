.class public final LP4/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls4/f;

.field public final b:LV4/l;

.field public final c:Ljava/util/Collection;

.field public final d:LE3/b;

.field public final e:[LP4/a;


# direct methods
.method public constructor <init>(Ljava/util/Collection;[LP4/a;LE3/b;)V
    .locals 6

    const-string v0, "nameList"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [LP4/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LP4/e;-><init>(Ls4/f;LV4/l;Ljava/util/Collection;LE3/b;[LP4/a;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;[LP4/a;)V
    .locals 1

    .line 9
    sget-object v0, LP4/d;->g:LP4/d;

    invoke-direct {p0, p1, p2, v0}, LP4/e;-><init>(Ljava/util/Collection;[LP4/a;LE3/b;)V

    return-void
.end method

.method public varargs constructor <init>(Ls4/f;LV4/l;Ljava/util/Collection;LE3/b;[LP4/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, LP4/e;->a:Ls4/f;

    .line 3
    iput-object p2, p0, LP4/e;->b:LV4/l;

    .line 4
    iput-object p3, p0, LP4/e;->c:Ljava/util/Collection;

    .line 5
    iput-object p4, p0, LP4/e;->d:LE3/b;

    .line 6
    iput-object p5, p0, LP4/e;->e:[LP4/a;

    return-void
.end method

.method public synthetic constructor <init>(Ls4/f;[LP4/a;)V
    .locals 1

    .line 7
    sget-object v0, LP4/d;->e:LP4/d;

    invoke-direct {p0, p1, p2, v0}, LP4/e;-><init>(Ls4/f;[LP4/a;LE3/b;)V

    return-void
.end method

.method public constructor <init>(Ls4/f;[LP4/a;LE3/b;)V
    .locals 6

    const-string v0, "name"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [LP4/a;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, LP4/e;-><init>(Ls4/f;LV4/l;Ljava/util/Collection;LE3/b;[LP4/a;)V

    return-void
.end method
