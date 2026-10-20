.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;


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

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaemonDied()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleError(I)V

    return-void
.end method

.method public onDump(JI[B)V
    .locals 0

    const-string p1, "GoodixFingerprintService"

    const-string p2, "onDump"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    move-result-object p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    move-result-object p0

    invoke-interface {p0, p3, p4}, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;->onDump(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
