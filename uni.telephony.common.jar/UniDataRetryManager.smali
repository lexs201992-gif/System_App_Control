.class public final Lcom/android/internal/telephony/data/UniDataRetryManager;
.super Lcom/android/internal/telephony/data/DataRetryManager;
.source "UniDataRetryManager.java"


# static fields
.field private static final ACTION_REPORT_ERRLOG:Ljava/lang/String; = "com.sprd.intent.action.COMMLOG_REPORTED"

.field private static final DATA_SETUP_EXCEPTION_EVENT_ID:I = 0x1

.field private static final DATA_SETUP_EXCEPTION_SCENE_ID:I = 0x101

.field private static final DBG:Z = true

.field private static final EVENT_DATA_RAT_CHANGED:I = 0x3e9

.field private static final EVENT_DATA_SETUP_RETRY:I = 0x3ea

.field private static final EVENT_RADIO_OFF_OR_NOT_AVAILABLE:I = 0x3ec

.field private static final EVENT_RADIO_ON:I = 0x3eb

.field private static final INTENT_RETRY_CLEAR_CODE:Ljava/lang/String; = "com.android.internal.telephony.data-retry-clear-code"

.field private static final INTENT_RETRY_FROM_FAILURE:Ljava/lang/String; = "com.android.internal.telephony.data-retry-from-failure"

.field private static final INTENT_RETRY_FROM_FAILURE_ALARM_EXTRA_TYPE:Ljava/lang/String; = "retry_from_faliure_alarm_extra_type"

.field private static final MAX_RETRY:I = 0x3

.field private static final PROTOCOL_IP:I = 0x0

.field private static final PROTOCOL_IPV4V6:I = 0x2

.field private static final PROTOCOL_IPV6:I = 0x1

.field private static final RETRY_CLEAR_CODE:Ljava/lang/String; = "clear_code_retry"

.field private static final VENDOR_BASE:I = 0x3e8


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mClearCodeLatch:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mCurrentSubId:I

.field public mDataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

.field private mFailCount:I

.field private mIsWifiConnected:Z

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPreFailcause:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

.field private mRetryIntent:Landroid/app/PendingIntent;

.field private mRil:Lcom/android/internal/telephony/CommandsInterface;

