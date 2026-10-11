.class public Landroid/net/wifi/UniWifiPocketModeManager;
.super Ljava/lang/Object;
.source "UniWifiPocketModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;,
        Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;
    }
.end annotation


# static fields
.field private static final blacklist POWER_SAVING:Ljava/lang/String; = "power_saving"

.field private static final blacklist TAG:Ljava/lang/String; = "UniWifiPocketModeManager"

.field private static final blacklist TYPE_UNISOCHUB_POCKET_MODE:I = 0x10002


# instance fields
.field private blacklist mContentResolver:Landroid/content/ContentResolver;

.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mDefaultSensor:Landroid/hardware/Sensor;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mSensorEventListener:Landroid/hardware/SensorEventListener;

.field private blacklist mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContentResolver(Landroid/net/wifi/UniWifiPocketModeManager;)Landroid/content/ContentResolver;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/net/wifi/UniWifiPocketModeManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mhandlePocketModeChanged(Landroid/net/wifi/UniWifiPocketModeManager;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/UniWifiPocketModeManager;->handlePocketModeChanged(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mregisterSensorEventListener(Landroid/net/wifi/UniWifiPocketModeManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/UniWifiPocketModeManager;->registerSensorEventListener(Z)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/net/wifi/UniWifiPocketModeManager;->initWifiPocketMode()V

    return-void
.end method

.method private blacklist handlePocketModeChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v0, v0

    if-lez v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-int v0, v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePocketModeChanged() isInPocket = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UniWifiPocketModeManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContext:Landroid/content/Context;

    const-class v4, Landroid/net/wifi/WifiScanner;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiScanner;

    if-eqz v3, :cond_2

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiScanner;->setScanningEnabled(Z)V

    :cond_2
    return-void
.end method

.method private blacklist registerSensorEventListener(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mDefaultSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public blacklist initWifiPocketMode()V
    .locals 5

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030024

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "UniWifiPocketModeManager"

    const-string v1, "Pocket mode not support"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/SensorManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const v0, 0x10002

    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mDefaultSensor:Landroid/hardware/Sensor;

    new-instance v0, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;-><init>(Landroid/net/wifi/UniWifiPocketModeManager;Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener-IA;)V

    iput-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "power_saving"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;

    invoke-direct {v3, p0}, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;-><init>(Landroid/net/wifi/UniWifiPocketModeManager;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-direct {p0, v1}, Landroid/net/wifi/UniWifiPocketModeManager;->registerSensorEventListener(Z)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method
