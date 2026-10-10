.class public final Landroid/system/virtualmachine/VirtualMachineConfig;
.super Ljava/lang/Object;
.source "VirtualMachineConfig.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/system/virtualmachine/VirtualMachineConfig$Builder;,
        Landroid/system/virtualmachine/VirtualMachineConfig$CpuTopology;,
        Landroid/system/virtualmachine/VirtualMachineConfig$DebugLevel;
    }
.end annotation


# static fields
.field public static final whitelist CPU_TOPOLOGY_MATCH_HOST:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CPU_TOPOLOGY_ONE_CPU:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEBUG_LEVEL_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DEBUG_LEVEL_NONE:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field private static final blacklist KEY_APKPATH:Ljava/lang/String; = "apkPath"

.field private static final blacklist KEY_CPU_TOPOLOGY:Ljava/lang/String; = "cpuTopology"

.field private static final blacklist KEY_DEBUGLEVEL:Ljava/lang/String; = "debugLevel"

.field private static final blacklist KEY_ENCRYPTED_STORAGE_BYTES:Ljava/lang/String; = "encryptedStorageBytes"

.field private static final blacklist KEY_MEMORY_BYTES:Ljava/lang/String; = "memoryBytes"

.field private static final blacklist KEY_PACKAGENAME:Ljava/lang/String; = "packageName"

.field private static final blacklist KEY_PAYLOADBINARYNAME:Ljava/lang/String; = "payloadBinaryPath"

.field private static final blacklist KEY_PAYLOADCONFIGPATH:Ljava/lang/String; = "payloadConfigPath"

.field private static final blacklist KEY_PROTECTED_VM:Ljava/lang/String; = "protectedVm"

.field private static final blacklist KEY_VERSION:Ljava/lang/String; = "version"

.field private static final blacklist KEY_VM_OUTPUT_CAPTURED:Ljava/lang/String; = "vmOutputCaptured"

.field private static final blacklist TAG:Ljava/lang/String; = "VirtualMachineConfig"

.field private static final blacklist VERSION:I = 0x6


# instance fields
.field private final blacklist mApkPath:Ljava/lang/String;

.field private final blacklist mCpuTopology:I

.field private final blacklist mDebugLevel:I

.field private final blacklist mEncryptedStorageBytes:J

.field private final blacklist mMemoryBytes:J

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPayloadBinaryName:Ljava/lang/String;

.field private final blacklist mPayloadConfigPath:Ljava/lang/String;

.field private final blacklist mProtectedVm:Z

.field private final blacklist mVmOutputCaptured:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJIJZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    iput-object p3, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    iput-object p4, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    iput p5, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    iput-boolean p6, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    iput-wide p7, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    iput p9, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    iput-wide p10, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    iput-boolean p12, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJIJZLandroid/system/virtualmachine/VirtualMachineConfig-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Landroid/system/virtualmachine/VirtualMachineConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJIJZ)V

    return-void
.end method

.method private blacklist bytesToMebiBytes(J)I
    .locals 6

    const-wide/32 v0, 0x100000

    const-wide/32 v2, 0x7ffffffe

    mul-long/2addr v2, v0

    cmp-long v2, p1, v2

    if-lez v2, :cond_0

    const v2, 0x7fffffff

    return v2

    :cond_0
    add-long v2, p1, v0

    const-wide/16 v4, 0x1

    sub-long/2addr v2, v4

    div-long/2addr v2, v0

    long-to-int v2, v2

    return v2
.end method

