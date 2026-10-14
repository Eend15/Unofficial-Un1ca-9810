.class public final LF4/w;
.super LF4/x;
.source "SourceFile"


# instance fields
.field public final e:Ls4/c;


# direct methods
.method public constructor <init>(Ls4/c;Lp4/f;LX3/C;Ll4/e;)V
    .locals 1

    const-string v0, "fqName"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nameResolver"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeTable"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2, p3, p4}, LF4/x;-><init>(Lp4/f;LX3/C;LU3/L;)V

    iput-object p1, p0, LF4/w;->e:Ls4/c;

    return-void
.end method


# virtual methods
.method public final f()Ls4/c;
    .locals 0

    iget-object p0, p0, LF4/w;->e:Ls4/c;

    return-object p0
.end method
