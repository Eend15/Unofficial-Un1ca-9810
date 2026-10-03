.class public final LU3/W;
.super LU3/b0;
.source "SourceFile"


# static fields
.field public static final d:LU3/W;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, LU3/W;

    const-string v1, "private_to_this"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, LU3/b0;-><init>(Ljava/lang/String;Z)V

    sput-object v0, LU3/W;->d:LU3/W;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 0

    const-string p0, "private/*private to this*/"

    return-object p0
.end method
