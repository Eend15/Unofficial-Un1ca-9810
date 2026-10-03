.class public final LV4/g;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:LV4/g;


# instance fields
.field public final a:Z

.field public final b:LV4/e;

.field public final c:LV4/f;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, LV4/g;

    sget-object v1, LV4/e;->c:LV4/e;

    sget-object v2, LV4/f;->a:LV4/f;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, LV4/g;-><init>(ZLV4/e;LV4/f;)V

    sput-object v0, LV4/g;->d:LV4/g;

    new-instance v0, LV4/g;

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, LV4/g;-><init>(ZLV4/e;LV4/f;)V

    return-void
.end method

.method public constructor <init>(ZLV4/e;LV4/f;)V
    .locals 1

    const-string v0, "bytes"

    invoke-static {p2, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "number"

    invoke-static {p3, v0}, LF3/k;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, LV4/g;->a:Z

    iput-object p2, p0, LV4/g;->b:LV4/e;

    iput-object p3, p0, LV4/g;->c:LV4/f;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 4

    const-string v0, "HexFormat(\n    upperCase = "

    invoke-static {v0}, Lq/e;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, LV4/g;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",\n    bytes = BytesHexFormat(\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, LV4/g;->b:LV4/e;

    const-string v2, "        "

    invoke-virtual {v1, v0, v2}, LV4/e;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "    ),"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "    number = NumberHexFormat("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, LV4/g;->c:LV4/f;

    invoke-virtual {p0, v0, v2}, LV4/f;->a(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, "    )"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "toString(...)"

    invoke-static {p0, v0}, LF3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
