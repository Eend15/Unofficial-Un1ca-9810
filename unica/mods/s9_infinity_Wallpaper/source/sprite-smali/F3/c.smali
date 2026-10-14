.class public abstract LF3/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LL3/a;
.implements Ljava/io/Serializable;


# instance fields
.field public transient d:LL3/a;

.field public final e:Ljava/lang/Object;

.field public final f:Ljava/lang/Class;

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LF3/c;->e:Ljava/lang/Object;

    iput-object p2, p0, LF3/c;->f:Ljava/lang/Class;

    iput-object p3, p0, LF3/c;->g:Ljava/lang/String;

    iput-object p4, p0, LF3/c;->h:Ljava/lang/String;

    iput-boolean p5, p0, LF3/c;->i:Z

    return-void
.end method


# virtual methods
.method public abstract a()LL3/a;
.end method

.method public b()LL3/d;
    .locals 2

    iget-object v0, p0, LF3/c;->f:Ljava/lang/Class;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-boolean p0, p0, LF3/c;->i:Z

    if-eqz p0, :cond_1

    sget-object p0, LF3/t;->a:LF3/u;

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, LF3/u;->c(Ljava/lang/Class;Ljava/lang/String;)LL3/d;

    move-result-object p0

    goto :goto_0

    :cond_1
    sget-object p0, LF3/t;->a:LF3/u;

    invoke-virtual {p0, v0}, LF3/u;->b(Ljava/lang/Class;)LL3/b;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LF3/c;->h:Ljava/lang/String;

    return-object p0
.end method

.method public r()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LF3/c;->g:Ljava/lang/String;

    return-object p0
.end method
