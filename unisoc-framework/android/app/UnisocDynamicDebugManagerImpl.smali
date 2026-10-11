.class public Landroid/app/UnisocDynamicDebugManagerImpl;
.super Landroid/app/UnisocDynamicDebugManager;
.source "UnisocDynamicDebugManagerImpl.java"


# annotations
.annotation runtime Landroid/annotation/UnisocHiddenApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;
    }
.end annotation


# static fields
.field private static final blacklist INTERFACE_SINGLETON:Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;

.field private static final blacklist TAG:Ljava/lang/String; = "UnisocDynamicDebugManager"


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    new-instance v0, Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;-><init>(Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton-IA;)V

    sput-object v0, Landroid/app/UnisocDynamicDebugManagerImpl;->INTERFACE_SINGLETON:Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/UnisocDynamicDebugManager;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private static blacklist getDynamicDebugController()Landroid/app/IDynamicDebugController;
    .locals 1

    sget-object v0, Landroid/app/UnisocDynamicDebugManagerImpl;->INTERFACE_SINGLETON:Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;

    invoke-virtual {v0}, Landroid/app/UnisocDynamicDebugManagerImpl$DynamicDebugControllerSingleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/IDynamicDebugController;

    return-object v0
.end method


# virtual methods
.method public blacklist addDumpsysEventListener(Landroid/app/DumpsysEventListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/UnisocDynamicDebugManagerImpl;->getDynamicDebugController()Landroid/app/IDynamicDebugController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IDynamicDebugController;->addDumpsysEventListener(Landroid/app/IDumpsysEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist getDynamicDebugState(I)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/UnisocDynamicDebugManagerImpl;->getDynamicDebugController()Landroid/app/IDynamicDebugController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IDynamicDebugController;->getDynamicDebugState(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist removeDumpsysEventListener(Landroid/app/DumpsysEventListener;)V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/UnisocDynamicDebugManagerImpl;->getDynamicDebugController()Landroid/app/IDynamicDebugController;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IDynamicDebugController;->removeDumpsysEventListener(Landroid/app/IDumpsysEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist setDynamicDebugState(IZ)Z
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/app/UnisocDynamicDebugManagerImpl;->getDynamicDebugController()Landroid/app/IDynamicDebugController;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/app/IDynamicDebugController;->setDynamicDebugState(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
