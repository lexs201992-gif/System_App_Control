.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$18$1;
.super Lcom/goodix/fingerprint/service/AuthenticateFidoClient;
.source "GoodixFingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;[B[B)V
    .locals 9

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$18$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    invoke-direct/range {v0 .. v8}, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;[B[B)V

    return-void
.end method


# virtual methods
.method public getGoodixFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$18$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    return-object p0
.end method
