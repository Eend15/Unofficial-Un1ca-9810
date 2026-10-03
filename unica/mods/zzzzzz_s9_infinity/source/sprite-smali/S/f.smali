.class public abstract LS/f;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final d:Landroidx/fragment/app/r;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/r;Ljava/lang/String;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, LS/f;->d:Landroidx/fragment/app/r;

    return-void
.end method
