.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startHbd(Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

.field final synthetic val$opPackageName:Ljava/lang/String;

.field final synthetic val$receiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

.field final synthetic val$token:Landroid/os/IBinder;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iput-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$token:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$receiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    iput p4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$userId:I

    iput-object p5, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$opPackageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    new-instance v8, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15$1;

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$100(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$token:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$receiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    iget v5, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$userId:I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$200(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Z

    move-result v6

    iget-object v7, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->val$opPackageName:Ljava/lang/String;

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15$1;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p0, v8}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$800(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Lcom/goodix/fingerprint/service/ClientMonitor;)I

    return-void
.end method
