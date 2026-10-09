.class public Lcom/android/internal/telephony/data/UniDataSettingsManager;
.super Lcom/android/internal/telephony/data/DataSettingsManager;
.source "UniDataSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;
    }
.end annotation


# static fields
.field private static final DATA_KEEP_ALIVE_DURATION:I = 0x1b7740

.field private static final INTENT_CLEANUP_DATA_ALARM:Ljava/lang/String; = "com.sprd.telephony.data-cleanup"

.field private static final NATIONAL_ROAMING_TYPE_ALL_NETWORKS:I = 0x1

.field private static final NATIONAL_ROAMING_TYPE_DISABLED:I = 0x0

.field private static final NATIONAL_ROAMING_TYPE_NATIONAL_ROAMING_ONLY:I = 0x2

.field private static final VENDOR_EVENT_DATA_CONFIG_UPDATED:I = 0x1


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mAlwaysOnline:Z

.field private mCharging:Z

.field private mCleaupAlarmIntent:Landroid/app/PendingIntent;

.field private final mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

.field private mDeepSleep:Z

.field private final mHandler:Landroid/os/Handler;

.field private mIsScreenOn:Z

.field private mIsSetDefaultDataRoaming:Z

.field private mIsVendorDataEnabled:Z

.field private mMobileDataAlwaysOnlineObserver:Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;

