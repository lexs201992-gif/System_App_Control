.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$15$1;
.super Lcom/goodix/fingerprint/service/HbdClient;
.source "GoodixFingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/goodix/fingerprint/service/HbdClient;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getGoodixFingerprintDaemonHbd()Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15$1;->this$1:Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$700(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    move-result-object p0

    return-object p0
.end method
