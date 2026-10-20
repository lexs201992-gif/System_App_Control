.class Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;
.super Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(I)V
    .locals 2

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x65

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticateFido(I[B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticateFido, fingerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoodixFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x3eb

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    iput p1, p0, Landroid/os/Message;->arg1:I

    iput-object p2, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x67

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onAuthenticationSucceeded(I)V
    .locals 2

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x66

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onEnrollResult(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onEnrollResult fingerId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " remaining = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoodixFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x64

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onError(I)V
    .locals 2

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x68

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onHbdData(II[I[I)V
    .locals 8

    const-string v0, "GoodixFingerprintManager"

    const-string v1, "onHbdData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v7, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;

    move-object v1, v7

    move-object v2, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;II[I[I)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(I)V
    .locals 2

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x69

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onTestCmd(I[B)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTestCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/goodix/fingerprint/Constants;->testCmdIdToString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoodixFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
