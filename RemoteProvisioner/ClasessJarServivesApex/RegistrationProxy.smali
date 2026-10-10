.class public Landroid/security/rkp/service/RegistrationProxy;
.super Ljava/lang/Object;
.source "RegistrationProxy.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;
    }
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "RegistrationProxy"


# instance fields
.field mBinder:Lcom/android/rkpdapp/IRegistration;


# direct methods
.method public static synthetic $r8$lambda$2XacYWljuzE3SPgZ6V_O1_51wN0(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/security/rkp/service/RegistrationProxy$2;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/security/rkp/service/RegistrationProxy;->lambda$getKeyAsync$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/security/rkp/service/RegistrationProxy$2;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smconvertGetKeyError(B)I
    .locals 0

    invoke-static {p0}, Landroid/security/rkp/service/RegistrationProxy;->convertGetKeyError(B)I

    move-result p0

    return p0
.end method

.method private constructor <init>(Lcom/android/rkpdapp/IRegistration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy;->mBinder:Lcom/android/rkpdapp/IRegistration;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/rkpdapp/IRegistration;Landroid/security/rkp/service/RegistrationProxy-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/security/rkp/service/RegistrationProxy;-><init>(Lcom/android/rkpdapp/IRegistration;)V

    return-void
.end method

.method private static convertGetKeyError(B)I
    .locals 3

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined error from rkpd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RegistrationProxy"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_1
    const/4 v0, 0x3

    return v0

    :pswitch_2
    const/4 v0, 0x2

    return v0

    :pswitch_3
    const/4 v0, 0x1

    return v0

    :pswitch_4
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "Ljava/time/Duration;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/security/rkp/service/RegistrationProxy;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    :try_start_0
    new-instance v0, Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;

    invoke-direct {v0, p0}, Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/security/rkp/service/RegistrationProxy$1;

    invoke-direct {v1, p0, v0, p4, p5}, Landroid/security/rkp/service/RegistrationProxy$1;-><init>(Landroid/content/Context;Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    nop

    invoke-virtual {v0, p3}, Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;->waitForRemoteProvisioningService(Ljava/time/Duration;)Lcom/android/rkpdapp/IRemoteProvisioning;

    move-result-object v2

    invoke-interface {v2, p1, p2, v1}, Lcom/android/rkpdapp/IRemoteProvisioning;->getRegistration(ILjava/lang/String;Lcom/android/rkpdapp/IGetRegistrationCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RegistrationProxy"

    const-string v2, "Error getting registration"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v1, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda1;

    invoke-direct {v1, p5, v0}, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V

    invoke-interface {p4, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method static synthetic lambda$createAsync$0(Landroid/os/OutcomeReceiver;Ljava/lang/Exception;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method private synthetic lambda$getKeyAsync$1(Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/security/rkp/service/RegistrationProxy$2;)V
    .locals 3

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const-string v1, "RegistrationProxy"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring cancel call after operation complete for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to cancel getKeyAsync for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy;->mBinder:Lcom/android/rkpdapp/IRegistration;

    invoke-interface {v0, p2}, Lcom/android/rkpdapp/IRegistration;->cancelGetKey(Lcom/android/rkpdapp/IGetKeyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error cancelling getKey operation"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/CancellationSignal;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/security/rkp/service/RemotelyProvisionedKey;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v1, Landroid/security/rkp/service/RegistrationProxy$2;

    invoke-direct {v1, p0, v0, p3, p4}, Landroid/security/rkp/service/RegistrationProxy$2;-><init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0, v1}, Landroid/security/rkp/service/RegistrationProxy$$ExternalSyntheticLambda0;-><init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/atomic/AtomicBoolean;Landroid/security/rkp/service/RegistrationProxy$2;)V

    invoke-virtual {p2, v2}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :try_start_0
    const-string v2, "RegistrationProxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyAsync operation started with callback "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/security/rkp/service/RegistrationProxy;->mBinder:Lcom/android/rkpdapp/IRegistration;

    invoke-interface {v2, p1, v1}, Lcom/android/rkpdapp/IRegistration;->getKey(ILcom/android/rkpdapp/IGetKeyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v3

    throw v3
.end method

.method public storeUpgradedKeyAsync([B[BLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Ljava/lang/Void;",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Landroid/security/rkp/service/RegistrationProxy$3;

    invoke-direct {v0, p0, p3, p4}, Landroid/security/rkp/service/RegistrationProxy$3;-><init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V

    :try_start_0
    const-string v1, "RegistrationProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storeUpgradedKeyAsync operation started with callback "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy;->mBinder:Lcom/android/rkpdapp/IRegistration;

    invoke-interface {v1, p1, p2, v0}, Lcom/android/rkpdapp/IRegistration;->storeUpgradedKeyAsync([B[BLcom/android/rkpdapp/IStoreUpgradedKeyCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method
