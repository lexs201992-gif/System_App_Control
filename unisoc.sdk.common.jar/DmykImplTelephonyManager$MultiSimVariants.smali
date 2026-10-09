.class final enum Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;
.super Ljava/lang/Enum;
.source "DmykImplTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dmyk/android/telephony/DmykImplTelephonyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "MultiSimVariants"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

.field public static final enum DSDA:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

.field public static final enum DSDS:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

.field public static final enum TSTS:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

.field public static final enum UNKNOWN:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;


# direct methods
.method private static synthetic $values()[Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;
    .locals 4

    sget-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->DSDS:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    sget-object v1, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->DSDA:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    sget-object v2, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->TSTS:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    sget-object v3, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->UNKNOWN:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    filled-new-array {v0, v1, v2, v3}, [Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    const-string v1, "DSDS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->DSDS:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    new-instance v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    const-string v1, "DSDA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->DSDA:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    new-instance v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    const-string v1, "TSTS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->TSTS:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    new-instance v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->UNKNOWN:Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    invoke-static {}, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->$values()[Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    move-result-object v0

    sput-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->$VALUES:[Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;
    .locals 1

    const-class v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    return-object v0
.end method

.method public static values()[Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;
    .locals 1

    sget-object v0, Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->$VALUES:[Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    invoke-virtual {v0}, [Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dmyk/android/telephony/DmykImplTelephonyManager$MultiSimVariants;

    return-object v0
.end method
