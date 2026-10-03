.class public final LW4/a0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LW4/C;
.implements LW4/h;


# static fields
.field public static final d:LW4/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LW4/a0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LW4/a0;->d:LW4/a0;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 0

    return-void
.end method

.method public final c(Ljava/lang/Throwable;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "NonDisposableHandle"

    return-object p0
.end method
