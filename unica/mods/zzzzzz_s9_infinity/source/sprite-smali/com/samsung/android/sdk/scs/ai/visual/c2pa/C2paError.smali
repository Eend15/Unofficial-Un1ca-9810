.class public final enum Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0010\u000e\n\u0002\u00089\u0008\u0086\u0001\u0018\u0000 ;2\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001;B\u000f\u0008\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001fj\u0002\u0008 j\u0002\u0008!j\u0002\u0008\"j\u0002\u0008#j\u0002\u0008$j\u0002\u0008%j\u0002\u0008&j\u0002\u0008\'j\u0002\u0008(j\u0002\u0008)j\u0002\u0008*j\u0002\u0008+j\u0002\u0008,j\u0002\u0008-j\u0002\u0008.j\u0002\u0008/j\u0002\u00080j\u0002\u00081j\u0002\u00082j\u0002\u00083j\u0002\u00084j\u0002\u00085j\u0002\u00086j\u0002\u00087j\u0002\u00088j\u0002\u00089j\u0002\u0008:\u00a8\u0006<"
    }
    d2 = {
        "Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;",
        "",
        "errString",
        "",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "getErrString",
        "()Ljava/lang/String;",
        "NO_C2PA_MANIFEST",
        "CLAIM_MISSING",
        "CLAIM_MULTIPLE",
        "HARD_BINDINGS_MISSING",
        "CLAIM_REQUIRED_MISSING",
        "CLAIM_CBOR_INVALID",
        "INGREDIENT_HASHEDURI_MISMATCH",
        "CLAIM_SIGNATURE_MISSING",
        "CLAIM_SIGNATURE_MISMATCH",
        "MANIFEST_INACCESSIBLE",
        "MANIFEST_MULTIPLE_PARENTS",
        "MANIFEST_UPDATE_INVALID",
        "MANIFEST_UPDATE_WRONG_PARENTS",
        "SIGNING_CREDENTIAL_UNTRUSTED",
        "SIGNING_CREDENTIAL_INVALID",
        "SIGNING_CREDENTIAL_REVOKED",
        "SIGNING_CREDENTIAL_EXPIRED",
        "TIMESTAMP_MISMATCH",
        "TIMESTAMP_UNTRUSTED",
        "TIMESTAMP_OUTSIDE_VALIDITY",
        "ASSERTION_HASHEDURI_MISMATCH",
        "ASSERTION_MISSING",
        "ASSERTION_UNDECLARED",
        "ASSERTION_INACCESSIBLE",
        "ASSERTION_NOT_REDACTED",
        "ASSERTION_SELF_REDACTED",
        "ASSERTION_REQUIRED_MISSING",
        "ASSERTION_JSON_INVALID",
        "ASSERTION_CBOR_INVALID",
        "ACTION_ASSERTION_INGREDIENT_MISMATCH",
        "ACTION_ASSERTION_REDACTED",
        "ASSERTION_DATAHASH_MISMATCH",
        "ASSERTION_BMFFHASH_MISMATCH",
        "ASSERTION_BOXHASH_MISMATCH",
        "ASSERTION_BOXHASH_UNKNOWN",
        "ASSERTION_CLOUD_DATA_HARD_BINDING",
        "ASSERTION_CLOUD_DATA_ACTIONS",
        "ALGORITHM_UNSUPPORTED",
        "GENERAL_ERROR",
        "OLD_VERSION",
        "UNSUPPORTED_TYPE",
        "INVALID_CLAIM_SIGNATURE",
        "INVALID_PATH",
        "MANIFEST_PARSING_ERROR",
        "INVALID_SIGN_ALG",
        "C2PA_ERROR_UNKNOWN",
        "SERVICE_NOT_INITIALIZED",
        "INVALID_PARENT_PATH",
        "INVALID_INGREDIENT_PATH",
        "INTERNAL_SERVICE_ERROR",
        "PFD_READ_ERROR",
        "MISSING_CONFIG_ERROR",
        "Companion",
        "scs-ai-4.0.32_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ACTION_ASSERTION_INGREDIENT_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ACTION_ASSERTION_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ALGORITHM_UNSUPPORTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_BMFFHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_BOXHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_BOXHASH_UNKNOWN:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_CBOR_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_CLOUD_DATA_ACTIONS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_CLOUD_DATA_HARD_BINDING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_DATAHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_HASHEDURI_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_INACCESSIBLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_JSON_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_NOT_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_REQUIRED_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_SELF_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum ASSERTION_UNDECLARED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum C2PA_ERROR_UNKNOWN:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum CLAIM_CBOR_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum CLAIM_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum CLAIM_MULTIPLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum CLAIM_REQUIRED_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum CLAIM_SIGNATURE_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum CLAIM_SIGNATURE_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final Companion:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion;

.field public static final enum GENERAL_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum HARD_BINDINGS_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INGREDIENT_HASHEDURI_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INTERNAL_SERVICE_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INVALID_CLAIM_SIGNATURE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INVALID_INGREDIENT_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INVALID_PARENT_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INVALID_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum INVALID_SIGN_ALG:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum MANIFEST_INACCESSIBLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum MANIFEST_MULTIPLE_PARENTS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum MANIFEST_PARSING_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum MANIFEST_UPDATE_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum MANIFEST_UPDATE_WRONG_PARENTS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum MISSING_CONFIG_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum NO_C2PA_MANIFEST:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum OLD_VERSION:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum PFD_READ_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum SERVICE_NOT_INITIALIZED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum SIGNING_CREDENTIAL_EXPIRED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum SIGNING_CREDENTIAL_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum SIGNING_CREDENTIAL_REVOKED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum SIGNING_CREDENTIAL_UNTRUSTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum TIMESTAMP_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum TIMESTAMP_OUTSIDE_VALIDITY:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum TIMESTAMP_UNTRUSTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

.field public static final enum UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;


# instance fields
.field private final errString:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;
    .locals 52

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->NO_C2PA_MANIFEST:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v1, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v2, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_MULTIPLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v3, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->HARD_BINDINGS_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v4, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_REQUIRED_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v5, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_CBOR_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v6, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INGREDIENT_HASHEDURI_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v7, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_SIGNATURE_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v8, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_SIGNATURE_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v9, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_INACCESSIBLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v10, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_MULTIPLE_PARENTS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v11, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_UPDATE_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v12, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_UPDATE_WRONG_PARENTS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v13, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_UNTRUSTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v14, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v15, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_REVOKED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v16, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_EXPIRED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v17, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->TIMESTAMP_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v18, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->TIMESTAMP_UNTRUSTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v19, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->TIMESTAMP_OUTSIDE_VALIDITY:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v20, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_HASHEDURI_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v21, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v22, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_UNDECLARED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v23, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_INACCESSIBLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v24, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_NOT_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v25, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_SELF_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v26, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_REQUIRED_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v27, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_JSON_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v28, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_CBOR_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v29, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ACTION_ASSERTION_INGREDIENT_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v30, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ACTION_ASSERTION_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v31, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_DATAHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v32, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_BMFFHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v33, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_BOXHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v34, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_BOXHASH_UNKNOWN:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v35, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_CLOUD_DATA_HARD_BINDING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v36, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_CLOUD_DATA_ACTIONS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v37, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ALGORITHM_UNSUPPORTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v38, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->GENERAL_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v39, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->OLD_VERSION:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v40, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v41, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_CLAIM_SIGNATURE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v42, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v43, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_PARSING_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v44, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_SIGN_ALG:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v45, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->C2PA_ERROR_UNKNOWN:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v46, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SERVICE_NOT_INITIALIZED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v47, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_PARENT_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v48, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_INGREDIENT_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v49, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INTERNAL_SERVICE_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v50, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->PFD_READ_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    sget-object v51, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MISSING_CONFIG_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    filled-new-array/range {v0 .. v51}, [Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x0

    const-string v2, "no JUMBF data found"

    const-string v3, "NO_C2PA_MANIFEST"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->NO_C2PA_MANIFEST:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x1

    const-string v2, "claim.missing"

    const-string v3, "CLAIM_MISSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x2

    const-string v2, "claim.multiple"

    const-string v3, "CLAIM_MULTIPLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_MULTIPLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x3

    const-string v2, "claim.hardBindings.missing"

    const-string v3, "HARD_BINDINGS_MISSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->HARD_BINDINGS_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x4

    const-string v2, "claim.required.missing"

    const-string v3, "CLAIM_REQUIRED_MISSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_REQUIRED_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x5

    const-string v2, "claim.cbor.invalid"

    const-string v3, "CLAIM_CBOR_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_CBOR_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x6

    const-string v2, "ingredient.hashedURI.mismatch"

    const-string v3, "INGREDIENT_HASHEDURI_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INGREDIENT_HASHEDURI_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/4 v1, 0x7

    const-string v2, "claimSignature.missing"

    const-string v3, "CLAIM_SIGNATURE_MISSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_SIGNATURE_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x8

    const-string v2, "claimSignature.mismatch"

    const-string v3, "CLAIM_SIGNATURE_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->CLAIM_SIGNATURE_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x9

    const-string v2, "manifest.inaccessible"

    const-string v3, "MANIFEST_INACCESSIBLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_INACCESSIBLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0xa

    const-string v2, "manifest.multipleParents"

    const-string v3, "MANIFEST_MULTIPLE_PARENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_MULTIPLE_PARENTS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0xb

    const-string v2, "manifest.update.invalid"

    const-string v3, "MANIFEST_UPDATE_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_UPDATE_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0xc

    const-string v2, "manifest.update.wrongParents"

    const-string v3, "MANIFEST_UPDATE_WRONG_PARENTS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_UPDATE_WRONG_PARENTS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0xd

    const-string v2, "signingCredential.untrusted"

    const-string v3, "SIGNING_CREDENTIAL_UNTRUSTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_UNTRUSTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0xe

    const-string v2, "signingCredential.invalid"

    const-string v3, "SIGNING_CREDENTIAL_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0xf

    const-string v2, "signingCredential.revoked"

    const-string v3, "SIGNING_CREDENTIAL_REVOKED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_REVOKED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x10

    const-string v2, "signingCredential.expired"

    const-string v3, "SIGNING_CREDENTIAL_EXPIRED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SIGNING_CREDENTIAL_EXPIRED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x11

    const-string v2, "timeStamp.mismatch"

    const-string v3, "TIMESTAMP_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->TIMESTAMP_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x12

    const-string v2, "timeStamp.untrusted"

    const-string v3, "TIMESTAMP_UNTRUSTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->TIMESTAMP_UNTRUSTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x13

    const-string v2, "timeStamp.outsideValidity"

    const-string v3, "TIMESTAMP_OUTSIDE_VALIDITY"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->TIMESTAMP_OUTSIDE_VALIDITY:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x14

    const-string v2, "assertion.hashedURI.mismatch"

    const-string v3, "ASSERTION_HASHEDURI_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_HASHEDURI_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x15

    const-string v2, "assertion.missing"

    const-string v3, "ASSERTION_MISSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x16

    const-string v2, "assertion.undeclared"

    const-string v3, "ASSERTION_UNDECLARED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_UNDECLARED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x17

    const-string v2, "assertion.inaccessible"

    const-string v3, "ASSERTION_INACCESSIBLE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_INACCESSIBLE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x18

    const-string v2, "assertion.notRedacted"

    const-string v3, "ASSERTION_NOT_REDACTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_NOT_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x19

    const-string v2, "assertion.selfRedacted"

    const-string v3, "ASSERTION_SELF_REDACTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_SELF_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x1a

    const-string v2, "assertion.required.missing"

    const-string v3, "ASSERTION_REQUIRED_MISSING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_REQUIRED_MISSING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x1b

    const-string v2, "assertion.json.invalid"

    const-string v3, "ASSERTION_JSON_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_JSON_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x1c

    const-string v2, "assertion.cbor.invalid"

    const-string v3, "ASSERTION_CBOR_INVALID"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_CBOR_INVALID:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x1d

    const-string v2, "assertion.action.ingredientMismatch"

    const-string v3, "ACTION_ASSERTION_INGREDIENT_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ACTION_ASSERTION_INGREDIENT_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x1e

    const-string v2, "assertion.action.redacted"

    const-string v3, "ACTION_ASSERTION_REDACTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ACTION_ASSERTION_REDACTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x1f

    const-string v2, "assertion.dataHash.mismatch"

    const-string v3, "ASSERTION_DATAHASH_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_DATAHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x20

    const-string v2, "assertion.bmffHash.mismatch"

    const-string v3, "ASSERTION_BMFFHASH_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_BMFFHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x21

    const-string v2, "assertion.boxesHash.mismatch"

    const-string v3, "ASSERTION_BOXHASH_MISMATCH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_BOXHASH_MISMATCH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x22

    const-string v2, "::assertion.boxesHash."

    const-string v3, "ASSERTION_BOXHASH_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_BOXHASH_UNKNOWN:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x23

    const-string v2, "assertion.cloud-data.hardBinding"

    const-string v3, "ASSERTION_CLOUD_DATA_HARD_BINDING"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_CLOUD_DATA_HARD_BINDING:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x24

    const-string v2, "assertion.cloud-data.actions"

    const-string v3, "ASSERTION_CLOUD_DATA_ACTIONS"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ASSERTION_CLOUD_DATA_ACTIONS:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x25

    const-string v2, "algorithm.unsupported"

    const-string v3, "ALGORITHM_UNSUPPORTED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->ALGORITHM_UNSUPPORTED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x26

    const-string v2, "general.error"

    const-string v3, "GENERAL_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->GENERAL_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x27

    const-string v2, "prerelease content detected"

    const-string v3, "OLD_VERSION"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->OLD_VERSION:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x28

    const-string v2, "type is unsupported"

    const-string v3, "UNSUPPORTED_TYPE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->UNSUPPORTED_TYPE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x29

    const-string v2, "claim signature"

    const-string v3, "INVALID_CLAIM_SIGNATURE"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_CLAIM_SIGNATURE:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x2a

    const-string v2, "invalid path"

    const-string v3, "INVALID_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x2b

    const-string v2, "ManifestParsingError"

    const-string v3, "MANIFEST_PARSING_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MANIFEST_PARSING_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x2c

    const-string v2, "InvalidSignAlg"

    const-string v3, "INVALID_SIGN_ALG"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_SIGN_ALG:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x2d

    const-string v2, "C2PAUnKnown"

    const-string v3, "C2PA_ERROR_UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->C2PA_ERROR_UNKNOWN:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x2e

    const-string v2, "ServiceNotInitialized"

    const-string v3, "SERVICE_NOT_INITIALIZED"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->SERVICE_NOT_INITIALIZED:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x2f

    const-string v2, "ParentPathSetError"

    const-string v3, "INVALID_PARENT_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_PARENT_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x30

    const-string v2, "IngredietPathError"

    const-string v3, "INVALID_INGREDIENT_PATH"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INVALID_INGREDIENT_PATH:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x31

    const-string v2, "InternalServiceError"

    const-string v3, "INTERNAL_SERVICE_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->INTERNAL_SERVICE_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x32

    const-string v2, "PfdReadError"

    const-string v3, "PFD_READ_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->PFD_READ_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    const/16 v1, 0x33

    const-string v2, "MissingConfigError"

    const-string v3, "MISSING_CONFIG_ERROR"

    invoke-direct {v0, v3, v1, v2}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->MISSING_CONFIG_ERROR:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    invoke-static {}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->$values()[Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    new-instance v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion;-><init>(LF3/f;)V

    sput-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->Companion:Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError$Companion;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->errString:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;
    .locals 1

    const-class v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    return-object p0
.end method

.method public static values()[Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;
    .locals 1

    sget-object v0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->$VALUES:[Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;

    return-object v0
.end method


# virtual methods
.method public final getErrString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/visual/c2pa/C2paError;->errString:Ljava/lang/String;

    return-object p0
.end method
