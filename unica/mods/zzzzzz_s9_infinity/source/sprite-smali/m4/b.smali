.class public final Lm4/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lm4/a;

.field public final b:Lr4/f;

.field public final c:[Ljava/lang/String;

.field public final d:[Ljava/lang/String;

.field public final e:[Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:I


# direct methods
.method public constructor <init>(Lm4/a;Lr4/f;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    const-string v0, "kind"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm4/b;->a:Lm4/a;

    iput-object p2, p0, Lm4/b;->b:Lr4/f;

    iput-object p3, p0, Lm4/b;->c:[Ljava/lang/String;

    iput-object p4, p0, Lm4/b;->d:[Ljava/lang/String;

    iput-object p5, p0, Lm4/b;->e:[Ljava/lang/String;

    iput-object p6, p0, Lm4/b;->f:Ljava/lang/String;

    iput p7, p0, Lm4/b;->g:I

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lm4/b;->a:Lm4/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " version="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lm4/b;->b:Lr4/f;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
