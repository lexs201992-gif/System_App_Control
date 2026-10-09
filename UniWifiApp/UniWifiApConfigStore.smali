.class public Lcom/unisoc/wifi/UniWifiApConfigStore;
.super Ljava/lang/Object;
.source "UniWifiApConfigStore.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$CxQal-Ph9Wo8pt983tFWNCFg_oc(Lcom/unisoc/wifi/UniWifiApConfigStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiApConfigStore;->lambda$handleReceiveBootCompleted$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NOKhLrqcMdendeNFAwYhuX9WvXM(Lcom/unisoc/wifi/UniWifiApConfigStore;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiApConfigStore;->lambda$handleSimStateChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic lambda$handleReceiveBootCompleted$1()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiApConfigStore;->setDefaultTetherSsid()V

    return-void
.end method

.method private synthetic lambda$handleSimStateChanged$0()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiApConfigStore;->setDefaultTetherSsid()V

    return-void
.end method

.method private setDefaultTetherSsid()V
    .locals 11

    const-string v0, "ro.boot.sku"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWifiApConfigStore"

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
    const v0, 0x7f040003

    const v3, 0x7f040002

    const/16 v4, 0xc

    const v5, 0x7f020001

    const/4 v6, 0x6

    if-le v2, v6, :cond_1

    if-ge v2, v4, :cond_1

    iget-object v7, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    :cond_1
    iget-object v7, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-nez v5, :cond_2

    iget-object v5, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

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

    invoke-virtual {v5}, Lcom/unisoc/wifi/UniWifiInjector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v5

    if-nez v5, :cond_3

    const-string p0, "WifiManager is null, failed to set tether ssid."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unisoc/wifi/UniWifiInjector;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "wifi_tether_default_ssid"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_4

    const-string p0, "Custom tether ssid has been set."

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    iget-object v9, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f010004

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/unisoc/wifi/UniWifiUtils;->getDefaultNameViaImei([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-le v2, v6, :cond_5

    if-ge v2, v4, :cond_5

    if-nez v9, :cond_6

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    :cond_5
    if-nez v9, :cond_6

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_6
    :goto_1
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7

    new-instance p0, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    :try_start_1
    invoke-virtual {p0, v9}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    invoke-virtual {v5, p0}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    move-result p0

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Device set tetherDefaultSsid : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :catch_1
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Generated ssid was invalid: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return-void
.end method


# virtual methods
.method public handleReceiveBootCompleted()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiApConfigStore$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiApConfigStore$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/wifi/UniWifiApConfigStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public handleSimStateChanged()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiApConfigStore;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiApConfigStore$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiApConfigStore$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/wifi/UniWifiApConfigStore;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
