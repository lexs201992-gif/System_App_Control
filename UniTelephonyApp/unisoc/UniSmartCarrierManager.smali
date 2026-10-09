.class public final Lcom/unisoc/phone/UniSmartCarrierManager;
.super Landroid/os/Handler;
.source "UniSmartCarrierManager.java"


# static fields
.field private static sInstance:Lcom/unisoc/phone/UniSmartCarrierManager;


# instance fields
.field private firstBytes:J

.field private firstRxBytes:J

.field private firstStamp:J

.field private isOpenSpeedMonitor:Z

.field private isScreenOn:Z

.field private m5gSetDisabled:Z

.field private mContext:Landroid/content/Context;

.field private mDataState:I

.field private mDefaultDataPhoneId:I

.field private mDefaultDataSubId:I

.field private mHandler:Landroid/os/Handler;

.field private mMessenger:Landroid/os/Messenger;

.field private mNrMode:I

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRunnable:Ljava/lang/Runnable;

.field private mSetDataThrottling:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetfirstBytes(Lcom/unisoc/phone/UniSmartCarrierManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfirstRxBytes(Lcom/unisoc/phone/UniSmartCarrierManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstRxBytes:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetfirstStamp(Lcom/unisoc/phone/UniSmartCarrierManager;)J
    .locals 2

    iget-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstStamp:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetisOpenSpeedMonitor(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isOpenSpeedMonitor:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetisScreenOn(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetm5gSetDisabled(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->m5gSetDisabled:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/unisoc/phone/UniSmartCarrierManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNrMode(Lcom/unisoc/phone/UniSmartCarrierManager;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mNrMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRunnable(Lcom/unisoc/phone/UniSmartCarrierManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetDataThrottling(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mSetDataThrottling:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputfirstBytes(Lcom/unisoc/phone/UniSmartCarrierManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstRxBytes(Lcom/unisoc/phone/UniSmartCarrierManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstRxBytes:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputfirstStamp(Lcom/unisoc/phone/UniSmartCarrierManager;J)V
    .locals 0

    iput-wide p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstStamp:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisOpenSpeedMonitor(Lcom/unisoc/phone/UniSmartCarrierManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isOpenSpeedMonitor:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputisScreenOn(Lcom/unisoc/phone/UniSmartCarrierManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isScreenOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputm5gSetDisabled(Lcom/unisoc/phone/UniSmartCarrierManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->m5gSetDisabled:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHandler(Lcom/unisoc/phone/UniSmartCarrierManager;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmNrMode(Lcom/unisoc/phone/UniSmartCarrierManager;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mNrMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetRsrp(Lcom/unisoc/phone/UniSmartCarrierManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->getRsrp()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSmart5Gfeature(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->getSmart5Gfeature()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misNsaMode(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->isNsaMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSaMode(Lcom/unisoc/phone/UniSmartCarrierManager;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->isSaMode()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/unisoc/phone/UniSmartCarrierManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreDataThrottling(Lcom/unisoc/phone/UniSmartCarrierManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->restoreDataThrottling()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetDataThrottling(Lcom/unisoc/phone/UniSmartCarrierManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->setDataThrottling()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetNrEnabled(Lcom/unisoc/phone/UniSmartCarrierManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniSmartCarrierManager;->setNrEnabled(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSpeedMonitor(Lcom/unisoc/phone/UniSmartCarrierManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->setSpeedMonitor()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDefaultDataPhoneId(Lcom/unisoc/phone/UniSmartCarrierManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->updateDefaultDataPhoneId()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mNrMode:I

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDataState:I

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataSubId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->m5gSetDisabled:Z

    iput-boolean v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mSetDataThrottling:Z

    iput-boolean v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isOpenSpeedMonitor:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isScreenOn:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstRxBytes:J

    iput-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstBytes:J

    iput-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstStamp:J

    new-instance v0, Lcom/unisoc/phone/UniSmartCarrierManager$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniSmartCarrierManager$1;-><init>(Lcom/unisoc/phone/UniSmartCarrierManager;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/unisoc/phone/UniSmartCarrierManager$4;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniSmartCarrierManager$4;-><init>(Lcom/unisoc/phone/UniSmartCarrierManager;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRunnable:Ljava/lang/Runnable;

    const-string v0, "UniSmartCarrierManager.constructor"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance p1, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/unisoc/phone/UniSmartCarrierManager$2;

    invoke-direct {p1, p0}, Lcom/unisoc/phone/UniSmartCarrierManager$2;-><init>(Lcom/unisoc/phone/UniSmartCarrierManager;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Landroid/os/Messenger;

    new-instance v0, Lcom/unisoc/phone/UniSmartCarrierManager$3;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniSmartCarrierManager$3;-><init>(Lcom/unisoc/phone/UniSmartCarrierManager;)V

    invoke-direct {p1, v0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private getRsrp()I
    .locals 3

    iget v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getRsrp(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method private getSaMode()V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v0, :cond_0

    const-string v0, "getSaMode: call mRadioInteractor.getSA "

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mMessenger:Landroid/os/Messenger;

    iget p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    const/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/unisoc/telephony/RadioInteractor;->getSA(Landroid/os/Messenger;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private getSmart5Gfeature()Z
    .locals 1

    const-string p0, "persist.radio.engtest.nr.enable"

    const-string v0, "false"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "true"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static init(Landroid/content/Context;)Lcom/unisoc/phone/UniSmartCarrierManager;
    .locals 1

    sget-object v0, Lcom/unisoc/phone/UniSmartCarrierManager;->sInstance:Lcom/unisoc/phone/UniSmartCarrierManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/unisoc/phone/UniSmartCarrierManager;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniSmartCarrierManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/unisoc/phone/UniSmartCarrierManager;->sInstance:Lcom/unisoc/phone/UniSmartCarrierManager;

    :cond_0
    sget-object p0, Lcom/unisoc/phone/UniSmartCarrierManager;->sInstance:Lcom/unisoc/phone/UniSmartCarrierManager;

    return-object p0
.end method

.method private isNsaMode()Z
    .locals 4

    iget v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v0

    const/16 v1, 0x13

    if-ne v0, v1, :cond_3

    :cond_1
    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    invoke-virtual {p0}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result p0

    if-ne p0, v0, :cond_3

    :cond_2
    return v1

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private isSaMode()Z
    .locals 1

    iget p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mNrMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UniSmartCarrierManager"

    invoke-static {p0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private restoreDataThrottling()I
    .locals 4

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v2, "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "restoreDataThrottling() "

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mSetDataThrottling:Z

    iget-object p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v0, Landroid/telephony/ThermalMitigationRequest$Builder;

    invoke-direct {v0}, Landroid/telephony/ThermalMitigationRequest$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/telephony/ThermalMitigationRequest$Builder;->setThermalMitigationAction(I)Landroid/telephony/ThermalMitigationRequest$Builder;

    move-result-object v0

    new-instance v2, Landroid/telephony/DataThrottlingRequest$Builder;

    invoke-direct {v2}, Landroid/telephony/DataThrottlingRequest$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/telephony/DataThrottlingRequest$Builder;->setDataThrottlingAction(I)Landroid/telephony/DataThrottlingRequest$Builder;

    move-result-object v1

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v2, v3}, Landroid/telephony/DataThrottlingRequest$Builder;->setCompletionDurationMillis(J)Landroid/telephony/DataThrottlingRequest$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/DataThrottlingRequest$Builder;->build()Landroid/telephony/DataThrottlingRequest;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/ThermalMitigationRequest$Builder;->setDataThrottlingRequest(Landroid/telephony/DataThrottlingRequest;)Landroid/telephony/ThermalMitigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ThermalMitigationRequest$Builder;->build()Landroid/telephony/ThermalMitigationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->sendThermalMitigationRequest(Landroid/telephony/ThermalMitigationRequest;)I

    move-result p0

    return p0
.end method

.method private setDataThrottling()I
    .locals 4

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget v2, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    const-string v2, "CAPABILITY_THERMAL_MITIGATION_DATA_THROTTLING"

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->isRadioInterfaceCapabilitySupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "setDataThrottling() "

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mSetDataThrottling:Z

    iget-object p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    new-instance v2, Landroid/telephony/ThermalMitigationRequest$Builder;

    invoke-direct {v2}, Landroid/telephony/ThermalMitigationRequest$Builder;-><init>()V

    invoke-virtual {v2, v1}, Landroid/telephony/ThermalMitigationRequest$Builder;->setThermalMitigationAction(I)Landroid/telephony/ThermalMitigationRequest$Builder;

    move-result-object v1

    new-instance v2, Landroid/telephony/DataThrottlingRequest$Builder;

    invoke-direct {v2}, Landroid/telephony/DataThrottlingRequest$Builder;-><init>()V

    invoke-virtual {v2, v0}, Landroid/telephony/DataThrottlingRequest$Builder;->setDataThrottlingAction(I)Landroid/telephony/DataThrottlingRequest$Builder;

    move-result-object v0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v2, v3}, Landroid/telephony/DataThrottlingRequest$Builder;->setCompletionDurationMillis(J)Landroid/telephony/DataThrottlingRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/DataThrottlingRequest$Builder;->build()Landroid/telephony/DataThrottlingRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/telephony/ThermalMitigationRequest$Builder;->setDataThrottlingRequest(Landroid/telephony/DataThrottlingRequest;)Landroid/telephony/ThermalMitigationRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ThermalMitigationRequest$Builder;->build()Landroid/telephony/ThermalMitigationRequest;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->sendThermalMitigationRequest(Landroid/telephony/ThermalMitigationRequest;)I

    move-result p0

    return p0
.end method

.method private setNrEnabled(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNrEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mDefaultDataPhoneId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    :try_start_0
    iget v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v0, :cond_1

    const-string v0, "setNrEnabled: call mRadioInteractor.enableNrSwitch "

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/unisoc/telephony/RadioInteractor;->enableNrSwitch(III)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private setSpeedMonitor()V
    .locals 4

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDataState:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mDataState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDataState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x2

    iget v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDataState:I

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->getSaMode()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->isOpenSpeedMonitor:Z

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstBytes:J

    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstRxBytes:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstStamp:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSpeedMonitor initial fBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", fStamp: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstStamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", initial fBytes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->firstRxBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniSmartCarrierManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateDefaultDataPhoneId()V
    .locals 1

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/unisoc/phone/UniSmartCarrierManager;->mDefaultDataPhoneId:I

    :goto_0
    return-void
.end method
