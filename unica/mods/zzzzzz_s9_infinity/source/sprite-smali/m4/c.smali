.class public final Lm4/c;
.super LD4/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:I

.field public final synthetic f:Lm4/d;


# direct methods
.method public synthetic constructor <init>(Lm4/d;I)V
    .locals 0

    iput p2, p0, Lm4/c;->e:I

    iput-object p1, p0, Lm4/c;->f:Lm4/d;

    invoke-direct {p0}, LD4/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final E0([Ljava/lang/String;)V
    .locals 1

    iget v0, p0, Lm4/c;->e:I

    packed-switch v0, :pswitch_data_0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lm4/c;->f:Lm4/d;

    iget-object p0, p0, Lm4/d;->e:Lm4/f;

    iput-object p1, p0, Lm4/f;->e:[Ljava/lang/String;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'result\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$2.visitEnd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lm4/c;->f:Lm4/d;

    iget-object p0, p0, Lm4/d;->e:Lm4/f;

    iput-object p1, p0, Lm4/f;->d:[Ljava/lang/String;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Argument for @NotNull parameter \'result\' of kotlin/reflect/jvm/internal/impl/load/kotlin/header/ReadKotlinClassHeaderAnnotationVisitor$KotlinMetadataArgumentVisitor$1.visitEnd must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
