.class public Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;
.super Landroid/net/wifi/nl80211/UniWifiNl80211Manager;
.source "UniWifiNl80211ManagerImpl.java"


# static fields
.field private static final blacklist EID_WAPI:I = 0x44

.field private static final blacklist RSNE_VERSION:S = 0x1s

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist WAPI_AKM_CERT:I = 0x1721400

.field private static final blacklist WAPI_AKM_PSK:I = 0x2721400


# instance fields
.field private blacklist mPocketModeManager:Landroid/net/wifi/UniWifiPocketModeManager;

.field private blacklist mScanStartTimenanos:J

.field private blacklist mSelfRecovery:Landroid/net/wifi/UniSelfRecovery;

.field private blacklist mVerboseLoggingEnabled:Z

.field private final blacklist mWifiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$NVBfOREBYJAibXmgvCu1k3UolI4(Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->lambda$new$0(Landroid/content/Context;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/net/wifi/nl80211/UniWifiNl80211Manager;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mVerboseLoggingEnabled:Z

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UniWifiHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mWifiHandler:Landroid/os/Handler;

    new-instance v2, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private blacklist isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/net/wifi/WifiSsid;->getBytes()[B

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-byte v4, v0, v3

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private synthetic blacklist lambda$new$0(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/net/wifi/UniWifiPocketModeManager;

    iget-object v1, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mWifiHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/UniWifiPocketModeManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mPocketModeManager:Landroid/net/wifi/UniWifiPocketModeManager;

    new-instance v0, Landroid/net/wifi/UniSelfRecovery;

    iget-object v1, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mWifiHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, v1}, Landroid/net/wifi/UniSelfRecovery;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mSelfRecovery:Landroid/net/wifi/UniSelfRecovery;

    return-void
.end method


# virtual methods
.method public blacklist enableVerboseLogging(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mVerboseLoggingEnabled:Z

    return-void
.end method

.method public blacklist filterAndUpdateNativeScanResults(Ljava/util/List;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/net/wifi/nl80211/NativeScanResult;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, ", tsf : "

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/nl80211/NativeScanResult;

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v9

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    move-result-object v10

    if-nez v10, :cond_0

    sget-object v6, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid MAC (BSSID) for SSID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {v10}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v1, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/net/wifi/nl80211/NativeScanResult;

    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    move-result-object v13

    invoke-static {v13}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v13

    iget-boolean v14, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mVerboseLoggingEnabled:Z

    if-eqz v14, :cond_1

    sget-object v14, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ScanResult find Same Bssid "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", current valid scan timestamp : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v3

    move-object v15, v4

    iget-wide v3, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mScanStartTimenanos:J

    const-wide/16 v16, 0x3e8

    div-long v3, v3, v16

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " SSID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v18, v8

    invoke-virtual {v12}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v7

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v14, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    move-object/from16 v18, v3

    move-object v15, v4

    :goto_1
    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v3

    iget-wide v6, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mScanStartTimenanos:J

    const-wide/16 v16, 0x3e8

    div-long v6, v6, v16

    cmp-long v3, v3, v6

    if-ltz v3, :cond_2

    invoke-virtual {v12}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v3

    iget-wide v6, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mScanStartTimenanos:J

    div-long v6, v6, v16

    cmp-long v3, v3, v6

    if-ltz v3, :cond_2

    invoke-direct {v0, v13}, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {v0, v9}, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z

    move-result v3

    if-nez v3, :cond_3

    sget-object v3, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "multi "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", ssid : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ", select tsf : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v1, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    invoke-interface {v1, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    :goto_2
    goto :goto_3

    :cond_4
    move-object/from16 v18, v3

    move-object v15, v4

    invoke-interface {v1, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    invoke-direct {v0, v9}, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->isHiddenSsid(Landroid/net/wifi/WifiSsid;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2, v11, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v3

    iget-wide v6, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mScanStartTimenanos:J

    const-wide/16 v13, 0x3e8

    div-long/2addr v6, v13

    cmp-long v3, v3, v6

    if-gez v3, :cond_6

    move-object/from16 v3, v18

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    move-object/from16 v3, v18

    :goto_4
    move-object v4, v15

    goto/16 :goto_0

    :cond_7
    iget-boolean v4, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mVerboseLoggingEnabled:Z

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_8

    sget-object v4, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    const-string v5, "Hidden Result:"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/nl80211/NativeScanResult;

    sget-object v7, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_8
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_9

    sget-object v4, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Latest scanStartTime : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mScanStartTimenanos:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", so will filter Results:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/wifi/nl80211/NativeScanResult;

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getSsid()[B

    move-result-object v6

    invoke-static {v6}, Landroid/net/wifi/WifiSsid;->fromBytes([B)Landroid/net/wifi/WifiSsid;

    move-result-object v6

    sget-object v7, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " SSID :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v6}, Landroid/net/wifi/WifiSsid;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/wifi/WifiInfo;->sanitizeSsid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", BSSID :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getBssid()Landroid/net/MacAddress;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/MacAddress;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", tsf :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Landroid/net/wifi/nl80211/NativeScanResult;->getTsf()J

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_9
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_a

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v4

    :cond_a
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    return-object v4
.end method

.method public blacklist parseWapiSecurityTypeElement(II[B)Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;
    .locals 11

    const/16 v0, 0x44

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    invoke-static {p3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    sget-object v4, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WAPI Element wrong version : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "0x%X"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v3, v8

    invoke-static {v6, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_1

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    sget-object v8, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    goto :goto_1

    :sswitch_0
    const/16 v8, 0xd

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :sswitch_1
    const/16 v8, 0xe

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :goto_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unknown WAPI akm suite: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v7, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;

    const/4 v8, 0x4

    invoke-direct {v7, v8, v5, v6, v3}, Landroid/net/wifi/nl80211/WifiNl80211Manager$OemSecurityType;-><init>(ILjava/util/List;Ljava/util/List;I)V
    :try_end_0
    .catch Ljava/nio/BufferUnderflowException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :cond_2
    goto :goto_3

    :catch_0
    move-exception v2

    sget-object v3, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WAPI BufferUnderflowException is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_3
    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x1721400 -> :sswitch_1
        0x2721400 -> :sswitch_0
    .end sparse-switch
.end method

.method public blacklist updateScanStartTime(J)V
    .locals 0

    iput-wide p1, p0, Landroid/net/wifi/nl80211/UniWifiNl80211ManagerImpl;->mScanStartTimenanos:J

    return-void
.end method
