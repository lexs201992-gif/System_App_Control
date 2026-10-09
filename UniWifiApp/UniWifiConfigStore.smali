.class public Lcom/unisoc/wifi/UniWifiConfigStore;
.super Ljava/lang/Object;
.source "UniWifiConfigStore.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultP2pDeviceName:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mP2pActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# direct methods
.method public static synthetic $r8$lambda$YEW5XJVv-o09Vzk76BUO9bK57c0(Lcom/unisoc/wifi/UniWifiConfigStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiConfigStore;->lambda$handleSimStateChanged$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$xKw0rlmka0G356LuVEvJFDKg8rs(Lcom/unisoc/wifi/UniWifiConfigStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiConfigStore;->lambda$handleWifiStateChanged$1()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmContentResolver(Lcom/unisoc/wifi/UniWifiConfigStore;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDefaultP2pDeviceName(Lcom/unisoc/wifi/UniWifiConfigStore;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/unisoc/wifi/UniWifiConfigStore$1;

    invoke-direct {v0, p0}, Lcom/unisoc/wifi/UniWifiConfigStore$1;-><init>(Lcom/unisoc/wifi/UniWifiConfigStore;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mP2pActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object p1

    invoke-virtual {p1}, Lcom/unisoc/wifi/UniWifiInjector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method private synthetic lambda$handleSimStateChanged$0()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiConfigStore;->setDefaultP2pDeviceName()V

    return-void
.end method

.method private synthetic lambda$handleWifiStateChanged$1()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiConfigStore;->setDefaultP2pDeviceName()V

    return-void
.end method

.method private setDefaultP2pDeviceName()V
    .locals 9

    const-string v0, "ro.boot.sku"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWifiConfigStore"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "skuNumber= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    const v0, 0x7f040001

    const/high16 v3, 0x7f040000

    const/16 v4, 0xc

    const/high16 v5, 0x7f020000

    const/4 v6, 0x6

    if-le v2, v6, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v7, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_1
    iget-object v7, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unisoc/wifi/UniWifiInjector;->getWifiP2pManager()Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v5

    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisoc/wifi/UniWifiInjector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    if-eqz v7, :cond_8

    if-nez v5, :cond_3

    goto :goto_2

    :cond_3
    iget-object v7, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContentResolver:Landroid/content/ContentResolver;

    const-string v8, "wifi_p2p_default_device_name"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string p0, "Custom p2p deviceName has been set"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const v1, 0x7f010001

    if-le v2, v6, :cond_5

    if-ge v2, v4, :cond_5

    iget-object v2, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/unisoc/wifi/UniWifiUtils;->getDefaultNameViaImei([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unisoc/wifi/UniWifiUtils;->getDefaultNameViaImei([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mContext:Landroid/content/Context;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mDefaultP2pDeviceName:Ljava/lang/String;

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mP2pActionListener:Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;

    invoke-virtual {v5, v0, v1, p0}, Landroid/net/wifi/p2p/WifiP2pManager;->setDeviceName(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Ljava/lang/String;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    :cond_7
    return-void

    :cond_8
    :goto_2
    const-string p0, "WifiManager or wifiP2pManager is null or wifi state not enabled, failed to set p2p deviceName"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public handleSimStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiConfigStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiConfigStore$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/wifi/UniWifiConfigStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleWifiStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiConfigStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiConfigStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiConfigStore$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/wifi/UniWifiConfigStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
