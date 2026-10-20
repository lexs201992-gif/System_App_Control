.class Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;
.super Ljava/lang/Object;
.source "GoodixFingerprintService.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/GoodixFingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;


# direct methods
.method constructor <init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAcquired(JI)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAcquired acquiredInfo = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;

    invoke-direct {p2, p0, p3}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$2;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onAuthenticated(JII[B)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onAuthenticated fingerId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$3;

    invoke-direct {p2, p0, p3}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$3;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDaemonDied()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->handleError(I)V

    return-void
.end method

.method public onEnrollResult(JIII)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onEnrollResult fingerId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", remaining = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;

    invoke-direct {p2, p0, p3, p5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$1;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onError(JI)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onError error = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$4;

    invoke-direct {p2, p0, p3}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$4;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRemoved(JII)V
    .locals 0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onRemoved fingerId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$5;

    invoke-direct {p2, p0, p3}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$5;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTestCmd(JI[B)V
    .locals 2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onTestCmd "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Lcom/goodix/fingerprint/Constants;->testCmdIdToString(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "GoodixFingerprintService"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x1a

    if-eq p1, p3, :cond_0

    const/16 p2, 0x1b

    if-ne p2, p3, :cond_30

    :cond_0
    invoke-static {p4}, Lcom/goodix/fingerprint/utils/TestResultParser;->parser([B)Ljava/util/HashMap;

    move-result-object p2

    if-nez p2, :cond_1

    return-void

    :cond_1
    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_2

    return-void

    :cond_2
    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    :cond_3
    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    :cond_4
    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    :cond_5
    const/16 v0, 0x320

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    :cond_6
    const/16 v0, 0x321

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    :cond_7
    const/16 v0, 0x322

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    :cond_8
    const/16 v0, 0x323

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    :cond_9
    const/16 v0, 0x324

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    :cond_a
    const/16 v0, 0x325

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    :cond_b
    const/16 v0, 0x326

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    :cond_c
    const/16 v0, 0x327

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    :cond_d
    const/16 v0, 0x328

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    :cond_e
    const/16 v0, 0x329

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    :cond_f
    const/16 v0, 0x32a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    :cond_10
    const/16 v0, 0x32b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    :cond_11
    const/16 v0, 0x32c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    :cond_12
    const/16 v0, 0x32d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    :cond_13
    const/16 v0, 0x32e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    :cond_14
    const/16 v0, 0x32f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    :cond_15
    const/16 v0, 0x330

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    :cond_16
    const/16 v0, 0x331

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x331

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    :cond_17
    const/16 v0, 0x332

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x332

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    :cond_18
    const/16 v0, 0x333

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x333

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    :cond_19
    const/16 v0, 0x334

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x334

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    :cond_1a
    const/16 v0, 0x335

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x335

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    :cond_1b
    const/16 v0, 0x336

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x336

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    :cond_1c
    const/16 v0, 0x337

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x337

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    :cond_1d
    const/16 v0, 0x338

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x338

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    :cond_1e
    const/16 v0, 0x339

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x339

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    :cond_1f
    const/16 v0, 0x33a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x33a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    :cond_20
    const/16 v0, 0x33b

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x33b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    :cond_21
    const/16 v0, 0x33c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x33c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    :cond_22
    const/16 v0, 0x33d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x33d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    :cond_23
    const/16 v0, 0x33e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x33e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    :cond_24
    const/16 v0, 0x33f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x33f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    :cond_25
    const/16 v0, 0x340

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x340

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    :cond_26
    const/16 v0, 0x341

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x341

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    :cond_27
    const/16 v0, 0x342

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x342

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    :cond_28
    const/16 v0, 0x343

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x343

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    :cond_29
    const/16 v0, 0x1450

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x1450

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    :cond_2a
    const/16 v0, 0x14b4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x14b4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    :cond_2b
    const/16 v0, 0x146

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x146

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    :cond_2c
    const/16 v0, 0x147

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x147

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, v0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    :cond_2d
    const/16 v0, 0x148

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    const/16 v1, 0x148

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    iput p2, v0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    :cond_2e
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object p2

    iget p2, p2, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    if-ge p2, v0, :cond_2f

    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object p2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    iput v0, p2, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    :cond_2f
    if-ne p1, p3, :cond_30

    return-void

    :cond_30
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;->this$0:Lcom/goodix/fingerprint/service/GoodixFingerprintService;

    invoke-static {p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;

    invoke-direct {p2, p0, p3, p4}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22$6;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;I[B)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
