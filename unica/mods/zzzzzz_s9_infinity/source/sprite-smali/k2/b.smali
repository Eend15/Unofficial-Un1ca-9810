.class public final Lk2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lj2/b;

.field public final b:Li2/a;

.field public final c:Lp2/d;

.field public final d:Ly2/d;

.field public final e:LW4/t;

.field public final f:Lh2/b;


# direct methods
.method public constructor <init>(Lj2/b;Li2/a;Lp2/a;Lp2/d;Ly2/d;LW4/t;Lh2/b;)V
    .locals 0

    const-string p3, "magicianRepository"

    invoke-static {p1, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "weatherEffectsRepository"

    invoke-static {p4, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "thumbnailUtils"

    invoke-static {p5, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "dumpUtil"

    invoke-static {p7, p3}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk2/b;->a:Lj2/b;

    iput-object p2, p0, Lk2/b;->b:Li2/a;

    iput-object p4, p0, Lk2/b;->c:Lp2/d;

    iput-object p5, p0, Lk2/b;->d:Ly2/d;

    iput-object p6, p0, Lk2/b;->e:LW4/t;

    iput-object p7, p0, Lk2/b;->f:Lh2/b;

    return-void
.end method
