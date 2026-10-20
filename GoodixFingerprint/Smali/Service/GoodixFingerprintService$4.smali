.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->setSafeClass(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$safeClass:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;->val$safeClass:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object v0

    const-string v1, "GoodixFingerprintService"

    if-nez v0, :cond_0

    const-string p0, "setSafeClass: service not found!"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;->val$safeClass:I

    invoke-interface {v0, v2}, Lcom/goodix/fingerprint/proxy/IGFDaemonExt;->setSafeClass(I)I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$600(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFDevice;

    move-result-object v0

    iget p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;->val$safeClass:I

    iput p0, v0, Lcom/goodix/fingerprint/GFDevice;->mSafeClass:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "setSafeClass RemoteException"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
