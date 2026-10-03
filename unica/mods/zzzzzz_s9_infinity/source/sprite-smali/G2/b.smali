.class public final LG2/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lh3/a;

.field public final b:Lh3/a;

.field public final c:Lh3/a;


# direct methods
.method public constructor <init>(Lh3/a;Lh3/a;Lh3/a;)V
    .locals 1

    const-string v0, "weatherNone"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "weatherRainy"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "WeatherSnowy"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LG2/b;->a:Lh3/a;

    iput-object p2, p0, LG2/b;->b:Lh3/a;

    iput-object p3, p0, LG2/b;->c:Lh3/a;

    return-void
.end method
