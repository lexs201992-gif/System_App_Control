.class public Landroid/system/virtualmachine/VirtualMachineManager;
.super Ljava/lang/Object;
.source "VirtualMachineManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineManager$Capability;
    }
.end annotation


# static fields
.field public static final whitelist CAPABILITY_NON_PROTECTED_VM:I = 0x2

.field public static final whitelist CAPABILITY_PROTECTED_VM:I = 0x1

.field private static final blacklist sCreateLock:Ljava/lang/Object;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mVmsByName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/system/virtualmachine/VirtualMachine;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist createLocked(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->create(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v0

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method private blacklist getLocked(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getVmByName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1}, Landroid/system/virtualmachine/VirtualMachine;->load(Landroid/content/Context;Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method private blacklist getVmByName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 4

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualmachine/VirtualMachine;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachine;->getStatus()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist create(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineManager;->createLocked(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist delete(Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getVmByName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v2, p1}, Landroid/system/virtualmachine/VirtualMachine;->deleteVmDirectory(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, p1}, Landroid/system/virtualmachine/VirtualMachine;->delete(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist get(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getLocked(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getCapabilities()I
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_protected_vm_supported()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_vm_supported()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    return v0
.end method

.method public whitelist getOrCreate(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->getLocked(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachineManager;->createLocked(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v2

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist importFromDescriptor(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineDescriptor;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    sget-object v0, Landroid/system/virtualmachine/VirtualMachineManager;->sCreateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->fromDescriptor(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineDescriptor;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v1

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineManager;->mVmsByName:Ljava/util/Map;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v2, p1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
