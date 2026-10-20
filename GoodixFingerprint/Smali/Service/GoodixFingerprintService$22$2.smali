.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->onAcquired(JI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

.field final synthetic val$acquiredInfo:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;->val$acquiredInfo:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    iget-object v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;->val$acquiredInfo:I

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleAcquired(I)V

    return-void
.end method
