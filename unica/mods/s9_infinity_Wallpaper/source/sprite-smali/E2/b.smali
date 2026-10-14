.class public final LE2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LX2/a;


# direct methods
.method public constructor <init>(LX2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LE2/b;->a:LX2/a;

    return-void
.end method


# virtual methods
.method public final a(LE2/c;Ljava/util/function/Consumer;)V
    .locals 12

    const-string v0, "request"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v11, LE2/a;

    const/4 v0, 0x0

    invoke-direct {v11, p2, v0, p1}, LE2/a;-><init>(Ljava/lang/Object;ILjava/lang/Object;)V

    iget-object v9, p1, LE2/c;->g:Ljava/lang/String;

    iget-object v1, p0, LE2/b;->a:LX2/a;

    iget-object v6, p1, LE2/c;->d:Ljava/lang/String;

    iget-object v8, p1, LE2/c;->f:Ljava/lang/String;

    iget-wide v2, p1, LE2/c;->a:J

    iget-object v4, p1, LE2/c;->b:Ljava/lang/String;

    iget-object v5, p1, LE2/c;->c:Ljava/lang/String;

    iget-object v7, p1, LE2/c;->e:Ljava/lang/String;

    iget-boolean v10, p1, LE2/c;->h:Z

    invoke-interface/range {v1 .. v11}, LX2/a;->generate(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/util/function/Consumer;)V

    return-void
.end method
