.class Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;
.super Ljava/lang/Object;
.source "UniWifiPocketModeManager.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UniWifiPocketModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WifiSensorEventListener"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/UniWifiPocketModeManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$BuHEOU0dSKTzhgKzMIDCZlbS-MM(Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;Landroid/hardware/SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;->lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/UniWifiPocketModeManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;->this$0:Landroid/net/wifi/UniWifiPocketModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/UniWifiPocketModeManager;Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;-><init>(Landroid/net/wifi/UniWifiPocketModeManager;)V

    return-void
.end method

.method private synthetic blacklist lambda$onSensorChanged$0(Landroid/hardware/SensorEvent;)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;->this$0:Landroid/net/wifi/UniWifiPocketModeManager;

    invoke-static {v0, p1}, Landroid/net/wifi/UniWifiPocketModeManager;->-$$Nest$mhandlePocketModeChanged(Landroid/net/wifi/UniWifiPocketModeManager;Landroid/hardware/SensorEvent;)V

    return-void
.end method


# virtual methods
.method public whitelist onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public whitelist onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;->this$0:Landroid/net/wifi/UniWifiPocketModeManager;

    invoke-static {v0}, Landroid/net/wifi/UniWifiPocketModeManager;->-$$Nest$fgetmHandler(Landroid/net/wifi/UniWifiPocketModeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/UniWifiPocketModeManager$WifiSensorEventListener;Landroid/hardware/SensorEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
