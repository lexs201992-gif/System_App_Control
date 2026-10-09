.class public Lcom/unisoc/wifi/UniWifiController;
.super Ljava/lang/Object;
.source "UniWifiController.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mWifiHandler:Landroid/os/Handler;

.field private final mWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;


# direct methods
.method public static synthetic $r8$lambda$qbZjmVO4O5ZOpRGh_hvbAkVDg0g(Lcom/unisoc/wifi/UniWifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiController;->lambda$handleBootCompleted$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmWifiInjector(Lcom/unisoc/wifi/UniWifiController;)Lcom/unisoc/wifi/UniWifiInjector;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleLocaleChanged(Lcom/unisoc/wifi/UniWifiController;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiController;->handleLocaleChanged()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiController;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/unisoc/wifi/UniWifiInjector;

    invoke-direct {v0, p1}, Lcom/unisoc/wifi/UniWifiInjector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    invoke-virtual {v0}, Lcom/unisoc/wifi/UniWifiInjector;->getUniWifiHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiController;->handleBootCompleted()V

    return-void
.end method

.method private handleBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiController$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/wifi/UniWifiController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleLocaleChanged()V
    .locals 0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    invoke-virtual {p0}, Lcom/unisoc/wifi/UniWifiInjector;->getUniWifiCountryCode()Lcom/unisoc/wifi/UniWifiCountryCode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unisoc/wifi/UniWifiCountryCode;->handleLocaleChanged()V

    return-void
.end method

.method private synthetic lambda$handleBootCompleted$0()V
    .locals 3

    const-string v0, "UniWifiController"

    const-string v1, "Handle boot completed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/wifi/UniWifiController;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/unisoc/wifi/UniWifiController$1;

    invoke-direct {v2, p0}, Lcom/unisoc/wifi/UniWifiController$1;-><init>(Lcom/unisoc/wifi/UniWifiController;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiController;->handleLocaleChanged()V

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    invoke-virtual {v0}, Lcom/unisoc/wifi/UniWifiInjector;->getUniWifiApConfigStore()Lcom/unisoc/wifi/UniWifiApConfigStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/unisoc/wifi/UniWifiApConfigStore;->handleReceiveBootCompleted()V

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiController;->mWifiInjector:Lcom/unisoc/wifi/UniWifiInjector;

    invoke-virtual {p0}, Lcom/unisoc/wifi/UniWifiInjector;->getUniWifiCarrierNetworkManager()Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->handleReceiveBootCompleted()V

    return-void
.end method
