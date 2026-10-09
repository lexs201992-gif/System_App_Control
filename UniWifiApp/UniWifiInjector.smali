.class public Lcom/unisoc/wifi/UniWifiInjector;
.super Ljava/lang/Object;
.source "UniWifiInjector.java"


# static fields
.field static sWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mWifiApConfigStore:Lcom/unisoc/wifi/UniWifiApConfigStore;

.field private final mWifiCarrierNetworkManager:Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;

.field private final mWifiConfigStore:Lcom/unisoc/wifi/UniWifiConfigStore;

.field private final mWifiCountryCode:Lcom/unisoc/wifi/UniWifiCountryCode;

.field private final mWifiHandler:Landroid/os/Handler;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-object p0, Lcom/unisoc/wifi/UniWifiInjector;->sWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "UniWifiHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiInjector;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mContentResolver:Landroid/content/ContentResolver;

    new-instance v0, Lcom/unisoc/wifi/UniWifiConfigStore;

    invoke-direct {v0, p1, v1}, Lcom/unisoc/wifi/UniWifiConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiConfigStore:Lcom/unisoc/wifi/UniWifiConfigStore;

    new-instance v0, Lcom/unisoc/wifi/UniWifiApConfigStore;

    invoke-direct {v0, p1, v1}, Lcom/unisoc/wifi/UniWifiApConfigStore;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiApConfigStore:Lcom/unisoc/wifi/UniWifiApConfigStore;

    new-instance v0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;

    invoke-direct {v0, p1, v1}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiCarrierNetworkManager:Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;

    new-instance v0, Lcom/unisoc/wifi/UniWifiCountryCode;

    invoke-direct {v0, p1, v1}, Lcom/unisoc/wifi/UniWifiCountryCode;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiCountryCode:Lcom/unisoc/wifi/UniWifiCountryCode;

    return-void
.end method

.method public static getInstance()Lcom/unisoc/wifi/UniWifiInjector;
    .locals 1

    sget-object v0, Lcom/unisoc/wifi/UniWifiInjector;->sWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    return-object v0
.end method


# virtual methods
.method public getContentResolver()Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method public getUniWifiApConfigStore()Lcom/unisoc/wifi/UniWifiApConfigStore;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiApConfigStore:Lcom/unisoc/wifi/UniWifiApConfigStore;

    return-object p0
.end method

.method public getUniWifiCarrierNetworkManager()Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiCarrierNetworkManager:Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;

    return-object p0
.end method

.method public getUniWifiConfigStore()Lcom/unisoc/wifi/UniWifiConfigStore;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiConfigStore:Lcom/unisoc/wifi/UniWifiConfigStore;

    return-object p0
.end method

.method public getUniWifiCountryCode()Lcom/unisoc/wifi/UniWifiCountryCode;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiCountryCode:Lcom/unisoc/wifi/UniWifiCountryCode;

    return-object p0
.end method

.method public getUniWifiHandler()Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public declared-synchronized getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    :cond_0
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiManager:Landroid/net/wifi/WifiManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getWifiP2pManager()Landroid/net/wifi/p2p/WifiP2pManager;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    :cond_0
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isWifiOnlyDevice()Z
    .locals 3

    invoke-virtual {p0}, Lcom/unisoc/wifi/UniWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "ro.radio.noril"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "ro.boot.product.hardware.sku"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "wifionly"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public makeTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method
