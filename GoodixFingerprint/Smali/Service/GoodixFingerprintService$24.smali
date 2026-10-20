.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;


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

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDaemonDied()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleError(I)V

    return-void
.end method

.method public onHbdData(JII[I[I)V
    .locals 6

    const-string p1, "GoodixFingerprintService"

    const-string p2, "onHbdData"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;

    move-object v0, p2

    move-object v1, p0

    move v2, p3

    move v3, p4

    move-object v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;II[I[I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
