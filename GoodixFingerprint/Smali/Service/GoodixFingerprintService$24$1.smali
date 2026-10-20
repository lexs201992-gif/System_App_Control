.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;->onHbdData(JII[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;

.field final synthetic val$displayData:[I

.field final synthetic val$heartBeatRate:I

.field final synthetic val$rawData:[I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;II[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$heartBeatRate:I

    iput p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$status:I

    iput-object p4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$displayData:[I

    iput-object p5, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$rawData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;

    iget-object v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$heartBeatRate:I

    iget v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$status:I

    iget-object v3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$displayData:[I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24$1;->val$rawData:[I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleHbdData(II[I[I)V

    return-void
.end method
