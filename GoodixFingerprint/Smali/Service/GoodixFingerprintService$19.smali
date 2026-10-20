.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->stopAuthenticateFido(Landroid/os/IBinder;Ljava/lang/String;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$token:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;->val$token:Landroid/os/IBinder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/service/ClientMonitor;

    move-result-object v0

    const-string v1, "GoodixFingerprintService"

    if-nez v0, :cond_0

    const-string p0, "current client is null, can\'t cancel"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v2

    iget-object v3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;->val$token:Landroid/os/IBinder;

    if-ne v2, v3, :cond_1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1000(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Lcom/goodix/fingerprint/service/ClientMonitor;Z)V

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t stop client "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " since tokens don\'t match"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t cancel non-AuthenticateFido client "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
