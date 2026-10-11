.class public Landroid/net/wifi/UniSelfRecovery;
.super Ljava/lang/Object;
.source "UniSelfRecovery.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;
    }
.end annotation


# static fields
.field private static final blacklist DEFAULT_UEVENT_DEV_PATH:Ljava/lang/String; = "devices/virtual/misc/wlan"

.field private static final blacklist UEVENT_DEV_PATH:Ljava/lang/String; = "persist.sys.wifi.reset.devpath"


# instance fields
.field private final blacklist EVENT:Ljava/lang/String;

.field private final blacklist FW_ERROR:Ljava/lang/String;

.field private final blacklist SOURCE:Ljava/lang/String;

.field private final blacklist TAG:Ljava/lang/String;

.field private final blacklist UNISOC_WL:Ljava/lang/String;

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/net/wifi/UniSelfRecovery;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/UniSelfRecovery;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Landroid/net/wifi/UniSelfRecovery;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/net/wifi/UniSelfRecovery;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "UniSelfRecovery"

    iput-object v0, p0, Landroid/net/wifi/UniSelfRecovery;->TAG:Ljava/lang/String;

    const-string v1, "EVENT"

    iput-object v1, p0, Landroid/net/wifi/UniSelfRecovery;->EVENT:Ljava/lang/String;

    const-string v1, "SOURCE"

    iput-object v1, p0, Landroid/net/wifi/UniSelfRecovery;->SOURCE:Ljava/lang/String;

    const-string v1, "FW_ERROR"

    iput-object v1, p0, Landroid/net/wifi/UniSelfRecovery;->FW_ERROR:Ljava/lang/String;

    const-string v1, "unisocwl"

    iput-object v1, p0, Landroid/net/wifi/UniSelfRecovery;->UNISOC_WL:Ljava/lang/String;

    iput-object p1, p0, Landroid/net/wifi/UniSelfRecovery;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/UniSelfRecovery;->mHandler:Landroid/os/Handler;

    const-string v1, "persist.sys.wifi.reset.devpath"

    const-string v2, "devices/virtual/misc/wlan"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DEVPATH=/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "check uevent devPath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;-><init>(Landroid/net/wifi/UniSelfRecovery;Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver-IA;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/UniSelfRecovery$WifiUEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
