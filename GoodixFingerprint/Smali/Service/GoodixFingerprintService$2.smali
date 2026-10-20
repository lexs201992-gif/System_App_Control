.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$cmdId:I

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$param:[B

.field final synthetic val$receiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;I[B)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$receiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    iput p4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$userId:I

    iput-object p5, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$opPackageName:Ljava/lang/String;

    iput p6, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$cmdId:I

    iput-object p7, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$param:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$100(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$token:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$receiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    iget v4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$userId:I

    iget-object v5, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$200(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Z

    move-result v5

    iget-object v6, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$opPackageName:Ljava/lang/String;

    iget v7, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$cmdId:I

    iget-object v8, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;->val$param:[B

    const/4 v9, 0x1

    invoke-virtual/range {v0 .. v9}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startTestCmd(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)I

    return-void
.end method
