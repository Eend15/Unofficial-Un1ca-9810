.class public final LZ4/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:LU3/w;

.field public final b:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(LU3/w;Landroid/content/ContentResolver;)V
    .locals 1

    const-string v0, "contentUri"

    invoke-static {p1, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ4/a;->a:LU3/w;

    iput-object p2, p0, LZ4/a;->b:Landroid/content/ContentResolver;

    return-void
.end method
