.class public Lcom/android/internal/telephony/subsidy/SubsidyLockController;
.super Ljava/lang/Object;
.source "SubsidyLockController.java"


# static fields
.field private static final blacklist ACTION_DATA_ENABLED_AUTOMATICALLY:Ljava/lang/String; = "com.sprd.action.AUTO_EANBLE_DATA"

.field private static final blacklist ACTION_REMOVE_SUBSIDYLOCK_INIT:Ljava/lang/String; = "com.sprd.action.ACTION_REMOVE_SUBSIDYLOCK_INIT"

.field private static final blacklist ACTION_SUBSIDYLOCK_STATE:Ljava/lang/String; = "com.slc.action.ACTION_SUBSIDYLOCK_STATE"

.field private static final blacklist ACTION_SUBSIDYLOCK_STATE_EXTEND:Ljava/lang/String; = "com.sprd.action.ACTION_SUBSIDYLOCK_STATE"

.field private static final blacklist ACTION_SUBSIDYLOCK_STATUS_CHANGED:Ljava/lang/String; = "com.sprd.action.ACTION_SUBSIDYLOCK_STATUS_CHANGED"

.field private static final blacklist INTENT_KEY_LOCK_SCREEN:Ljava/lang/String; = "INTENT_KEY_LOCK_SCREEN"

.field private static final blacklist INTENT_KEY_SUBSIDYLOCK_STATUS:Ljava/lang/String; = "INTENT_KEY_SUBSIDYLOCK_STATUS"

.field private static final blacklist INTENT_KEY_SWITCH_SIM_SCREEN:Ljava/lang/String; = "INTENT_KEY_SWITCH_SIM_SCREEN"

.field private static final blacklist INTENT_KEY_UNLOCK_PERMANENTLY:Ljava/lang/String; = "INTENT_KEY_UNLOCK_PERMANENTLY"

.field private static final blacklist INTENT_KEY_UNLOCK_SCREEN:Ljava/lang/String; = "INTENT_KEY_UNLOCK_SCREEN"

