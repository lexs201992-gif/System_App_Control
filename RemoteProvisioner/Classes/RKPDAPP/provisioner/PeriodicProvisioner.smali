.class public Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;
.super Landroidx/work/Worker;
.source "PeriodicProvisioner.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p1, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/rkpdapp/database/RkpdDatabase;->getDatabase(Landroid/content/Context;)Lcom/android/rkpdapp/database/RkpdDatabase;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/rkpdapp/database/RkpdDatabase;->provisionedKeyDao()Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    move-result-object p1

    iput-object p1, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    return-void
.end method

.method private recordKeyPoolStatsAtom(Lcom/android/rkpdapp/interfaces/SystemInterface;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    iget-object v2, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/rkpdapp/utils/Settings;->getExpirationTime(Landroid/content/Context;)Ljava/time/Instant;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getTotalExpiringKeysForIrpc(Ljava/lang/String;Ljava/time/Instant;)I

    move-result v1

    iget-object v2, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-virtual {v2, v0}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getTotalUnassignedKeysForIrpc(Ljava/lang/String;)I

    move-result v2

    iget-object p0, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-virtual {p0, v0}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getTotalKeysForIrpc(Ljava/lang/String;)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Logging atom metric for pool status, total: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numExpiring: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", numUnassigned: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RkpdPeriodicProvisioner"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x298

    invoke-virtual {p1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, v1, v2, p0}, Lcom/android/rkpdapp/metrics/RkpdStatsLog;->write(ILjava/lang/String;III)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$Result;
    .locals 11

    const-string v0, "Waking up; checking provisioning state."

    const-string v1, "RkpdPeriodicProvisioner"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->getAllInstances()[Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object v0

    array-length v2, v0

    if-nez v2, :cond_0

    const-string v0, "Stopping periodic provisioner: there are no IRPC HALs"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/work/WorkManager;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lcom/android/rkpdapp/utils/Settings;->getDefaultUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "Stopping periodic provisioner: system has no configured server endpoint"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/work/WorkManager;->getInstance(Landroid/content/Context;)Landroidx/work/WorkManager;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getId()Ljava/util/UUID;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/work/WorkManager;->cancelWorkById(Ljava/util/UUID;)Landroidx/work/Operation;

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object v2, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->createScheduledAttemptMetrics(Landroid/content/Context;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->deleteExpiringKeys(Ljava/time/Instant;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Lcom/android/rkpdapp/interfaces/ServerInterface;

    iget-object v4, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/rkpdapp/interfaces/ServerInterface;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v2}, Lcom/android/rkpdapp/interfaces/ServerInterface;->fetchGeekAndUpdate(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/GeekResponse;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget v4, v3, Lcom/android/rkpdapp/GeekResponse;->numExtraAttestationKeys:I

    if-nez v4, :cond_2

    const-string v0, "Disable provisioning and delete all keys."

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-virtual {v2, v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setEnablement(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V

    sget-object v0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->PROVISIONING_DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {v2, v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    iget-object p0, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-virtual {p0}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->deleteAllKeys()V

    const/4 p0, 0x1

    invoke-virtual {v2, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setIsKeyPoolEmpty(Z)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V

    return-object p0

    :cond_2
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total services found implementing IRPC: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Lcom/android/rkpdapp/provisioner/Provisioner;

    iget-object v5, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-direct {v4, v5, v6}, Lcom/android/rkpdapp/provisioner/Provisioner;-><init>(Landroid/content/Context;Lcom/android/rkpdapp/database/ProvisionedKeyDao;)V

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->success()Landroidx/work/ListenableWorker$Result;

    move-result-object v5

    array-length v6, v0

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_3

    aget-object v8, v0, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Starting provisioning for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4, v2, v8, v3}, Lcom/android/rkpdapp/provisioner/Provisioner;->provisionKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;)V

    invoke-direct {p0, v8}, Lcom/android/rkpdapp/provisioner/PeriodicProvisioner;->recordKeyPoolStatsAtom(Lcom/android/rkpdapp/interfaces/SystemInterface;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Successfully provisioned "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lco/nstant/in/cbor/CborException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v5

    :try_start_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error provisioning keys for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v5

    goto :goto_1

    :catch_1
    move-exception v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Error parsing CBOR for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V

    :cond_4
    return-object v5

    :catch_2
    move-exception p0

    :try_start_6
    const-string v0, "Error fetching configuration from the RKP server"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Landroidx/work/ListenableWorker$Result;->failure()Landroidx/work/ListenableWorker$Result;

    move-result-object p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V

    :cond_5
    return-object p0

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_6

    :try_start_7
    invoke-virtual {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_2
    throw p0
.end method
