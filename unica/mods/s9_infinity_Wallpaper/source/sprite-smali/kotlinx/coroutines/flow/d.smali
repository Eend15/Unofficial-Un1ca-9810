.class public final Lkotlinx/coroutines/flow/d;
.super Lw3/c;
.source "SourceFile"


# instance fields
.field public d:Lkotlinx/coroutines/flow/e;

.field public e:Lkotlinx/coroutines/flow/b;

.field public f:Lkotlinx/coroutines/flow/g;

.field public g:LW4/P;

.field public synthetic h:Ljava/lang/Object;

.field public final synthetic i:Lkotlinx/coroutines/flow/e;

.field public j:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/e;Lw3/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/d;->i:Lkotlinx/coroutines/flow/e;

    invoke-direct {p0, p2}, Lw3/c;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/d;->h:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/d;->j:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/d;->j:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/d;->i:Lkotlinx/coroutines/flow/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lkotlinx/coroutines/flow/e;->k(Lkotlinx/coroutines/flow/e;Lkotlinx/coroutines/flow/b;Lw3/c;)V

    sget-object p0, Lv3/a;->d:Lv3/a;

    return-object p0
.end method
