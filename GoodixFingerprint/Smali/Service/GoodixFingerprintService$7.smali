.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->enableFingerprintModule(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$enable:Z


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Z)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput-boolean p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;->val$enable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object v0

    const-string v1, "GoodixFingerprintService"

    if-nez v0, :cond_0

    const-string p0, "enableFingerprintModule: service not found!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-boolean p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;->val$enable:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/goodix/fingerprint/proxy/IGFDaemonExt;->enableFingerprintModule(B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "enableFingerprintModule RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
