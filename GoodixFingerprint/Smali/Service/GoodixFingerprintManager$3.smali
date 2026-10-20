.class Lcom/goodix/fingerprint/service/GoodixFingerprintManager$3;
.super Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub;
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

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$3;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDump(I[B)V
    .locals 2

    const-string v0, "GoodixFingerprintManager"

    const-string v1, "onDump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$3;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;

    move-result-object p0

    const/16 v0, 0x3ea

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
