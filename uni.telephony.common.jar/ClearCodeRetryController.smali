.class public Lcom/android/internal/telephony/data/ClearCodeRetryController;
.super Landroid/os/Handler;
.source "ClearCodeRetryController.java"


# static fields
.field private static final EVENT_DATA_SETUP_RETRY:I = 0x7d2

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x7d8

.field private static final EVENT_RAU_SUCCESS:I = 0x7d1

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x7e1

.field private static final IDLE:I = 0x0

.field private static final MAX_PDN_REJ_TIMES:I = 0x3

.field private static final MAX_PDN_REJ_TIMES_FOR_VOLTE:I = 0x1

.field private static final NON_VOLTE_CLEAR_CODE:Ljava/lang/String; = "non-volte"

.field public static final RETRY_DELAY_LONG:I = 0xafc8

.field public static final RETRY_DELAY_SHORT:I = 0x2710

.field public static final RETRY_FROM_FAILURE_DELAY:I = 0x6ddd00

.field private static final SWITCHING_TO_3G:I = 0x1

.field private static final SWITCHING_TO_4G:I = 0x2

.field private static final SWITCH_TIMEOUT:I = 0x9c40

.field private static final TAG:Ljava/lang/String; = "ClearCode"

.field private static final VENDOR_BASE:I = 0x7d0

.field private static final VOLTE_CLEAR_CODE:Ljava/lang/String; = "volte"


# instance fields
.field private mClearCodeConfig:Ljava/lang/String;

.field private mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

.field private mLteDisabled:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private mRi:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/UniDataRetryManager;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mLteDisabled:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p2, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    const-string v0, "ClearCodeRetryController.constructor"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    return-void
.end method

.method private dataConnectionAttach(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dataConnectionAttach : attach "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->attachDataConn(ZI)V

    return-void
.end method

.method private enableLte(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLte : enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    xor-int/lit8 v0, p1, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mLteDisabled:Z

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->setLteEnabled(ZI)V

    return-void
.end method

.method private isGetResourceForClearCode()Z
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x80c0013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "debug--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v3

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ClearCode"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onDataConnectionRau()V
    .locals 1

    const-string v0, "RoutingAreaUpdate"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->restartForChanged(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public handleDataServiceChange(II)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Data RAT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", regState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0xe

    if-ne v0, v1, :cond_0

    if-eq p1, v3, :cond_1

    if-nez p2, :cond_1

    const-string v0, "3G in service, clearPreFailCause"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->clearPreFailCause()V

    iput v2, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    if-ne p1, v3, :cond_1

    if-nez p2, :cond_1

    const-string v0, "4G in service, clearPreFailCause"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->clearPreFailCause()V

    iput v2, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    const/16 v0, 0x7d2

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->removeMessages(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "EVENT_SERVICE_STATE_CHANGED"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/ServiceState;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SERVICE_STATE_CHANGED state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onServiceStateChanged voiceNetType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " voiceRegState="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->handleVoiceServiceChange(II)V

    goto :goto_0

    :sswitch_1
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->clearPreFailCause()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    goto :goto_0

    :sswitch_2
    const-string v0, "EVENT_DATA_SETUP_RETRY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->dataSetupRetry()V

    goto :goto_0

    :sswitch_3
    const-string v0, "EVENT_RAU_SUCCESS"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->onDataConnectionRau()V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7d1 -> :sswitch_3
        0x7d2 -> :sswitch_2
        0x7d8 -> :sswitch_1
        0x7e1 -> :sswitch_0
    .end sparse-switch
.end method

.method public handleRadioOn()V
    .locals 3

    const-string v0, "EVENT_RADIO_ON"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->clearPreFailCause()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mLteDisabled:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isNonVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getFailCount()I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getFailCount()I

    move-result v0

    if-lt v0, v1, :cond_2

    :cond_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->enableLte(Z)V

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->stopFailRetryAlarm()V

    :cond_3
    return-void
.end method

.method public handleVoiceServiceChange(II)V
    .locals 2

    const-string v0, "handleVoiceServiceChange "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    const/16 v0, 0xd

    if-eq p1, v0, :cond_0

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Voice registerd on "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", switching to 3G completed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->dataConnectionAttach(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method

.method public isNonVolteClearCode()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isGetResourceForClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "non-volte"

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isSpecialCode(I)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->supportSpecialClearCode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    if-eq p1, v0, :cond_0

    const/16 v0, 0x21

    if-ne p1, v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    return v1
.end method

.method public isVolteClearCode()Z
    .locals 2

    invoke-direct {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isGetResourceForClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "volte"

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mClearCodeConfig:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public notifyRadioOffOrNotAvailable()V
    .locals 1

    const/16 v0, 0x7d8

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerRadioInteractor()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    new-instance v0, Lcom/android/internal/telephony/data/ClearCodeRetryController$1;

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController$1;-><init>(Lcom/android/internal/telephony/data/ClearCodeRetryController;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->enableRauNotify(I)V

    const-string v0, "enableRauNotify() done"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    const/16 v2, 0x1000

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    return-void
.end method

.method public restartCycle(Ljava/lang/Object;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "restartCycle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mLteDisabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mLteDisabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDrm.getFailCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getFailCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->clearPreFailCause()V

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mLteDisabled:Z

    const/16 v1, 0x7d2

    const/4 v2, 0x1

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isNonVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getFailCount()I

    move-result v0

    const/4 v3, 0x3

    if-ge v0, v3, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getFailCount()I

    move-result v0

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "sendMessage : EVENT_DATA_SETUP_RETRY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->enableLte(Z)V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    const-string v0, "sendMessageDelayed : EVENT_DATA_SETUP_RETRY"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/32 v1, 0x9c40

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_1
    return-void
.end method

.method public restartForChanged(Ljava/lang/String;)V
    .locals 1

    const-string v0, "restartForChanged "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->restartCycle(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mDrm:Lcom/android/internal/telephony/data/UniDataRetryManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->stopFailRetryAlarm()V

    return-void
.end method

.method public supportSpecialClearCode()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isNonVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public switchTo3G()V
    .locals 3

    const-string v0, "Start switching to 3G..."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->dataConnectionAttach(Z)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->enableLte(Z)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mState:I

    iget-object v0, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v1, 0x7e1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    const-string v0, "switching to 3G registerForServiceStateChanged"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->log(Ljava/lang/String;)V

    return-void
.end method

.method public userNotification(I)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/16 v2, 0x1d

    if-ne p1, v2, :cond_0

    const v1, 0x80c0047

    goto :goto_0

    :cond_0
    const/16 v2, 0x21

    if-ne p1, v2, :cond_1

    const v1, 0x80c0046

    :cond_1
    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/android/internal/telephony/data/ClearCodeRetryController;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x5

    invoke-direct {v2, v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x104000a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    return-void
.end method