.method private blacklist findPayloadApk(Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    const-string v0, "VirtualMachineConfig"

    :try_start_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->splitSourceDirs:[Ljava/lang/String;

    sget-object v3, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    iget-object v4, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    if-eqz v4, :cond_3

    if-eqz v2, :cond_3

    array-length v4, v3

    if-eqz v4, :cond_3

    array-length v4, v3

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    :goto_0
    array-length v6, v3

    if-ge v5, v6, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lib/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v3, v5

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    array-length v5, v2

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_3

    aget-object v8, v2, v7

    :try_start_1
    new-instance v9, Ljava/util/zip/ZipFile;

    invoke-direct {v9, v8}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    array-length v10, v4

    move v11, v6

    :goto_2
    if-ge v11, v10, :cond_2

    aget-object v12, v4, v11

    invoke-virtual {v9, v12}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v13

    if-eqz v13, :cond_1

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found payload in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    :try_start_3
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V

    return-object v8

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catchall_0
    move-exception v10

    :try_start_4
    invoke-virtual {v9}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v11

    :try_start_5
    invoke-virtual {v10, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_3
    throw v10
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failed to scan split APK: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    return-object v0

    :catch_1
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Package not found"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist from(Landroid/os/ParcelFileDescriptor;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, p0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->fromInputStream(Ljava/io/InputStream;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to read VM config from file descriptor"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static blacklist from(Ljava/io/File;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->fromInputStream(Ljava/io/InputStream;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "Failed to read VM config from file"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static blacklist fromInputStream(Ljava/io/InputStream;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    invoke-static {p0}, Landroid/os/PersistableBundle;->readFromStream(Ljava/io/InputStream;)Landroid/os/PersistableBundle;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v3, "Persisted VM config is invalid"

    invoke-direct {v2, v3, v1}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/system/virtualmachine/VirtualMachineConfig;
    .locals 12

    const-string v0, "version"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-gt v0, v1, :cond_6

    const-string v1, "packageName"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;-><init>(Ljava/lang/String;Landroid/system/virtualmachine/VirtualMachineConfig$Builder-IA;)V

    const-string v3, "apkPath"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, v3}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setApkPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    :cond_0
    const-string v4, "payloadConfigPath"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    const-string v5, "payloadBinaryPath"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setPayloadBinaryName(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v4}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setPayloadConfigPath(Ljava/lang/String;)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    :goto_0
    const-string v5, "debugLevel"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_3

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    goto :goto_1

    :cond_2
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid debugLevel: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_3
    :goto_1
    invoke-virtual {v2, v5}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setDebugLevel(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    const-string v6, "protectedVm"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2, v6}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setProtectedVm(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    const-string v6, "memoryBytes"

    invoke-virtual {p0, v6}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v10, v6, v8

    if-eqz v10, :cond_4

    invoke-virtual {v2, v6, v7}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setMemoryBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    :cond_4
    const-string v10, "cpuTopology"

    invoke-virtual {p0, v10}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v2, v10}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setCpuTopology(I)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    const-string v10, "encryptedStorageBytes"

    invoke-virtual {p0, v10}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-eqz v8, :cond_5

    invoke-virtual {v2, v10, v11}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setEncryptedStorageBytes(J)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    :cond_5
    const-string v8, "vmOutputCaptured"

    invoke-virtual {p0, v8}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    invoke-virtual {v2, v8}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->setVmOutputCaptured(Z)Landroid/system/virtualmachine/VirtualMachineConfig$Builder;

    invoke-virtual {v2}, Landroid/system/virtualmachine/VirtualMachineConfig$Builder;->build()Landroid/system/virtualmachine/VirtualMachineConfig;

    move-result-object v8

    return-object v8

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Version "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " too high; current is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist serializeOutputStream(Ljava/io/OutputStream;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    const-string v1, "version"

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "packageName"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "apkPath"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "payloadConfigPath"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "payloadBinaryPath"

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "debugLevel"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "protectedVm"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "cpuTopology"

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    iget-wide v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_2

    const-string v5, "memoryBytes"

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    :cond_2
    iget-wide v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    cmp-long v3, v1, v3

    if-lez v3, :cond_3

    const-string v3, "encryptedStorageBytes"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    :cond_3
    const-string v1, "vmOutputCaptured"

    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->writeToStream(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public whitelist getApkPath()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getCpuTopology()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    return v0
.end method

.method public whitelist getDebugLevel()I
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    return v0
.end method

.method public whitelist getEncryptedStorageBytes()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    return-wide v0
.end method

.method public whitelist getMemoryBytes()J
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    return-wide v0
.end method

.method public whitelist getPayloadBinaryName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getPayloadConfigPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist isCompatibleWith(Landroid/system/virtualmachine/VirtualMachineConfig;)Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    iget v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    iget v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    iget-boolean v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    iget-wide v3, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget-boolean v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    iget-boolean v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    iget-object v2, p1, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isEncryptedStorageEnabled()Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-wide v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mEncryptedStorageBytes:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public whitelist isProtectedVm()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    return v0
.end method

.method public whitelist isVmOutputCaptured()Z
    .locals 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    iget-boolean v0, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mVmOutputCaptured:Z

    return v0
.end method

.method blacklist serialize(Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-direct {p0, v0}, Landroid/system/virtualmachine/VirtualMachineConfig;->serializeOutputStream(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    nop

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v2, "failed to write VM config"

    invoke-direct {v1, v2, v0}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method blacklist toVsConfig(Landroid/content/pm/PackageManager;)Landroid/system/virtualizationservice/VirtualMachineAppConfig;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/virtualmachine/VirtualMachineException;
        }
    .end annotation

    new-instance v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;

    invoke-direct {v0}, Landroid/system/virtualizationservice/VirtualMachineAppConfig;-><init>()V

    iget-object v1, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mApkPath:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Landroid/system/virtualmachine/VirtualMachineConfig;->findPayloadApk(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->apk:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    if-eqz v2, :cond_1

    new-instance v2, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;

    invoke-direct {v2}, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;-><init>()V

    iget-object v3, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadBinaryName:Ljava/lang/String;

    iput-object v3, v2, Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;->payloadBinaryName:Ljava/lang/String;

    nop

    invoke-static {v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->payloadConfig(Landroid/system/virtualizationservice/VirtualMachinePayloadConfig;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    move-result-object v3

    iput-object v3, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mPayloadConfigPath:Ljava/lang/String;

    invoke-static {v2}, Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;->configPath(Ljava/lang/String;)Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    move-result-object v2

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->payload:Landroid/system/virtualizationservice/VirtualMachineAppConfig$Payload;

    :goto_1
    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mDebugLevel:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v2, :pswitch_data_0

    iput-byte v3, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    goto :goto_2

    :pswitch_0
    iput-byte v4, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->debugLevel:B

    nop

    :goto_2
    iget-boolean v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mProtectedVm:Z

    iput-boolean v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->protectedVm:Z

    iget-wide v5, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mMemoryBytes:J

    invoke-direct {p0, v5, v6}, Landroid/system/virtualmachine/VirtualMachineConfig;->bytesToMebiBytes(J)I

    move-result v2

    iput v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->memoryMib:I

    iget v2, p0, Landroid/system/virtualmachine/VirtualMachineConfig;->mCpuTopology:I

    packed-switch v2, :pswitch_data_1

    iput-byte v3, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuTopology:B

    goto :goto_3

    :pswitch_1
    iput-byte v4, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->cpuTopology:B

    nop

    :goto_3
    sget-object v2, Landroid/system/virtualmachine/VirtualMachineConfig;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v2, v0, Landroid/system/virtualizationservice/VirtualMachineAppConfig;->taskProfiles:[Ljava/lang/String;

    return-object v0

    :catch_0
    move-exception v2

    new-instance v3, Landroid/system/virtualmachine/VirtualMachineException;

    const-string v4, "Failed to open APK"

    invoke-direct {v3, v4, v2}, Landroid/system/virtualmachine/VirtualMachineException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
    .end packed-switch
.end method
