.class public final enum Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

.field public static final enum BASIC:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

.field public static final enum MEETING:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

.field public static final enum TABLE_OF_CONTENTS:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;


# direct methods
.method private static synthetic $values()[Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;
    .locals 3

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->BASIC:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->TABLE_OF_CONTENTS:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->MEETING:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    filled-new-array {v0, v1, v2}, [Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    const-string v1, "BASIC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->BASIC:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    const-string v1, "TABLE_OF_CONTENTS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->TABLE_OF_CONTENTS:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    const-string v1, "MEETING"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->MEETING:Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->$values()[Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    invoke-virtual {v0}, [Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/language/NotesOrganizationFormatType;

    return-object v0
.end method
