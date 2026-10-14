.class public final LP3/q;
.super LP3/p;
.source "SourceFile"

# interfaces
.implements LP3/e;


# instance fields
.field public final g:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
    .locals 2

    const-string v0, "method"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, LP3/p;-><init>(Ljava/lang/reflect/Method;ZI)V

    iput-object p2, p0, LP3/q;->g:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {p0, p1}, LK/I;->h(LP3/f;[Ljava/lang/Object;)V

    iget-object v0, p0, LP3/q;->g:Ljava/lang/Object;

    invoke-virtual {p0, p1, v0}, LP3/p;->c([Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
