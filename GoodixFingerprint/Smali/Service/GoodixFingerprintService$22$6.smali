.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->onTestCmd(JI[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

.field final synthetic val$cmdId:I

.field final synthetic val$result:[B


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;->val$cmdId:I

    iput-object p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;->val$result:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iget-object v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;->val$cmdId:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;->val$result:[B

    invoke-virtual {v0, v1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleTestCmd(I[B)V

    return-void
.end method
