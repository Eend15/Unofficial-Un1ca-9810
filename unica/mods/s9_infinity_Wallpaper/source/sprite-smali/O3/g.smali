.class public final LO3/g;
.super LO3/n0;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Lr4/e;


# direct methods
.method public constructor <init>(Lr4/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/g;->f:Lr4/e;

    invoke-virtual {p1}, Lr4/e;->d()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, LO3/g;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LO3/g;->e:Ljava/lang/String;

    return-object p0
.end method
