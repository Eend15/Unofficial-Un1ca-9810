.class public final LK2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LK2/a;


# instance fields
.field public final a:LO2/a;


# direct methods
.method public constructor <init>(LO2/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LK2/g;->a:LO2/a;

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 0

    const-string p2, "context"

    invoke-static {p1, p2}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, LK2/g;->a:LO2/a;

    invoke-virtual {p0}, LO2/a;->b()LS2/b;

    move-result-object p0

    iget-object p0, p0, LS2/b;->b:Ljava/lang/Object;

    check-cast p0, LT2/a;

    invoke-static {p0}, LR3/f;->K(LT2/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "empty"

    :cond_0
    const-string p1, "dump_data"

    invoke-virtual {p3, p1, p0}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "provider_call_result"

    const/4 p1, 0x1

    invoke-virtual {p3, p0, p1}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
