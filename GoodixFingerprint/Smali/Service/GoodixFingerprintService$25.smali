.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticatedFido(JI[B)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAuthenticatedFido, fingerId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;

    invoke-direct {p2, p0, p3, p4}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;I[B)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDaemonDied()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleError(I)V

    return-void
.end method
