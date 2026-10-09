.class public Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;
.super Landroid/app/Service;
.source "go/retraceme 2b895002459ef04c5ca21485e857614f26f7eb5e0720e46b34a28e45d63a00ac"


# static fields
.field public static final IS_DEBUG_BUILD:Z


# instance fields
.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mIsolatedStorageServiceStub:Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$IsolatedStorageServiceStub;

.field public final mLock:Ljava/lang/Object;

.field public mNumConsecutivePayloadChangedErrors:I

.field public mPayloadReadyFuture:Ljava/util/concurrent/CompletableFuture;

.field public mVm:Landroid/system/virtualmachine/VirtualMachine;

.field public mVmIsolatedStorageService:Lcom/android/isolated_storage_service/IIsolatedStorageService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->IS_DEBUG_BUILD:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$IsolatedStorageServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$IsolatedStorageServiceStub;-><init>(Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;)V

    iput-object v0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mIsolatedStorageServiceStub:Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$IsolatedStorageServiceStub;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mNumConsecutivePayloadChangedErrors:I

    return-void
.end method

.method public static deleteVmByName(Landroid/system/virtualmachine/VirtualMachineManager;Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Landroid/system/virtualmachine/VirtualMachineManager;->delete(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Failed to delete VM "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "IsolatedStorageService"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final deleteCurrentVmIfExists()Z
    .locals 3

    invoke-virtual {p0}, Landroid/app/Service;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Landroid/system/virtualmachine/VirtualMachineManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/system/virtualmachine/VirtualMachineManager;

    const-string v0, "IsolatedStorageService"

    if-eqz p0, :cond_1

    const-string v1, "isolated_storage_service_vm"

    invoke-virtual {p0, v1}, Landroid/system/virtualmachine/VirtualMachineManager;->get(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v2

    if-nez v2, :cond_0

    const-string p0, "VM isolated_storage_service_vm doesn\'t exist"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-static {p0, v1}, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->deleteVmByName(Landroid/system/virtualmachine/VirtualMachineManager;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    const-string p0, "Unable to get VirtualMachineManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final deleteCurrentVmLocked(Ljava/lang/String;)V
    .locals 5

    const-string v0, "Deleting current VM..."

    const-string v1, "IsolatedStorageService"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/app/Service;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    const-class v2, Landroid/system/virtualmachine/VirtualMachineManager;

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualmachine/VirtualMachineManager;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Unable to get VirtualMachineManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_0
    const-string v3, "isolated_storage_service_vm"

    invoke-static {v0, v3}, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->deleteVmByName(Landroid/system/virtualmachine/VirtualMachineManager;Ljava/lang/String;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v3, 0x3e8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    invoke-static {v1, p1, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    invoke-static {v1, p1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iput-object v4, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    iput v2, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mNumConsecutivePayloadChangedErrors:I

    return-void

    :cond_2
    const-string p0, "Failed to delete current VM"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mIsolatedStorageServiceStub:Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$IsolatedStorageServiceStub;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p0
.end method

.method public final onCreate()V
    .locals 1

    const-string p0, "IsolatedStorageService"

    const-string v0, "onCreate."

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "onStartCommand. flags = "

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", startId = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "IsolatedStorageService"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public final onTrimMemory(I)V
    .locals 4

    iget-object p1, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVmIsolatedStorageService:Lcom/android/isolated_storage_service/IIsolatedStorageService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz p0, :cond_0

    :try_start_1
    check-cast p0, Lcom/android/isolated_storage_service/IIsolatedStorageService$Stub$Proxy;

    iget-object v0, p0, Lcom/android/isolated_storage_service/IIsolatedStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v1, "com.android.isolated_storage_service.IIsolatedStorageService"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/isolated_storage_service/IIsolatedStorageService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    invoke-interface {p0, v3, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catch_0
    move-exception p0

    :try_start_4
    const-string v0, "IsolatedStorageService"

    const-string v1, "Unable to trim memory"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public final restartVmLocked(Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;Z)V
    .locals 10

    invoke-virtual {p0}, Landroid/app/Service;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->IS_DEBUG_BUILD:Z

    const-string v2, "ro.enable.nonprotected_appsearch_vm"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const/4 v4, 0x1

    xor-int/2addr v2, v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Creating VM config with: MODEL="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", protected VM="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "IsolatedStorageService"

    invoke-static {v6, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    invoke-direct {v5, v0}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;-><init>(Landroid/content/Context;)V

    const-string v7, "libicing_anywhere.so"

    invoke-virtual {v5, v7}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setPayloadBinaryName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setProtectedVm(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setDebugLevel(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v1

    const-wide/32 v7, 0x77359400

    invoke-virtual {v1, v7, v8}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setEncryptedStorageBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v1

    iget-wide v7, p1, Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;->pVmMemoryBytes:J

    invoke-virtual {v1, v7, v8}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setMemoryBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setCpuTopology(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setShouldUseHugepages(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    if-nez v2, :cond_7

    const-string v2, "isolated_storage_service_vm"

    const-class v3, Landroid/system/virtualmachine/VirtualMachineManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualmachine/VirtualMachineManager;

    const/4 v3, 0x0

    if-nez v0, :cond_0

    const-string v0, "Unable to get VirtualMachineManager"

    invoke-static {v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_0
    :try_start_0
    invoke-virtual {v0, v2, v1}, Landroid/system/virtualmachine/VirtualMachineManager;->getOrCreate(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v5

    invoke-virtual {v5}, Landroid/system/virtualmachine/VirtualMachine;->getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/system/virtualmachine/VirtualMachineConfig;->isCompatibleWith(Landroid/system/virtualmachine/VirtualMachineConfig;)Z

    move-result v7

    if-nez v7, :cond_1

    const-string v5, "expected config is not compatible with the running config. Recreating VM"

    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0, v2}, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->deleteVmByName(Landroid/system/virtualmachine/VirtualMachineManager;Ljava/lang/String;)Z

    invoke-virtual {v0, v2, v1}, Landroid/system/virtualmachine/VirtualMachineManager;->getOrCreate(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;

    move-result-object v3
    :try_end_0
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v5

    goto :goto_1

    :cond_1
    move-object v3, v5

    goto :goto_3

    :goto_0
    const-string v2, "Failed to create virtual machine config isolated_storage_service_vm"

    invoke-static {v6, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :goto_1
    invoke-virtual {v5}, Landroid/system/virtualmachine/VirtualMachineException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v8, "Failed to read VM config from file"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x3e8

    if-nez v7, :cond_4

    invoke-virtual {v5}, Landroid/system/virtualmachine/VirtualMachineException;->getMessage()Ljava/lang/String;

    move-result-object v7

    const-string v9, "Persisted VM config is invalid"

    invoke-virtual {v7, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v2, "Failed to get or create virtual machine isolated_storage_service_vm"

    if-ne v0, v8, :cond_3

    invoke-static {v6, v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_3
    invoke-static {v6, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_4
    :goto_2
    invoke-static {v0, v2}, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->deleteVmByName(Landroid/system/virtualmachine/VirtualMachineManager;Ljava/lang/String;)Z

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const-string v2, "Deleting the vm to recover from vm config failures"

    if-ne v0, v8, :cond_5

    invoke-static {v6, v2, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    :cond_5
    invoke-static {v6, v2, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    iput-object v3, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Landroid/system/virtualmachine/VirtualMachine;->getStatus()I

    move-result v0

    if-ne v0, v4, :cond_7

    const-string v0, "Got a running vm instance from VirtualMachineManager. The vm instance may have been created and started by another service. Restart it here anyway"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "VM instance is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "close and restart the vm, force restart flag = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v6, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachine;->close()V

    new-instance p2, Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p2}, Ljava/util/concurrent/CompletableFuture;-><init>()V

    iput-object p2, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mPayloadReadyFuture:Ljava/util/concurrent/CompletableFuture;

    new-instance p2, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;

    invoke-direct {p2, p1}, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;-><init>(Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;)V

    new-instance p1, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$VmCallback;

    iget-object v0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mPayloadReadyFuture:Ljava/util/concurrent/CompletableFuture;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p0, p1, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$VmCallback;->this$0:Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p1, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$VmCallback;->mFuture:Ljava/util/concurrent/CompletableFuture;

    iput-object p2, p1, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService$VmCallback;->mLogger:Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;

    invoke-static {}, Ljava/lang/invoke/VarHandle;->storeStoreFence()V

    iget-object p2, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    iget-object v0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-virtual {p2, v0, p1}, Landroid/system/virtualmachine/VirtualMachine;->setCallback(Ljava/util/concurrent/Executor;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    iget-object p1, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    invoke-virtual {p1, v1}, Landroid/system/virtualmachine/VirtualMachine;->setConfig(Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachineConfig;

    iget-object p0, p0, Lcom/android/server/appsearch/isolated_storage_service/IsolatedStorageService;->mVm:Landroid/system/virtualmachine/VirtualMachine;

    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->run()V

    return-void
.end method
