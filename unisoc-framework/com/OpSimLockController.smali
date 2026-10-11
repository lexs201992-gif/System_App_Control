.class public Lcom/android/internal/telephony/simlock/OpSimLockController;
.super Landroid/os/Handler;
.source "OpSimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;,
        Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_SHOW_OPERATOR_SIMLOCK:Ljava/lang/String; = "unisoc.simlockintent.action.ACTION_SHOW_OPERATOR_SIMLOCK"

.field public static final blacklist ACTION_UPDATE_SIMLOCK_DISMISS_BUTTON:Ljava/lang/String; = "unisoc.simlockintent.action.ACTION_UPDATE_SIMLOCK_DISMISS_BUTTON"

.field public static final blacklist ACTION_UPDATE_SIMLOCK_VISIBILITY:Ljava/lang/String; = "unisoc.simlockintent.action.UPDATE_SIMLOCK_VISIBILITY"

.field protected static final blacklist DEFAULT_FORCED_DATA_PHONE_INDEX:I = 0x0

.field protected static final blacklist DEFAULT_RESTRICTED_NETWORK_MODE:I = -0x1

.field public static final blacklist INTENT_EXTRA_HIDE_DISMISS_BTN:Ljava/lang/String; = "hide_dismiss_button"

.field public static final blacklist INTENT_EXTRA_HIDE_OPERATOR_DISMISS_BTN:Ljava/lang/String; = "hide_operator_dismiss_button"

.field public static final blacklist INTENT_EXTRA_SHOW_OPERATOR_SIMLOCK:Ljava/lang/String; = "show_operator_simlock"

.field public static final blacklist INTENT_EXTRA_SHOW_SIMLOCK:Ljava/lang/String; = "show_simlock"

.field public static final blacklist INTENT_EXTRA_SIMLOCK_STATUS:Ljava/lang/String; = "simlock_status"

.field public static final blacklist PERMISSION_SIMLOCK_UPDATE:Ljava/lang/String; = "unisoc.permission.SIMLOCK_UPDATE"

.field protected static final blacklist PHONE_INDEX_0:I = 0x0

.field protected static final blacklist PHONE_INDEX_1:I = 0x1

.field protected static final blacklist SIMLOCK_DUMMY1_UNLOCK_COMB_LOCK_ONE_TIME:I = 0x1

.field protected static final blacklist SIMLOCK_DUMMY2_ONE_SIMLOCK:I = 0x1

.field protected static final blacklist SIMLOCK_DUMMY2_ONE_SIMLOCK_AND_EXPIRE_SIM:I = 0x5

.field protected static final blacklist SIMLOCK_DUMMY2_SLOT_DENDENCY_KIND_1:I = 0x2

.field protected static final blacklist SIMLOCK_DUMMY2_SLOT_DENDENCY_KIND_2:I = 0x3

.field protected static final blacklist SIMLOCK_DUMMY2_SLOT_DENDENCY_KIND_2_AND_EXPIRE_SIM:I = 0x7

.field protected static final blacklist SIMLOCK_DUMMY3_SEPEARE_WHITELIST_CONFIG:I = 0x10

.field protected static final blacklist SIMLOCK_DUMMY3_UNLOCK_RELATION_OR:I = 0x8

.field protected static final blacklist SIMLOCK_STATUS_LOCKED:I = 0x1

.field protected static final blacklist SIMLOCK_STATUS_UNLOCKED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "OpSimLockController"

.field public static final blacklist TARGET_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field protected static final blacklist UNLOCK_NETWORK:I = 0x2

.field private static blacklist mInstance:Lcom/android/internal/telephony/simlock/OpSimLockController;

.field protected static blacklist mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# instance fields
.field protected blacklist mContext:Landroid/content/Context;

.field protected blacklist mPhoneCount:I

.field protected blacklist mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field protected blacklist mRiServiceBindListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSimLockConfigMatch:Z

.field protected blacklist mSimLockWhiteLists:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSimStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field protected blacklist mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

