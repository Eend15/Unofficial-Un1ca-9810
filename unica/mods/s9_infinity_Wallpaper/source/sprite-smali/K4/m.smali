.class public final LK4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK4/l;


# instance fields
.field public final c:Lv4/o;


# direct methods
.method public constructor <init>(LK4/f;)V
    .locals 1

    const-string v0, "kotlinTypePreparator"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lv4/o;

    sget-object v0, Lv4/o;->d:Lv4/d;

    invoke-direct {p1, v0}, Lv4/o;-><init>(LK4/d;)V

    iput-object p1, p0, LK4/m;->c:Lv4/o;

    return-void
.end method

.method public static b(LK4/b;LJ4/b0;LJ4/b0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "a"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "b"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LJ4/d;->f(LK4/b;LM4/c;LM4/c;)Z

    move-result p0

    return p0
.end method

.method public static d(LK4/b;LJ4/b0;LJ4/b0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "subType"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "superType"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2}, LJ4/d;->m(LK4/b;LM4/c;LM4/c;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final a(LJ4/C;LJ4/C;)Z
    .locals 8

    const-string p0, "a"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "b"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LK4/b;

    sget-object v5, LK4/f;->d:LK4/f;

    sget-object v4, LK4/g;->a:LK4/g;

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x26

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, LK4/b;-><init>(ZZZLK4/g;LK4/f;LK4/c;I)V

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p1

    invoke-virtual {p2}, LJ4/C;->B0()LJ4/b0;

    move-result-object p2

    invoke-static {p0, p1, p2}, LK4/m;->b(LK4/b;LJ4/b0;LJ4/b0;)Z

    move-result p0

    return p0
.end method

.method public final c(LJ4/C;LJ4/C;)Z
    .locals 8

    const-string p0, "subtype"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "supertype"

    invoke-static {p2, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p0, LK4/b;

    sget-object v5, LK4/f;->d:LK4/f;

    sget-object v4, LK4/g;->a:LK4/g;

    const/4 v6, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v7, 0x26

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, LK4/b;-><init>(ZZZLK4/g;LK4/f;LK4/c;I)V

    invoke-virtual {p1}, LJ4/C;->B0()LJ4/b0;

    move-result-object p1

    invoke-virtual {p2}, LJ4/C;->B0()LJ4/b0;

    move-result-object p2

    invoke-static {p0, p1, p2}, LK4/m;->d(LK4/b;LJ4/b0;LJ4/b0;)Z

    move-result p0

    return p0
.end method
