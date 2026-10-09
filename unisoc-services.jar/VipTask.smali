.class public Lcom/unipnp/server/action/VipTask;
.super Ljava/lang/Object;
.source "VipTask.java"


# static fields
.field private static final DISABLE_SCENE:Ljava/lang/String; = "disableviptaskscene"

.field private static final ENABLE_SCENE:Ljava/lang/String; = "enableviptaskscene"

.field private static final IUnionPnpNativeSingleton:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lvendor/sprd/hardware/unipnp/IUnionPnP;",
            ">;"
        }
    .end annotation
.end field

.field private static final NATIVE_SERVICE:Ljava/lang/String; = "vendor.sprd.hardware.unipnp.IUnionPnP/default"

.field private static final TAG:Ljava/lang/String;

.field private static volatile sInstance:Lcom/unipnp/server/action/VipTask;


# instance fields
.field private volatile mEnableSceneFlag:Z


# direct methods
.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/unipnp/server/action/VipTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/unipnp/server/action/VipTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/action/VipTask;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/unipnp/server/action/VipTask$1;

    invoke-direct {v0}, Lcom/unipnp/server/action/VipTask$1;-><init>()V

    sput-object v0, Lcom/unipnp/server/action/VipTask;->IUnionPnpNativeSingleton:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unipnp/server/action/VipTask;->mEnableSceneFlag:Z

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/unipnp/server/action/VipTask;
    .locals 2

    const-class v0, Lcom/unipnp/server/action/VipTask;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unipnp/server/action/VipTask;->sInstance:Lcom/unipnp/server/action/VipTask;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unipnp/server/action/VipTask;

    invoke-direct {v1}, Lcom/unipnp/server/action/VipTask;-><init>()V

    sput-object v1, Lcom/unipnp/server/action/VipTask;->sInstance:Lcom/unipnp/server/action/VipTask;

    :cond_0
    sget-object v1, Lcom/unipnp/server/action/VipTask;->sInstance:Lcom/unipnp/server/action/VipTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getUnionPnPService()Lvendor/sprd/hardware/unipnp/IUnionPnP;
    .locals 1

    sget-object v0, Lcom/unipnp/server/action/VipTask;->IUnionPnpNativeSingleton:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/sprd/hardware/unipnp/IUnionPnP;

    return-object v0
.end method

.method private setVipTaskScene(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/unipnp/server/action/VipTask;->getUnionPnPService()Lvendor/sprd/hardware/unipnp/IUnionPnP;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lvendor/sprd/hardware/unipnp/IUnionPnP;->sceneChangedNotify(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v1

    sget-object v2, Lcom/unipnp/server/action/VipTask;->TAG:Ljava/lang/String;

    const-string v3, "Get remote set vip binnder scene failed!"

    invoke-static {v2, v3}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public setVipTask(Ljava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/unipnp/server/UnionLocalService;->getUnionAmsInternal()Lcom/unipnp/app/absclass/UnionAmsInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v2, Lcom/unipnp/server/action/VipTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Do vip task for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-eqz v2, :cond_1

    aget-object v3, v1, v4

    invoke-virtual {v0, v3, v2}, Lcom/unipnp/app/absclass/UnionAmsInternal;->setVipThread(Ljava/lang/String;Z)V

    const-string v3, "enableviptaskscene"

    invoke-direct {p0, v3}, Lcom/unipnp/server/action/VipTask;->setVipTaskScene(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/unipnp/server/action/VipTask;->mEnableSceneFlag:Z

    :cond_1
    return-void
.end method

.method public stopVipTaskBinderScene()V
    .locals 3

    sget-object v0, Lcom/unipnp/server/action/VipTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopVipTaskBinderScene mEnableSceneFlag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/unipnp/server/action/VipTask;->mEnableSceneFlag:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/unipnp/server/action/VipTask;->mEnableSceneFlag:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unipnp/server/action/VipTask;->mEnableSceneFlag:Z

    const-string v0, "disableviptaskscene"

    invoke-direct {p0, v0}, Lcom/unipnp/server/action/VipTask;->setVipTaskScene(Ljava/lang/String;)Z

    :cond_0
    return-void
.end method
