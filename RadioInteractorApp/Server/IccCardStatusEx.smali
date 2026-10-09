.class public Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;
.super Ljava/lang/Object;
.source "IccCardStatusEx.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;,
        Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;
    }
.end annotation


# static fields
.field public static final CARD_MAX_APPS:I = 0x8

.field public static final CB_FACILITY_BA_PC:Ljava/lang/String; = "PC"

.field public static final CB_FACILITY_BA_PC_PUK:Ljava/lang/String; = "PCP"

.field public static final CB_FACILITY_BA_PN:Ljava/lang/String; = "PN"

.field public static final CB_FACILITY_BA_PN_PUK:Ljava/lang/String; = "PNP"

.field public static final CB_FACILITY_BA_PP:Ljava/lang/String; = "PP"

.field public static final CB_FACILITY_BA_PP_PUK:Ljava/lang/String; = "PPP"

.field public static final CB_FACILITY_BA_PS:Ljava/lang/String; = "PS"

.field public static final CB_FACILITY_BA_PS_PUK:Ljava/lang/String; = "PSP"

.field public static final CB_FACILITY_BA_PU:Ljava/lang/String; = "PU"

.field public static final CB_FACILITY_BA_PU_PUK:Ljava/lang/String; = "PUP"

.field public static final SIM_STATE_BASE:I = 0xb

.field public static final SIM_STATE_CORPORATE_LOCKED:I = 0xf

.field public static final SIM_STATE_CORPORATE_LOCKED_PUK:I = 0x14

.field public static final SIM_STATE_NETWORKSUBSET_LOCKED:I = 0xd

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NETWORK_LOCKED_PUK:I = 0x11

.field public static final SIM_STATE_NETWORK_SUBSET_LOCKED_PUK:I = 0x12

.field public static final SIM_STATE_SERVICEPROVIDER_LOCKED:I = 0xe

.field public static final SIM_STATE_SERVICE_PROVIDER_LOCKED_PUK:I = 0x13

.field public static final SIM_STATE_SIM_LOCKED:I = 0xc

.field public static final SIM_STATE_SIM_LOCKED_PERMANENTLY:I = 0x15

.field public static final SIM_STATE_SIM_LOCKED_PUK:I = 0x10

.field private static final UNLOCK_BASE:I = 0x0

.field public static final UNLOCK_CORPORATE:I = 0x5

.field public static final UNLOCK_CORPORATE_PUK:I = 0xa

.field public static final UNLOCK_NETWORK:I = 0x2

.field public static final UNLOCK_NETWORK_PUK:I = 0x7

.field public static final UNLOCK_NETWORK_SUBSET:I = 0x3

.field public static final UNLOCK_NETWORK_SUBSET_PUK:I = 0x8

.field public static final UNLOCK_SERVICE_PORIVDER:I = 0x4

.field public static final UNLOCK_SERVICE_PORIVDER_PUK:I = 0x9

.field public static final UNLOCK_SIM:I = 0x1

.field public static final UNLOCK_SIM_PUK:I = 0x6


# instance fields
.field public atr:Ljava/lang/String;

.field public eid:Ljava/lang/String;

.field public iccid:Ljava/lang/String;

.field public mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

.field public mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

.field public mCdmaSubscriptionAppIndex:I

.field public mGsmUmtsSubscriptionAppIndex:I

.field public mImsSubscriptionAppIndex:I

.field public mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

.field public physicalSlotIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->physicalSlotIndex:I

    return-void
.end method


# virtual methods
.method public setCardState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_CardState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;->CARDSTATE_ERROR:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;->CARDSTATE_PRESENT:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;->CARDSTATE_ABSENT:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setUniversalPinState(I)V
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized RIL_PinState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_BLOCKED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_DISABLED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_VERIFIED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_ENABLED_NOT_VERIFIED:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;->PINSTATE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IccCardState {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mUniversalPinState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",num_apps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",gsm_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mGsmUmtsSubscriptionAppIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mGsmUmtsSubscriptionAppIndex:I

    const-string v2, "null"

    const/16 v3, 0x8

    if-ltz v1, :cond_1

    if-ge v1, v3, :cond_1

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    aget-object v1, v4, v1

    if-nez v1, :cond_0

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object v4, v1

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v1, ",cdma_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCdmaSubscriptionAppIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCdmaSubscriptionAppIndex:I

    if-ltz v1, :cond_3

    if-ge v1, v3, :cond_3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    aget-object v1, v4, v1

    if-nez v1, :cond_2

    move-object v4, v2

    goto :goto_1

    :cond_2
    move-object v4, v1

    :goto_1
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_3
    const-string v1, ",ims_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mImsSubscriptionAppIndex:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mImsSubscriptionAppIndex:I

    if-ltz v1, :cond_5

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    aget-object v1, v3, v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :cond_5
    const-string v1, ",physical_slot_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->physicalSlotIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",atr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->atr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",iccid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->iccid:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/uicc/IccUtils;->givePrintableIccid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",eid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->eid:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
