.class Landroid/system/virtualmachine/VirtualizationService;
.super Ljava/lang/Object;
.source "VirtualizationService.java"


# static fields
.field private static blacklist sInstance:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/system/virtualmachine/VirtualizationService;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mBinder:Landroid/system/virtualizationservice/IVirtualizationService;

.field private final blacklist mClientFd:Landroid/os/ParcelFileDescriptor;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-string v0, "virtualizationservice_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor blacklist <init>()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Landroid/system/virtualmachine/VirtualizationService;->nativeSpawn()I

    move-result v0

    if-ltz v0, :cond_1

    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, p0, Landroid/system/virtualmachine/VirtualizationService;->mClientFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/system/virtualmachine/VirtualizationService;->nativeConnect(I)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/system/virtualizationservice/IVirtualizationService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/system/virtualizationservice/IVirtualizationService;

    move-result-object v2

    iput-object v2, p0, Landroid/system/virtualmachine/VirtualizationService;->mBinder:Landroid/system/virtualizationservice/IVirtualizationService;

    return-void

    :cond_0
    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Could not connect to VirtualizationService"

    invoke-direct {v2, v3}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Could not spawn VirtualizationService"

    invoke-direct {v1, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static blacklist getInstance()Landroid/system/virtualmachine/VirtualizationService;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    sget-object v0, Landroid/system/virtualmachine/VirtualizationService;->sInstance:Ljava/lang/ref/WeakReference;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/system/virtualmachine/VirtualizationService;

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {v0}, Landroid/system/virtualmachine/VirtualizationService;->isOk()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    new-instance v1, Landroid/system/virtualmachine/VirtualizationService;

    invoke-direct {v1}, Landroid/system/virtualmachine/VirtualizationService;-><init>()V

    move-object v0, v1

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Landroid/system/virtualmachine/VirtualizationService;->sInstance:Ljava/lang/ref/WeakReference;

    :cond_2
    return-object v0
.end method

.method private blacklist isOk()Z
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualizationService;->mClientFd:Landroid/os/ParcelFileDescriptor;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualizationService;->nativeIsOk(I)Z

    move-result v0

    return v0
.end method

.method private native blacklist nativeConnect(I)Landroid/os/IBinder;
.end method

.method private native blacklist nativeIsOk(I)Z
.end method

.method private static native blacklist nativeSpawn()I
.end method


# virtual methods
.method blacklist getBinder()Landroid/system/virtualizationservice/IVirtualizationService;
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualizationService;->mBinder:Landroid/system/virtualizationservice/IVirtualizationService;

    return-object v0
.end method
