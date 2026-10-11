.class Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;
.super Landroid/util/Singleton;
.source "UnisocDynamicDebugManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/UnisocDynamicDebugManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DynamicDebugControllerSingleton"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/IDynamicDebugController;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton-IA;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/IDynamicDebugController;
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/app/IActivityManager;->getDynamicDebugController()Landroid/app/IDynamicDebugController;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;->create()Landroid/app/IDynamicDebugController;

    move-result-object v0

    return-object v0
.end method
