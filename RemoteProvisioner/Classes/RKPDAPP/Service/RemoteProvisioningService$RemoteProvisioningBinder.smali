.class final Lcom/android/rkpdapp/service/RemoteProvisioningService$RemoteProvisioningBinder;
.super Lcom/android/rkpdapp/IRemoteProvisioning$Stub;
.source "RemoteProvisioningService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/rkpdapp/service/RemoteProvisioningService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "RemoteProvisioningBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/rkpdapp/service/RemoteProvisioningService;


# direct methods
.method constructor <init>(Lcom/android/rkpdapp/service/RemoteProvisioningService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/rkpdapp/service/RemoteProvisioningService$RemoteProvisioningBinder;->this$0:Lcom/android/rkpdapp/service/RemoteProvisioningService;

    invoke-direct {p0}, Lcom/android/rkpdapp/IRemoteProvisioning$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelGetRegistration(Lcom/android/rkpdapp/IGetRegistrationCallback;)V
    .locals 0

    const-string p0, "com.android.rkpdapp"

    const-string p1, "cancelGetRegistration"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getRegistration(ILjava/lang/String;Lcom/android/rkpdapp/IGetRegistrationCallback;)V
    .locals 9

    const-string v0, "com.android.rkpdapp"

    iget-object p0, p0, Lcom/android/rkpdapp/service/RemoteProvisioningService$RemoteProvisioningBinder;->this$0:Lcom/android/rkpdapp/service/RemoteProvisioningService;

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {p1, p2}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->getRegistration(ILjava/lang/String;)Lcom/android/rkpdapp/metrics/RkpdClientOperation;

    move-result-object p0

    :try_start_0
    invoke-static {}, Lcom/android/rkpdapp/utils/Settings;->getDefaultUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "RKP is disabled. System configured with no default URL."

    invoke-interface {p3, p1}, Lcom/android/rkpdapp/IGetRegistrationCallback;->onError(Ljava/lang/String;)V

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->RKP_UNSUPPORTED:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :cond_0
    :try_start_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    if-eq v1, v3, :cond_2

    const-string p1, "Only system server and self are allowed to call RKP service."

    invoke-interface {p3, p1}, Lcom/android/rkpdapp/IGetRegistrationCallback;->onError(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p0, :cond_1

    :try_start_3
    invoke-virtual {p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_1
    return-void

    :cond_2
    :try_start_4
    invoke-static {p2}, Lcom/android/rkpdapp/interfaces/ServiceManagerInterface;->getInstance(Ljava/lang/String;)Lcom/android/rkpdapp/interfaces/SystemInterface;

    move-result-object v4
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {v2}, Lcom/android/rkpdapp/database/RkpdDatabase;->getDatabase(Landroid/content/Context;)Lcom/android/rkpdapp/database/RkpdDatabase;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/rkpdapp/database/RkpdDatabase;->provisionedKeyDao()Lcom/android/rkpdapp/database/ProvisionedKeyDao;

    move-result-object v5

    new-instance v7, Lcom/android/rkpdapp/provisioner/Provisioner;

    invoke-direct {v7, v2, v5}, Lcom/android/rkpdapp/provisioner/Provisioner;-><init>(Landroid/content/Context;Lcom/android/rkpdapp/database/ProvisionedKeyDao;)V

    new-instance p2, Lcom/android/rkpdapp/service/RegistrationBinder;

    new-instance v6, Lcom/android/rkpdapp/interfaces/ServerInterface;

    invoke-direct {v6, v2}, Lcom/android/rkpdapp/interfaces/ServerInterface;-><init>(Landroid/content/Context;)V

    sget-object v8, Lcom/android/rkpdapp/ThreadPool;->EXECUTOR:Ljava/util/concurrent/ExecutorService;

    move-object v1, p2

    move v3, p1

    invoke-direct/range {v1 .. v8}, Lcom/android/rkpdapp/service/RegistrationBinder;-><init>(Landroid/content/Context;ILcom/android/rkpdapp/interfaces/SystemInterface;Lcom/android/rkpdapp/database/ProvisionedKeyDao;Lcom/android/rkpdapp/interfaces/ServerInterface;Lcom/android/rkpdapp/provisioner/Provisioner;Ljava/util/concurrent/ExecutorService;)V

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->SUCCESS:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    invoke-interface {p3, p2}, Lcom/android/rkpdapp/IGetRegistrationCallback;->onSuccess(Lcom/android/rkpdapp/IRegistration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    return-void

    :catch_0
    move-exception p1

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting HAL \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid HAL name: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p3, p1}, Lcom/android/rkpdapp/IGetRegistrationCallback;->onError(Ljava/lang/String;)V

    sget-object p1, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_INVALID_HAL:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p0, p1}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_1

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_3

    :try_start_9
    invoke-virtual {p0}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p2

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    throw p1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    const-string p2, "Error notifying callback binder"

    invoke-static {v0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object p2, Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;->ERROR_INTERNAL:Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;

    invoke-virtual {p0, p2}, Lcom/android/rkpdapp/metrics/RkpdClientOperation;->setResult(Lcom/android/rkpdapp/metrics/RkpdClientOperation$Result;)V

    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
