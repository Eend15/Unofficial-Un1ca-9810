.class public final Ll4/b;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/a;


# static fields
.field public static final d:Ll4/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll4/b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, Ll4/b;->d:Ll4/b;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    sget-object p0, Lr3/r;->d:Lr3/r;

    return-object p0
.end method
