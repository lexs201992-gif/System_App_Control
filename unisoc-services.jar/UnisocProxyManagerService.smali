.class public Lcom/unipnp/server/proxy/UnisocProxyManagerService;
.super Landroid/app/unipnp/IUnisocProxy$Stub;
.source "UnisocProxyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;,
        Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;,
        Lcom/unipnp/server/proxy/UnisocProxyManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final CONFIG_PROXY_BR_ACTION_LIST_DEFAULT:Ljava/lang/String; = "proxy_broadcast_action_list"

.field private static final CONFIG_PROXY_BR_ALLOWLIST:Ljava/lang/String; = "proxy_broadcast_allowlist"

.field private static final CONFIG_PROXY_BR_MAX_COUNT:Ljava/lang/String; = "config_max_proxy_br_count"

.field private static final CONFIG_PROXY_ENABLE:Ljava/lang/String; = "config_enable_proxymanagerservice"

.field private static final CONFIG_PROXY_NAME:Ljava/lang/String; = "ProxyConfigFeature"

.field private static final CONFIG_PROXY_SERVICE_ALLOWLIST:Ljava/lang/String; = "proxy_service_allowlist"

.field private static final CONFIG_PROXY_WAKELOCK_ALLOWLIST:Ljava/lang/String; = "proxy_wakelock_allowlist"

.field private static LOG_DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final PERMISSION_PROXY_MANANGER:Ljava/lang/String; = "unisoc.permission.PROXY_MANANGER"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsExistFile:Z

.field private final mLock:Ljava/lang/Object;

.field private volatile mProxyBrRecordList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mProxyConfig:Landroid/os/PersistableBundle;

