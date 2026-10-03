.class public final synthetic Ld0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/r;


# instance fields
.field public final synthetic d:Ld0/e;


# direct methods
.method public synthetic constructor <init>(Ld0/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld0/b;->d:Ld0/e;

    return-void
.end method


# virtual methods
.method public final b(Landroidx/lifecycle/t;Landroidx/lifecycle/m;)V
    .locals 0

    iget-object p0, p0, Ld0/b;->d:Ld0/e;

    const-string p1, "this$0"

    invoke-static {p0, p1}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Landroidx/lifecycle/m;->ON_START:Landroidx/lifecycle/m;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Ld0/e;->f:Z

    goto :goto_0

    :cond_0
    sget-object p1, Landroidx/lifecycle/m;->ON_STOP:Landroidx/lifecycle/m;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Ld0/e;->f:Z

    :cond_1
    :goto_0
    return-void
.end method
