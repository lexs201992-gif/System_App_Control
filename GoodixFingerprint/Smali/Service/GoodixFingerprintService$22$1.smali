.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->onEnrollResult(JIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

.field final synthetic val$fingerId:I

.field final synthetic val$remaining:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;II)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->val$fingerId:I

    iput p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->val$remaining:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iget-object v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->val$fingerId:I

    iget v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->val$remaining:I

    invoke-virtual {v0, v1, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleEnrollResult(II)V

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iget-object v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;->val$fingerId:I

    invoke-static {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1202(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I)I

    return-void
.end method
