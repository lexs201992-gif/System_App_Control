.class Landroid/security/rkp/service/RegistrationProxy$2;
.super Lcom/android/rkpdapp/IGetKeyCallback$Stub;
.source "RegistrationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/rkp/service/RegistrationProxy;->getKeyAsync(ILandroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/rkp/service/RegistrationProxy;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$operationComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final synthetic val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor <init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy$2;->this$0:Landroid/security/rkp/service/RegistrationProxy;

    iput-object p2, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$operationComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p3, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p4, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Lcom/android/rkpdapp/IGetKeyCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCancel$1(Landroid/os/OutcomeReceiver;)V
    .locals 1

    new-instance v0, Landroid/os/OperationCanceledException;

    invoke-direct {v0}, Landroid/os/OperationCanceledException;-><init>()V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$onError$2(Landroid/os/OutcomeReceiver;BLjava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/security/rkp/service/RkpProxyException;

    invoke-static {p1}, Landroid/security/rkp/service/RegistrationProxy;->-$$Nest$smconvertGetKeyError(B)I

    move-result v1

    invoke-direct {v0, v1, p2}, Landroid/security/rkp/service/RkpProxyException;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Landroid/os/OutcomeReceiver;Lcom/android/rkpdapp/RemotelyProvisionedKey;)V
    .locals 1

    new-instance v0, Landroid/security/rkp/service/RemotelyProvisionedKey;

    invoke-direct {v0, p1}, Landroid/security/rkp/service/RemotelyProvisionedKey;-><init>(Lcom/android/rkpdapp/RemotelyProvisionedKey;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$operationComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring extra cancel for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onError(BLjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$operationComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1, p1, p2}, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda2;-><init>(Landroid/os/OutcomeReceiver;BLjava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring extra error ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onProvisioningNeeded()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Provisioning required before keys are available for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSuccess(Lcom/android/rkpdapp/RemotelyProvisionedKey;)V
    .locals 3

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$operationComplete:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$2;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/security/rkp/service/RegistrationProxy$2$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Lcom/android/rkpdapp/RemotelyProvisionedKey;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring extra success for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
