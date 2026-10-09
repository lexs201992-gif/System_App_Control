.class public final Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;
.super Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.source "UniImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker$SrvccPendingAction;
    }
.end annotation


# static fields
.field public static final EMC_DIAL_ON_CELLULAR:I = 0x2

.field public static final EMC_DIAL_ON_UNKNOW:I = 0x0

.field public static final EMC_DIAL_ON_VOWIFI:I = 0x1

.field public static final EMC_NO_NEED_REDIAL:I = 0x4

.field private static final EMC_SOURCE_PROP:Ljava/lang/String; = "persist.radio.emc.source"

.field private static final EVENT_DIAL_PENDINGMO:I = 0x6c

.field private static final EVENT_EXTRA_BASE:I = 0x64

.field private static final EVENT_HANGUP_PENDINGMO:I = 0x6a

.field private static final EVENT_HANGUP_PENGDING_CALL:I = 0x69

.field private static final EVENT_RESUME_BACKGROUND:I = 0x6b

.field private static final EVENT_RETRY_TIMEOUT:I = 0x67

.field private static final EVENT_RETRY_WIFI_E911_CALL:I = 0x66

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x65

.field private static final EVENT_WIFI_E911_CALL_TIMEOUT:I = 0x68

.field static final LOG_TAG:Ljava/lang/String; = "UniImsPhoneCallTracker"

.field private static final TIMEOUT_HANGUP_PENDINGMO:I = 0x1f4

.field private static final TIMEOUT_REDIAL_ECALL_ON_CELLULAR:I = 0x2710

.field public static final VIDEO_STATE:Ljava/lang/String; = "video_state"


# instance fields
.field private mEMCDialFlag:I

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mMergePeerConn:Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

.field private mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mSrvccState:I

