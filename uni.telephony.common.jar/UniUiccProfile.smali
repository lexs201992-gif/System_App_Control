.class public Lcom/android/internal/telephony/uicc/UniUiccProfile;
.super Lcom/android/internal/telephony/uicc/UiccProfile;
.source "UniUiccProfile.java"


# static fields
.field protected static final DBG:Z

.field private static final EVENT_ICC_RECORD_KEY_INFO_LOADED_DONE:I = 0x12

.field private static final EVENT_ICC_RECORD_LOADED_DONE:I = 0xa0

.field private static final EVENT_LOCALE_CHANGED:I = 0x11

.field protected static final LOG_TAG:Ljava/lang/String; = "UniUiccProfile"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

.field private mContext:Landroid/content/Context;

.field private mCurrentAppType:I

.field public final mHandler:Landroid/os/Handler;

.field private mPhoneId:I

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniUiccProfile;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleCarierIdUpdate(Lcom/android/internal/telephony/uicc/UniUiccProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->handleCarierIdUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCarierServicesUpdate(Lcom/android/internal/telephony/uicc/UniUiccProfile;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->handleCarierServicesUpdate()V

    return-void
.end method

.method static bridge synthetic -$$Nest$smlog(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->log(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    nop

    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V
    .locals 3

    invoke-direct/range {p0 .. p6}, Lcom/android/internal/telephony/uicc/UiccProfile;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;ILcom/android/internal/telephony/uicc/UiccCard;Ljava/lang/Object;)V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mCurrentAppType:I

    new-instance v0, Lcom/android/internal/telephony/uicc/UniUiccProfile$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile$1;-><init>(Lcom/android/internal/telephony/uicc/UniUiccProfile;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/uicc/UniUiccProfile$2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile$2;-><init>(Lcom/android/internal/telephony/uicc/UniUiccProfile;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mHandler:Landroid/os/Handler;

    iput p4, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private handleCarierIdUpdate()V
    .locals 2

    const-string v0, "handle carrier id"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const-string v1, "LOADED"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->resolveSubscriptionCarrierId(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private handleCarierServicesUpdate()V
    .locals 4

    const-string v0, "handle carrier service update"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/telephony/CarrierConfigManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/telephony/CarrierConfigManager;-><init>(Landroid/content/Context;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    const-string v2, "LOADED"

    invoke-virtual {v0, v1, v2}, Landroid/telephony/CarrierConfigManager;->updateConfigForPhoneId(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-virtual {v1, v3, v2}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->updateForPhoneId(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "UniUiccProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private static loge(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "UniUiccProfile"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private registerAppEvent()V
    .locals 5

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UniSIMRecords;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x12

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->registerForKeyInfoRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mHandler:Landroid/os/Handler;

    const/16 v3, 0xa0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private unregisterAppEvent()V
    .locals 3

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mCurrentAppType:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UniSIMRecords;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->unregisterForKeyInfoRecordsLoaded(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 2

    sget-boolean v0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Disposing UniUiccProfile"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->log(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/UiccProfile;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mCarrierServiceBindHelper:Lcom/android/internal/telephony/CarrierServiceBindHelper;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServiceBindHelper;->unRegisterReceivers()V

    return-void
.end method

.method protected handleCarrierNameOverride()V
    .locals 13

    const-string v0, "handleCarrierNameOverride"

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId not valid for Phone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mContext:Landroid/content/Context;

    const-string v2, "carrier_config"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    if-nez v1, :cond_1

    const-string v2, "Failed to load a Carrier Config"

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->loge(Ljava/lang/String;)V

    return-void

    :cond_1
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "carrier_name_override_bool"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "carrier_name_string"

    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->getServiceProviderName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v8, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v8

    const-string v9, "50503"

    if-nez v3, :cond_8

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_9

    if-eqz v8, :cond_5

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    iget v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getPlmn()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_3

    move-object v5, v11

    const/4 v7, 0x4

    goto :goto_0

    :cond_3
    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :cond_4
    :goto_0
    goto :goto_1

    :cond_5
    iget v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_6

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    :cond_6
    :goto_1
    if-eqz v8, :cond_7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    :cond_7
    iget v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-static {v10}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v10

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Lcom/android/internal/telephony/Phone;->getCarrierName()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    goto :goto_3

    :cond_8
    :goto_2
    move-object v5, v4

    const/4 v7, 0x3

    :cond_9
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v11, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-virtual {v10, v11, v5}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mOperatorBrandOverrideRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v10}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_a
    if-eqz v8, :cond_b

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_c

    :cond_b
    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-virtual {v9, v10}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v12, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-virtual {v11, v12}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v9}, Lcom/android/internal/telephony/UniTeleUtils;->translateOperatorName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-nez v3, :cond_c

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_c

    iget-object v11, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v12, p0, Lcom/android/internal/telephony/uicc/UniUiccProfile;->mPhoneId:I

    invoke-virtual {v11, v12, v10}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    :cond_c
    invoke-virtual {p0, v0, v7}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->updateCarrierNameForSubscription(II)V

    return-void
.end method

.method public setVoiceRadioTech(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting radio tech "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->unregisterAppEvent()V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->registerAppEvent()V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/UiccProfile;->setVoiceRadioTech(I)V

    return-void
.end method

.method public update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccProfile;->update(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/uicc/IccCardStatus;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->unregisterAppEvent()V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniUiccProfile;->registerAppEvent()V

    return-void
.end method
