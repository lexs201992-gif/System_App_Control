.class Landroid/security/rkp/service/RegistrationProxy$3;
.super Lcom/android/rkpdapp/IStoreUpgradedKeyCallback$Stub;
.source "RegistrationProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/security/rkp/service/RegistrationProxy;->storeUpgradedKeyAsync([B[BLjava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/security/rkp/service/RegistrationProxy;

.field final synthetic val$executor:Ljava/util/concurrent/Executor;

.field final synthetic val$receiver:Landroid/os/OutcomeReceiver;


# direct methods
.method constructor <init>(Landroid/security/rkp/service/RegistrationProxy;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;)V
    .locals 0

    iput-object p1, p0, Landroid/security/rkp/service/RegistrationProxy$3;->this$0:Landroid/security/rkp/service/RegistrationProxy;

    iput-object p2, p0, Landroid/security/rkp/service/RegistrationProxy$3;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/security/rkp/service/RegistrationProxy$3;->val$receiver:Landroid/os/OutcomeReceiver;

    invoke-direct {p0}, Lcom/android/rkpdapp/IStoreUpgradedKeyCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onError$1(Landroid/os/OutcomeReceiver;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0, p1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Landroid/os/OutcomeReceiver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/os/OutcomeReceiver;->onResult(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upgrade key failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", callback: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$3;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$3$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, p1}, Landroid/security/rkp/service/RegistrationProxy$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/OutcomeReceiver;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upgrade key succeeded for callback "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RegistrationProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/security/rkp/service/RegistrationProxy$3;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/security/rkp/service/RegistrationProxy$3;->val$receiver:Landroid/os/OutcomeReceiver;

    new-instance v2, Landroid/security/rkp/service/RegistrationProxy$3$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Landroid/security/rkp/service/RegistrationProxy$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/OutcomeReceiver;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
