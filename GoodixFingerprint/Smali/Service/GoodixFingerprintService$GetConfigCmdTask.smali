.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GetConfigCmdTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;


# direct methods
.method private constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    :goto_0
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$100(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v5, v4, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUserId:I

    invoke-static {v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$200(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Z

    move-result v6

    iget-object v4, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x1a

    const/4 v9, 0x0

    const/4 v10, 0x0

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    move v9, v10

    invoke-virtual/range {v0 .. v9}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startTestCmd(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)I

    move-result v0

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v2, v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mGetConfigRetryCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mGetConfigRetryCount:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CMD_TEST_GET_CONFIG retry count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v2, v2, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mGetConfigRetryCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GoodixFingerprintService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    iget v0, v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mGetConfigRetryCount:I

    const/16 v1, 0x28

    if-ge v0, v1, :cond_0

    const-wide/16 v0, 0x3e8

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    return-void
.end method
