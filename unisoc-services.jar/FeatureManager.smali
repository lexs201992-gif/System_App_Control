.class public Lcom/unipnp/server/FeatureManager;
.super Ljava/lang/Object;
.source "FeatureManager.java"


# static fields
.field private static final DEBUG:Ljava/lang/Boolean;

.field public static final EVENT_CONFIG_UPDATE:Ljava/lang/String; = "config_update"

.field private static final TAG:Ljava/lang/String;

.field private static isXmlLoading:Z


# instance fields
.field private final ALL_FEATURES_INFO:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unipnp/app/info/FeatureInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mFeaturesInited:Z

.field private final mRegisteredFeatures:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/unipnp/app/AbsBaseFeature;",
            ">;"
        }
    .end annotation
.end field

.field private final mUms:Lcom/unipnp/server/UnionManagerService;


# direct methods
.method static bridge synthetic -$$Nest$fgetALL_FEATURES_INFO(Lcom/unipnp/server/FeatureManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFeaturesInited(Lcom/unipnp/server/FeatureManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unipnp/server/FeatureManager;->mFeaturesInited:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRegisteredFeatures(Lcom/unipnp/server/FeatureManager;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUms(Lcom/unipnp/server/FeatureManager;)Lcom/unipnp/server/UnionManagerService;
    .locals 0

    iget-object p0, p0, Lcom/unipnp/server/FeatureManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmFeaturesInited(Lcom/unipnp/server/FeatureManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unipnp/server/FeatureManager;->mFeaturesInited:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetDEBUG()Ljava/lang/Boolean;
    .locals 1

    sget-object v0, Lcom/unipnp/server/FeatureManager;->DEBUG:Ljava/lang/Boolean;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/unipnp/server/FeatureManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    const-string v0, "persist.unipnp.debug.fm"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/FeatureManager;->DEBUG:Ljava/lang/Boolean;

    sput-boolean v1, Lcom/unipnp/server/FeatureManager;->isXmlLoading:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/unipnp/server/UnionManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    iput-object p1, p0, Lcom/unipnp/server/FeatureManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/unipnp/server/FeatureManager;->mUms:Lcom/unipnp/server/UnionManagerService;

    return-void
.end method

.method private createFeature(Lcom/unipnp/app/info/FeatureInfo;)Lcom/unipnp/app/AbsBaseFeature;
    .locals 8

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    sget-object v1, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createFeature name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/unipnp/app/info/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " classname : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/unipnp/app/info/FeatureInfo;->classname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dexpath : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/unipnp/app/info/FeatureInfo;->dexpath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    iget-object v3, p1, Lcom/unipnp/app/info/FeatureInfo;->dexpath:Ljava/lang/String;

    const-class v4, Lcom/unipnp/server/FeatureManager;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    iget-object v3, p1, Lcom/unipnp/app/info/FeatureInfo;->classname:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    const/4 v3, 0x2

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Landroid/content/Context;

    aput-object v6, v5, v4

    const-class v6, Lcom/unipnp/app/info/FeatureInfo;

    const/4 v7, 0x1

    aput-object v6, v5, v7

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v5

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/unipnp/server/FeatureManager;->mContext:Landroid/content/Context;

    aput-object v6, v3, v4

    aput-object p1, v3, v7

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unipnp/app/AbsBaseFeature;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    const-string v4, "create Feature error : "

    invoke-static {v3, v4, v2}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private startPolicyLoad()V
    .locals 3

    sget-boolean v0, Lcom/unipnp/server/FeatureManager;->isXmlLoading:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unipnp/server/FeatureManager;->isXmlLoading:Z

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    sget-object v0, Lcom/unipnp/app/util/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/unipnp/server/util/FeatureXmlLoader;

    iget-object v2, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-direct {v1, p0, v2}, Lcom/unipnp/server/util/FeatureXmlLoader;-><init>(Lcom/unipnp/server/FeatureManager;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public disableFeature(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/AbsBaseFeature;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/unipnp/app/AbsBaseFeature;->disable()Z

    iget-object v1, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unipnp/app/info/FeatureInfo;

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/unipnp/app/info/FeatureInfo;->enabled:Z

    iget-object v2, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public dispatchEvent(Landroid/app/unipnp/parcel/UniEventData;)V
    .locals 12

    iget-boolean v0, p0, Lcom/unipnp/server/FeatureManager;->mFeaturesInited:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Features not Inited :  dispatchEvent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p1}, Landroid/app/unipnp/parcel/UniEventData;->getEventName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "config_update"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/unipnp/server/FeatureManager;->startPolicyLoad()V

    goto :goto_1

    :cond_1
    iget-boolean v1, p0, Lcom/unipnp/server/FeatureManager;->mFeaturesInited:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unipnp/app/AbsBaseFeature;

    invoke-virtual {v2}, Lcom/unipnp/app/AbsBaseFeature;->getFeatureInfo()Lcom/unipnp/app/info/FeatureInfo;

    move-result-object v9

    iget-object v3, v9, Lcom/unipnp/app/info/FeatureInfo;->events:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sget-object v10, Lcom/unipnp/app/util/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v11, Lcom/unipnp/server/FeatureManager$2;

    move-object v3, v11

    move-object v4, p0

    move-object v5, v9

    move-object v6, v2

    move-object v7, p1

    move-object v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/unipnp/server/FeatureManager$2;-><init>(Lcom/unipnp/server/FeatureManager;Lcom/unipnp/app/info/FeatureInfo;Lcom/unipnp/app/AbsBaseFeature;Landroid/app/unipnp/parcel/UniEventData;Lcom/unipnp/app/info/FeatureInfo;)V

    invoke-virtual {v10, v11}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2
    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    array-length v0, p3

    if-lez v0, :cond_5

    const/4 v0, 0x0

    aget-object v1, p3, v0

    const-string v2, "xml"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/unipnp/app/info/FeatureInfo;

    invoke-virtual {v3}, Lcom/unipnp/app/info/FeatureInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    const-string v2, "xml-reload"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/unipnp/server/FeatureManager;->forceReloadPolicy()V

    const-string v0, "force Reload Policy and init Features."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unipnp/app/AbsBaseFeature;

    if-eqz v2, :cond_4

    array-length v3, p3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    array-length v3, p3

    invoke-static {p3, v0, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Dump Feature : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with args : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v2, p1, p2, v0}, Lcom/unipnp/app/AbsBaseFeature;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-f feature_name : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " no exist."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_5
    const-string v0, "-f need argument."

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public enableFeature(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/AbsBaseFeature;

    if-eqz v0, :cond_0

    sget-object v1, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Feature : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is already enabled."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/unipnp/app/info/FeatureInfo;

    if-eqz v1, :cond_1

    invoke-direct {p0, v1}, Lcom/unipnp/server/FeatureManager;->createFeature(Lcom/unipnp/app/info/FeatureInfo;)Lcom/unipnp/app/AbsBaseFeature;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/unipnp/app/info/FeatureInfo;->enabled:Z

    iget-object v2, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method public varargs exec(ILjava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/unipnp/server/FeatureManager;->getFeatureById(I)Lcom/unipnp/app/AbsBaseFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/unipnp/app/AbsBaseFeature;->execFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/unipnp/server/FeatureManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec featureId : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fun : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error, Feature no exist or disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public varargs exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/unipnp/server/FeatureManager;->getFeatureByName(Ljava/lang/String;)Lcom/unipnp/app/AbsBaseFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/unipnp/app/AbsBaseFeature;->execFunction(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/unipnp/server/FeatureManager;->DEBUG:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/unipnp/server/FeatureManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exec featureName : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fun : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error, Feature no exist or disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public forceReloadPolicy()V
    .locals 0

    invoke-direct {p0}, Lcom/unipnp/server/FeatureManager;->startPolicyLoad()V

    return-void
.end method

.method public getFeatureById(I)Lcom/unipnp/app/AbsBaseFeature;
    .locals 4

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/unipnp/app/AbsBaseFeature;

    invoke-virtual {v2}, Lcom/unipnp/app/AbsBaseFeature;->getFeatureInfo()Lcom/unipnp/app/info/FeatureInfo;

    move-result-object v2

    iget v3, v2, Lcom/unipnp/app/info/FeatureInfo;->id:I

    if-ne v3, p1, :cond_0

    iget-object v0, v2, Lcom/unipnp/app/info/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/unipnp/server/FeatureManager;->getFeatureByName(Ljava/lang/String;)Lcom/unipnp/app/AbsBaseFeature;

    move-result-object v0

    return-object v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeatureByName(Ljava/lang/String;)Lcom/unipnp/app/AbsBaseFeature;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->mRegisteredFeatures:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/AbsBaseFeature;

    return-object v0
.end method

.method public getFeatureInfo(Ljava/lang/String;)Lcom/unipnp/app/info/FeatureInfo;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/FeatureManager;->ALL_FEATURES_INFO:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/info/FeatureInfo;

    return-object v0
.end method

.method public onSystemReady()V
    .locals 0

    invoke-direct {p0}, Lcom/unipnp/server/FeatureManager;->startPolicyLoad()V

    return-void
.end method

.method public onXmlLoaded()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unipnp/server/FeatureManager;->isXmlLoading:Z

    sget-object v0, Lcom/unipnp/app/util/ThreadPool;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/unipnp/server/FeatureManager$1;

    invoke-direct {v1, p0}, Lcom/unipnp/server/FeatureManager$1;-><init>(Lcom/unipnp/server/FeatureManager;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
