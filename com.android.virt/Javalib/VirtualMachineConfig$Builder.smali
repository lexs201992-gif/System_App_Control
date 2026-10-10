.class public final Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
.super Ljava/lang/Object;
.source "VirtualMachineConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/system/virtualmachine/VirtualMachineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mApkPath:Ljava/lang/String;

.field private blacklist mCpuTopology:I

.field private blacklist mDebugLevel:I

.field private blacklist mEncryptedStorageBytes:J

.field private blacklist mMemoryBytes:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mPayloadBinaryName:Ljava/lang/String;

.field private blacklist mPayloadConfigPath:Ljava/lang/String;

.field private blacklist mProtectedVm:Z

.field private blacklist mProtectedVmSet:Z

.field private blacklist mVmOutputCaptured:Z


# direct methods
.method public constructor whitelist <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    const-string v0, "context must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    iput v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig$Builder-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mApkPath:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v1, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mApkPath:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v2, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPackageName:Ljava/lang/String;

    :goto_0
    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    if-nez v3, :cond_2

    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setPayloadBinaryName must be called"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    iget-object v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    if-nez v3, :cond_6

    :goto_1
    iget-boolean v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVmSet:Z

    if-eqz v3, :cond_5

    iget-boolean v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    if-eqz v3, :cond_4

    iget v3, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "debug level must be FULL to capture output"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_4
    :goto_2
    new-instance v17, Landroid/system/virtualmachine/VirtualMachineConfig;

    iget-object v6, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    iget-object v7, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    iget v8, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    iget-boolean v9, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVm:Z

    iget-wide v10, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mMemoryBytes:J

    iget v12, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    iget-wide v13, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mEncryptedStorageBytes:J

    iget-boolean v15, v0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    const/16 v16, 0x0

    move-object/from16 v3, v17

    move-object v4, v2

    move-object v5, v1

    invoke-direct/range {v3 .. v16}, Landroid/system/virtualmachine/VirtualMachineConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJIJZLandroid/system/virtualmachine/VirtualMachineConfig-IA;)V

    return-object v17

    :cond_5
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setProtectedVm must be called explicitly"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "setPayloadBinaryName and setPayloadConfigPath may not both be called"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "apkPath or packageName must be specified"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist setApkPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-string v0, "apkPath must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mApkPath:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "APK path must be an absolute path"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setCpuTopology(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid cpuTopology: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mCpuTopology:I

    return-object p0
.end method

.method public whitelist setDebugLevel(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid debugLevel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mDebugLevel:I

    return-object p0
.end method

.method public whitelist setEncryptedStorageBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mEncryptedStorageBytes:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Encrypted Storage size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setMemoryBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    iput-wide p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mMemoryBytes:J

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Memory size must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setPayloadBinaryName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    nop

    const-string v0, "payloadBinaryName must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadBinaryName:Ljava/lang/String;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid binary file name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setPayloadConfigPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 1

    nop

    const-string v0, "payloadConfigPath must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mPayloadConfigPath:Ljava/lang/String;

    return-object p0
.end method

.method public whitelist setProtectedVm(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_protected_vm_supported()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Protected VMs are not supported on this device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-static {}, Lcom/android/system/virtualmachine/sysprop/HypervisorProperties;->hypervisor_vm_supported()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVm:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mProtectedVmSet:Z

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Non-protected VMs are not supported on this device."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setVmOutputCaptured(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;
    .locals 0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iput-boolean p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->mVmOutputCaptured:Z

    return-object p0
.end method
