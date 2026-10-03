.class public final Ll4/f;
.super Ll4/i;
.source "SourceFile"


# instance fields
.field public final i:Ll4/i;


# direct methods
.method public constructor <init>(Ll4/i;)V
    .locals 1

    const-string v0, "elementType"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ll4/f;->i:Ll4/i;

    return-void
.end method