.field private mNetworkShared:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSubId:I

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mUniDataSettingsManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mVendorDataEnabledSettings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fgetmAlwaysOnline(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlwaysOnline:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCharging(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCharging:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScreenOn(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsScreenOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmMobileDataAlwaysOnlineObserver(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mMobileDataAlwaysOnlineObserver:Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmResolver(Lcom/android/internal/telephony/data/UniDataSettingsManager;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/internal/telephony/data/UniDataSettingsManager;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAlwaysOnline(Lcom/android/internal/telephony/data/UniDataSettingsManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlwaysOnline:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmMobileDataAlwaysOnlineObserver(Lcom/android/internal/telephony/data/UniDataSettingsManager;Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mMobileDataAlwaysOnlineObserver:Lcom/android/internal/telephony/data/UniDataSettingsManager$MobileDataAlwaysOnlineObserver;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSubId(Lcom/android/internal/telephony/data/UniDataSettingsManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelAlarmForDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->cancelAlarmForDeepSleep()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataSettingsManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monActionIntentCleanupData(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->onActionIntentCleanupData()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monBatteryChanged(Lcom/android/internal/telephony/data/UniDataSettingsManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->onBatteryChanged(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monNetworkShared(Lcom/android/internal/telephony/data/UniDataSettingsManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->onNetworkShared(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenOff(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->onScreenOff()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monScreenOn(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->onScreenOn()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartAlarmForDeepSleep(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->startAlarmForDeepSleep()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/data/DataSettingsManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCleaupAlarmIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mUniDataSettingsManagerCallbacks:Ljava/util/Set;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlwaysOnline:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsScreenOn:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCharging:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mNetworkShared:Z

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsSetDefaultDataRoaming:Z

    new-instance v1, Lcom/android/internal/telephony/data/UniDataSettingsManager$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager$1;-><init>(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    new-instance v2, Lcom/android/internal/telephony/data/UniDataSettingsManager$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager$2;-><init>(Lcom/android/internal/telephony/data/UniDataSettingsManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Uni-DSMGR-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->LOG_TAG:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDataNetworkController:Lcom/android/internal/telephony/data/DataNetworkController;

    iput-object p0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-direct {p0, p4}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->registerUniDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->initVendorDataEnabledValue()V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "alarm"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlarmManager:Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.sprd.telephony.data-cleanup"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x4

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    const-string v2, "UniDataSettingsManager created."

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private cancelAlarmForDeepSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCleaupAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-string v0, "cancelAlarmForDeepSleep"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCleaupAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCleaupAlarmIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private cleanUpDataForDeepSleep()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mNetworkShared:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCharging:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->cleanupData()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    :cond_0
    return-void
.end method

.method private cleanupData()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setVendorDataEnabled(ZI)V

    return-void
.end method

.method private getDataKeepAliveDuration(I)I
    .locals 4

    move v0, p1

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x80c0037

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delay "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " before tearing down data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    return v0
.end method

.method private initVendorDataEnabledValue()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private isNationalRoamingSupported()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$setDataRoamingEnabled$0(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataRoamingEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabled$1(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabledInternal$2(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->onDataRoamingEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$setDataRoamingEnabledInternal$3(ZLcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;Z)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->LOG_TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onActionIntentCleanupData()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->cleanUpDataForDeepSleep()V

    return-void
.end method

.method private onBatteryChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCharging:Z

    if-eq p1, v0, :cond_1

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCharging:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->cancelAlarmForDeepSleep()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsScreenOn:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlwaysOnline:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->startAlarmForDeepSleep()V

    :cond_1
    :goto_0
    return-void
.end method

.method private onNetworkShared(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mNetworkShared:Z

    return-void
.end method

.method private onScreenOff()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsScreenOn:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlwaysOnline:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCharging:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->startAlarmForDeepSleep()V

    :cond_0
    return-void
.end method

.method private onScreenOn()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->cancelAlarmForDeepSleep()V

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setupData()V

    :cond_0
    return-void
.end method

.method private registerUniDataSettingsManagerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mUniDataSettingsManagerCallbacks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private setupData()V
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0xc

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setVendorDataEnabled(ZI)V

    return-void
.end method

.method private startAlarmForDeepSleep()V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprd.telephony.data-cleanup"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCleaupAlarmIntent:Landroid/app/PendingIntent;

    const v1, 0x1b7740

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->getDataKeepAliveDuration(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAlarmForDeepSleep delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, v1

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mCleaupAlarmIntent:Landroid/app/PendingIntent;

    const/4 v6, 0x2

    invoke-virtual {v2, v6, v3, v4, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public getDeepSleepState()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDeepSleep:Z

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg.what is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "msg.what mccmnc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    const-string v1, "26006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isConfigCarrierSpecific:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";isNationalRoamingSupported:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isNationalRoamingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataConfigManager;->isConfigCarrierSpecific()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isNationalRoamingSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setDefaultDataRoamingEnabled()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->handleMessage(Landroid/os/Message;)V

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public isDataEnabled(I)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataEnabled(I)Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    const/16 v4, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    const/16 v4, 0xd

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsVendorDataEnabled:Z

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    return v2
.end method

.method public isDataRoamingEnabled()Z
    .locals 5

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    invoke-static {v1, v2}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x8030032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    nop

    const-string v3, "data_roaming"

    invoke-static {v1, v3, v2, v0}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_0
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getDataRoamingType()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :pswitch_1
    const/4 v2, 0x1

    nop

    :cond_0
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dataRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,isDataRoamingEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->isDataRoamingEnabled()Z

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isVendorDataEnabledForReason(I)Z
    .locals 2

    const/16 v0, 0xb

    if-lt p1, v0, :cond_1

    const/16 v0, 0xd

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVendorDataEnabled: unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030032

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    const/4 v2, 0x0

    const-string v3, "data_roaming"

    invoke-static {v0, v3, v1, v2}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setDataRoamingFromUserAction()V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mUniDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabled(Z)V

    :goto_0
    return-void
.end method

.method public setDataRoamingEnabledInternal(Z)V
    .locals 5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingEnabledInternal mccmnc is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    const-string v1, "26006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingEnabledInternal do polan"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingEnabledInternal: supported="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isNationalRoamingSupported()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";mIsSetDefaultDataRoaming="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsSetDefaultDataRoaming:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isNationalRoamingSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsSetDefaultDataRoaming:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsSetDefaultDataRoaming:Z

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    const/4 v3, 0x2

    const-string v4, "data_roaming"

    invoke-static {v1, v4, v2, v3}, Lcom/android/internal/telephony/GlobalSettingsHelper;->getInt(Landroid/content/Context;Ljava/lang/String;II)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "roamingValue ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mSubId:I

    invoke-static {v2, v4, v3, v1}, Lcom/android/internal/telephony/GlobalSettingsHelper;->setInt(Landroid/content/Context;Ljava/lang/String;II)Z

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mUniDataSettingsManagerCallbacks:Ljava/util/Set;

    new-instance v3, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/data/UniDataSettingsManager$$ExternalSyntheticLambda0;-><init>(Z)V

    invoke-interface {v2, v3}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabled(Z)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataRoamingEnabledInternal do else"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    :goto_0
    return-void
.end method

.method public setDefaultDataRoamingEnabled()V
    .locals 3

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isNationalRoamingSupported()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0}, Lcom/android/internal/telephony/data/DataSettingsManager;->setDefaultDataRoamingEnabled()V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->isDefaultDataRoamingEnabled()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataRoamingEnabled:defaultVal is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mIsSetDefaultDataRoaming:Z

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setDataRoamingEnabledInternal(Z)V

    :cond_1
    return-void
.end method

.method public setVendorDataEnabled(ZI)V
    .locals 3

    const/16 v0, 0xb

    if-lt p2, v0, :cond_2

    const/16 v0, 0xd

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VendorDataEnabled changed to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",reason is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataSettingsManager;->mVendorDataEnabledSettings:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->updateDataEnabledAndNotify(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVendorDataEnabled: unknown reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->log(Ljava/lang/String;)V

    return-void
.end method
