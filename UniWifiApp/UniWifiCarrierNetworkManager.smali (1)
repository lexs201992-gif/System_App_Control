.class public Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;
.super Ljava/lang/Object;
.source "UniWifiCarrierNetworkManager.java"


# instance fields
.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mUniWifiCarrierIds:[Ljava/lang/String;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$PyqDiZSWN4-94R7HvYxq2gFUEfo(Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->lambda$handleReceiveBootCompleted$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/unisoc/wifi/UniWifiInjector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string p2, "carrier_config"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f010000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mUniWifiCarrierIds:[Ljava/lang/String;

    return-void
.end method

.method private addWifiNetworkConfiguration(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWifiNetworkConfiguration SSID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWifiCarrierNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    invoke-direct {p0, p1}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    invoke-direct {p0, v0, p2}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->setSecurityForConfiguration(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiManager;->addNetwork(Landroid/net/wifi/WifiConfiguration;)I

    move-result p1

    if-gez p1, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed on add network : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiManager;->enableNetwork(IZ)Z

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed on enable network : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private addWifiNetworkSuggestion(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addWifiNetworkSuggestion SSID : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWifiCarrierNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsInitialAutojoinEnabled(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->setSecurityForSuggestion(Landroid/net/wifi/WifiNetworkSuggestion$Builder;[Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p1

    iget-object p2, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p2}, Landroid/net/wifi/WifiManager;->getNetworkSuggestions()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    filled-new-array {p1}, [Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->addNetworkSuggestions(Ljava/util/List;)I

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "Add suggestion network sussessfully"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string p0, "Failed to add suggestion network"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private createPasspointConfig([Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;
    .locals 4

    new-instance p0, Landroid/net/wifi/hotspot2/PasspointConfiguration;

    invoke-direct {p0}, Landroid/net/wifi/hotspot2/PasspointConfiguration;-><init>()V

    const/4 v0, 0x0

    aget-object v0, p1, v0

    const/4 v1, 0x1

    aget-object v1, p1, v1

    const/4 v2, 0x2

    aget-object v2, p1, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x3

    aget-object p1, p1, v3

    new-instance v3, Landroid/net/wifi/hotspot2/pps/HomeSp;

    invoke-direct {v3}, Landroid/net/wifi/hotspot2/pps/HomeSp;-><init>()V

    invoke-virtual {v3, v0}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFqdn(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Landroid/net/wifi/hotspot2/pps/HomeSp;->setFriendlyName(Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setHomeSp(Landroid/net/wifi/hotspot2/pps/HomeSp;)V

    new-instance v0, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;

    invoke-direct {v0}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;-><init>()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0, p2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setImsi(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {v0, v2}, Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;->setEapType(I)V

    new-instance p2, Landroid/net/wifi/hotspot2/pps/Credential;

    invoke-direct {p2}, Landroid/net/wifi/hotspot2/pps/Credential;-><init>()V

    invoke-virtual {p2, p1}, Landroid/net/wifi/hotspot2/pps/Credential;->setRealm(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/net/wifi/hotspot2/pps/Credential;->setSimCredential(Landroid/net/wifi/hotspot2/pps/Credential$SimCredential;)V

    invoke-virtual {p0, p2}, Landroid/net/wifi/hotspot2/PasspointConfiguration;->setCredential(Landroid/net/wifi/hotspot2/pps/Credential;)V

    return-object p0
.end method

.method private createQuotedSSID(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCarrierConfig(Landroid/content/Intent;)Landroid/util/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/os/PersistableBundle;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "android.telephony.extra.SLOT_INDEX"

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v3, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "android.telephony.extra.CARRIER_ID"

    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Carrier config change with  subId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " and phone Id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniWifiCarrierNetworkManager"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_1

    return-object v1

    :cond_1
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v4, v0

    if-lez v4, :cond_2

    const/4 v3, 0x0

    aget v3, v0, v3

    :cond_2
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Carrier config change with invalid subId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    if-ne v2, p1, :cond_4

    const-string p0, "Carrier config change with invalid carrier Id "

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_4
    invoke-direct {p0, p1}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->isCarrierIdMatch(I)Z

    move-result p1

    if-nez p1, :cond_5

    const-string p0, "Carrier config change, but carrierid not match, no need to preset network"

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_5
    new-instance p1, Landroid/util/Pair;

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private isCarrierIdMatch(I)Z
    .locals 6

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mUniWifiCarrierIds:[Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    move v2, v0

    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mUniWifiCarrierIds:[Ljava/lang/String;

    array-length v5, v4

    if-ge v2, v5, :cond_1

    aget-object v3, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_0

    :cond_1
    move v1, v3

    :cond_2
    :goto_1
    return v1
.end method

.method private synthetic lambda$handleReceiveBootCompleted$0()V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->loadUniWifiConfig()V

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->loadCarrierConfig()V

    return-void
.end method

.method private loadCarrierConfig()V
    .locals 4

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget v2, v0, v1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->isCarrierIdMatch(I)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    aget v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    aget v3, v0, v1

    invoke-direct {p0, v2, v3}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiNetworkCarrierConfig(Landroid/os/PersistableBundle;I)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method private loadUniWifiConfig()V
    .locals 3

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f010003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f010002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiNetwork([Ljava/lang/String;I)V

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiNetwork([Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method private preSetWifiNetwork([Ljava/lang/String;I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preSetWifiNetwork type : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniWifiCarrierNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_4

    aget-object v3, p1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v4, v3

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    aget-object v4, v3, v1

    const/4 v6, 0x1

    aget-object v3, v3, v6

    const-string v7, "-"

    invoke-virtual {v3, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    array-length v7, v3

    if-ge v7, v5, :cond_1

    goto :goto_1

    :cond_1
    if-ne p2, v6, :cond_2

    invoke-direct {p0, v4, v3}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->addWifiNetworkSuggestion(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p2, v5, :cond_3

    invoke-direct {p0, v4, v3}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->addWifiNetworkConfiguration(Ljava/lang/String;[Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private preSetWifiNetworkCarrierConfig(Landroid/os/PersistableBundle;I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "wifi.preset_wifi_network_config"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi.preset_wifi_network_suggestion"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "wifi.preset_wifi_passpoint_network"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    invoke-direct {p0, v0, v2}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiNetwork([Ljava/lang/String;I)V

    :cond_1
    if-eqz v1, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiNetwork([Ljava/lang/String;I)V

    :cond_2
    if-eqz p1, :cond_3

    invoke-direct {p0, p1, p2}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiPasspointNetwork([Ljava/lang/String;I)V

    :cond_3
    return-void
.end method

.method private preSetWifiPasspointNetwork([Ljava/lang/String;I)V
    .locals 9

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_8

    aget-object v3, p1, v2

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    array-length v4, v3

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unisoc/wifi/UniWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    invoke-virtual {v4, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCarrierId()I

    move-result v5

    invoke-virtual {v4, p2}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "WifiPasspoint subId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UniWifiCarrierNetworkManager"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_6

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v3, v4}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->createPasspointConfig([Ljava/lang/String;Ljava/lang/String;)Landroid/net/wifi/hotspot2/PasspointConfiguration;

    move-result-object v4

    new-instance v6, Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    invoke-direct {v6}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;-><init>()V

    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setCarrierId(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setSubscriptionId(I)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setIsInitialAutojoinEnabled(Z)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setPasspointConfig(Landroid/net/wifi/hotspot2/PasspointConfiguration;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-virtual {v6}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->build()Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WifiPasspoint suggestion =  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5}, Landroid/net/wifi/WifiManager;->getNetworkSuggestions()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-void

    :cond_4
    filled-new-array {v4}, [Landroid/net/wifi/WifiNetworkSuggestion;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiManager;->addNetworkSuggestions(Ljava/util/List;)I

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "Add suggestion network for passpoint sussessfully"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v3, v3, v1

    if-eqz v3, :cond_7

    iget-object v4, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v4, v3, v8}, Landroid/net/wifi/WifiManager;->allowAutojoinPasspoint(Ljava/lang/String;Z)V

    goto :goto_3

    :cond_5
    const-string v3, "Failed to add suggestion network"

    invoke-static {v7, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :goto_2
    const-string p0, "Get invalid imsi when SIM is ready!"

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method private setSecurityForConfiguration(Landroid/net/wifi/WifiConfiguration;[Ljava/lang/String;)V
    .locals 1

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "securityType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UniWifiCarrierNetworkManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiConfiguration;->setSecurityParams(I)V

    new-instance p0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object p0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p1, 0x1

    aget-object p1, p2, p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    :goto_0
    return-void
.end method

.method private setSecurityForSuggestion(Landroid/net/wifi/WifiNetworkSuggestion$Builder;[Ljava/lang/String;)V
    .locals 2

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "securityType = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UniWifiCarrierNetworkManager"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance p0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa3EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    goto :goto_0

    :cond_1
    new-instance p0, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {p0}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    aget-object p2, p2, v1

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiNetworkSuggestion$Builder;->setWpa2EnterpriseConfig(Landroid/net/wifi/WifiEnterpriseConfig;)Landroid/net/wifi/WifiNetworkSuggestion$Builder;

    :goto_0
    return-void
.end method


# virtual methods
.method public handleCarrierConfigChanged(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "handleCarrierConfigChanged"

    const-string v1, "UniWifiCarrierNetworkManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->getCarrierConfig(Landroid/content/Intent;)Landroid/util/Pair;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    check-cast v0, Landroid/os/PersistableBundle;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->preSetWifiNetworkCarrierConfig(Landroid/os/PersistableBundle;I)V

    return-void

    :cond_1
    :goto_0
    const-string p0, "can not get carrier config"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public handleReceiveBootCompleted()V
    .locals 2

    const-string v0, "UniWifiCarrierNetworkManager"

    const-string v1, "handleReceiveBootCompleted"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiCarrierNetworkManager$$ExternalSyntheticLambda0;-><init>(Lcom/unisoc/wifi/UniWifiCarrierNetworkManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
