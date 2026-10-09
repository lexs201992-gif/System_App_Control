.class public final Lcom/android/internal/net/utils/IkeDeviceConfigUtils;
.super Ljava/lang/Object;
.source "IkeDeviceConfigUtils.java"


# direct methods
.method public constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-static {p0, p1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p2

    :goto_0
    return-object v1
.end method

.method public static blacklist getDeviceConfigPropertyBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static blacklist getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    return p2

    :cond_0
    move v1, p2

    :goto_0
    return v1
.end method

.method public static blacklist getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;III)I
    .locals 1

    invoke-static {p0, p1, p4}, Lcom/android/internal/net/utils/IkeDeviceConfigUtils;->getDeviceConfigPropertyInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-lt v0, p2, :cond_1

    if-le v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    return p4
.end method