.field private volatile mProxyServiceRecordList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mProxySwitchMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mProxyWakeLockRecordList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRestoreWakeList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$vrfik5vcVfxmbTaX7mhuJdem1jE(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->lambda$notifyFeatureXmllLoaded$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$zzzJRqsy2iKs_CItOCXZ2dk4auI(Lcom/unipnp/server/proxy/UnisocProxyManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyFeatureXmllLoaded(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->notifyFeatureXmllLoaded(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetLOG_TAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.unipnp.debug.background_agent"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    const-class v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/unipnp/IUnisocProxy$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    iput-object p1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;

    invoke-direct {v0, p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$LocalService;-><init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;)V

    const-class v1, Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    const-class v1, Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/unipnp/server/proxy/UnisocProxyManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "create UnisocProxyManagerService end."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private clearProxyInteranl(IIILjava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_0

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2, p3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->restoreProxyWakLock(II)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_1

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p4, :cond_2

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private enforceProxyPermission(I)V
    .locals 4

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.PROXY_MANANGER"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private findWakeLockIndexLocked(Landroid/os/IBinder;)Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;
    .locals 3

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;

    invoke-static {v2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmToken(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private initConfigProxyList()V
    .locals 1

    invoke-direct {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->initProxyConfig()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    return-void
.end method

.method private initProxyConfig()V
    .locals 4

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/String;

    const-string v3, "proxy_broadcast_action_list"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_broadcast_allowlist"

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_service_allowlist"

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_wakelock_allowlist"

    new-array v3, v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "config_max_proxy_br_count"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 2

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->initConfigProxyList()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private synthetic lambda$notifyFeatureXmllLoaded$1(Z)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->loadXmlProxyConfig()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    :goto_0
    return-void
.end method

.method private loadXmlProxyConfig()V
    .locals 10

    const-class v0, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "ProxyConfigFeature"

    invoke-virtual {v0, v1}, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;->getFeatureInfo(Ljava/lang/String;)Lcom/unipnp/app/info/FeatureInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-boolean v2, v1, Lcom/unipnp/app/info/FeatureInfo;->enabled:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v3, "config_enable_proxymanagerservice"

    iget-boolean v4, v1, Lcom/unipnp/app/info/FeatureInfo;->enabled:Z

    invoke-virtual {v2, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "proxy_broadcast_action_list"

    invoke-virtual {v1, v2}, Lcom/unipnp/app/info/FeatureInfo;->getPolicy(Ljava/lang/String;)Lcom/unipnp/app/info/RuleNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/unipnp/app/info/RuleNode;->getList()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setProxyConfig(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "config_max_proxy_br_count"

    invoke-virtual {v1, v2}, Lcom/unipnp/app/info/FeatureInfo;->getPolicy(Ljava/lang/String;)Lcom/unipnp/app/info/RuleNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/unipnp/app/info/RuleNode;->getList()Ljava/util/List;

    move-result-object v4

    invoke-direct {p0, v2, v4}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setProxyConfig(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "proxy_broadcast_allowlist"

    invoke-virtual {v1, v2}, Lcom/unipnp/app/info/FeatureInfo;->getPolicy(Ljava/lang/String;)Lcom/unipnp/app/info/RuleNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/unipnp/app/info/RuleNode;->getList()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v2, v5}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setProxyConfig(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "proxy_service_allowlist"

    invoke-virtual {v1, v2}, Lcom/unipnp/app/info/FeatureInfo;->getPolicy(Ljava/lang/String;)Lcom/unipnp/app/info/RuleNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/unipnp/app/info/RuleNode;->getList()Ljava/util/List;

    move-result-object v6

    invoke-direct {p0, v2, v6}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setProxyConfig(Ljava/lang/String;Ljava/util/List;)V

    const-string v2, "proxy_wakelock_allowlist"

    invoke-virtual {v1, v2}, Lcom/unipnp/app/info/FeatureInfo;->getPolicy(Ljava/lang/String;)Lcom/unipnp/app/info/RuleNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unipnp/app/info/RuleNode;->getList()Ljava/util/List;

    move-result-object v7

    invoke-direct {p0, v2, v7}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->setProxyConfig(Ljava/lang/String;Ljava/util/List;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    sget-object v2, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadXmlProxyConfig mProxyConfig= "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private notifyFeatureXmllLoaded(Z)V
    .locals 2

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private restoreBroadcast(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v1, "restoreBroadcast !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getUnionAmsInternal()Lcom/unipnp/app/absclass/UnionAmsInternal;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0, p1}, Lcom/unipnp/app/absclass/UnionAmsInternal;->restoreBroadcast(Ljava/lang/String;)V

    return-void
.end method

.method private restoreProxyWakLock(II)V
    .locals 13

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UnisocPowerManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmPid(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmToken(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmFlags(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)I

    move-result v3

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmTag(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmPackageName(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmWorkSource(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/WorkSource;

    move-result-object v6

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmHistoryTag(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmDisplayId(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)I

    move-result v8

    invoke-static {v12}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;->-$$Nest$fgetmCallback(Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;)Landroid/os/IWakeLockCallback;

    move-result-object v11

    move-object v1, v0

    move v9, p1

    move v10, p2

    invoke-virtual/range {v1 .. v11}, Landroid/os/UnisocPowerManagerInternal;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IIILandroid/os/IWakeLockCallback;)V

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "restoreProxyWakLock  targetPid ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private setProxyConfig(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const-string v0, "config_max_proxy_br_count"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const/4 v1, 0x0

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    invoke-interface {p2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Landroid/os/PersistableBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public clearAllProxy(I)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearProcessProxy(Ljava/lang/String;II)V
    .locals 3

    invoke-static {p2}, Landroid/os/Process;->getUidForPid(I)I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    if-gez p3, :cond_0

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v0, p2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->restoreProxyWakLock(II)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, v0, p2, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->clearProxyInteranl(IIILjava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public clearProxy(I)Z
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->clearProxyInteranl(IIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method dumpInfo(Ljava/io/PrintWriter;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Proxy main switch :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "config_enable_proxymanagerservice"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "Broadcast proxy info as bellow:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Max Br count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->getMaxProxyBrCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "    ,Br main switch:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\nBr proxy allowList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_broadcast_allowlist"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "default Proxy BR action :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_broadcast_action_list"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    aget-object v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "the process Proxy BR list :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    const-string v1, "Service proxy info as bellow:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Service proxy allowList:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_service_allowlist"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    move v4, v3

    :goto_3
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_3
    const-string v1, "the process Proxy Service list :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    const-string v1, "Wakelock proxy info as bellow:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "Wakelock proxy allowList:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_wakelock_allowlist"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_5

    aget-object v4, v1, v3

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_5
    const-string v1, "the process Proxy Wakelock list :"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    invoke-virtual {p1}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method public getMaxProxyBrCount()I
    .locals 3

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    iget-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "config_enable_proxymanagerservice"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "config_max_proxy_br_count"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public isBroardcastProxy(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 9

    iget-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "config_enable_proxymanagerservice"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    if-nez p1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_broadcast_allowlist"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    return v3

    :cond_2
    iget-object v4, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v4, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    iget-object v5, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v6, "proxy_broadcast_action_list"

    invoke-virtual {v5, v6}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    if-nez v4, :cond_4

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The default broadcast has been proxy!! action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v3

    :cond_4
    if-eqz v4, :cond_6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_5

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "The set broadcast has been proxy!! action="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v3

    :cond_6
    return v1

    :cond_7
    :goto_0
    return v1
.end method

.method public isServiceProxy(Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "config_enable_proxymanagerservice"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_service_allowlist"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v2, :cond_1

    sget-object v2, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v3, "service in allowlist,can\'t proxy !"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget-object v2, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_3

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The Service has been proxy!! service ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1
.end method

.method public isWakelockProxy(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IIILandroid/os/IWakeLockCallback;)Z
    .locals 16

    move-object/from16 v11, p0

    move-object/from16 v12, p4

    iget-boolean v0, v11, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget-object v0, v11, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "config_enable_proxymanagerservice"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    move/from16 v3, p8

    move/from16 v2, p9

    goto/16 :goto_1

    :cond_0
    iget-object v0, v11, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v2, "proxy_wakelock_allowlist"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v13

    invoke-interface {v13, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "acquire wakelock in allowlist,can\'t proxy !"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget-object v0, v11, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v14, v11, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    new-instance v15, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    invoke-direct/range {v0 .. v10}, Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;-><init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;IILandroid/os/IWakeLockCallback;)V

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The wakelock has been proxy in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",targetPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, p9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ",targetUid="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p8

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    move/from16 v3, p8

    move/from16 v2, p9

    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_4
    move/from16 v3, p8

    move/from16 v2, p9

    return v1

    :cond_5
    move/from16 v3, p8

    move/from16 v2, p9

    :goto_1
    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;-><init>(Lcom/unipnp/server/proxy/UnisocProxyManagerService;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/unipnp/server/proxy/UnisocProxyManagerShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public releaseProxyWakeLock(Landroid/os/IBinder;I)V
    .locals 4

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->findWakeLockIndexLocked(Landroid/os/IBinder;)Lcom/unipnp/server/proxy/UnisocProxyManagerService$ProxyWakelockRecord;

    move-result-object v0

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "releaseProxyWakeLock wakelock ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mRestoreWakeList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public setBroadcastProxy(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    iget-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "config_enable_proxymanagerservice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setBroadcastProxy targetPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "proxy_broadcast_allowlist"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "receiver in allowlist,can\'t proxy !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxySwitchMap:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p3, :cond_4

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->restoreBroadcast(Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    if-eqz p3, :cond_6

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyBrRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->restoreBroadcast(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_7
    :goto_1
    return-void
.end method

.method public setServiceProxy(Ljava/lang/String;IZ)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    iget-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "config_enable_proxymanagerservice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    sget-boolean v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The set service has been proxy! targetPkg ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",targetPid ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",enable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "proxy_service_allowlist"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_2

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "service in allowlist,can\'t proxy !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    if-eqz p3, :cond_4

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyServiceRecordList:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public setWakelockProxy(Ljava/lang/String;IIZ)V
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->enforceProxyPermission(I)V

    iget-boolean v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mIsExistFile:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "config_enable_proxymanagerservice"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyConfig:Landroid/os/PersistableBundle;

    const-string v1, "proxy_wakelock_allowlist"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_DEBUG:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->LOG_TAG:Ljava/lang/String;

    const-string v2, "acquire wakelock in allowlist,can\'t proxy !"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    if-eqz p4, :cond_3

    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->mProxyWakeLockRecordList:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3, p2}, Lcom/unipnp/server/proxy/UnisocProxyManagerService;->restoreProxyWakLock(II)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
