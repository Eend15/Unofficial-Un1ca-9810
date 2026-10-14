.class public final LW4/c;
.super LW4/I;
.source "SourceFile"


# instance fields
.field public final k:Ljava/lang/Thread;


# direct methods
.method public constructor <init>(Ljava/lang/Thread;)V
    .locals 0

    invoke-direct {p0}, LW4/I;-><init>()V

    iput-object p1, p0, LW4/c;->k:Ljava/lang/Thread;

    return-void
.end method


# virtual methods
.method public final b0()Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, LW4/c;->k:Ljava/lang/Thread;

    return-object p0
.end method
