.class public Lcom/unisoc/wifi/UniWifiCountryCode;
.super Ljava/lang/Object;
.source "UniWifiCountryCode.java"


# instance fields
.field private final POLICY_LOCALE_CHANGE:I

.field private final mContext:Landroid/content/Context;

.field private final mCountryCodeUpdatePolicy:I

.field private final mDefaultCountryCode:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public static synthetic $r8$lambda$2fgwrZtmN1A8UdgdatjUAIh38iM(Lcom/unisoc/wifi/UniWifiCountryCode;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiCountryCode;->lambda$handleLocaleChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->POLICY_LOCALE_CHANGE:I

    iput-object p1, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mHandler:Landroid/os/Handler;

    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/unisoc/wifi/UniWifiInjector;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Lcom/unisoc/wifi/UniWifiCountryCode;->getDeviceDefaultCountryCode()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object p2

    invoke-virtual {p2}, Lcom/unisoc/wifi/UniWifiInjector;->isWifiOnlyDevice()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/high16 p2, 0x7f030000

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    iput p1, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mCountryCodeUpdatePolicy:I

    return-void
.end method

.method private getDeviceDefaultCountryCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/wifi/UniWifiCountryCode;->isValid(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, p0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private isValid(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->chars()Ljava/util/stream/IntStream;

    move-result-object p0

    new-instance p1, Lcom/unisoc/wifi/UniWifiCountryCode$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/unisoc/wifi/UniWifiCountryCode$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {p0, p1}, Ljava/util/stream/IntStream;->allMatch(Ljava/util/function/IntPredicate;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$handleLocaleChanged$0()V
    .locals 3

    iget v0, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mCountryCodeUpdatePolicy:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mDefaultCountryCode:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "defaultCountryCode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniWifiCountryCode"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/unisoc/wifi/UniWifiCountryCode;->isValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p0, v0}, Landroid/net/wifi/WifiManager;->setDefaultCountryCode(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public handleLocaleChanged()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/wifi/UniWifiCountryCode;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/unisoc/wifi/UniWifiCountryCode$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/unisoc/wifi/UniWifiCountryCode$$ExternalSyntheticLambda1;-><init>(Lcom/unisoc/wifi/UniWifiCountryCode;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
