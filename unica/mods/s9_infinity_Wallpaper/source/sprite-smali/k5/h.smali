.class public final Lk5/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Lk5/i;


# instance fields
.field public final d:Lk5/i;

.field public final e:Lk5/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    sput-object v0, Lk5/h;->f:Lk5/i;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lk5/i;

    invoke-direct {v0}, Lk5/i;-><init>()V

    iput-object v0, p0, Lk5/h;->d:Lk5/i;

    new-instance v0, Lk5/d;

    invoke-direct {v0}, Lk5/d;-><init>()V

    iput-object v0, p0, Lk5/h;->e:Lk5/d;

    return-void
.end method

.method public static final a(Lk5/h;Lk5/i;Lk5/i;)V
    .locals 5

    iget-object v0, p0, Lk5/h;->e:Lk5/d;

    iget v1, v0, Lk5/d;->d:F

    iget v2, p1, Lk5/i;->d:F

    mul-float v3, v1, v2

    iget v0, v0, Lk5/d;->e:F

    iget p1, p1, Lk5/i;->e:F

    mul-float v4, v0, p1

    add-float/2addr v4, v3

    iget-object p0, p0, Lk5/h;->d:Lk5/i;

    iget v3, p0, Lk5/i;->e:F

    add-float/2addr v4, v3

    mul-float/2addr v0, v2

    mul-float/2addr v1, p1

    sub-float/2addr v0, v1

    iget p0, p0, Lk5/i;->d:F

    add-float/2addr v0, p0

    iput v0, p2, Lk5/i;->d:F

    iput v4, p2, Lk5/i;->e:F

    return-void
.end method

.method public static final b(Lk5/h;Lk5/i;Lk5/i;)V
    .locals 5

    iget-object v0, p0, Lk5/h;->e:Lk5/d;

    iget v1, v0, Lk5/d;->e:F

    iget v2, p1, Lk5/i;->d:F

    mul-float/2addr v2, v1

    iget v0, v0, Lk5/d;->d:F

    iget v3, p1, Lk5/i;->e:F

    mul-float v4, v0, v3

    sub-float/2addr v2, v4

    iget-object p0, p0, Lk5/h;->d:Lk5/i;

    iget v4, p0, Lk5/i;->d:F

    add-float/2addr v2, v4

    iput v2, p2, Lk5/i;->d:F

    iget p1, p1, Lk5/i;->d:F

    mul-float/2addr v0, p1

    mul-float/2addr v1, v3

    add-float/2addr v1, v0

    iget p0, p0, Lk5/i;->e:F

    add-float/2addr v1, p0

    iput v1, p2, Lk5/i;->e:F

    return-void
.end method

.method public static final c(Lk5/h;Lk5/i;Lk5/i;)V
    .locals 4

    iget v0, p1, Lk5/i;->d:F

    iget-object v1, p0, Lk5/h;->d:Lk5/i;

    iget v2, v1, Lk5/i;->d:F

    sub-float/2addr v0, v2

    iget p1, p1, Lk5/i;->e:F

    iget v1, v1, Lk5/i;->e:F

    sub-float/2addr p1, v1

    iget-object p0, p0, Lk5/h;->e:Lk5/d;

    iget v1, p0, Lk5/d;->e:F

    mul-float v2, v1, v0

    iget p0, p0, Lk5/d;->d:F

    mul-float v3, p0, p1

    add-float/2addr v3, v2

    iput v3, p2, Lk5/i;->d:F

    neg-float p0, p0

    mul-float/2addr p0, v0

    mul-float/2addr v1, p1

    add-float/2addr v1, p0

    iput v1, p2, Lk5/i;->e:F

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "XForm:\nPosition: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lk5/h;->d:Lk5/i;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "R: \n"

    invoke-static {v0, v2}, Lq/e;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lk5/h;->e:Lk5/d;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
