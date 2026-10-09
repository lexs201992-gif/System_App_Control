.class final enum Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;
.super Ljava/lang/Enum;
.source "UniEmergencyNumberTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "EccTypeInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum AIEC:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum Amulance:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum Fire:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum MIEC:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum Marine:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum Mountain:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

.field public static final enum Police:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;


# instance fields
.field public final categoryBitmask:I

.field public final eccinfoType:I


# direct methods
.method private static synthetic $values()[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;
    .locals 7

    sget-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Police:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    sget-object v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Amulance:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    sget-object v2, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Fire:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    sget-object v3, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Marine:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    sget-object v4, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Mountain:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    sget-object v5, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->MIEC:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    sget-object v6, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->AIEC:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    filled-new-array/range {v0 .. v6}, [Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const-string v1, "Police"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Police:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const-string v1, "Amulance"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Amulance:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const-string v1, "Fire"

    const/4 v3, 0x3

    const/4 v4, 0x4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Fire:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const-string v1, "Marine"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Marine:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const/16 v1, 0x10

    const-string v2, "Mountain"

    const/4 v3, 0x5

    invoke-direct {v0, v2, v4, v3, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->Mountain:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const/16 v1, 0x20

    const-string v2, "MIEC"

    const/4 v4, 0x6

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->MIEC:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    new-instance v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    const/4 v1, 0x7

    const/16 v2, 0x40

    const-string v3, "AIEC"

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->AIEC:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    invoke-static {}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->$values()[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->$VALUES:[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->eccinfoType:I

    iput p4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->categoryBitmask:I

    return-void
.end method

.method public static getBitmask(II)I
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    invoke-static {}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->values()[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    move-result-object v2

    array-length v3, v2

    :goto_1
    if-ge v0, v3, :cond_3

    aget-object v4, v2, v0

    iget v5, v4, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->eccinfoType:I

    if-eq v5, p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    if-eqz v1, :cond_2

    iget v0, v4, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->categoryBitmask:I

    return v0

    :cond_2
    iget v0, v4, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->categoryBitmask:I

    or-int/2addr v0, p1

    return v0

    :cond_3
    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;
    .locals 1

    const-class v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->$VALUES:[Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$EccTypeInfo;

    return-object v0
.end method
