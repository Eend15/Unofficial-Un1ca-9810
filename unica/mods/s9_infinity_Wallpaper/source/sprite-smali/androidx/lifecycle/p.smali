.class public final Landroidx/lifecycle/p;
.super Landroidx/lifecycle/g;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    const-string p0, "activity"

    invoke-static {p1, p0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    sget p0, Landroidx/lifecycle/H;->d:I

    invoke-static {p1}, Landroidx/lifecycle/F;->b(Landroid/app/Activity;)V

    return-void
.end method