.field protected blacklist mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mnotifyRiServiceConnected(Lcom/android/internal/telephony/simlock/OpSimLockController;Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/simlock/OpSimLockController;->notifyRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifyRiServiceDisconnected(Lcom/android/internal/telephony/simlock/OpSimLockController;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->notifyRiServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mnotifySimStateChangedForSlot(Lcom/android/internal/telephony/simlock/OpSimLockController;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/simlock/OpSimLockController;->notifySimStateChangedForSlot(ILjava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mPhoneCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimLockConfigMatch:Z

    new-instance v0, Lcom/android/internal/telephony/simlock/OpSimLockController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/simlock/OpSimLockController$1;-><init>(Lcom/android/internal/telephony/simlock/OpSimLockController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mContext:Landroid/content/Context;

    nop

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mContext:Landroid/content/Context;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mPhoneCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateChangedListeners:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRiServiceBindListeners:Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/telephony/SimStateTracker;->init(Landroid/content/Context;)Lcom/android/internal/telephony/SimStateTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/SimStateTracker;->addOnSimStateChangedListener(Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->addRadioInteractorListener()V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist addRadioInteractorListener()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.unisoc.telephony.server.RADIOINTERACTOR_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.unisoc.telephony.server"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/simlock/OpSimLockController$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/simlock/OpSimLockController$2;-><init>(Lcom/android/internal/telephony/simlock/OpSimLockController;)V

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private static blacklist createCustomizedController(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/OpSimLockController;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/MtnSimLockController;

    move-result-object v0

    return-object v0

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    move-result-object v0

    return-object v0

    :cond_2
    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/TzTigoSimLockController;->create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/TzTigoSimLockController;

    move-result-object v0

    return-object v0

    :cond_3
    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/TrueSimLockController;

    move-result-object v0

    return-object v0

    :cond_5
    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isOperatorSimLockEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    move-result-object v0

    return-object v0

    :cond_6
    const/4 v0, 0x0

    nop

    new-instance v1, Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    return-object v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/simlock/OpSimLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OpSimLockController;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/OpSimLockController;
    .locals 4

    const-string v0, "OpSimLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/internal/telephony/simlock/OpSimLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/simlock/OpSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OpSimLockController;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->createCustomizedController(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/OpSimLockController;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/simlock/OpSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OpSimLockController;

    goto :goto_0

    :cond_0
    const-string v1, "OpSimLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/simlock/OpSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OpSimLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist notifyAllSimDetected(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAllSimDetected: isIccChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;->onAllSimsDetectedEvent(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "OpSimLockController"

    const-string v1, "notifyRiServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRiServiceBindListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;->onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifyRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "OpSimLockController"

    const-string v1, "notifyRiServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRiServiceBindListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;->onRiServiceDisconnected(Landroid/content/ComponentName;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifySimHotSwaped(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySimHotSwaped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;->onSimHotSwapedEvent(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifySimStateChangedForSlot(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySimStateChangedForSlot: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;->onSimStateChangedForSlotEvent(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRiServiceBindListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRiServiceBindListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist addWhiteList(Ljava/lang/String;)V
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_0

    const/4 v1, 0x2

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add white list "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpSimLockController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist getDummy1()I
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getSimlockDummys()[I

    move-result-object v1

    array-length v2, v1

    if-lez v2, :cond_0

    const/4 v2, 0x0

    aget v0, v1, v2

    :cond_0
    return v0
.end method

.method public blacklist getDummy2()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getSimlockDummys()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_0

    aget v0, v1, v3

    :cond_0
    return v0
.end method

.method public blacklist getDummy3()I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->getSimlockDummys()[I

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    aget v0, v1, v3

    :cond_0
    return v0
.end method

.method public blacklist getOpPreferredPrimaryCard()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRestrictedNetTypePhoneId()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getRestrictedNetworkType(I)I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public blacklist getSimLockStatus(II)I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->getSimLockStatus(II)I

    move-result v0

    return v0

    :cond_0
    return v1
.end method

.method public blacklist getSimlockDummys()[I
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/OpSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->getSimlockDummys(I)[I

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public blacklist isCallAllowedForSlot(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDataAllowedForSlot(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isDefaultDataCardSwitchAllowed()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isSmsAllowedForSlot(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isWhiteListCard(I)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist needShowOperatorSimLock()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onAllSimDetected(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->notifyAllSimDetected(Z)V

    return-void
.end method

.method public blacklist onSimHotSwaped(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->notifySimHotSwaped(I)V

    return-void
.end method

.method public blacklist restrictedNetworkTypeNeeded(I)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist showOperatorSimLock(Z)V
    .locals 0

    return-void
.end method

.method public blacklist simLockConfigMatch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
