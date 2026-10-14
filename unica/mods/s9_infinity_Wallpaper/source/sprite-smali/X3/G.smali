.class public final LX3/G;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic a:LX3/G;

.field public static final b:LU3/w;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LX3/G;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LX3/G;->a:LX3/G;

    new-instance v0, LU3/w;

    const-string v1, "PackageViewDescriptorFactory"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/w;-><init>(Ljava/lang/String;I)V

    sput-object v0, LX3/G;->b:LU3/w;

    return-void
.end method
