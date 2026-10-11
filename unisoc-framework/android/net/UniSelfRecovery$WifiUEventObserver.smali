.class final Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;
.super Landroid/os/UEventObserver;
.source "UniSelfRecovery.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/UniSelfRecovery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WifiUEventObserver"
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/net/wifi/UniSelfRecovery;


# direct methods
.method public static synthetic blacklist $r8$lambda$8GonioN1_Lbc25SaTJa-A7hgZz0(Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;->lambda$onUEvent$0(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/net/wifi/UniSelfRecovery;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;->this$0:Landroid/net/wifi/UniSelfRecovery;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/wifi/UniSelfRecovery;Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;-><init>(Landroid/net/wifi/UniSelfRecovery;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUEvent$0(Landroid/os/UEventObserver$UEvent;)V
    .locals 6

    const-string v0, "EVENT"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SOURCE"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;->this$0:Landroid/net/wifi/UniSelfRecovery;

    invoke-static {v3}, Landroid/net/wifi/UniSelfRecovery;->-$$Nest$fgetmContext(Landroid/net/wifi/UniSelfRecovery;)Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/net/wifi/WifiManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    const-string v4, "FW_ERROR"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v1, :cond_0

    const-string v4, "unisocwl"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "UniSelfRecovery"

    const-string v5, "WCN FW Error, check Wifi/SoftAp state and restart"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->restartWifiSubsystem()V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    iget-object v0, p0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;->this$0:Landroid/net/wifi/UniSelfRecovery;

    invoke-static {v0}, Landroid/net/wifi/UniSelfRecovery;->-$$Nest$fgetmHandler(Landroid/net/wifi/UniSelfRecovery;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver$$ExternalSyntheticLambda0;-><init>(Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;Landroid/os/UEventObserver$UEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
