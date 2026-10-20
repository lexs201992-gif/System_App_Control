.class Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;
.super Ljava/lang/Object;
.source "GoodixFingerprintManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->onHbdData(II[I[I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;

.field final synthetic val$displayData:[I

.field final synthetic val$heartBeatRate:I

.field final synthetic val$rawData:[I

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;II[I[I)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;

    iput p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;->val$heartBeatRate:I

    iput p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;->val$status:I

    iput-object p4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;->val$displayData:[I

    iput-object p5, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;->val$rawData:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->access$1600(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$HbdCallback;

    return-void
.end method
