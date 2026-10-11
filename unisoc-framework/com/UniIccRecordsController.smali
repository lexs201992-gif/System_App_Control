.class public Lcom/android/internal/telephony/uicc/UniIccRecordsController;
.super Landroid/os/Handler;
.source "UniIccRecordsController.java"


# static fields
.field private static final blacklist EVENT_SIM_LOADED:I = 0x0

.field private static final blacklist EVENT_SIM_UNAVAILABLE:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "UniIccRecordsController"

.field private static blacklist mInstance:Lcom/android/internal/telephony/uicc/UniIccRecordsController;


# instance fields
.field private blacklist mPhoneCount:I

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSimState:[I

.field private blacklist mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

.field private blacklist mUniRoamingBrokerController:[Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmSimState(Lcom/android/internal/telephony/uicc/UniIccRecordsController;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mSimState:[I

    return-object p0
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;-><init>(Lcom/android/internal/telephony/uicc/UniIccRecordsController;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mPhoneCount:I

    new-array v1, v0, [Lcom/android/internal/telephony/uicc/UniIccRecords;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

    new-array v1, v0, [Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniRoamingBrokerController:[Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mSimState:[I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

    new-instance v2, Lcom/android/internal/telephony/uicc/UniIccRecords;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mSimState:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isWifiOnlyDevice()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isDataOnlyDevice()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniRoamingBrokerController:[Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    new-instance v2, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    invoke-direct {v2, p1, v0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;-><init>(Landroid/content/Context;I)V

    aput-object v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/uicc/UniIccRecordsController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mInstance:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    return-object v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/uicc/UniIccRecordsController;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mInstance:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mInstance:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mInstance:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public blacklist getUniIccRecordForPhone(I)Lcom/android/internal/telephony/uicc/UniIccRecords;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public blacklist getUniRoamingBrokerControllerForPhone(I)Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniRoamingBrokerController:[Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    array-length v1, v0

    if-le v1, p1, :cond_0

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->resetRecords()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->fetchUniIccRecords()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->mUniIccRecords:[Lcom/android/internal/telephony/uicc/UniIccRecords;

    iget v1, p1, Landroid/os/Message;->arg1:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->registerForCellLocationChanged()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
