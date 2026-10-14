.class public final Ld2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LO/d;


# instance fields
.field public final synthetic a:Ld2/c;


# direct methods
.method public constructor <init>(Ld2/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ld2/b;->a:Ld2/c;

    return-void
.end method


# virtual methods
.method public final a(FFZ)V
    .locals 0

    iget-object p0, p0, Ld2/b;->a:Ld2/c;

    iget-object p1, p0, Ld2/c;->d:LO/f;

    iget-boolean p1, p1, LO/f;->e:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ld2/c;->e:LO/f;

    iget-boolean p1, p1, LO/f;->e:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Ld2/c;->c:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ld2/c;->b:Landroid/os/Handler;

    if-eqz p1, :cond_0

    iget-object p0, p0, Ld2/c;->r:LA0/a;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-wide/16 p2, 0x32

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
