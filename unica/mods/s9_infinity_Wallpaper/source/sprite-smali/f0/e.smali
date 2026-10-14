.class public final Lf0/e;
.super Ljava/lang/RuntimeException;
.source "SourceFile"


# instance fields
.field public final d:I

.field public final e:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    const-string v0, "callbackName"

    invoke-static {p1, v0}, LB/a;->t(ILjava/lang/String;)V

    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    iput p1, p0, Lf0/e;->d:I

    iput-object p2, p0, Lf0/e;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    iget-object p0, p0, Lf0/e;->e:Ljava/lang/Throwable;

    return-object p0
.end method
