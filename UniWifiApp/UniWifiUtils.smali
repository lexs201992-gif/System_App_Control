.class public Lcom/unisoc/wifi/UniWifiUtils;
.super Ljava/lang/Object;
.source "UniWifiUtils.java"


# direct methods
.method public static getDefaultNameViaImei([Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/unisoc/wifi/UniWifiInjector;->getInstance()Lcom/unisoc/wifi/UniWifiInjector;

    move-result-object v1

    invoke-virtual {v1}, Lcom/unisoc/wifi/UniWifiInjector;->makeTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v0

    :cond_2
    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v2, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x2

    aget-object p0, p0, v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    move-object v2, p0

    :goto_0
    return-object v2

    :cond_4
    :goto_1
    return-object v0
.end method
