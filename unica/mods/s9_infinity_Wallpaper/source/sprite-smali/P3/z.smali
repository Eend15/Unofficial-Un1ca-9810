.class public final LP3/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LP3/f;


# static fields
.field public static final a:LP3/z;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, LP3/z;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LP3/z;->a:LP3/z;

    return-void
.end method


# virtual methods
.method public final k()Ljava/lang/reflect/Type;
    .locals 1

    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v0, "Void.TYPE"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Ljava/util/List;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method

.method public final m([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "call/callBy are not supported for this declaration."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
