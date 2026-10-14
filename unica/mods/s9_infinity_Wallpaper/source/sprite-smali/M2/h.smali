.class public final LM2/h;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LO2/a;

.field public final b:Landroid/content/ContentResolver;

.field public c:LA1/h;

.field public final d:LE1/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;LO2/a;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "utils"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, LM2/h;->a:LO2/a;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "getContentResolver(...)"

    invoke-static {p1, p2}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, LM2/h;->b:Landroid/content/ContentResolver;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, LE1/f;

    const/4 v0, 0x2

    invoke-direct {p2, p0, p1, v0}, LE1/f;-><init>(Ljava/lang/Object;Landroid/os/Handler;I)V

    iput-object p2, p0, LM2/h;->d:LE1/f;

    return-void
.end method
