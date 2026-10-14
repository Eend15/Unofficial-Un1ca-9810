.class public final Lkotlinx/coroutines/flow/h;
.super Lw3/c;
.source "SourceFile"


# instance fields
.field public d:Lkotlinx/coroutines/flow/i;

.field public e:Lkotlinx/coroutines/flow/b;

.field public f:Lkotlinx/coroutines/flow/j;

.field public g:LW4/P;

.field public h:Ljava/lang/Object;

.field public synthetic i:Ljava/lang/Object;

.field public final synthetic j:Lkotlinx/coroutines/flow/i;

.field public k:I


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/i;Lw3/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/flow/h;->j:Lkotlinx/coroutines/flow/i;

    invoke-direct {p0, p2}, Lw3/c;-><init>(Lu3/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lkotlinx/coroutines/flow/h;->i:Ljava/lang/Object;

    iget p1, p0, Lkotlinx/coroutines/flow/h;->k:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lkotlinx/coroutines/flow/h;->k:I

    iget-object p1, p0, Lkotlinx/coroutines/flow/h;->j:Lkotlinx/coroutines/flow/i;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lkotlinx/coroutines/flow/i;->b(Lkotlinx/coroutines/flow/b;Lu3/d;)Ljava/lang/Object;

    sget-object p0, Lv3/a;->d:Lv3/a;

    return-object p0
.end method
