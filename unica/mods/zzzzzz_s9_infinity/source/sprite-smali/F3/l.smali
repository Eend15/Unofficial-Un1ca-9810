.class public abstract LF3/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LF3/g;
.implements Ljava/io/Serializable;


# instance fields
.field private final arity:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, LF3/l;->arity:I

    return-void
.end method


# virtual methods
.method public getArity()I
    .locals 0

    iget p0, p0, LF3/l;->arity:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    sget-object v0, LF3/t;->a:LF3/u;

    invoke-virtual {v0, p0}, LF3/u;->h(LF3/l;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "renderLambdaToString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
