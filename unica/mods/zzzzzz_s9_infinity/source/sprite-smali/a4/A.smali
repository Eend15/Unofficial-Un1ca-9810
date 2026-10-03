.class public final La4/A;
.super La4/B;
.source "SourceFile"

# interfaces
.implements Lj4/d;


# instance fields
.field public final a:Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/A;->a:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final d()Ljava/lang/reflect/Type;
    .locals 0

    iget-object p0, p0, La4/A;->a:Ljava/lang/Class;

    return-object p0
.end method

.method public final p()Ljava/util/Collection;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method
