.class public abstract Lw3/g;
.super Lw3/c;
.source "SourceFile"

# interfaces
.implements LF3/g;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(Lu3/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lw3/c;-><init>(Lu3/d;)V

    const/4 p1, 0x2

    iput p1, p0, Lw3/g;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    iget p0, p0, Lw3/g;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lw3/a;->getCompletion()Lu3/d;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-virtual {v0, p0}, LF3/u;->g(LF3/g;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-super {p0}, Lw3/a;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
