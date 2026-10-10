.class public Lcom/android/rkpdapp/provisioner/Provisioner;
.super Ljava/lang/Object;
.source "Provisioner.java"


# static fields
.field private static final provisionKeysLock:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/rkpdapp/provisioner/Provisioner;->provisionKeysLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/rkpdapp/database/ProvisionedKeyDao;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    return-void
.end method

.method private associateCertsWithKeys(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "[B>;",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/RkpKey;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/ProvisionedKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/rkpdapp/utils/X509Utils;->formatX509Certs([B)[Ljava/security/cert/X509Certificate;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-static {v1}, Lcom/android/rkpdapp/utils/X509Utils;->getAndFormatRawPublicKey(Ljava/security/cert/X509Certificate;)[B

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "RkpdProvisioner"

    const-string v1, "Skipping malformed public key."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/rkpdapp/database/RkpKey;

    invoke-virtual {v5}, Lcom/android/rkpdapp/database/RkpKey;->getPublicKey()[B

    move-result-object v6

    invoke-static {v6, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Lcom/android/rkpdapp/database/InstantConverter;->fromTimestamp(Ljava/lang/Long;)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Lcom/android/rkpdapp/database/RkpKey;->generateProvisionedKey([BLjava/time/Instant;)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p2, v5}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-object p0
.end method

.method private batchProvision(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;Ljava/util/List;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/rkpdapp/metrics/ProvisioningAttempt;",
            "Lcom/android/rkpdapp/interfaces/SystemInterface;",
            "Lcom/android/rkpdapp/GeekResponse;",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/RkpKey;",
            ">;)",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;,
            Lco/nstant/in/cbor/CborException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/rkpdapp/interfaces/SystemInterface;->generateCsr(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/GeekResponse;Ljava/util/List;)[B

    move-result-object p2

    if-eqz p2, :cond_0

    new-instance p4, Lcom/android/rkpdapp/interfaces/ServerInterface;

    iget-object p0, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mContext:Landroid/content/Context;

    invoke-direct {p4, p0}, Lcom/android/rkpdapp/interfaces/ServerInterface;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3}, Lcom/android/rkpdapp/GeekResponse;->getChallenge()[B

    move-result-object p0

    invoke-virtual {p4, p2, p0, p1}, Lcom/android/rkpdapp/interfaces/ServerInterface;->requestSignedCertificates([B[BLcom/android/rkpdapp/metrics/ProvisioningAttempt;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p1, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string p2, "Failed to serialize payload"

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lcom/android/rkpdapp/RkpdException;

    sget-object p1, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Request at least 1 key to be signed. Num requested: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;)V

    throw p0
.end method

.method private calculateKeysRequired(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/rkpdapp/utils/Settings;->getExtraSignedKeysAvailable(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/rkpdapp/utils/Settings;->getExpirationTime(Landroid/content/Context;)Ljava/time/Instant;

    move-result-object v1

    iget-object p0, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-static {p0, p2, v0, v1}, Lcom/android/rkpdapp/utils/StatsProcessor;->processPool(Lcom/android/rkpdapp/database/ProvisionedKeyDao;Ljava/lang/String;ILjava/time/Instant;)Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;

    move-result-object p0

    iget p2, p0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->keysUnassigned:I

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setIsKeyPoolEmpty(Z)V

    iget p0, p0, Lcom/android/rkpdapp/utils/StatsProcessor$PoolStats;->keysToGenerate:I

    return p0
.end method

.method private checkForInterrupts()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private fetchCertificates(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/util/List;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/rkpdapp/metrics/ProvisioningAttempt;",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/RkpKey;",
            ">;",
            "Lcom/android/rkpdapp/interfaces/SystemInterface;",
            "Lcom/android/rkpdapp/GeekResponse;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/rkpdapp/RkpdException;,
            Lco/nstant/in/cbor/CborException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    :try_start_0
    invoke-virtual {p3}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getBatchSize()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    add-int/2addr v3, v2

    invoke-interface {p2, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-direct {p0, p1, p3, p4, v2}, Lcom/android/rkpdapp/provisioner/Provisioner;->batchProvision(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/android/rkpdapp/RkpdException;

    sget-object p2, Lcom/android/rkpdapp/RkpdException$ErrorCode;->INTERNAL_ERROR:Lcom/android/rkpdapp/RkpdException$ErrorCode;

    const-string p3, "Error getting batch size from the system"

    invoke-direct {p1, p2, p3, p0}, Lcom/android/rkpdapp/RkpdException;-><init>(Lcom/android/rkpdapp/RkpdException$ErrorCode;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private generateKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;ILcom/android/rkpdapp/interfaces/SystemInterface;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/rkpdapp/metrics/ProvisioningAttempt;",
            "I",
            "Lcom/android/rkpdapp/interfaces/SystemInterface;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/rkpdapp/database/RkpKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct {p0}, Lcom/android/rkpdapp/provisioner/Provisioner;->checkForInterrupts()V

    const-wide/16 v1, 0x0

    :goto_0
    int-to-long v3, p2

    cmp-long p0, v1, v3

    if-gez p0, :cond_0

    invoke-virtual {p3, p1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->generateKey(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/database/RkpKey;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public isProvisioningNeeded(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/provisioner/Provisioner;->calculateKeysRequired(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public provisionKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    sget-object v0, Lcom/android/rkpdapp/provisioner/Provisioner;->provisionKeysLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p2}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v1}, Lcom/android/rkpdapp/provisioner/Provisioner;->calculateKeysRequired(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;)I

    move-result v1

    const-string v2, "RkpdProvisioner"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Requested number of keys for provisioning: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_PROVISIONING_NEEDED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    invoke-direct {p0, p1, v1, p2}, Lcom/android/rkpdapp/provisioner/Provisioner;->generateKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;ILcom/android/rkpdapp/interfaces/SystemInterface;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/rkpdapp/provisioner/Provisioner;->checkForInterrupts()V

    invoke-direct {p0, p1, v1, p2, p3}, Lcom/android/rkpdapp/provisioner/Provisioner;->fetchCertificates(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/util/List;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;)Ljava/util/List;

    move-result-object p2

    invoke-direct {p0}, Lcom/android/rkpdapp/provisioner/Provisioner;->checkForInterrupts()V

    invoke-direct {p0, p2, v1}, Lcom/android/rkpdapp/provisioner/Provisioner;->associateCertsWithKeys(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p2

    iget-object p3, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-virtual {p3, p2}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->insertKeys(Ljava/util/List;)V

    const-string p3, "RkpdProvisioner"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total provisioned keys: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->KEYS_SUCCESSFULLY_PROVISIONED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-object p2, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/rkpdapp/utils/Settings;->getFailureCounter(Landroid/content/Context;)I

    move-result p2

    const/4 p3, 0x5

    if-le p2, p3, :cond_1

    const-string p2, "RkpdProvisioner"

    const-string p3, "Too many failures, resetting defaults."

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/rkpdapp/provisioner/Provisioner;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/rkpdapp/utils/Settings;->resetDefaultConfig(Landroid/content/Context;)V

    :cond_1
    throw p1

    :catch_1
    move-exception p0

    sget-object p2, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->INTERRUPTED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    throw p0

    :goto_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method
