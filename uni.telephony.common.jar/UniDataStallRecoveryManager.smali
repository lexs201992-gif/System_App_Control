.class public Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;
.super Lcom/android/internal/telephony/data/DataStallRecoveryManager;
.source "UniDataStallRecoveryManager.java"


# static fields
.field private static final DELAY_GET_NETWORK_REACHABLE:I = 0xbb8

.field private static final RECOVERY_ACTION_GET_DATA_CALL_LIST:I = 0x0

.field private static final VENDOR_BASE:I = 0x3e8

.field private static final VENDOR_EVENT_DO_RECOVERY:I = 0x2

.field private static final VENDOR_EVENT_DO_RECOVERY_RIGHTNOW:I = 0x3e9


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field private mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

.field private final mDoRecoveryCallback:Landroid/net/INetworkReachableNotifier;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private final mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;


# direct methods
.method public static synthetic $r8$lambda$tQEEJbHEgLw8rkKE5whQMipEjSE(Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->lambda$uniCleanUpDataNetwork$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;-><init>(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/data/DataNetworkController;Lcom/android/internal/telephony/data/DataServiceManager;Landroid/os/Looper;Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;)V

    const-string v0, "UniDataStallRecoveryManager"

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager$1;-><init>(Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mDoRecoveryCallback:Landroid/net/INetworkReachableNotifier;

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

    iput-object p5, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    iput-object p3, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    return-void
.end method

.method private getNetworkAdapterService()Landroid/net/INetworkAdapterService;
    .locals 1

    nop

    const-string v0, "network_adapter"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/INetworkAdapterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkAdapterService;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkReachable()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v1

    invoke-interface {v1}, Landroid/net/INetworkAdapterService;->probeNetworkReachableActually()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "receive EVENT_DO_RECOVERY, waiting for onNotifyNetworkReachable"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mDoRecoveryCallback:Landroid/net/INetworkReachableNotifier;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->registerNetworkReachableNotifier(Landroid/net/INetworkReachableNotifier;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x3e9

    iput v2, v1, Landroid/os/Message;->what:I

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "RemoteException happen in getNetworkReachable!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "RuntimeException happen in getNetworkReachable!"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    :cond_0
    nop

    :goto_0
    return v0
.end method

.method private synthetic lambda$uniCleanUpDataNetwork$0()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;->onDataStallReestablishInternet()V

    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mPhone:Lcom/android/internal/telephony/Phone;

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

    const-string v1, "UniDataStallRecoveryManager"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private registerNetworkReachableNotifier(Landroid/net/INetworkReachableNotifier;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/INetworkAdapterService;->registerNetworkReachableNotifier(Landroid/net/INetworkReachableNotifier;)V

    const-string v0, "registerNetworkReachableNotifier"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteException happen in registerNetworkReachableNotifier!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "RuntimeException happen in registerNetworkReachableNotifier!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method private unregisterNetworkReachableNotifier(Landroid/net/INetworkReachableNotifier;)V
    .locals 2

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/net/INetworkAdapterService;->unregisterNetworkReachableNotifier(Landroid/net/INetworkReachableNotifier;)V

    const-string v0, "unregisterNetworkReachableNotifier"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RemoteException happen in registerNetworkReachableNotifier!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "RuntimeException happen in unregisterNetworkReachableNotifier!"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    :cond_0
    :goto_0
    nop

    :goto_1
    return-void
.end method


# virtual methods
.method public getUniDataCallList()V
    .locals 2

    const-string v0, "getUniDataCallList: request data call list"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mWwanDataServiceManager:Lcom/android/internal/telephony/data/DataServiceManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataServiceManager;->requestDataCallList(Landroid/os/Message;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mDoRecoveryCallback:Landroid/net/INetworkReachableNotifier;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->unregisterNetworkReachableNotifier(Landroid/net/INetworkReachableNotifier;)V

    if-nez v0, :cond_0

    const-string v1, "waiting for callback timeout or unreachable, doRecovery"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getNetworkReachable()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "get network reachable fail, doRecovery"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager;->handleMessage(Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_1
        0x3e9 -> :sswitch_0
    .end sparse-switch
.end method

.method public isDsrmRecoveryAlreadyStarted()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDsrmRecoveryAlreadyStarted: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getRecoveryAction()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->getRecoveryAction()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public uniCleanUpDataNetwork()V
    .locals 2

    const-string v0, "uniCleanUpDataNetwork: notify clean up data network"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;->mDataStallRecoveryManagerCallback:Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;

    new-instance v1, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/data/UniDataStallRecoveryManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/data/UniDataStallRecoveryManager;)V

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataStallRecoveryManager$DataStallRecoveryManagerCallback;->invokeFromExecutor(Ljava/lang/Runnable;)V

    return-void
.end method
