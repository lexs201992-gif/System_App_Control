.class public Landroid/system/virtualmachine/VirtualMachine;
.super Ljava/lang/Object;
.source "VirtualMachine.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;,
        Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;,
        Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;,
        Landroid/system/virtualmachine/VirtualMachine$Status;
    }
.end annotation


# static fields
.field private static final blacklist CONFIG_FILE:Ljava/lang/String; = "config.xml"

.field private static final blacklist ENCRYPTED_STORE_FILE:Ljava/lang/String; = "storage.img"

.field private static final blacklist EXTRA_IDSIG_FILE_PREFIX:Ljava/lang/String; = "extra_idsig_"

.field private static final blacklist IDSIG_FILE:Ljava/lang/String; = "idsig"

.field private static final blacklist INSTANCE_FILE_SIZE:J = 0xa00000L

.field private static final blacklist INSTANCE_IMAGE_FILE:Ljava/lang/String; = "instance.img"

.field public static final whitelist MANAGE_VIRTUAL_MACHINE_PERMISSION:Ljava/lang/String; = "android.permission.MANAGE_VIRTUAL_MACHINE"

.field public static final whitelist MAX_VSOCK_PORT:J = 0xffffffffL

.field public static final whitelist MIN_VSOCK_PORT:J = 0x400L

.field public static final whitelist STATUS_DELETED:I = 0x2

.field public static final whitelist STATUS_RUNNING:I = 0x1

.field public static final whitelist STATUS_STOPPED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualMachine"

.field public static final whitelist USE_CUSTOM_VIRTUAL_MACHINE_PERMISSION:Ljava/lang/String; = "android.permission.USE_CUSTOM_VIRTUAL_MACHINE"

.field private static final blacklist VM_DIR:Ljava/lang/String; = "vm"


# instance fields
.field private blacklist mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

.field private blacklist mCallbackExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mCallbackLock:Ljava/lang/Object;

.field private blacklist mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

.field private final blacklist mConfigFilePath:Ljava/io/File;

.field private blacklist mConsoleReader:Landroid/os/ParcelFileDescriptor;

.field private blacklist mConsoleWriter:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mContext:Landroid/content/Context;

.field private final blacklist mEncryptedStoreFilePath:Ljava/io/File;

.field private final blacklist mExtraApks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIdsigFilePath:Ljava/io/File;

.field private final blacklist mInstanceFilePath:Ljava/io/File;

.field private final blacklist mLock:Ljava/lang/Object;

.field private blacklist mLogReader:Landroid/os/ParcelFileDescriptor;

.field private blacklist mLogWriter:Landroid/os/ParcelFileDescriptor;

.field private final blacklist mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

.field private final blacklist mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

.field private final blacklist mVmOutputCaptured:Z

.field private final blacklist mVmRootPath:Ljava/io/File;

