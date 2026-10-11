.class public Landroid/net/LinkTurboMonitorImpl;
.super Landroid/net/LinkTurboMonitor;
.source "LinkTurboMonitorImpl.java"


# static fields
.field private static final blacklist SMARTLINK_TAG:Ljava/lang/String; = "SmartLink2.0:LinkTurboMonitorImpl"

.field private static final blacklist TAG:Ljava/lang/String; = "SmartLinkMonitor"

.field private static final blacklist WLAN_PLUS_ON:Ljava/lang/String; = "wlan_plus_on"

.field private static final blacklist debug:Z = false

.field static final blacklist localLOGV:Z = false


# instance fields
.field public final blacklist NETWORKADAPTER_SERVICE:Ljava/lang/String;

.field private blacklist mActivityManager:Landroid/app/IActivityManager;

.field private blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mIsScreenOn:I

.field private blacklist mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

.field private final blacklist mLinkTurboLock:Ljava/lang/Object;

.field private blacklist mLinkTurboManager:Landroid/net/LinkTurboManager;

.field private blacklist mNetd:Landroid/net/INetworkAdapterService;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mSmartLinkMpHttpCallback:Landroid/net/LinkTurboManager$MpHttpCallback;

.field private blacklist mUidObserver:Landroid/app/IUidObserver;

.field private blacklist mWlanPlusObserver:Landroid/database/ContentObserver;

