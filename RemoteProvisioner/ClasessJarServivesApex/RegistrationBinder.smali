.class public final Lcom/android/rkpdapp/service/RegistrationBinder;
.super Lcom/android/rkpdapp/IRegistration$Stub;
.source "RegistrationBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;
    }
.end annotation


# static fields
.field public static final MIN_KEY_LIFETIME:Ljava/time/Duration;

.field static final TAG:Ljava/lang/String; = "RkpdRegistrationBinder"


# instance fields
.field private final mClientUid:I

.field private final mContext:Landroid/content/Context;

.field private final mProvisionedKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

.field private final mProvisioner:Lcom/android/rkpdapp/provisioner/Provisioner;

.field private final mRkpServer:Lcom/android/rkpdapp/interfaces/ServerInterface;

.field private final mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

.field private final mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Ljava/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private final mTasksLock:Ljava/lang/Object;

.field private final mThreadPool:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public static synthetic $r8$lambda$H0y7MIwcRQAErc6NAoeCPY_JmwY(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$storeUpgradedKeyAsync$7(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HERI4qRYSVUGLhle-iK-NBGGNdQ(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$storeUpgradedKeyAsync$8(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TliFA5y2_wUzHwCyn77kum7XL5E(Lcom/android/rkpdapp/service/RegistrationBinder;ILcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$getKey$3(ILcom/android/rkpdapp/IGetKeyCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$WuYMfPP7MKuk1tNYyQo-M-s0G9Y(Lcom/android/rkpdapp/IGetKeyCallback;Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$getKeyThreadWorker$5(Lcom/android/rkpdapp/IGetKeyCallback;Ljava/lang/Exception;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YWI62wrrIij331H0K97E26ad28Q(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$storeUpgradedKeyAsync$6(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_nV5glSgGrEP7cuSSJtTWxP5KUA(Lcom/android/rkpdapp/service/RegistrationBinder;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$provisionKeysOnKeyConsumed$2(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fMy3Do7239AFTzfHefDkXOLC2Kw(Lcom/android/rkpdapp/IGetKeyCallback;Lcom/android/rkpdapp/RemotelyProvisionedKey;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$getKeyWorker$1(Lcom/android/rkpdapp/IGetKeyCallback;Lcom/android/rkpdapp/RemotelyProvisionedKey;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hScfRbMlCxFJ5h7M1bQJMfCjb8I(Lcom/android/rkpdapp/service/RegistrationBinder;[B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$storeUpgradedKeyAsync$9([B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oFRfOzuFBxjycCGAElbq2ua6oy0(Lcom/android/rkpdapp/IGetKeyCallback;BLcom/android/rkpdapp/RkpdException;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$getKeyThreadWorker$4(Lcom/android/rkpdapp/IGetKeyCallback;BLcom/android/rkpdapp/RkpdException;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ybF4E1Rk-qvb3kMisriaLn9e_t8(Lcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 0

    invoke-static {p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->lambda$getKeyWorker$0(Lcom/android/rkpdapp/IGetKeyCallback;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/rkpdapp/service/RegistrationBinder;->MIN_KEY_LIFETIME:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/database/ProvisionedKeyDao;Lcom/android/rkpdapp/interfaces/ServerInterface;Lcom/android/rkpdapp/provisioner/Provisioner;Ljava/util/concurrent/ExecutorService;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/rkpdapp/IRegistration$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    iput-object p3, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    iput-object p4, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisionedKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    iput-object p5, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mRkpServer:Lcom/android/rkpdapp/interfaces/ServerInterface;

    iput-object p6, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisioner:Lcom/android/rkpdapp/provisioner/Provisioner;

    iput-object p7, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method private checkForCancel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/InterruptedException;

    invoke-direct {p0}, Ljava/lang/InterruptedException;-><init>()V

    throw p0
.end method

.method private checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V
    .locals 1

    :try_start_0
    invoke-interface {p1}, Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;->run()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RkpdRegistrationBinder"

    const-string v0, "Error performing client callback"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private fetchGeekAndProvisionKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Lcom/android/rkpdapp/RkpdException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mRkpServer:Lcom/android/rkpdapp/interfaces/ServerInterface;

    invoke-virtual {v0, p1}, Lcom/android/rkpdapp/interfaces/ServerInterface;->fetchGeekAndUpdate(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)Lcom/android/rkpdapp/GeekResponse;

    move-result-object v0

    iget v1, v0, Lcom/android/rkpdapp/GeekResponse;->numExtraAttestationKeys:I

    if-nez v1, :cond_0

    const-string p0, "RkpdRegistrationBinder"

    const-string v0, "Provisioning disabled."

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;->DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;

    invoke-virtual {p1, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setEnablement(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Enablement;)V

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->PROVISIONING_DISABLED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {p1, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisioner:Lcom/android/rkpdapp/provisioner/Provisioner;

    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v1, p1, p0, v0}, Lcom/android/rkpdapp/provisioner/Provisioner;->provisionKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Lcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/GeekResponse;)V

    return-void
.end method

.method private getKeyThreadWorker(ILcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 3

    iget v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->getKey(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder;->getKeyWorker(ILcom/android/rkpdapp/IGetKeyCallback;)V

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->SUCCESS:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {v0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V

    iget-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_1
    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :catchall_1
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    const-string v1, "RkpdRegistrationBinder"

    const-string v2, "Unexpected error provisioning keys"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;

    invoke-direct {v1, p2, p1}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda8;-><init>(Lcom/android/rkpdapp/IGetKeyCallback;Ljava/lang/Exception;)V

    invoke-direct {p0, v1}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V

    iget-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_3
    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_0

    :catchall_2
    move-exception p0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p0

    :catch_1
    move-exception p1

    :try_start_4
    const-string v1, "RkpdRegistrationBinder"

    const-string v2, "RKPD failed to provision keys"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {p0, p1, v0}, Lcom/android/rkpdapp/service/RegistrationBinder;->mapToGetKeyError(Lcom/android/rkpdapp/RkpdException;Lcom/android/rkpdapp/metrics/RkpdClientOperation;)B

    move-result v1

    new-instance v2, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;

    invoke-direct {v2, p2, v1, p1}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda7;-><init>(Lcom/android/rkpdapp/IGetKeyCallback;BLcom/android/rkpdapp/RkpdException;)V

    invoke-direct {p0, v2}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V

    iget-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_5
    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    goto :goto_0

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    :catch_2
    :try_start_6
    const-string p1, "RkpdRegistrationBinder"

    const-string v1, "getKey was interrupted"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->CANCELED:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {v0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda6;-><init>(Lcom/android/rkpdapp/IGetKeyCallback;)V

    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V

    iget-object p1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_7
    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p1

    :goto_0
    return-void

    :catchall_4
    move-exception p0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    throw p0

    :goto_1
    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_8
    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw p1

    :catchall_5
    move-exception p0

    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    throw p0
.end method

.method private getKeyWorker(ILcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lco/nstant/in/cbor/CborException;,
            Ljava/lang/InterruptedException;,
            Lcom/android/rkpdapp/RkpdException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Key requested for : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", clientUid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", keyId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RkpdRegistrationBinder"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v2, Lcom/android/rkpdapp/service/RegistrationBinder;->MIN_KEY_LIFETIME:Ljava/time/Duration;

    invoke-virtual {v0, v2}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisionedKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    invoke-virtual {v2, v0}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->deleteExpiringKeys(Ljava/time/Instant;)V

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisionedKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    iget-object v3, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v3}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    invoke-virtual {v2, v3, v4, p1}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getKeyForClientAndIrpc(Ljava/lang/String;II)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->tryToAssignKey(Ljava/time/Instant;I)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object v2

    :cond_0
    if-nez v2, :cond_3

    invoke-direct {p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkForCancel()V

    const-string v2, "No keys are available, kicking off provisioning"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda10;

    invoke-direct {v2, p2}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda10;-><init>(Lcom/android/rkpdapp/IGetKeyCallback;)V

    invoke-direct {p0, v2}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v3}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->createOutOfKeysAttemptMetrics(Landroid/content/Context;Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    move-result-object v2

    :try_start_0
    invoke-direct {p0, v2}, Lcom/android/rkpdapp/service/RegistrationBinder;->fetchGeekAndProvisionKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V

    :cond_1
    invoke-direct {p0, v0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->tryToAssignKey(Ljava/time/Instant;I)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object v2

    goto :goto_1

    :catchall_0
    move-exception p0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkForCancel()V

    if-nez v2, :cond_4

    const-string p1, "Unable to provision keys"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda11;

    invoke-direct {p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda11;-><init>(Lcom/android/rkpdapp/IGetKeyCallback;)V

    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V

    goto :goto_2

    :cond_4
    const-string p1, "Key successfully assigned to client"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/rkpdapp/RemotelyProvisionedKey;

    invoke-direct {p1}, Lcom/android/rkpdapp/RemotelyProvisionedKey;-><init>()V

    iget-object v0, v2, Lcom/android/rkpdapp/database/ProvisionedKey;->keyBlob:[B

    iput-object v0, p1, Lcom/android/rkpdapp/RemotelyProvisionedKey;->keyBlob:[B

    iget-object v0, v2, Lcom/android/rkpdapp/database/ProvisionedKey;->certificateChain:[B

    iput-object v0, p1, Lcom/android/rkpdapp/RemotelyProvisionedKey;->encodedCertChain:[B

    new-instance v0, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda12;

    invoke-direct {v0, p2, p1}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda12;-><init>(Lcom/android/rkpdapp/IGetKeyCallback;Lcom/android/rkpdapp/RemotelyProvisionedKey;)V

    invoke-direct {p0, v0}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V

    :goto_2
    return-void
.end method

.method private synthetic lambda$getKey$3(ILcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder;->getKeyThreadWorker(ILcom/android/rkpdapp/IGetKeyCallback;)V

    return-void
.end method

.method private static synthetic lambda$getKeyThreadWorker$4(Lcom/android/rkpdapp/IGetKeyCallback;BLcom/android/rkpdapp/RkpdException;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/android/rkpdapp/IGetKeyCallback;->onError(BLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getKeyThreadWorker$5(Lcom/android/rkpdapp/IGetKeyCallback;Ljava/lang/Exception;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/android/rkpdapp/IGetKeyCallback;->onError(BLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getKeyWorker$0(Lcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "Provisioning failed, no keys available"

    invoke-interface {p0, v0, v1}, Lcom/android/rkpdapp/IGetKeyCallback;->onError(BLjava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$getKeyWorker$1(Lcom/android/rkpdapp/IGetKeyCallback;Lcom/android/rkpdapp/RemotelyProvisionedKey;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p0, p1}, Lcom/android/rkpdapp/IGetKeyCallback;->onSuccess(Lcom/android/rkpdapp/RemotelyProvisionedKey;)V

    return-void
.end method

.method private synthetic lambda$provisionKeysOnKeyConsumed$2(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    .locals 1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->fetchGeekAndProvisionKeys(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V
    :try_end_0
    .catch Lco/nstant/in/cbor/CborException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/rkpdapp/RkpdException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "RkpdRegistrationBinder"

    const-string v0, "Error provisioning keys"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$storeUpgradedKeyAsync$6(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "No keys matching oldKeyBlob found"

    invoke-interface {p0, v0}, Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$storeUpgradedKeyAsync$7(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Internal error"

    invoke-interface {p0, v0}, Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$storeUpgradedKeyAsync$8(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;->onError(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$storeUpgradedKeyAsync$9([B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 3

    :try_start_0
    iget v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->storeUpgradedKey(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisionedKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    iget v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->upgradeKeyBlob(I[B[B)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->SUCCESS:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {v0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda2;

    invoke-direct {p1, p3}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda2;-><init>(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_KEY_NOT_FOUND:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {v0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    new-instance p1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda3;

    invoke-direct {p1, p3}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda3;-><init>(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_INTERNAL:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {v0, p2}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    const-string p2, "RkpdRegistrationBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple keys matched the upgrade ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "). This should be impossible!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda4;

    invoke-direct {p1, p3}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda4;-><init>(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    invoke-direct {p0, p1}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_3

    :try_start_2
    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    :try_start_3
    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    :try_start_4
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance p2, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;

    invoke-direct {p2, p3, p1}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda5;-><init>(Lcom/android/rkpdapp/IStoreUpgradedKeyCallback;Ljava/lang/Exception;)V

    invoke-direct {p0, p2}, Lcom/android/rkpdapp/service/RegistrationBinder;->checkedCallback(Lcom/android/rkpdapp/service/RegistrationBinder$CallbackWrapper;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private mapToGetKeyError(Lcom/android/rkpdapp/RkpdException;Lcom/android/rkpdapp/metrics/RkpdClientOperation;)B
    .locals 2

    sget-object p0, Lcom/android/rkpdapp/service/RegistrationBinder$1;->$SwitchMap$com$android$rkpdapp$RkpdException$ErrorCode:[I

    invoke-virtual {p1}, Lcom/android/rkpdapp/RkpdException;->getErrorCode()Lcom/android/rkpdapp/RkpdException$ErrorCode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, p1, :cond_0

    return v0

    :cond_0
    sget-object p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_INTERNAL:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p2, p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    return v0

    :cond_1
    sget-object p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_PERMANENT:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p2, p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    const/4 p0, 0x5

    return p0

    :cond_2
    sget-object p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_PENDING_INTERNET_CONNECTIVITY:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p2, p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    return p1
.end method

.method private provisionKeysOnKeyConsumed()V
    .locals 3

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v1}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->createKeyConsumedAttemptMetrics(Landroid/content/Context;Ljava/lang/String;)Lcom/android/rkpdapp/metrics/ProvisioningAttempt;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisioner:Lcom/android/rkpdapp/provisioner/Provisioner;

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v2}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/rkpdapp/provisioner/Provisioner;->isProvisioningNeeded(Lcom/android/rkpdapp/metrics/ProvisioningAttempt;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object p0, Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;->NO_PROVISIONING_NEEDED:Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;

    invoke-virtual {v0, p0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->setStatus(Lcom/android/rkpdapp/metrics/ProvisioningAttempt$Status;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda1;-><init>(Lcom/android/rkpdapp/service/RegistrationBinder;Lcom/android/rkpdapp/metrics/ProvisioningAttempt;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Lcom/android/rkpdapp/metrics/ProvisioningAttempt;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    throw p0
.end method

.method private tryToAssignKey(Ljava/time/Instant;I)Lcom/android/rkpdapp/database/ProvisionedKey;
    .locals 5

    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/rkpdapp/utils/Settings;->getExpiringBy(Landroid/content/Context;)Ljava/time/Duration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->plus(Ljava/time/temporal/TemporalAmount;)Ljava/time/Instant;

    move-result-object v0

    filled-new-array {v0, p1}, [Ljava/time/Instant;

    move-result-object p1

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    aget-object v1, p1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No key assigned, looking for an available key with expiry of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RkpdRegistrationBinder"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mProvisionedKeyDao:Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    iget-object v3, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v3}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    invoke-virtual {v2, v3, v1, v4, p2}, Lcom/android/rkpdapp/database/ProvisionedKeyDao;->getOrAssignKey(Ljava/lang/String;Ljava/time/Instant;II)Lcom/android/rkpdapp/database/ProvisionedKey;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/rkpdapp/service/RegistrationBinder;->provisionKeysOnKeyConsumed()V

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public cancelGetKey(Lcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RkpdRegistrationBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelGetKey("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mClientUid:I

    iget-object v2, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mSystemInterface:Lcom/android/rkpdapp/interfaces/SystemInterface;

    invoke-virtual {v2}, Lcom/android/rkpdapp/interfaces/SystemInterface;->getServiceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->cancelGetKey(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object p0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Future;

    if-nez p0, :cond_0

    const-string p0, "RkpdRegistrationBinder"

    const-string p1, "callback not found, task may have already completed"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "RkpdRegistrationBinder"

    const-string p1, "task already completed, not cancelling"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "RkpdRegistrationBinder"

    const-string p1, "task already cancelled, cannot cancel it any further"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    invoke-interface {p0, p1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :goto_0
    sget-object p0, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->SUCCESS:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {v1, p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_0
    move-exception p0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method

.method public getKey(ILcom/android/rkpdapp/IGetKeyCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mTasks:Ljava/util/HashMap;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda9;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda9;-><init>(Lcom/android/rkpdapp/service/RegistrationBinder;ILcom/android/rkpdapp/IGetKeyCallback;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Callback "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is already associated with a getKey operation that is in-progress"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public storeUpgradedKeyAsync([B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "RkpdRegistrationBinder"

    const-string v1, "storeUpgradedKeyAsync"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/rkpdapp/service/RegistrationBinder;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/rkpdapp/service/RegistrationBinder$$ExternalSyntheticLambda0;-><init>(Lcom/android/rkpdapp/service/RegistrationBinder;[B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