.field private mSyncHold:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;-><init>(Lcom/android/internal/telephony/imsphone/ImsPhone;Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$ConnectorFactory;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mSyncHold:Ljava/lang/Object;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mSrvccState:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    return-void
.end method

.method private detachPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->detach(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->removeConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->finalize()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method private excutePendingActions()V
    .locals 6

    const-string v0, "excutePendingActions."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "excutePendingActions->m.what:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    :try_start_0
    iget v3, v1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    new-instance v3, Ljava/lang/StringBuilder;

    goto/16 :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->stopDtmf()V

    goto/16 :goto_2

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Character;

    invoke-virtual {v4}, Ljava/lang/Character;->charValue()C

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->startDtmf(C)V

    goto :goto_2

    :pswitch_2
    iget-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    iget-object v5, v3, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Character;

    invoke-virtual {v5}, Ljava/lang/Character;->charValue()C

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/Phone;->sendDtmf(C)V

    goto :goto_2

    :pswitch_3
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->switchWaitingOrHoldingAndActive()V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->conference()V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->rejectCall()V

    goto :goto_2

    :pswitch_6
    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->acceptCall()V

    goto :goto_2

    :pswitch_7
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    const/16 v4, 0x69

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput-object v4, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v4, 0xc8

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2

    :pswitch_8
    invoke-virtual {v1}, Landroid/os/Message;->peekData()Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->dialGsm(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;Landroid/os/Bundle;)Lcom/android/internal/telephony/Connection;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyUnknownConnection(Lcom/android/internal/telephony/Connection;)V

    goto :goto_2

    :goto_1
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "excutePendingActions->not support action->m.what:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v3

    :goto_3
    goto/16 :goto_0

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCarrierValueForKey(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    nop

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCarrierValueForKey : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v0
.end method

.method private getLteRadioCapability()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getRadioAccessFamily()I

    move-result v2

    and-int/lit16 v3, v2, 0x1000

    const/16 v4, 0x1000

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method private hasEMCDialFlag(II)Z
    .locals 1

    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInternationRoaming()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/ServiceStateTracker;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isInternationRoaming, serviceState.getVoiceRoamingType ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x3

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result v3

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method private isUsimCard(I)Z
    .locals 5

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUsimCard, Ignore invalid phoneId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method private reDialAsECallOnCellularNetwork(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v6, "reDialAsECallOnCellularNetwork format number err"

    invoke-virtual {v1, v6}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :goto_0
    const-string v0, ""

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v6

    invoke-virtual/range {p2 .. p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v15

    if-eqz v6, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v1, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->detachPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    if-eqz v15, :cond_2

    invoke-virtual {v15}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v7, "urn:service"

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v15, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "AT+WIFISYNC="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ",\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\""

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UrnCommand AT command is: "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    move-object v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getPhoneId()I

    move-result v0

    const/4 v8, 0x0

    invoke-virtual {v7, v4, v8, v0}, Lcom/android/unisoc/telephony/RadioInteractor;->sendAtCmd(Ljava/lang/String;[Ljava/lang/String;I)I

    const-wide/16 v8, 0xc8

    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    :cond_2
    :goto_1
    new-instance v0, Landroid/telephony/emergency/EmergencyNumber;

    const-string v9, ""

    const-string v10, ""

    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x1

    const/4 v4, 0x1

    move-object v7, v0

    move-object/from16 v8, v16

    move v11, v5

    move/from16 v17, v5

    move-object v5, v14

    move v14, v4

    invoke-direct/range {v7 .. v14}, Landroid/telephony/emergency/EmergencyNumber;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;II)V

    move-object v10, v0

    iget-object v7, v5, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v9, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-interface/range {v7 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->dial(Ljava/lang/String;ZLandroid/telephony/emergency/EmergencyNumber;ZILandroid/os/Message;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setNoNeedRedial()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->updatePhoneState()V

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    const/4 v0, 0x1

    return v0

    :cond_3
    return v4

    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reDialAsECallOnCellularNetwork: imsCall:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " reasonInfo: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "getPendingMO: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v4
.end method

.method private reDialECall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;Z)Z
    .locals 10

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v1

    if-eqz v1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "reDialECall: oldConnection == null!"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->detachPendingMO(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v3

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getExtraMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->getCallProfile()Landroid/telephony/ims/ImsCallProfile;

    move-result-object v5

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "AdditionalCallInfo"

    invoke-virtual {v5, v6, v4}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const/4 v6, 0x1

    const-string v7, "CallRadioTech"

    if-eqz p3, :cond_4

    nop

    const/16 v8, 0x12

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEMCDialFlag(I)V

    goto :goto_0

    :cond_4
    nop

    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Landroid/telephony/ims/ImsCallProfile;->setCallExtra(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEMCDialFlag(I)V

    :goto_0
    iget-object v7, v5, Landroid/telephony/ims/ImsCallProfile;->mCallExtras:Landroid/os/Bundle;

    :try_start_0
    new-instance v8, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-direct {v8}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;-><init>()V

    invoke-virtual {v8, v3}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setVideoState(I)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {v8, v7}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->setIntentExtras(Landroid/os/Bundle;)Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs$Builder;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;

    invoke-virtual {v8}, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs$Builder;->build()Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;

    move-result-object v8

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v9

    invoke-virtual {v9, v2, v8}, Lcom/android/internal/telephony/Phone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/PhoneInternalInterface$DialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v9

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->onOriginalConnectionReplaced(Lcom/android/internal/telephony/Connection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    return v6

    :catch_0
    move-exception v6

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return v0

    :cond_5
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reDialECall: imsCall:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " reasonInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return v0
.end method

.method private resetEMCDialFlag()V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    :cond_0
    return-void
.end method

.method private setEMCDialFlag(I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    return-void
.end method

.method private setEccSourceProperty(Ljava/lang/String;)V
    .locals 6

    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getEmergencyNumberTracker()Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v0}, Lcom/android/internal/telephony/emergency/EmergencyNumberTracker;->getEmergencyNumber(Ljava/lang/String;)Landroid/telephony/emergency/EmergencyNumber;

    move-result-object v3

    if-eqz v3, :cond_0

    nop

    invoke-virtual {v3}, Landroid/telephony/emergency/EmergencyNumber;->getEmergencyNumberSourceBitmask()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toBinaryString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "persist.radio.emc.source"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v4, "setEccSourceProperty: emergency number is null "

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v3, "setEccSourceProperty: emergency number tracker is null"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    :cond_2
    const-string v2, "setEccSourceProperty: phone is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private shouldPostPonedAction()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mSrvccState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public acceptCall(I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->acceptCall."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "cannot accept call due to mForegroundCall & mBackgroundCall both alive"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hasConnections()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldDisconnectActiveCallOnAnswer(Lcom/android/ims/ImsCall;Lcom/android/ims/ImsCall;)Z

    move-result v1

    xor-int/lit8 v4, v1, 0x1

    move v0, v4

    :cond_3
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->acceptCall(I)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoState()I

    move-result v2

    if-eq v2, p1, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-eqz v3, :cond_4

    const-string v3, "Send session modify request when the second call is accepted "

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    new-instance v4, Landroid/telecom/VideoProfile;

    invoke-direct {v4, v2}, Landroid/telecom/VideoProfile;-><init>(I)V

    new-instance v5, Landroid/telecom/VideoProfile;

    invoke-direct {v5, p1}, Landroid/telecom/VideoProfile;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Landroid/telecom/Connection$VideoProvider;->onSendSessionModifyRequest(Landroid/telecom/VideoProfile;Landroid/telecom/VideoProfile;)V

    :cond_4
    return-void
.end method

.method public addSrvccPendingEvent(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addSrvccPendingEvent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public conference()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->conference."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->conference()V

    return-void
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    iget-object v0, p2, Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;->intentExtras:Landroid/os/Bundle;

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "shouldPostPonedAction->dial."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dial-> intentExtras:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEccSourceProperty(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/imsphone/ImsPhone$ImsDialArgs;)Lcom/android/internal/telephony/Connection;

    move-result-object v1

    return-object v1
.end method

.method public getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I
    .locals 3

    const/16 v0, 0x24

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->maybeRemapReasonCode(Landroid/telephony/ims/ImsReasonInfo;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v2

    return v2

    :sswitch_0
    const/4 v2, 0x2

    return v2

    :sswitch_1
    const/16 v2, 0x2c

    return v2

    :sswitch_2
    const/16 v2, 0x10

    return v2

    :sswitch_data_0
    .sparse-switch
        0x8f -> :sswitch_2
        0x153 -> :sswitch_1
        0x1f6 -> :sswitch_0
        0x1f8 -> :sswitch_2
        0x1fe -> :sswitch_0
        0x57c -> :sswitch_2
    .end sparse-switch
.end method

.method public getGsmCdmaCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Lcom/android/internal/telephony/GsmCdmaCall;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGsmCdmaCall imsPhoneCall:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    nop

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getGsmCdmaConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaConnection;->getCall()Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getGsmCdmaConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGsmCdmaConnection imsPhoneConnection:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getMatchedConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/GsmCdmaCall;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_1

    return-object v0

    :cond_1
    nop

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getMatchedConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/GsmCdmaCall;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v1

    move-object v0, v1

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getMatchedConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/GsmCdmaCall;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    if-eqz v0, :cond_3

    return-object v0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGsmCdmaConnection e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public getMatchedConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/GsmCdmaCall;)Lcom/android/internal/telephony/GsmCdmaConnection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/android/internal/telephony/GsmCdmaCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/GsmCdmaConnection;

    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->isConnectionMatched(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    return-object v0
.end method

.method public handleMergeComplete(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->handleMergeComplete()V

    :cond_1
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage what= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_2

    :pswitch_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getGsmCdmaConnection(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Lcom/android/internal/telephony/GsmCdmaConnection;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaConnection;)V

    goto :goto_0

    :cond_0
    const-string v2, "handleMessage gsmCdmaConnection is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    instance-of v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    if-eqz v1, :cond_3

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getGsmCdmaCall(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)Lcom/android/internal/telephony/GsmCdmaCall;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->hangup(Lcom/android/internal/telephony/GsmCdmaCall;)V

    goto :goto_1

    :cond_2
    const-string v2, "handleMessage gsmCdmaCall is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    :goto_0
    nop

    :goto_1
    goto/16 :goto_2

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    const/16 v1, 0x66

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->removeMessages(I)V

    if-nez v0, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    const/16 v1, 0x65

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->removeMessages(I)V

    if-nez v0, :cond_5

    goto/16 :goto_2

    :cond_5
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    const/16 v1, 0x68

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    if-nez v0, :cond_6

    goto :goto_2

    :cond_6
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->reDialAsECallOnCellularNetwork(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v0, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Landroid/util/Pair;

    const/16 v1, 0x67

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->removeMessages(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/ServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    const/4 v3, 0x0

    invoke-direct {p0, v1, v2, v3}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->reDialECall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;Z)Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Lcom/android/ims/ImsCall;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/telephony/ims/ImsReasonInfo;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    :cond_8
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hangup(Lcom/android/ims/ImsCall;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hangup imsCall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/16 v0, 0x1f5

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->terminate(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->notifyPreciseCallStateChanged()V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/CallStateException;

    const-string v1, "no ImsCall"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/CallStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->hangup with ImsPhoneCall."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneCall;)V

    return-void
.end method

.method public hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->hangup with ImsPhoneConnection."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shoudHangupImsCall(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->hangup(Lcom/android/ims/ImsCall;)V

    return-void

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->hangup(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)V

    return-void
.end method

.method public isConnectionMatched(Lcom/android/internal/telephony/GsmCdmaConnection;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaConnection;->getGsmCdmaIndex()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/ims/ImsCall;->getSession()Landroid/telephony/ims/ImsCallSession;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ims/ImsCallSession;->getCallId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v0
.end method

.method public notifySrvccState(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySrvccState->state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->notifySrvccState(I)V

    iput p1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mSrvccState:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->excutePendingActions()V

    :cond_0
    return-void
.end method

.method public onImsCallHoldFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v1, 0x95

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "onImsCallHoldFailed->hold."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->addSrvccPendingEvent(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onImsCallMergeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v1, 0x95

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x5

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "onImsCallMergeFailed->conference."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->addSrvccPendingEvent(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onImsCallResumeFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 2

    iget v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const/16 v1, 0x95

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    const-string v1, "onImsCallResumeFailed->resume."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->addSrvccPendingEvent(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public onImsCallStartFailed(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsCallStartFailed: imsCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ImsReasonInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const-wide/16 v1, 0x2710

    const-string v3, "connectivity"

    const-string v4, "airplane_mode_on"

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x5ea

    if-ne v0, v7, :cond_3

    nop

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v5

    :goto_0
    const-string v4, "onImsCallStartFailed: CODE_SIP_ALTERNATE_EMERGENCY_CALL"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->isEmergencyOnly()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, p1, p2, v6}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->reDialECall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;Z)Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setNoNeedRedial()V

    return v6

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :cond_2
    new-instance v4, Landroid/util/Pair;

    invoke-direct {v4, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v5

    const/16 v7, 0x66

    invoke-virtual {v5, p0, v7, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v5, 0x68

    invoke-virtual {p0, v5, v4}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v6

    :cond_3
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v8, 0x92

    const/4 v9, 0x3

    if-ne v0, v8, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    if-ne v0, v9, :cond_4

    iput v7, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    const-string v0, "onImsCallStartFailed: change to CODE_SIP_ALTERNATE_EMERGENCY_CALL"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return v6

    :cond_4
    const-string v0, "carrier_support_cs_redial"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getCarrierValueForKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->isInternationRoaming()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->isInEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "onImsCallStartFailed should ignore cs redial."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return v6

    :cond_5
    invoke-virtual {p2}, Landroid/telephony/ims/ImsReasonInfo;->getCode()I

    move-result v0

    const/16 v7, 0x1f5

    const/4 v8, 0x2

    if-eq v0, v7, :cond_e

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->isVowifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    const/4 v7, 0x4

    invoke-direct {p0, v0, v7}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->hasEMCDialFlag(II)Z

    move-result v0

    if-nez v0, :cond_c

    iget v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    invoke-direct {p0, v0, v9}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->hasEMCDialFlag(II)Z

    move-result v0

    if-eqz v0, :cond_6

    goto/16 :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/ims/ImsCall;->isWifiCall()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEMCDialFlag(I)V

    const-string v0, "retry_ecall_cellualr_network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getCarrierValueForKey(Ljava/lang/String;)Z

    move-result v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImsCallStartFailed reDialECallCellularNetwork: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_9

    nop

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {v7, v4, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_7

    move v4, v6

    goto :goto_1

    :cond_7
    move v4, v5

    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onImsCallStartFailed: isAirplaneModeOn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    if-eqz v4, :cond_8

    invoke-virtual {v3, v5}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V

    :cond_8
    new-instance v5, Landroid/util/Pair;

    invoke-direct {v5, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v7

    const/16 v8, 0x65

    invoke-virtual {v7, p0, v8, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    const/16 v7, 0x67

    invoke-virtual {p0, v7, v5}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {p0, v7, v1, v2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v6

    :cond_9
    goto/16 :goto_4

    :cond_a
    invoke-direct {p0, v8}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEMCDialFlag(I)V

    const-string v0, "retry_ecall_vowifi"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getCarrierValueForKey(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallStartFailed reDialECallOnVowifi: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_b

    invoke-direct {p0, p1, p2, v6}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->reDialECall(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;Z)Z

    return v6

    :cond_b
    goto :goto_4

    :cond_c
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onImsCallStartFailed no need redial: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mEMCDialFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", getPendingMO() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_d

    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    goto :goto_3

    :cond_d
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEMCDialFlag(I)V

    :goto_3
    return v5

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallStartFailed gsmCdmaPhone.getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_f

    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->sendEmptyMessage(I)Z

    :cond_f
    :goto_4
    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->isIncoming()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getDisconnectCauseFromReasonInfo(Landroid/telephony/ims/ImsReasonInfo;Lcom/android/internal/telephony/Call$State;)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {p0, p1, v2, v1, v5}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->processImsCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->resetEMCDialFlag()V

    return v6

    :cond_10
    return v5
.end method

.method public onImsCallTerminated(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onImsCallTerminated gsmCdmaPhone.getState() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaCallTracker;->sendEmptyMessage(I)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->resetEMCDialFlag()V

    const/4 v0, 0x0

    return v0
.end method

.method public onImsCallUpdated(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;Z)V
    .locals 2

    if-eqz p2, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-nez v0, :cond_1

    if-eqz p3, :cond_1

    invoke-virtual {p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    const-string v0, "Unisoc start hold tone."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPhone()Lcom/android/internal/telephony/imsphone/ImsPhone;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/imsphone/ImsPhone;->startOnHoldTone(Lcom/android/internal/telephony/Connection;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mOnHoldToneStarted:Z

    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mOnHoldToneId:I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mOnHoldToneStarted:Z

    if-eqz v0, :cond_2

    if-nez p3, :cond_2

    const-string v0, "Unisoc stop hold tone."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->stopOnHoldToneEx(Lcom/android/internal/telephony/Connection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mOnHoldToneStarted:Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const-string v0, "onImsCallUpdated->onholdtonestarted is null."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public processImsCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->findConnection(Lcom/android/ims/ImsCall;)Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->processCallStateChange(Lcom/android/ims/ImsCall;Lcom/android/internal/telephony/Call$State;IZ)V

    return-void
.end method

.method public processImsIncomingCall(Lcom/android/ims/ImsCall;)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->getPendingMO()Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/16 v0, 0x1f5

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsCall;->terminate(I)V

    return-void

    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x4

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->rejectCall."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->rejectCall()V

    return-void
.end method

.method public sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->resetEMCDialFlag()V

    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendCallStartFailedDisconnect(Lcom/android/ims/ImsCall;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method public sendDtmf(CLandroid/os/Message;)V
    .locals 5

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v2, Landroid/os/AsyncResult;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->sendDtmf."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->sendDtmf(CLandroid/os/Message;)V

    return-void
.end method

.method protected setNoNeedRedial()V
    .locals 1

    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->setEMCDialFlag(I)V

    return-void
.end method

.method public shoudHangupImsCall(Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneConnection;->getCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getConnections()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v4, v3, :cond_0

    return v2

    :cond_0
    const/4 v4, 0x0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    :goto_0
    if-ge v4, v5, :cond_2

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v6, v7, :cond_1

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/Connection;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isMultiparty()Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lt v0, v3, :cond_3

    const/4 v2, 0x1

    return v2

    :cond_3
    return v2
.end method

.method public startDtmf(C)V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shouldPostPonedAction->startDtmf."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->startDtmf(C)V

    return-void
.end method

.method public stopDtmf()V
    .locals 3

    invoke-super {p0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->stopDtmf()V

    iget-object v0, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getImsCall()Lcom/android/ims/ImsCall;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopDtmf for hold call: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/ims/ImsCall;->stopDtmf()V

    :cond_0
    return-void
.end method

.method public switchWaitingOrHoldingAndActive()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->shouldPostPonedAction()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x6

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->mPendingActionsMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "switchWaitingOrHoldingAndActive postponed."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/imsphone/UniImsPhoneCallTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
