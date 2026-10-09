.class public Lcom/unisoc/phone/UniTelephonyGlobals;
.super Landroid/content/ContextWrapper;
.source "UniTelephonyGlobals.java"


# instance fields
.field private dmykMgr:Lcom/android/telephony/DmykTelephonyManager;

.field private mContext:Landroid/content/Context;

.field private mMessenger:Landroid/os/Messenger;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$misUniPhoneServiceRunning(Lcom/unisoc/phone/UniTelephonyGlobals;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTelephonyGlobals;->isUniPhoneServiceRunning()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msendATcmdToCpForSmsc(Lcom/unisoc/phone/UniTelephonyGlobals;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniTelephonyGlobals;->sendATcmdToCpForSmsc(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartUniPhoneService(Lcom/unisoc/phone/UniTelephonyGlobals;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTelephonyGlobals;->startUniPhoneService()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/unisoc/phone/UniTelephonyGlobals$1;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniTelephonyGlobals$1;-><init>(Lcom/unisoc/phone/UniTelephonyGlobals;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    return-void
.end method

.method private initSmscMessenger()V
    .locals 2

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/unisoc/phone/UniTelephonyGlobals$2;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/UniTelephonyGlobals$2;-><init>(Lcom/unisoc/phone/UniTelephonyGlobals;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private isUniPhoneServiceRunning()Z
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "activity"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/IActivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IActivityManager;

    move-result-object v0

    const v1, 0x7fffffff

    invoke-interface {v0, v1, p0}, Landroid/app/IActivityManager;->getServices(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningServiceInfo;

    const-class v2, Lcom/unisoc/phone/UniPhoneService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string v0, "UniTelephonyGlobals"

    const-string v1, "Error occured during checking whether uni phone service is alive!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p0
.end method

.method private sendATcmdToCpForSmsc(I)V
    .locals 5

    invoke-virtual {p0, p1}, Lcom/unisoc/phone/UniTelephonyGlobals;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    const-string v2, "carrier_config_smsc_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendATcmdToCpForSmsc, subId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", phoneId = "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", Status: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "UniTelephonyGlobals"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    const-string p1, "default_smsc_number_string"

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AT+SPSMSCFG=0,1,\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniTelephonyGlobals;->stringToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\",145"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendATcmdToCpForSmsc, atCmd: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", smsc = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iget-object p0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mMessenger:Landroid/os/Messenger;

    const/16 v2, 0x3e9

    invoke-virtual {p1, v0, p0, v2, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->sendAsynchAtCmd(Ljava/lang/String;Landroid/os/Messenger;II)V

    :cond_1
    return-void
.end method

.method private startUniLoctionManager()V
    .locals 3

    const-string v0, "startUniLoctionManager."

    const-string v1, "UniTelephonyGlobals"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.location"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Couldn\'t get location manager, denying location access."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0}, Lcom/unisoc/phone/UniLocationManager;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniLocationManager;

    return-void
.end method

.method private startUniPhoneService()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Start uni phone service : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/unisoc/phone/UniPhoneService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniTelephonyGlobals"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    const-class v3, Lcom/unisoc/phone/UniPhoneService;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "Uni phone service started FAILED!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string p0, "Uni phone service started SUCCESSFULLY!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private stringToHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public onCreate()V
    .locals 4

    const-string v0, "UniTelephonyGlobals"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/unisoc/phone/UniTeleInterfaceManager;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniTeleInterfaceManager;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/unisoc/phone/UniTelephonyGlobals;->initSmscMessenger()V

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/DataEnableController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/DataEnableController;

    :cond_0
    invoke-static {p0}, Lcom/unisoc/phone/FastShutdownHelper;->init(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->init(Landroid/content/Context;)Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    invoke-static {}, Landroid/cta/CtaPermFactory;->getInstance()Landroid/cta/CtaPermFactory;

    move-result-object v0

    invoke-virtual {v0}, Landroid/cta/CtaPermFactory;->getCtaPermInterface()Landroid/cta/CtaPermInterface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/cta/CtaPermInterface;->isCtaFeatureSupported()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/unisoc/phone/UniTelephonyGlobals;->startUniLoctionManager()V

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->init(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/unisoc/phone/ImeiDataHelper;->init(Landroid/content/Context;)Lcom/unisoc/phone/ImeiDataHelper;

    :cond_2
    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;->init(Landroid/content/Context;)Lcom/unisoc/phone/simlock/TigoOnekeyLockUtil;

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->init(Landroid/content/Context;)Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x803003b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getInstance()Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getRemainTimes()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    invoke-static {}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->getInstance()Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/unisoc/phone/simlock/TelcelOnekeyLockUtil;->saveRemainTimes(I)V

    :cond_3
    new-instance v0, Lcom/unisoc/phone/simlock/SimLockOnekeyReceiver;

    invoke-direct {v0}, Lcom/unisoc/phone/simlock/SimLockOnekeyReceiver;-><init>()V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android_secret_code"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0, p0}, Lcom/android/telephony/DmykTelephonyManager;->init(Lcom/unisoc/phone/UniTelephonyGlobals;Landroid/content/Context;)Lcom/android/telephony/DmykTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->dmykMgr:Lcom/android/telephony/DmykTelephonyManager;

    :cond_4
    invoke-static {p0}, Lcom/unisoc/phone/UniDcManager;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniDcManager;

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->init(Landroid/content/Context;)Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isDeviceSupportNr()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_7

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isDeviceSupportDualNr()Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x1

    :goto_1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x803001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_8

    if-eqz v0, :cond_8

    invoke-static {p0}, Lcom/unisoc/phone/UniSmartCarrierManager;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniSmartCarrierManager;

    :cond_8
    if-eqz v0, :cond_9

    invoke-static {p0}, Lcom/unisoc/phone/UniTputController;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniTputController;

    :cond_9
    const-string v2, "persist.vendor.radio.tele.optimization"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_a

    if-eqz v1, :cond_a

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/UniNrSmartSwitchController;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniNrSmartSwitchController;

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/UniNetworkOptimizationController;->init(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/UniDataPacketsMonitorController;->init(Landroid/content/Context;)V

    :cond_a
    if-eqz v1, :cond_b

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/UniTrafficLimiterController;->init(Landroid/content/Context;)V

    :cond_b
    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/unisoc/phone/UniDataPriorityChannelController;->init(Landroid/content/Context;)V

    :cond_c
    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-static {p0}, Lcom/unisoc/phone/SimNvCodeHelper;->init(Landroid/content/Context;)Lcom/unisoc/phone/SimNvCodeHelper;

    :cond_d
    iget-object v0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object p0, p0, Lcom/unisoc/phone/UniTelephonyGlobals;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/unisoc/phone/UniFastReturnNetworkController;->init(Landroid/content/Context;)Lcom/unisoc/phone/UniFastReturnNetworkController;

    :cond_e
    return-void
.end method