.field private mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mUniDataRetryManagerCallbacks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$MF2jPrL_0xGMPteyfNJkZSCRjkw(Lcom/android/internal/telephony/data/UniDataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->lambda$handleMessage$1(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tyyolSVxWaYgkADO9cO3OvV9D94(Lcom/android/internal/telephony/data/UniDataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->lambda$handleMessage$0(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentSubId(Lcom/android/internal/telephony/data/UniDataRetryManager;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mCurrentSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFailCount(Lcom/android/internal/telephony/data/UniDataRetryManager;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsWifiConnected(Lcom/android/internal/telephony/data/UniDataRetryManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mIsWifiConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataRetryManager;)Lcom/android/internal/telephony/Phone;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetryController(Lcom/android/internal/telephony/data/UniDataRetryManager;)Lcom/android/internal/telephony/data/ClearCodeRetryController;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSubId(Lcom/android/internal/telephony/data/UniDataRetryManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mCurrentSubId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsWifiConnected(Lcom/android/internal/telephony/data/UniDataRetryManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mIsWifiConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataRetryManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monActionIntentRetryClearCode(Lcom/android/internal/telephony/data/UniDataRetryManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->onActionIntentRetryClearCode(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monActionIntentRetryFromFailure(Lcom/android/internal/telephony/data/UniDataRetryManager;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->onActionIntentRetryFromFailure(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDataNetworkConnected(Lcom/android/internal/telephony/data/UniDataRetryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->onDataNetworkConnected()V

    return-void
.end method

.method static bridge synthetic -$$Nest$monDataSettingsEnabledChanged(Lcom/android/internal/telephony/data/UniDataRetryManager;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->onDataSettingsEnabledChanged(ZI)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterClearCodeEvents(Lcom/android/internal/telephony/data/UniDataRetryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->registerClearCodeEvents()V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/Phone;",
            "Lcom/android/internal/telephony/data/DataNetworkController;",
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/data/DataServiceManager;",
            ">;",
            "Landroid/os/Looper;",
            "Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;",
            ")V"
        }
    .end annotation

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataRetryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Landroid/util/SparseArray;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    const-string v0, "UniDataRetryManager"

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPreFailcause:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mIsWifiConnected:Z

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mClearCodeLatch:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryIntent:Landroid/app/PendingIntent;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mUniDataRetryManagerCallbacks:Ljava/util/Set;

    new-instance v1, Lcom/android/internal/telephony/data/UniDataRetryManager$3;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/UniDataRetryManager$3;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/internal/telephony/data/UniDataRetryManager$4;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/UniDataRetryManager$4;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;)V

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p1, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    iput v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mCurrentSubId:I

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mUniDataRetryManagerCallbacks:Ljava/util/Set;

    invoke-interface {v2, p5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/android/internal/telephony/data/ClearCodeRetryController;

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v2, v3, p0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/UniDataRetryManager;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "telephony_subscription_service"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionManager;

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.android.internal.telephony.data-retry-clear-code"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.android.internal.telephony.data-retry-from-failure"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    const/4 v7, 0x4

    move-object v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    new-instance v2, Lcom/android/internal/telephony/data/UniDataRetryManager$1;

    new-instance v3, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;)V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/UniDataRetryManager$1;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;Ljava/util/concurrent/Executor;)V

    invoke-virtual {p2, v2}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    new-instance v2, Lcom/android/internal/telephony/data/UniDataRetryManager$2;

    new-instance v3, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;)V

    invoke-direct {v2, p0, v3}, Lcom/android/internal/telephony/data/UniDataRetryManager$2;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;Ljava/util/concurrent/Executor;)V

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-virtual {p2}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataSettingsManager()Lcom/android/internal/telephony/data/DataSettingsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mSettingsCallback:Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/data/DataSettingsManager;->registerCallback(Lcom/android/internal/telephony/data/DataSettingsManager$DataSettingsManagerCallback;)V

    const-string v2, "UniDataRetryManager.constructor"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getStringProtocol(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getStringProtocol index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    packed-switch p1, :pswitch_data_0

    const-string v0, "invalid Protocol type"

    return-object v0

    :pswitch_0
    const-string v0, "IPV4V6"

    return-object v0

    :pswitch_1
    const-string v0, "IPV6"

    return-object v0

    :pswitch_2
    const-string v0, "IPV4"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private synthetic lambda$handleMessage$0(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mDataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->onDataNetworkSetupRetry(Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;)V

    return-void
.end method

.method private synthetic lambda$handleMessage$1(Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;)V

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataRetryManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

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

    const-string v1, "UniDataRetryManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onActionIntentRetryClearCode(Landroid/content/Intent;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mClearCodeLatch:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    const-string v1, "subscription"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActionIntentRetryClearCode: currSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " phoneSubId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eq v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "onActionIntentRetryClearCode: sendMessage = EVENT_DATA_SETUP_RETRY"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    const/16 v2, 0x3ea

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->sendMessage(Landroid/os/Message;)Z

    return-void

    :cond_1
    :goto_0
    const-string v2, "receive retry alarm but subId incorrect, ignore"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method private onActionIntentRetryFromFailure(Landroid/content/Intent;)V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryIntent:Landroid/app/PendingIntent;

    const-string v0, "onActionIntentRetryFromFailure:"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    const-string v1, "retryfailure"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->restartCycle(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private onDataNetworkConnected()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->supportSpecialClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "onDataNetworkConnected()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPreFailcause:I

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    :cond_0
    return-void
.end method

.method private onDataSettingsEnabledChanged(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataEnabledChanged enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "reason = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    if-lez v0, :cond_0

    if-nez p2, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    const-string v1, "DataEnableOn"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->restartForChanged(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private onRadioOffOrNotAvailable()V
    .locals 2

    const-string v0, "onRadioOffOrNotAvailable()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPreFailcause:I

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isSpecialCode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->notifyRadioOffOrNotAvailable()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->stopFailRetryAlarm()V

    :cond_0
    return-void
.end method

.method private registerClearCodeEvents()V
    .locals 4

    const-string v0, "registerClearCodeEvents()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3eb

    const/4 v2, 0x0

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRil:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x3ec

    invoke-interface {v0, p0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v0

    const/4 v1, 0x1

    const/16 v3, 0x3e9

    invoke-virtual {v0, v1, p0, v3, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->registerForDataRegStateOrRatChanged(ILandroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method private sendErrorReport(Landroid/telephony/data/DataProfile;I)V
    .locals 7

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    new-instance v1, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    const/16 v3, 0x101

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/unisoc/telephony/RadioInteractor;->getExceptionEvents(IIIII)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprd.intent.action.COMMLOG_REPORTED"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "FaultId"

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "SceneId"

    const/16 v5, 0x101

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "ErrorCode"

    invoke-virtual {v3, v4, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    nop

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnTypeBitmask()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/data/ApnSetting;->getApnTypesStringFromBitmask(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Type"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Carrier"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getEntryName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Apn"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getApnName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Proxy"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyAddressAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Port"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProxyPort()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Mmsc"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsc()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "MmsProxy"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMmsProxyAddressAsString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "User"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getUser()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "AuthType"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getAuthType()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "Numeric"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getProtocol()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getStringProtocol(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Protocol"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getRoamingProtocol()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/UniDataRetryManager;->getStringProtocol(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "RoamingProtocol"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "Mtu"

    invoke-virtual {v0}, Landroid/telephony/data/ApnSetting;->getMtuV4()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "State"

    const v5, 0xffff

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v4

    const-string v5, "SimIndex"

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v4, "CpInfo"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "sendErrorReport end"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private startAlarmForRetryClearCode(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.data-retry-clear-code"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const-string v2, "subscription"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAlarmForRetryClearCode: delay="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mClearCodeLatch:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v2, v3, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryIntent:Landroid/app/PendingIntent;

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    int-to-long v6, p1

    add-long/2addr v4, v6

    const/4 v6, 0x2

    invoke-virtual {v3, v6, v4, v5, v2}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method

.method private startAlarmForRetryFromFailure(I)V
    .locals 7

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.internal.telephony.data-retry-from-failure"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAlarmForRetryFromFailure: delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/high16 v3, 0xc000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryIntent:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    int-to-long v5, p1

    add-long/2addr v3, v5

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3, v4, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public cancelReconnectAlarms()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->removeMessages(I)V

    return-void
.end method

.method public clearPreFailCause()V
    .locals 2

    const-string v0, "clearPreFailCause()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPreFailcause:I

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mClearCodeLatch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public dataSetupRetry()V
    .locals 1

    const/16 v0, 0x3ea

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;-><init>()V

    invoke-virtual {v0, p5, p6}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setRetryDelay(J)Lcom/android/internal/telephony/data/DataRetryManager$DataRetryEntry$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setSetupRetryType(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setNetworkRequestList(Lcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setDataProfile(Landroid/telephony/data/DataProfile;)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->setTransport(I)Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry$Builder;->build()Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mDataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "evaluateDataSetupRetry() cause: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1, p4}, Lcom/android/internal/telephony/data/UniDataRetryManager;->sendErrorReport(Landroid/telephony/data/DataProfile;I)V

    sparse-switch p4, :sswitch_data_0

    const-string v0, "super.evaluateDataSetupRetry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->supportSpecialClearCode()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p4}, Lcom/android/internal/telephony/data/UniDataRetryManager;->handleSpecialClearCode(I)V

    goto :goto_0

    :cond_0
    const-string v0, "super evaluateDataSetupRetry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-super/range {p0 .. p6}, Lcom/android/internal/telephony/data/DataRetryManager;->evaluateDataSetupRetry(Landroid/telephony/data/DataProfile;ILcom/android/internal/telephony/data/DataNetworkController$NetworkRequestList;IJ)V

    nop

    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x1d -> :sswitch_0
        0x21 -> :sswitch_0
    .end sparse-switch
.end method

.method public getFailCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    return v0
.end method

.method public getRetryClearCodeEnabled()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v1, :cond_5

    iget v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPreFailcause:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isSpecialCode(I)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isNonVolteClearCode()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mClearCodeLatch:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    return v0

    :cond_5
    :goto_1
    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "default msg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataRetryManager;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "EVENT_RADIO_OFF_OR_NOT_AVAILABLE: "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->onRadioOffOrNotAvailable()V

    goto :goto_0

    :pswitch_1
    const-string v0, "EVENT_RADIO_ON: "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->handleRadioOn()V

    goto :goto_0

    :pswitch_2
    const-string v0, "EVENT_DATA_SETUP_RETRY: "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mUniDataRetryManagerCallbacks:Ljava/util/Set;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mDataSetupRetryEntry:Lcom/android/internal/telephony/data/DataRetryManager$DataSetupRetryEntry;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/UniDataRetryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/UniDataRetryManager;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    const-string v0, "EVENT_DATA_SETUP_RETRY: onDataNetworkSetupRetry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v0, "EVENT_DATA_RAT_CHANGED: "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/util/Pair;

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->handleDataServiceChange(II)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_DATA_RAT_CHANGED: drsRatPair.second: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",drsRatPair.first: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected handleSpecialClearCode(I)V
    .locals 3

    iput p1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPreFailcause:I

    iget v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ClearCode] mFailCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isNonVolteClearCode()Z

    move-result v0

    const/16 v1, 0xe

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isVolteClearCode()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mFailCount:I

    const/4 v2, 0x3

    if-ge v0, v2, :cond_2

    const-string v0, "[ClearCode] next retry"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    const v0, 0xafc8

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->isNonVolteClearCode()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    if-ne v2, v1, :cond_1

    const/16 v0, 0x2710

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ClearCode] retry connect APN delay="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->startAlarmForRetryClearCode(I)V

    goto :goto_1

    :cond_2
    const-string v0, "[ClearCode] process fail"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v0

    if-ne v0, v1, :cond_3

    const-string v0, "[ClearCode] In 4G, switch to 3G"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->switchTo3G()V

    goto :goto_0

    :cond_3
    const-string v0, "[ClearCode] All retry attempts failed, show user notification"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryController:Lcom/android/internal/telephony/data/ClearCodeRetryController;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/data/ClearCodeRetryController;->userNotification(I)V

    const v0, 0x6ddd00

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->startAlarmForRetryFromFailure(I)V

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->cancelReconnectAlarms()V

    :goto_1
    return-void
.end method

.method public stopFailRetryAlarm()V
    .locals 2

    const-string v0, "stopFailRetryAlarm()"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataRetryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataRetryManager;->mRetryIntent:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method
