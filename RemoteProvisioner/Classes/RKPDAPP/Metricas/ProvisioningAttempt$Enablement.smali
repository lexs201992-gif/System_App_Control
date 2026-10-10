.class public final enum Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
.super Ljava/lang/Enum;
.source "ProvisioningAttempt.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rkpdapp/metrics/ProvisioningAttempt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Enablement"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

.field public static final enum DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

.field public static final enum ENABLED_RKP_ONLY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

.field public static final enum ENABLED_WITH_FALLBACK:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

.field public static final enum UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;


# direct methods
.method private static synthetic $values()[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
    .locals 4

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    sget-object v1, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->ENABLED_WITH_FALLBACK:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    sget-object v2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->ENABLED_RKP_ONLY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    sget-object v3, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    filled-new-array {v0, v1, v2, v3}, [Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->UNKNOWN:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    const-string v1, "ENABLED_WITH_FALLBACK"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->ENABLED_WITH_FALLBACK:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    const-string v1, "ENABLED_RKP_ONLY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->ENABLED_RKP_ONLY:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    new-instance v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    const-string v1, "DISABLED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-static {}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->$values()[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    move-result-object v0

    sput-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->$VALUES:[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
    .locals 1

    const-class v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    return-object p0
.end method

.method public static values()[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;
    .locals 1

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->$VALUES:[Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-virtual {v0}, [Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    return-object v0
.end method
