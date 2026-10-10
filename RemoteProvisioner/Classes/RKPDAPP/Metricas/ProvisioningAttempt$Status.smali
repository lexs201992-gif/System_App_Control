.class public final enum Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
.super Ljava/lang/Enum;
.source "ProvisioningAttempt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rkpdapp/metrics/ProvisioningAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum FETCH_GEEK_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum FETCH_GEEK_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum FETCH_GEEK_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum GENERATE_KEYPAIR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum GET_POOL_STATUS_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum INSERT_CHAIN_INTO_POOL_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum INTERNAL_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum INTERRUPTED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum KEYS_SUCCESSFULLY_PROVISIONED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum NO_NETWORK_CONNECTIVITY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum NO_PROVISIONING_NEEDED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum OUT_OF_ERROR_BUDGET:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum PROVISIONING_DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum SIGN_CERTS_DEVICE_NOT_REGISTERED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum SIGN_CERTS_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum SIGN_CERTS_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum SIGN_CERTS_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

.field public static final enum UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;


# direct methods
.method private static synthetic $values()[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
    .locals 19

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v1, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->KEYS_SUCCESSFULLY_PROVISIONED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_PROVISIONING_NEEDED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v3, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->PROVISIONING_DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v4, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INTERNAL_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v5, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_NETWORK_CONNECTIVITY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v6, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->OUT_OF_ERROR_BUDGET:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v7, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INTERRUPTED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v8, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_KEYPAIR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v9, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v10, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GET_POOL_STATUS_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v11, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INSERT_CHAIN_INTO_POOL_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v12, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v13, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v14, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v15, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v16, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v17, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    sget-object v18, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_DEVICE_NOT_REGISTERED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    filled-new-array/range {v0 .. v18}, [Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "KEYS_SUCCESSFULLY_PROVISIONED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->KEYS_SUCCESSFULLY_PROVISIONED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "NO_PROVISIONING_NEEDED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_PROVISIONING_NEEDED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "PROVISIONING_DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->PROVISIONING_DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "INTERNAL_ERROR"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INTERNAL_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "NO_NETWORK_CONNECTIVITY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_NETWORK_CONNECTIVITY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "OUT_OF_ERROR_BUDGET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->OUT_OF_ERROR_BUDGET:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "INTERRUPTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INTERRUPTED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "GENERATE_KEYPAIR_FAILED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_KEYPAIR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "GENERATE_CSR_FAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GENERATE_CSR_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "GET_POOL_STATUS_FAILED"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->GET_POOL_STATUS_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "INSERT_CHAIN_INTO_POOL_FAILED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INSERT_CHAIN_INTO_POOL_FAILED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "FETCH_GEEK_TIMED_OUT"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "FETCH_GEEK_IO_EXCEPTION"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "FETCH_GEEK_HTTP_ERROR"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->FETCH_GEEK_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "SIGN_CERTS_TIMED_OUT"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_TIMED_OUT:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "SIGN_CERTS_IO_EXCEPTION"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_IO_EXCEPTION:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "SIGN_CERTS_HTTP_ERROR"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_HTTP_ERROR:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    const-string v1, "SIGN_CERTS_DEVICE_NOT_REGISTERED"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->SIGN_CERTS_DEVICE_NOT_REGISTERED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-static {}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->$values()[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    move-result-object v0

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->$VALUES:[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
    .locals 1

    const-class v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object p0
.end method

.method public static values()[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;
    .locals 1

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->$VALUES:[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {v0}, [Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    return-object v0
.end method
