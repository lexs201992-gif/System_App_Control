.class Landroid/security/rkp/service/RegistrationProxy$1;
.super Lcom/android/rkpdapp/IGetRegistrationCallback$Stub;
.source "RegistrationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/rkp/service/RegistrationProxy;->createAsync(Landroid/content/Context;ILjava/lang/String;Ljava/time/Duration;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$connection:Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$connection:Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;

    iput-object p3, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Lcom/android/rkpdapp/IGetRegistrationCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$1(Landroid/os/OutcomeReceiver;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Lcom/android/rkpdapp/IRegistration;)V
    .locals 2

    new-instance v0, Landroid/security/rkp/service/RegistrationProxy;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Landroid/security/rkp/service/RegistrationProxy;-><init>(Lcom/android/rkpdapp/IRegistration;Landroid/security/rkp/service/RegistrationProxy-IA;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 2

    const-string v0, "RegistrationProxy"

    const-string v1, "IGetRegistrationCallback.onCancel"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$connection:Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IGetRegistrationCallback.onError:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$connection:Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess(Lcom/android/rkpdapp/IRegistration;)V
    .locals 3

    const-string v0, "RegistrationProxy"

    const-string v1, "IGetRegistrationCallback.onSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$connection:Landroid/security/rkp/service/RegistrationProxy$IRemoteProvisioningConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$1;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/security/rkp/service/RegistrationProxy$1$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;Lcom/android/rkpdapp/IRegistration;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
