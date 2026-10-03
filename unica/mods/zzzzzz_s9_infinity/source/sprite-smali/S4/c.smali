.class public final LS4/c;
.super LF3/l;
.source "SourceFile"

# interfaces
.implements LE3/b;


# static fields
.field public static final d:LS4/c;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, LS4/c;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, LF3/l;-><init>(I)V

    sput-object v0, LS4/c;->d:LS4/c;

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method
