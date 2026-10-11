.class Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;
.super Landroid/database/ContentObserver;
.source "UniWifiPocketModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UniWifiPocketModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PocketModeContentObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/UniWifiPocketModeManager;


# direct methods
.method public static synthetic blacklist $r8$lambda$sYZr8l5qJtc9b_lmTeZ8hOcahPo(Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;)V
    .locals 0

    invoke-direct {p0}, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;->lambda$onChange$0()V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/wifi/UniWifiPocketModeManager;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;->this$0:Landroid/net/wifi/UniWifiPocketModeManager;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method

.method private synthetic blacklist lambda$onChange$0()V
    .locals 4

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;->this$0:Landroid/net/wifi/UniWifiPocketModeManager;

    invoke-static {v0}, Landroid/net/wifi/UniWifiPocketModeManager;->-$$Nest$fgetmContentResolver(Landroid/net/wifi/UniWifiPocketModeManager;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "power_saving"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v3, v2

    :cond_0
    invoke-static {v0, v3}, Landroid/net/wifi/UniWifiPocketModeManager;->-$$Nest$mregisterSensorEventListener(Landroid/net/wifi/UniWifiPocketModeManager;Z)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;->this$0:Landroid/net/wifi/UniWifiPocketModeManager;

    invoke-static {v0}, Landroid/net/wifi/UniWifiPocketModeManager;->-$$Nest$fgetmHandler(Landroid/net/wifi/UniWifiPocketModeManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/UniWifiPocketModeManager$PocketModeContentObserver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
