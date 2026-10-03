.class public final LO3/s;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# static fields
.field public static final d:LO3/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LO3/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, LO3/s;->d:LO3/s;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    const-class p0, Ljava/lang/Object;

    return-object p0
.end method
