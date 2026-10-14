.class public final LX1/e;
.super LX1/f;
.source "SourceFile"


# instance fields
.field public final a:Ll5/a;

.field public final b:Lk5/i;

.field public final c:F


# direct methods
.method public constructor <init>(Ll5/a;Lk5/i;F)V
    .locals 1

    const-string v0, "body"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LX1/e;->a:Ll5/a;

    iput-object p2, p0, LX1/e;->b:Lk5/i;

    iput p3, p0, LX1/e;->c:F

    return-void
.end method