.field private static blacklist JIO_ICCID:[Ljava/lang/String; = null

.field private static final blacklist KEY_SUB:Ljava/lang/String; = "sub"

.field public static final blacklist PERMISSION_SIMLOCK_UPDATE:Ljava/lang/String; = "unisoc.permission.SIMLOCK_UPDATE"

.field private static final blacklist SEND_BROADCAST_DELAY:I = 0x1388

.field private static final blacklist SIM_STATE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SUBSIDYLOCK_ICCID_PREFS_NAME:Ljava/lang/String; = "subsidylock.info.iccid"

.field private static final blacklist SUBSIDY_LOCK_SCREEN_MODE_LOCK:I = 0x1

.field private static final blacklist SUBSIDY_LOCK_SCREEN_MODE_SWITCH_SIM:I = 0x2

.field private static final blacklist SUBSIDY_LOCK_SCREEN_MODE_UNLOCK:I = 0x3

.field private static final blacklist SUBSIDY_LOCK_SCREEN_MODE_UNLOCK_PERMANENTLY:I = 0x4

.field private static final blacklist SUBSIDY_STATUS_LOCKED:I = 0x1

.field private static final blacklist SUBSIDY_STATUS_UNLOCKED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "SubsidyLockController"

.field public static final blacklist TARGET_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static blacklist mInstance:Lcom/android/internal/telephony/subsidy/SubsidyLockController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEmergencyOnly:[Z

.field private blacklist mFirstReceive:Z

.field private blacklist mHasReceiveBroadcastFromSlc:Z

.field private blacklist mPhoneCount:I

.field private blacklist mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

.field private blacklist mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private blacklist mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSimStates:[Ljava/lang/String;

.field private blacklist mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private blacklist mSubsidyLocked:Z

.field private blacklist mSupportSubsidyLock:Z

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFirstReceive(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mFirstReceive:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHasReceiveBroadcastFromSlc(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mHasReceiveBroadcastFromSlc:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneCount(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPrimarySubConfig(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/internal/telephony/PrimarySubConfig;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimStates(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSimStates:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubscriptionManager(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/telephony/SubscriptionManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmFirstReceive(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mFirstReceive:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmHasReceiveBroadcastFromSlc(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mHasReceiveBroadcastFromSlc:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Lcom/android/unisoc/telephony/RadioInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$menableLte(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->enableLte()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misLowPriSim(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isLowPriSim(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mresetPrimaryCardIfNeed(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->resetPrimaryCardIfNeed()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msendBroadcastForSystemUI(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->sendBroadcastForSystemUI()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEmergencyOnly(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->setEmergencyOnly(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetSimEnabledForOperator(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->setSimEnabledForOperator(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetSIM_STATE_LIST()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->SIM_STATE_LIST:Ljava/util/List;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 22

    const-string v0, "8991868"

    const-string v1, "8991866"

    const-string v2, "8991865"

    const-string v3, "8991869"

    const-string v4, "8991867"

    const-string v5, "8991871"

    const-string v6, "8991874"

    const-string v7, "8991864"

    const-string v8, "8991873"

    const-string v9, "8991872"

    const-string v10, "8991870"

    const-string v11, "8991840"

    const-string v12, "8991857"

    const-string v13, "8991858"

    const-string v14, "8991859"

    const-string v15, "8991860"

    const-string v16, "8991856"

    const-string v17, "8991855"

    const-string v18, "8991862"

    const-string v19, "8991861"

    const-string v20, "8991863"

    const-string v21, "8991854"

    filled-new-array/range {v0 .. v21}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->JIO_ICCID:[Ljava/lang/String;

    const-string v0, "LOCKED"

    const-string v1, "UNKNOWN"

    const-string v2, "ABSENT"

    const-string v3, "NOT_READY"

    const-string v4, "READY"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->SIM_STATE_LIST:Ljava/util/List;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mFirstReceive:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mHasReceiveBroadcastFromSlc:Z

    new-instance v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;-><init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;-><init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSupportSubsidyLock:Z

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPhoneCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    invoke-static {p1}, Lcom/android/internal/telephony/PrimarySubConfig;->init(Landroid/content/Context;)Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

    iget v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPhoneCount:I

    new-array v1, v1, [Lcom/android/unisoc/telephony/RadioInteractorListener;

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-direct {p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->addRadioInteractorListener()V

    iget v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPhoneCount:I

    new-array v2, v1, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSimStates:[Ljava/lang/String;

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPhoneCount:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aput-boolean v0, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.slc.action.ACTION_SUBSIDYLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.sprd.action.ACTION_SUBSIDYLOCK_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist addRadioInteractorListener()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.unisoc.telephony.server.RADIOINTERACTOR_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.unisoc.telephony.server"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;-><init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private blacklist enableLte()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController$4;-><init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method private blacklist getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "SubsidyLockController"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    return-object p1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/subsidy/SubsidyLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mInstance:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    return-object v0
.end method

.method private blacklist getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;-><init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;II)V

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/subsidy/SubsidyLockController;
    .locals 4

    const-string v0, "SubsidyLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mInstance:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mInstance:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    goto :goto_0

    :cond_0
    const-string v1, "SubsidyLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mInstance:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mInstance:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist isLowPriSim(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isLowPriSim: phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isOperatorCardForSubsidy(I)Z

    move-result v0

    xor-int/2addr v0, v1

    return v0

    :cond_1
    return v1
.end method

.method private blacklist popupDataEnabledScreen()V
    .locals 5

    const-string v0, "popupDataEnabledScreen"

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.unisoc.phone"

    const-string v4, "com.unisoc.phone.subsidy.AutoEnableDataActivity"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find data enabled prompt for restart activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist resetPrimaryCardIfNeed()V
    .locals 7

    invoke-virtual {p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isDataSwitchAllowedForSubsidy()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PrimarySubConfig;->getPreferredPrimaryCard()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resetPrimaryCardIfNeed: current= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " target= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SubsidyLockController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x7fffffff

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move v2, v4

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "resetPrimaryCardIfNeed: primarySubId= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->isSubscriptionEnabled(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_3

    if-eq v0, v1, :cond_3

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isLowPriSim(I)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v5, v2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    :cond_3
    return-void
.end method

.method private blacklist sendBroadcastForSystemUI()V
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sprd.action.ACTION_SUBSIDYLOCK_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "gsm.subsidylock.currentstate"

    const/4 v2, -0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "SubsidyLockController"

    packed-switch v1, :pswitch_data_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown currentState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const-string v2, "INTENT_KEY_UNLOCK_PERMANENTLY"

    goto :goto_0

    :pswitch_1
    const-string v2, "INTENT_KEY_UNLOCK_SCREEN"

    goto :goto_0

    :pswitch_2
    const-string v2, "INTENT_KEY_SWITCH_SIM_SCREEN"

    goto :goto_0

    :pswitch_3
    const-string v2, "INTENT_KEY_LOCK_SCREEN"

    nop

    :goto_0
    if-eqz v2, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendBroadcast: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x20000000

    invoke-virtual {v0, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    const-string v4, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist setEmergencyOnly(I)V
    .locals 8

    const-string v0, "setEmergencyOnly"

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aget-boolean v0, v0, p1

    const-string v2, "disable emergency only for phoneId "

    const-string v3, "READY"

    const/4 v4, -0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSimStates:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isLowPriSim(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v0, v7, v5, v4, p1}, Lcom/android/unisoc/telephony/RadioInteractor;->setEmergencyOnly(ZLandroid/os/Messenger;II)V

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aput-boolean v7, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    return-void

    :cond_0
    const-string v0, "gsm.subsidy.lock.state"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Lock State"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aget-boolean v0, v0, p1

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSimStates:[Ljava/lang/String;

    aget-object v0, v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/RadioInteractor;->getRealSimSatus(I)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isLowPriSim(I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set emergency only because AP Lock for phoneId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v0, v6, v5, v4, p1}, Lcom/android/unisoc/telephony/RadioInteractor;->setEmergencyOnly(ZLandroid/os/Messenger;II)V

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aput-boolean v6, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "Not Lock State"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v0, v7, v5, v4, p1}, Lcom/android/unisoc/telephony/RadioInteractor;->setEmergencyOnly(ZLandroid/os/Messenger;II)V

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mEmergencyOnly:[Z

    aput-boolean v7, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist setSimEnabledForOperator(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/RadioInteractor;->getRealSimSatus(I)I

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSimEnabledForOperator: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->JIO_ICCID:[Ljava/lang/String;

    array-length v6, v5

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-virtual {v2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    if-nez v4, :cond_1

    const-string v5, "enable jio sim in subsidylock state"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    const/4 v5, 0x1

    invoke-virtual {v1, v3, v5}, Landroid/telephony/SubscriptionManager;->setSubscriptionEnabled(IZ)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public blacklist isDataSwitchAllowedForSubsidy()Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSupportSubsidyLock:Z

    const-string v2, "SubsidyLockController"

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    if-eqz v1, :cond_2

    const-string v1, "subsidylock state, Not allowed to switch default data card if Jio SIM card and non-Jio SIM"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isLowPriSim(I)Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-lez v1, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    const/4 v0, 0x0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDataSwitchAllowed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isDisableSimAllowedByIccId(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSupportSubsidyLock:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->JIO_ICCID:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method public blacklist isDisableSimAllowedForSubsidy(I)Z
    .locals 4

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSupportSubsidyLock:Z

    const-string v2, "SubsidyLockController"

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    if-eqz v1, :cond_0

    const-string v1, "subsidylock state, Not allowed to Disable jio Sim"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isLowPriSim(I)Z

    move-result v1

    return v1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDisableSimAllowed = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist isOperatorCardForSubsidy(I)Z
    .locals 10

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->JIO_ICCID:[Ljava/lang/String;

    array-length v7, v6

    :goto_0
    if-ge v1, v7, :cond_2

    aget-object v8, v6, v1

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v5, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v9, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isOperatorCardForSubsidy: phoneId "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is operator card? "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "SubsidyLockController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :catchall_0
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1
.end method

.method public blacklist popupDataEnabledForSubsidy(I)V
    .locals 14

    iget-boolean v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSupportSubsidyLock:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubsidyLocked:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    const-string v1, "subsidylock.info.iccid"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, ""

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v3, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->isOperatorCardForSubsidy(I)Z

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current data sub "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", iccid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ", is jio? "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "SubsidyLockController"

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v5

    const/4 v8, 0x0

    const-string v9, "sub"

    invoke-interface {v0, v9, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pre data sub "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "is same jio sub? "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_2

    if-nez v6, :cond_2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "save "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v10

    invoke-interface {v10, v9, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v10}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_2
    const/4 v9, 0x1

    const/4 v10, 0x1

    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mobile_data"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v11
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v11, :cond_3

    move v2, v10

    :cond_3
    move v9, v2

    goto :goto_0

    :catch_0
    move-exception v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "data enabled? "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq p1, v5, :cond_4

    if-eqz v4, :cond_4

    if-nez v9, :cond_4

    if-nez v6, :cond_4

    const-string v2, "enable data for JIO card"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v2, p1, v10}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->setUserDataEnabledForSubsidy(IZ)V

    invoke-direct {p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->popupDataEnabledScreen()V

    :cond_4
    return-void

    :cond_5
    :goto_1
    return-void
.end method