.field private blacklist mWasDeleted:Z


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmLock(Landroid/system/virtualmachine/VirtualMachine;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmVirtualMachine(Landroid/system/virtualmachine/VirtualMachine;)Landroid/system/virtualizationservice/IVirtualMachine;
    .locals 0

    iget-object p0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mexecuteCallback(Landroid/system/virtualmachine/VirtualMachine;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->executeCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "virtualmachine_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mPackageName:Ljava/lang/String;

    const-string v0, "Name must not be null"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    const-string v1, "Config must not be null"

    invoke-static {p3, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualmachine/VirtualMachineConfig;

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    iput-object p4, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-static {p1, v0}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "config.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "instance.img"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    const-string v2, "idsig"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    invoke-static {p1, p3, v0}, Landroid/system/virtualmachine/VirtualMachine;->setupExtraApks(Landroid/content/Context;Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;-><init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks-IA;)V

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    nop

    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/io/File;

    const-string v1, "storage.img"

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    nop

    :goto_0
    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {p3}, Landroid/system/virtualmachine/VirtualMachineConfig;->isVmOutputCaptured()Z

    move-result v1

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    return-void
.end method

.method private blacklist checkStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    nop

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V

    return-void

    :cond_1
    :try_start_1
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM is not in stopped state"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :cond_2
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM has been deleted"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static blacklist create(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->createVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    new-instance v1, Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v2

    invoke-direct {v1, p0, p1, p2, v2}, Landroid/system/virtualmachine/VirtualMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V

    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {p2, v2}, Landroid/system/virtualmachine/VirtualMachineConfig;->serialize(Ljava/io/File;)V
    :try_end_0
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_8

    :try_start_1
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_8

    nop

    :try_start_2
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v2
    :try_end_2
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_8

    if-eqz v2, :cond_0

    :try_start_3
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_8

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_4
    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "failed to create encrypted storage image"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_0
    :goto_0
    iget-object v2, v1, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2
    :try_end_4
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8

    :try_start_5
    iget-object v3, v1, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    const/high16 v4, 0x30000000

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    const-wide/32 v5, 0xa00000

    const/4 v7, 0x1

    invoke-interface {v2, v3, v5, v6, v7}, Landroid/system/virtualizationservice/IVirtualizationService;->initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_8

    nop

    :try_start_6
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v3
    :try_end_6
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_8

    if-eqz v3, :cond_1

    :try_start_7
    iget-object v3, v1, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-static {v3, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineConfig;->getEncryptedStorageBytes()J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-interface {v2, v3, v4, v5, v6}, Landroid/system/virtualizationservice/IVirtualizationService;->initializeWritablePartition(Landroid/os/ParcelFileDescriptor;JI)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_7 .. :try_end_7} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_8

    goto :goto_1

    :catch_1
    move-exception v3

    :try_start_8
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create encrypted storage partition"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_3
    move-exception v3

    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "encrypted storage image missing"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :cond_1
    :goto_1
    return-object v1

    :catch_4
    move-exception v3

    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create instance partition"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_5
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_6
    move-exception v3

    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "instance image missing"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    :catch_7
    move-exception v2

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "failed to create instance image"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_8
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_8 .. :try_end_8} :catch_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_8

    :catch_8
    move-exception v1

    :try_start_9
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->deleteRecursively(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_9

    goto :goto_2

    :catch_9
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private blacklist createIdSigs(Landroid/system/virtualizationservice/IVirtualizationService;Landroid/system/virtualizationservice/VirtualMachineAppConfig;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    iget-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    const/high16 v2, 0x30000000

    invoke-static {v1, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/system/virtualizationservice/IVirtualizationService;->createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/high16 v3, 0x10000000

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    iget-object v4, v1, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->apk:Ljava/io/File;

    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, v1, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    invoke-static {v4, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-interface {p1, v3, v4}, Landroid/system/virtualizationservice/IVirtualizationService;->createOrUpdateIdsigFile(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    invoke-static {v0, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->idsig:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->instanceImage:Landroid/os/ParcelFileDescriptor;

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    if-eqz v0, :cond_1

    nop

    invoke-static {v0, v2}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->encryptedStorageImage:Landroid/os/ParcelFileDescriptor;

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    iget-object v4, v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iput-object v0, p2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->extraIdsigs:Ljava/util/List;

    return-void
.end method

.method private static blacklist createVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v3}, Ljava/nio/file/Files;->createDirectories(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    new-array v2, v2, [Ljava/nio/file/attribute/FileAttribute;

    invoke-static {v1, v2}, Ljava/nio/file/Files;->createDirectory(Ljava/nio/file/Path;[Ljava/nio/file/attribute/FileAttribute;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/nio/file/FileAlreadyExistsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-object v0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "failed to create directory for VM"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "virtual machine already exists"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist createVmPipes()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleReader:Landroid/os/ParcelFileDescriptor;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleWriter:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    aget-object v3, v0, v2

    iput-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleReader:Landroid/os/ParcelFileDescriptor;

    aget-object v3, v0, v1

    iput-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleWriter:Landroid/os/ParcelFileDescriptor;

    :cond_1
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogReader:Landroid/os/ParcelFileDescriptor;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogWriter:Landroid/os/ParcelFileDescriptor;

    if-nez v0, :cond_3

    :cond_2
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    aget-object v2, v0, v2

    iput-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogReader:Landroid/os/ParcelFileDescriptor;

    aget-object v1, v0, v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogWriter:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Failed to create stream for VM"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist deleteRecursively(Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachine$1;

    invoke-direct {v1}, Landroid/system/virtualmachine/VirtualMachine$1;-><init>()V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    return-void
.end method

.method static blacklist deleteVmDirectory(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->deleteRecursively(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v1, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist dropVm()V
    .locals 2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    return-void
.end method

.method private blacklist executeCallback(Ljava/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Landroid/system/virtualmachine/VirtualMachineCallback;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_1
    new-instance v0, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1, v1}, Landroid/system/virtualmachine/VirtualMachine$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Consumer;Landroid/system/virtualmachine/VirtualMachineCallback;)V

    invoke-interface {v2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :cond_1
    :goto_0
    return-void

    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method static blacklist fromDescriptor(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineDescriptor;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->createVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    nop

    :try_start_0
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getConfigFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    invoke-static {v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->from(Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v3

    invoke-direct {v2, p0, p1, v1, v3}, Landroid/system/virtualmachine/VirtualMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V

    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {v1, v3}, Landroid/system/virtualmachine/VirtualMachineConfig;->serialize(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getInstanceImgFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachine;->importInstanceFrom(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getEncryptedStoreFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_0

    :try_start_3
    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->getEncryptedStoreFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachine;->importEncryptedStoreFrom(Landroid/os/ParcelFileDescriptor;)V

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create encrypted storage image"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    :try_start_5
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->close()V
    :try_end_5
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_1
    return-object v2

    :catch_1
    move-exception v3

    :try_start_6
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "failed to create instance image"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :catchall_0
    move-exception v1

    if-eqz p2, :cond_2

    :try_start_7
    invoke-virtual {p2}, Landroid/system/virtualmachine/VirtualMachineDescriptor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
    :try_end_8
    .catch Landroid/system/virtualmachine/VirtualMachineException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :catch_2
    move-exception v1

    :try_start_9
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachine;->deleteRecursively(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    goto :goto_2

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v1
.end method

.method private blacklist getRunningVm()Landroid/system/virtualizationservice/IVirtualMachine;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    return-object v0

    :cond_0
    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM is not in running state"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_0
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "VM has been deleted"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private static blacklist getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, ".."

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "vm"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid VM name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist importEncryptedStoreFrom(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v1

    const-wide/16 v3, 0x0

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    nop

    return-void

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to transfer encryptedstore image"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private blacklist importInstanceFrom(Landroid/os/ParcelFileDescriptor;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, p1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, v1

    const-wide/16 v3, 0x0

    :try_start_2
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v5

    move-object v1, v0

    move-object v2, v7

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_0

    :try_start_3
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    if-eqz v0, :cond_1

    :try_start_4
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_1
    nop

    return-void

    :catchall_0
    move-exception v1

    if-eqz v7, :cond_2

    :try_start_5
    invoke-virtual {v7}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_6
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to transfer instance image"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic blacklist lambda$executeCallback$0(Ljava/util/function/Consumer;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 0

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method static blacklist load(Landroid/content/Context;Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachine;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-static {p0, p1}, Landroid/system/virtualmachine/VirtualMachine;->getVmDir(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "config.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/system/virtualmachine/VirtualMachineConfig;->from(Ljava/io/File;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v2

    new-instance v3, Landroid/system/virtualmachine/VirtualMachine;

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->getInstance()Landroid/system/virtualmachine/VirtualizationService;

    move-result-object v4

    invoke-direct {v3, p0, p1, v2, v4}, Landroid/system/virtualmachine/VirtualMachine;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig;Landroid/system/virtualmachine/VirtualizationService;)V

    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineConfig;->isEncryptedStorageEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v3, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "Storage image missing"

    invoke-direct {v4, v5}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    :goto_0
    return-object v3

    :cond_3
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "instance image missing"

    invoke-direct {v4, v5}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private static native blacklist nativeConnectToVsockServer(Landroid/os/IBinder;I)Landroid/os/IBinder;
.end method

.method private static blacklist parseExtraApkListFromPayloadConfig(Landroid/util/JsonReader;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/JsonReader;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    :goto_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "extra_apks"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginArray()V

    :goto_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/util/JsonReader;->beginObject()V

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    :goto_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/util/JsonReader;->endArray()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/util/JsonReader;->skipValue()V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/util/JsonReader;->endObject()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v1, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist setupExtraApks(Landroid/content/Context;Landroid/system/virtualmachine/VirtualMachineConfig;Ljava/io/File;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/system/virtualmachine/VirtualMachineConfig;",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->getPayloadConfigPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/util/zip/ZipFile;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :try_start_1
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v2

    new-instance v3, Landroid/util/JsonReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Landroid/util/JsonReader;-><init>(Ljava/io/Reader;)V

    invoke-static {v3}, Landroid/system/virtualmachine/VirtualMachine;->parseExtraApkListFromPayloadConfig(Landroid/util/JsonReader;)Ljava/util/List;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    new-instance v6, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    new-instance v7, Ljava/io/File;

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "extra_idsig_"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p2, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v6, v7, v8}, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;-><init>(Ljava/io/File;Ljava/io/File;)V

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v5

    :catchall_0
    move-exception v2

    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    :try_start_4
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Couldn\'t parse extra apks from the vm config"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private blacklist stateToStatus(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist validatePort(J)I
    .locals 3

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const-wide v0, 0xffffffffL

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    long-to-int v0, p1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad port "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist clearCallback()V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist test-api close()V
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    if-nez v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->stop()V

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "VirtualMachine"

    const-string v3, "Ignoring error on close()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    monitor-exit v0

    return-void

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist connectToVsockServer(J)Landroid/os/IBinder;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    nop

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->getRunningVm()Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v1

    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->validatePort(J)I

    move-result v2

    invoke-static {v1, v2}, Landroid/system/virtualmachine/VirtualMachine;->nativeConnectToVsockServer(Landroid/os/IBinder;I)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Failed to connect to vsock server"

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist connectVsock(J)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->getRunningVm()Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v1

    invoke-direct {p0, p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->validatePort(J)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/system/virtualizationservice/IVirtualMachine;->connectVsock(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method blacklist delete(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1, p2}, Landroid/system/virtualmachine/VirtualMachine;->deleteVmDirectory(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public whitelist getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist getConsoleOutput()Ljava/io/InputStream;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmPipes()V

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleReader:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "Capturing vm outputs is turned off"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getLogOutput()Ljava/io/InputStream;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmPipes()V

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogReader:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v1, "Capturing vm outputs is turned off"

    invoke-direct {v0, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRootDir()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    return-object v0
.end method

.method public whitelist getStatus()I
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mWasDeleted:Z

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    monitor-exit v0

    return v2

    :cond_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :try_start_1
    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->getState()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachine;->stateToStatus(I)I

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    :goto_0
    if-nez v0, :cond_2

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmRootPath:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V

    monitor-exit v3

    return v2

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_2
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public whitelist run()V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mIdsigFilePath:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mExtraApks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;

    iget-object v3, v2, Landroid/system/virtualmachine/VirtualMachine$ExtraApkSpec;->idsig:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    goto :goto_0

    :cond_0
    nop

    :try_start_2
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualizationService:Landroid/system/virtualmachine/VirtualizationService;

    invoke-virtual {v1}, Landroid/system/virtualmachine/VirtualizationService;->getBinder()Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mVmOutputCaptured:Z

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->createVmPipes()V

    :cond_1
    nop

    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v2

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/system/virtualmachine/VirtualMachineConfig;->toVsConfig(Landroid/content/pm/PackageManager;)Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    move-result-object v2

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachine;->mName:Ljava/lang/String;

    iput-object v3, v2, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->name:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-direct {p0, v1, v2}, Landroid/system/virtualmachine/VirtualMachine;->createIdSigs(Landroid/system/virtualizationservice/IVirtualizationService;Landroid/system/virtualizationservice/VirtualMachineAppConfig;)V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    nop

    :try_start_5
    invoke-static {v2}, Landroid/system/virtualizationservice/VirtualMachineConfig;->appConfig(Landroid/system/virtualizationservice/VirtualMachineAppConfig;)Landroid/system/virtualizationservice/VirtualMachineConfig;

    move-result-object v3

    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mConsoleWriter:Landroid/os/ParcelFileDescriptor;

    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mLogWriter:Landroid/os/ParcelFileDescriptor;

    invoke-interface {v1, v3, v4, v5}, Landroid/system/virtualizationservice/IVirtualizationService;->createVm(Landroid/system/virtualizationservice/VirtualMachineConfig;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualizationservice/IVirtualMachine;

    move-result-object v4

    iput-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    new-instance v5, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;

    invoke-direct {v5, p0, v1}, Landroid/system/virtualmachine/VirtualMachine$CallbackTranslator;-><init>(Landroid/system/virtualmachine/VirtualMachine;Landroid/system/virtualizationservice/IVirtualizationService;)V

    invoke-interface {v4, v5}, Landroid/system/virtualizationservice/IVirtualMachine;->registerCallback(Landroid/system/virtualizationservice/IVirtualMachineCallback;)V

    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mContext:Landroid/content/Context;

    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mMemoryManagementCallbacks:Landroid/system/virtualmachine/VirtualMachine$MemoryManagementCallbacks;

    invoke-virtual {v4, v5}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;

    invoke-interface {v4}, Landroid/system/virtualizationservice/IVirtualMachine;->start()V
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    return-void

    :catch_0
    move-exception v3

    :try_start_7
    new-instance v4, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v5, "Failed to generate APK signature"

    invoke-direct {v4, v5, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
    :try_end_7
    .catch Ljava/lang/IllegalStateException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/ServiceSpecificException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_1
    move-exception v2

    :try_start_8
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3

    :catch_2
    move-exception v2

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v3, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    :catch_3
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Failed to create APK signature file"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    throw v1
.end method

.method public whitelist setCallback(Ljava/util/concurrent/Executor;Landroid/system/virtualmachine/VirtualMachineCallback;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallback:Landroid/system/virtualmachine/VirtualMachineCallback;

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine;->mCallbackExecutor:Ljava/util/concurrent/Executor;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist setConfig(Landroid/system/virtualmachine/VirtualMachineConfig;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    invoke-virtual {v1, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->isCompatibleWith(Landroid/system/virtualmachine/VirtualMachineConfig;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    invoke-virtual {p1, v2}, Landroid/system/virtualmachine/VirtualMachineConfig;->serialize(Ljava/io/File;)V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfig:Landroid/system/virtualmachine/VirtualMachineConfig;

    :cond_0
    monitor-exit v0

    return-object v1

    :cond_1
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "incompatible config"

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public whitelist stop()V
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachine;->mVirtualMachine:Landroid/system/virtualizationservice/IVirtualMachine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-interface {v1}, Landroid/system/virtualizationservice/IVirtualMachine;->stop()V

    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->dropVm()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "VM is not running"

    invoke-direct {v1, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist toDescriptor()Landroid/system/virtualmachine/VirtualMachineDescriptor;
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachine;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Landroid/system/virtualmachine/VirtualMachine;->checkStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineDescriptor;

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachine;->mConfigFilePath:Ljava/io/File;

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachine;->mInstanceFilePath:Ljava/io/File;

    invoke-static {v4, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mEncryptedStoreFilePath:Ljava/io/File;

    if-eqz v5, :cond_0

    invoke-static {v5, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-direct {v1, v2, v4, v3}, Landroid/system/virtualmachine/VirtualMachineDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    invoke-direct {v2, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->getConfig()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v0

    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getPayloadConfigPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->getPayloadBinaryName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "VirtualMachine("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/system/virtualmachine/VirtualMachine;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_0

    const-string v4, "payload:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    if-eqz v1, :cond_1

    const-string v4, "config:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, "package: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/system/virtualmachine/VirtualMachine;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