.field private blacklist monitorCallbacks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/LinkTurboManager$LinkTurboCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic blacklist $r8$lambda$6ouD3qdjMfRhsSZFnPAr_vYCIT0(Landroid/net/LinkTurboMonitorImpl;Ljava/lang/Integer;Landroid/net/LinkTurboManager$LinkTurboCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/LinkTurboMonitorImpl;->lambda$clearAllCallbacks$0(Ljava/lang/Integer;Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/LinkTurboMonitorImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkTurboCallback(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager$LinkTurboCallback;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkTurboLock(Landroid/net/LinkTurboMonitorImpl;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/LinkTurboManager;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNetd(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/INetworkAdapterService;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmonitorCallbacks(Landroid/net/LinkTurboMonitorImpl;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsScreenOn(Landroid/net/LinkTurboMonitorImpl;I)V
    .locals 0

    iput p1, p0, Landroid/net/LinkTurboMonitorImpl;->mIsScreenOn:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkTurboCallback(Landroid/net/LinkTurboMonitorImpl;Landroid/net/LinkTurboManager$LinkTurboCallback;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLinkTurboManager(Landroid/net/LinkTurboMonitorImpl;Landroid/net/LinkTurboManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNetd(Landroid/net/LinkTurboMonitorImpl;Landroid/net/INetworkAdapterService;)V
    .locals 0

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mbeforeLinkTurboMonitor(Landroid/net/LinkTurboMonitorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/LinkTurboMonitorImpl;->beforeLinkTurboMonitor(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearAllCallbacks(Landroid/net/LinkTurboMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->clearAllCallbacks()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcloseNetworkAccelerationForGameList(Landroid/net/LinkTurboMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->closeNetworkAccelerationForGameList()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mendLinkTurboMonitor(Landroid/net/LinkTurboMonitorImpl;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/net/LinkTurboMonitorImpl;->endLinkTurboMonitor(II)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetNetworkAdapterService(Landroid/net/LinkTurboMonitorImpl;)Landroid/net/INetworkAdapterService;
    .locals 0

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mopenNetworkAccelerationForGameList(Landroid/net/LinkTurboMonitorImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/LinkTurboMonitorImpl;->openNetworkAccelerationForGameList(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterSmartLinkUidObserver(Landroid/net/LinkTurboMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->registerSmartLinkUidObserver()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$munregisterSmartLinkUidObserver(Landroid/net/LinkTurboMonitorImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->unregisterSmartLinkUidObserver()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/net/LinkTurboMonitor;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mSmartLinkMpHttpCallback:Landroid/net/LinkTurboManager$MpHttpCallback;

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mWlanPlusObserver:Landroid/database/ContentObserver;

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    const/4 v0, -0x2

    iput v0, p0, Landroid/net/LinkTurboMonitorImpl;->mIsScreenOn:I

    const-string v0, "network_adapter"

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->NETWORKADAPTER_SERVICE:Ljava/lang/String;

    new-instance v0, Landroid/net/LinkTurboMonitorImpl$1;

    invoke-direct {v0, p0}, Landroid/net/LinkTurboMonitorImpl$1;-><init>(Landroid/net/LinkTurboMonitorImpl;)V

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/net/LinkTurboMonitorImpl$5;

    invoke-direct {v0, p0}, Landroid/net/LinkTurboMonitorImpl$5;-><init>(Landroid/net/LinkTurboMonitorImpl;)V

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mUidObserver:Landroid/app/IUidObserver;

    const-string v0, "SmartLink2.0:LinkTurboMonitorImpl"

    const-string v1, "LinkTurboMonitorImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroid/net/LinkTurboMonitorImpl;->initWlanPlusObserver(Landroid/content/Context;)V

    return-void
.end method

.method private blacklist beforeLinkTurboMonitor(I)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/net/LinkTurboMonitorImpl;->getPackagesForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkTurboManager$LinkTurboCallback;

    invoke-static {v0}, Landroid/app/LinkTurboApp;->isLinkTurboApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v2, "SmartLinkMonitor"

    if-nez v0, :cond_1

    const-string v3, "application is not exist"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    invoke-static {v0}, Landroid/app/LinkTurboApp;->isLinkTurboAppProcess(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SmartLinkApp is Actived: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-nez v0, :cond_2

    const-string v5, "null"

    goto :goto_0

    :cond_2
    move-object v5, v0

    :goto_0
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is LinkTurboAppProcess"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v3, p1, v0}, Landroid/net/LinkTurboMonitorImpl;->beginLinkTurboMonitor(IILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is not LinkTurboAppProcess"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private blacklist beginLinkTurboMonitor(IILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Landroid/net/LinkTurboMonitorImpl$3;

    invoke-direct {v1, p0, p2, p1, p3}, Landroid/net/LinkTurboMonitorImpl$3;-><init>(Landroid/net/LinkTurboMonitorImpl;IILjava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private blacklist clearAllCallbacks()V
    .locals 3

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "SmartLinkMonitor"

    const-string v2, "clear all smartlink Callbacks"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    new-instance v2, Landroid/net/LinkTurboMonitorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/net/LinkTurboMonitorImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/LinkTurboMonitorImpl;)V

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist closeNetworkAccelerationForGameList()V
    .locals 3

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/net/INetworkAdapterService;->flushWifiPriorityRules()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RemoteException: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SmartLinkMonitor"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private blacklist endLinkTurboMonitor(II)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/net/LinkTurboMonitorImpl;->getPackagesForUid(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkTurboManager$LinkTurboCallback;

    invoke-static {v0}, Landroid/app/LinkTurboApp;->isLinkTurboApp(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    if-nez p2, :cond_2

    const-string v2, "SmartLinkMonitor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SmartLinkApp is Gone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_1

    const-string v4, "null"

    goto :goto_0

    :cond_1
    move-object v4, v0

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v2, "SmartLinkMonitor"

    const-string v3, "---------------------- endLinkTurboMonitor ----------------------"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    if-eqz v2, :cond_3

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v2, p1, v3}, Landroid/net/INetworkAdapterService;->bindAppUidToNetwork(ILandroid/net/Network;)Z

    move-result v2

    const-string v3, "SmartLinkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "endLinkTurboMonitor unbind uid finished, result is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "SmartLinkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NullPointerException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "SmartLinkMonitor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RemoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_3
    :goto_1
    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    if-eqz v2, :cond_4

    const-string v2, "SmartLinkMonitor"

    const-string v3, "unregister LinkTurboCallback"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    invoke-virtual {v3, v1}, Landroid/net/LinkTurboManager;->unregisterNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl;->monitorCallbacks:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    :cond_4
    :goto_2
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private blacklist getNetworkAdapterService()Landroid/net/INetworkAdapterService;
    .locals 4

    const/4 v0, 0x0

    monitor-enter p0

    :try_start_0
    const-string v1, "network_adapter"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkAdapterService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkAdapterService;

    move-result-object v1

    move-object v0, v1

    const-string v1, "SmartLink2.0:LinkTurboMonitorImpl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getNetworkAdapter: mNAS = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private blacklist getPackagesForUid(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1

    :cond_1
    return-object v1
.end method

.method private blacklist getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3

    const/4 v0, -0x1

    :try_start_0
    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p2, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v0, v1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_1
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private blacklist initWlanPlusObserver(Landroid/content/Context;)V
    .locals 6

    const-string v0, "start initWlanPlusObserver"

    const-string v1, "SmartLinkMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "wlan_plus_on"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->registerSmartLinkUidObserver()V

    invoke-direct {p0, p1}, Landroid/net/LinkTurboMonitorImpl;->openNetworkAccelerationForGameList(Landroid/content/Context;)V

    :cond_0
    new-instance v4, Landroid/net/LinkTurboMonitorImpl$4;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5, p1}, Landroid/net/LinkTurboMonitorImpl$4;-><init>(Landroid/net/LinkTurboMonitorImpl;Landroid/os/Handler;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/net/LinkTurboMonitorImpl;->mWlanPlusObserver:Landroid/database/ContentObserver;

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "registerContentObserver for mWlanPlusObserver"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl;->mWlanPlusObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_1
    const-string v3, "WLAN_PLUS_ON is null"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic blacklist lambda$clearAllCallbacks$0(Ljava/lang/Integer;Landroid/net/LinkTurboManager$LinkTurboCallback;)V
    .locals 1

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroid/net/LinkTurboManager;->unregisterNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    :cond_0
    return-void
.end method

.method private blacklist openNetworkAccelerationForGameList(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Landroid/net/LinkTurboMonitorImpl$6;

    invoke-direct {v0, p0}, Landroid/net/LinkTurboMonitorImpl$6;-><init>(Landroid/net/LinkTurboMonitorImpl;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {p0, p1, v2}, Landroid/net/LinkTurboMonitorImpl;->getUidByPackageName(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v4

    iput-object v4, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    const/4 v5, -0x1

    const-string v6, "SmartLinkMonitor"

    if-eq v3, v5, :cond_0

    if-eqz v4, :cond_0

    const/4 v5, 0x1

    :try_start_0
    invoke-interface {v4, v5, v3}, Landroid/net/INetworkAdapterService;->setWifiPriorityByUid(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "RemoteException: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_0
    const-string v4, "uid is invalid or netd is null"

    invoke-static {v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_0

    :cond_1
    return-void
.end method

.method private blacklist registerSmartLinkUidObserver()V
    .locals 6

    const-string v0, "start registerSmartLinkUidObserver"

    const-string v1, "SmartLinkMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mActivityManager:Landroid/app/IActivityManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mUidObserver:Landroid/app/IUidObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-interface {v0, v2, v5, v3, v4}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Couldn\'t registerSmartLinkUidObserver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private blacklist unregisterSmartLinkUidObserver()V
    .locals 3

    const-string v0, "start unregisterSmartLinkUidObserver"

    const-string v1, "SmartLinkMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mUidObserver:Landroid/app/IUidObserver;

    invoke-interface {v0, v2}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Couldn\'t unregisterSmartLinkUidObserver"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist isScreenOn(Landroid/content/Context;)Z
    .locals 2

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist processAfterBindSuccess()V
    .locals 5

    const-string v0, "Destroy the socket of current uid !!!"

    const-string v1, "SmartLink2.0:LinkTurboMonitorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Destroy the socket of current uid: myUid["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/LinkTurboMonitorImpl;->getNetworkAdapterService()Landroid/net/INetworkAdapterService;

    move-result-object v2

    iput-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    if-nez v2, :cond_0

    const-string v2, "WARNING: returning null NetworkAdapterManager instance."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v2, "begin socketDestroy!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mNetd:Landroid/net/INetworkAdapterService;

    invoke-interface {v2, v0}, Landroid/net/INetworkAdapterService;->destorySocketByUid(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error closing sockets after set Process Default Network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "clearDnsCache again!!!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Llibcore/net/event/NetworkEventDispatcher;->dispatchNetworkConfigurationChange()V

    :goto_1
    return-void
.end method

.method public blacklist processLinkTurboMonitor()V
    .locals 8

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "SmartLink2.0:LinkTurboMonitorImpl"

    if-nez v0, :cond_1

    const-string v4, "application is null!!!"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {v1}, Landroid/app/LinkTurboApp;->isLinkTurboApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v5

    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current process pid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "],uid["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]processName ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Landroid/app/LinkTurboApp;->isLinkTurboAppProcess(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is LinkTurboAppProcess = true"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v3

    if-eqz v3, :cond_2

    move-object v6, v3

    goto :goto_0

    :cond_2
    iget-object v6, p0, Landroid/net/LinkTurboMonitorImpl;->mContext:Landroid/content/Context;

    :goto_0
    const-string v7, "connectivity"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    iput-object v7, p0, Landroid/net/LinkTurboMonitorImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v7, v4, v5, v1}, Landroid/net/LinkTurboMonitorImpl;->startLinkTurboMonitor(Landroid/net/ConnectivityManager;IILjava/lang/String;)V

    goto :goto_1

    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is not LinkTurboAppProcess"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method public blacklist startLinkTurboMonitor(Landroid/net/ConnectivityManager;IILjava/lang/String;)V
    .locals 8

    new-instance v0, Ljava/lang/Thread;

    new-instance v7, Landroid/net/LinkTurboMonitorImpl$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Landroid/net/LinkTurboMonitorImpl$2;-><init>(Landroid/net/LinkTurboMonitorImpl;Landroid/net/ConnectivityManager;IILjava/lang/String;)V

    invoke-direct {v0, v7}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public blacklist stopLinkTurboMonitor()V
    .locals 5

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    if-eqz v0, :cond_0

    const-string v0, "SmartLink2.0:LinkTurboMonitorImpl"

    const-string v1, "*************** unregister mLinkTurboCallback************ "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/LinkTurboMonitorImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->bindProcessToNetwork(Landroid/net/Network;)Z

    move-result v0

    const-string v2, "SmartLink2.0:LinkTurboMonitorImpl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------------stopLinkTurboMonitor bind Process To null finished, result is ----------- "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    iget-object v4, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    invoke-virtual {v3, v4}, Landroid/net/LinkTurboManager;->unregisterNetworkCallback(Landroid/net/LinkTurboManager$LinkTurboCallback;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboCallback:Landroid/net/LinkTurboManager$LinkTurboCallback;

    iput-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iput-object v1, p0, Landroid/net/LinkTurboMonitorImpl;->mLinkTurboManager:Landroid/net/LinkTurboManager;

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method
