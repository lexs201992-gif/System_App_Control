.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->dumpCmd(I[BLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$cmdId:I

.field final synthetic val$param:[B


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;->val$cmdId:I

    iput-object p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;->val$param:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object v0

    const-string v1, "GoodixFingerprintService"

    if-nez v0, :cond_0

    const-string p0, "dumpCmd: service not found!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;->val$cmdId:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;->val$param:[B

    invoke-interface {v0, v2, p0}, Lcom/goodix/fingerprint/proxy/IGFDaemonExt;->dumpCmd(I[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "dumpCmd RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
