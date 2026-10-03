.class public final LO3/l;
.super LO3/n0;
.source "SourceFile"


# instance fields
.field public final e:LO3/h;

.field public final f:LO3/h;


# direct methods
.method public constructor <init>(LO3/h;LO3/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LO3/l;->e:LO3/h;

    iput-object p2, p0, LO3/l;->f:LO3/h;

    return-void
.end method


# virtual methods
.method public final c()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, LO3/l;->e:LO3/h;

    iget-object p0, p0, LO3/h;->e:Ljava/lang/String;

    return-object p0
.end method
