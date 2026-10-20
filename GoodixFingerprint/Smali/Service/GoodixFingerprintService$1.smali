.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;
.super Lcom/goodix/fingerprint/service/TestCmdClient;
.source "GoodixFingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startTestCmd(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    iput-object v1, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move/from16 v5, p6

    move-object/from16 v6, p7

    move/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/goodix/fingerprint/service/TestCmdClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)V

    return-void
.end method


# virtual methods
.method public getGoodixFingerprintDaemon()Lcom/goodix/fingerprint/proxy/IGFDaemon;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemon;

    move-result-object p0

    return-object p0
.end method
