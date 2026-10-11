.class public Lcom/android/internal/telephony/DataEnableController;
.super Landroid/content/ContextWrapper;
.source "DataEnableController.java"


# static fields
.field private static final blacklist DATA_ENABLED_STATE_PROP:Ljava/lang/String; = "gsm.data.setenabled"

.field static final blacklist TAG:Ljava/lang/String; = "DataEnableController"

.field static blacklist mInstance:Lcom/android/internal/telephony/DataEnableController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultDataSubId:I

.field private blacklist mNeedUpdateDataEnable:Z

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSetupWizardCompleteObserver:Landroid/database/ContentObserver;

.field private blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmNeedUpdateDataEnable(Lcom/android/internal/telephony/DataEnableController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/DataEnableController;->mNeedUpdateDataEnable:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/DataEnableController;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/DataEnableController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNeedUpdateDataEnable(Lcom/android/internal/telephony/DataEnableController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/DataEnableController;->mNeedUpdateDataEnable:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdisableDataForOtherSubscriptions(Lcom/android/internal/telephony/DataEnableController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/DataEnableController;->disableDataForOtherSubscriptions(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetDataEnable(Lcom/android/internal/telephony/DataEnableController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/DataEnableController;->getDataEnable()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/DataEnableController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/DataEnableController;->isDeviceProvisioned()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mselectDataCardUpdate(Lcom/android/internal/telephony/DataEnableController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/DataEnableController;->selectDataCardUpdate()V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/internal/telephony/DataEnableController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/DataEnableController$1;-><init>(Lcom/android/internal/telephony/DataEnableController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/internal/telephony/DataEnableController$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/DataEnableController$2;-><init>(Lcom/android/internal/telephony/DataEnableController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mSetupWizardCompleteObserver:Landroid/database/ContentObserver;

    sput-object p0, Lcom/android/internal/telephony/DataEnableController;->mInstance:Lcom/android/internal/telephony/DataEnableController;

    iput-object p1, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/DataEnableController;->mDefaultDataSubId:I

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/DataEnableController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "device_provisioned"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataEnableController;->mSetupWizardCompleteObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private blacklist disableDataForOtherSubscriptions(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    nop

    const-string v4, "gsm.data.setenabled"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needDataDisabled is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "DataEnableController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    if-eq v5, p1, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/DataEnableController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v4, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "disableDataForOtherSubscriptions ="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_data"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    goto/16 :goto_0

    :cond_1
    return-void
.end method

.method private blacklist getDataEnable()Z
    .locals 6

    const-string v0, "mobile_data2147483646"

    const/4 v1, 0x0

    const/4 v2, 0x1

    :try_start_0
    const-string v3, "DataEnableController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MOBILE_DATA="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :catch_0
    move-exception v3

    nop

    const-string v4, "ro.com.android.mobiledata"

    const-string v5, "true"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    nop

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/DataEnableController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/DataEnableController;->mInstance:Lcom/android/internal/telephony/DataEnableController;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/DataEnableController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/DataEnableController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DataEnableController;->mInstance:Lcom/android/internal/telephony/DataEnableController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/DataEnableController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/DataEnableController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/DataEnableController;->mInstance:Lcom/android/internal/telephony/DataEnableController;

    goto :goto_0

    :cond_0
    const-string v1, "DataEnableController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/DataEnableController;->mInstance:Lcom/android/internal/telephony/DataEnableController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v1, Lcom/android/internal/telephony/DataEnableController;->mInstance:Lcom/android/internal/telephony/DataEnableController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist isDeviceProvisioned()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/DataEnableController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private blacklist selectDataCardUpdate()V
    .locals 6

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-direct {p0}, Lcom/android/internal/telephony/DataEnableController;->getDataEnable()Z

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "selectDataCardUpdate: newPhoneId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",newSubId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DataEnableController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    iget v3, p0, Lcom/android/internal/telephony/DataEnableController;->mDefaultDataSubId:I

    if-eq v0, v3, :cond_3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iput v0, p0, Lcom/android/internal/telephony/DataEnableController;->mDefaultDataSubId:I

    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/DataEnableController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v3

    if-eq v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setDataEnabled:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/DataEnableController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/DataEnableController;->disableDataForOtherSubscriptions(I)V

    const-string v3, "gsm.data.setenabled"

    const-string v4, "true"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
