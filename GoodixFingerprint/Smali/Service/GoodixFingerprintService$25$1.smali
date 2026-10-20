.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;->onAuthenticatedFido(JI[B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;

.field final synthetic val$fingerId:I

.field final synthetic val$uvtData:[B


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;->val$fingerId:I

    iput-object p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;->val$uvtData:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;

    iget-object v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;->val$fingerId:I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25$1;->val$uvtData:[B

    invoke-virtual {v0, v1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleAuthenticatedFido(I[B)V

    return-void
.end method
