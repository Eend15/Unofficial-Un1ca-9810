.class public final Lm3/g;
.super Lw3/c;
.source "SourceFile"


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public final synthetic e:Lm3/h;

.field public f:I


# direct methods
.method public constructor <init>(Lm3/h;Lu3/d;)V
    .locals 0

    iput-object p1, p0, Lm3/g;->e:Lm3/h;

    invoke-direct {p0, p2}, Lw3/c;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lm3/g;->d:Ljava/lang/Object;

    iget p1, p0, Lm3/g;->f:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lm3/g;->f:I

    iget-object p1, p0, Lm3/g;->e:Lm3/h;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lm3/h;->a(Landroid/content/Context;Lu3/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
