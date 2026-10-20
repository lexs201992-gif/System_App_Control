.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->navigate(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$navMode:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;->val$navMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object v0

    const-string v1, "GoodixFingerprintService"

    if-nez v0, :cond_0

    const-string p0, "navigate: service not found!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;->val$navMode:I

    invoke-interface {v0, p0}, Lcom/goodix/fingerprint/proxy/IGFDaemonExt;->navigate(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "navigate RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
