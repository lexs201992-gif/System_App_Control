.class Lcom/goodix/gftest/TouchTestActivity$7$1;
.super Ljava/lang/Object;
.source "TouchTestActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/goodix/gftest/TouchTestActivity$7;->onTestCmd(ILjava/util/HashMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/goodix/gftest/TouchTestActivity$7;

.field final synthetic val$cmdId:I

.field final synthetic val$result:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/goodix/gftest/TouchTestActivity$7;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iput p2, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$cmdId:I

    iput-object p3, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$cmdId:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v2, :cond_18

    const/4 v4, 0x7

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_17

    const/4 v7, 0x6

    if-eq v0, v1, :cond_16

    const/16 v1, 0x8

    const/16 v8, 0x9

    if-eq v0, v5, :cond_13

    if-eq v0, v1, :cond_11

    const/16 v1, 0x20

    const-string v4, "TouchTestActivity"

    if-eq v0, v1, :cond_d

    const/16 v9, 0x37

    if-eq v0, v9, :cond_b

    const/16 v9, 0x7d0

    if-eq v0, v9, :cond_7

    const/16 v1, 0x17

    if-eq v0, v1, :cond_6

    const/16 v1, 0x18

    if-eq v0, v1, :cond_5

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_4

    const/16 v2, 0x2f

    if-eq v0, v2, :cond_3

    const/16 v2, 0xd

    const/16 v4, 0xc

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2700(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4700(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xe

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4600(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4200(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3900(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_1

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4000(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4100(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v8, :cond_2

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v8, :cond_19

    :cond_2
    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$1800(Lcom/goodix/gftest/TouchTestActivity;)V

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4300(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4800(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3000(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2800(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$4900(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getConfig()Lcom/goodix/fingerprint/GFConfig;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1002(Lcom/goodix/gftest/TouchTestActivity;Lcom/goodix/fingerprint/GFConfig;)Lcom/goodix/fingerprint/GFConfig;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConfig.mChipSeries = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v2, v2, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v2

    iget v2, v2, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "; mConfig.mChipType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v2, v2, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v2

    iget v2, v2, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    const/16 v2, 0x31

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {}, Lcom/goodix/gftest/utils/checker/TestResultChecker;->getInstance()Lcom/goodix/gftest/utils/checker/TestResultChecker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker;->getTestResultCheckerFactory()Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

    move-result-object v2

    iget-object v7, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v7, v7, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v7}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v7

    iget v7, v7, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    iget-object v8, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v8, v8, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v8}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v8

    iget v8, v8, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    invoke-interface {v2, v7, v8}, Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;->createCheckerByChip(II)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$2302(Lcom/goodix/gftest/TouchTestActivity;Lcom/goodix/gftest/utils/checker/Checker;)Lcom/goodix/gftest/utils/checker/Checker;

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$5000(Lcom/goodix/gftest/TouchTestActivity;)[I

    move-result-object v0

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$502([I)[I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v2

    iget v2, v2, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    invoke-static {v0, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1202(Lcom/goodix/gftest/TouchTestActivity;I)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1200(Lcom/goodix/gftest/TouchTestActivity;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$1102(Lcom/goodix/gftest/TouchTestActivity;I)I

    :cond_8
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-virtual {v0}, Lcom/goodix/gftest/TouchTestActivity;->initView()V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v2, "testtool.txt"

    const-string v7, "testdetail.txt"

    invoke-static {v0, v2, v7}, Lcom/goodix/gftest/utils/TestHistoryUtils;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v0, v3, :cond_9

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-eq v6, v0, :cond_9

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$1000(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object v0

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    if-ne v0, v5, :cond_a

    :cond_9
    const-string v0, "TEST_CHECK_SENSOR_TEST_INFO start"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3600(Lcom/goodix/gftest/TouchTestActivity;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/goodix/gftest/TouchTestActivity;->access$102(Lcom/goodix/gftest/TouchTestActivity;I)I

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3700(Lcom/goodix/gftest/TouchTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$4900(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v4, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v4, v4, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {v1, v4}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/goodix/gftest/TouchTestActivity;->access$3502(Lcom/goodix/gftest/TouchTestActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v1, v1, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const v2, 0x7f0d010d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    new-instance v1, Lcom/goodix/gftest/TouchTestActivity$7$1$2;

    invoke-direct {v1, p0}, Lcom/goodix/gftest/TouchTestActivity$7$1$2;-><init>(Lcom/goodix/gftest/TouchTestActivity$7$1;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_a
    invoke-static {}, Lcom/goodix/gftest/TouchTestActivity;->access$500()[I

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-virtual {v0}, Lcom/goodix/gftest/TouchTestActivity;->getTimeout()V

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$2000(Lcom/goodix/gftest/TouchTestActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$5100(Lcom/goodix/gftest/TouchTestActivity;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    const/16 v1, 0x2d1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4400(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_c
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    const/16 v1, 0x2cf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$4500(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_d
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3500(Lcom/goodix/gftest/TouchTestActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    :cond_e
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    const/16 v1, 0x384

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object v2, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/goodix/gftest/TouchTestActivity;->access$102(Lcom/goodix/gftest/TouchTestActivity;I)I

    :cond_f
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0, v3}, Lcom/goodix/gftest/TouchTestActivity;->access$3602(Lcom/goodix/gftest/TouchTestActivity;Z)Z

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$100(Lcom/goodix/gftest/TouchTestActivity;)I

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "Sensor validity test Fail"

    invoke-static {v4, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v1, v1, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v1, v1, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const v2, 0x7f0d013d

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v1, v1, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const v2, 0x7f0d010e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v1, v1, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    const v2, 0x7f0d00f7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/goodix/gftest/TouchTestActivity$7$1$1;

    invoke-direct {v2, p0}, Lcom/goodix/gftest/TouchTestActivity$7$1$1;-><init>(Lcom/goodix/gftest/TouchTestActivity$7$1;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$3700(Lcom/goodix/gftest/TouchTestActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3800(Lcom/goodix/gftest/TouchTestActivity;)Lcom/goodix/gftest/TouchTestActivity$MyAdapter;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const-string p0, "Sensor validity test Pass"

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2400(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2500(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_14

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3200(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_15

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3300(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto/16 :goto_0

    :cond_15
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v7, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3400(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_16
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2900(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_17
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v4, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$3100(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_18
    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    invoke-static {v0}, Lcom/goodix/gftest/TouchTestActivity;->access$900(Lcom/goodix/gftest/TouchTestActivity;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v3, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->this$1:Lcom/goodix/gftest/TouchTestActivity$7;

    iget-object v0, v0, Lcom/goodix/gftest/TouchTestActivity$7;->this$0:Lcom/goodix/gftest/TouchTestActivity;

    iget-object p0, p0, Lcom/goodix/gftest/TouchTestActivity$7$1;->val$result:Ljava/util/HashMap;

    invoke-static {v0, p0}, Lcom/goodix/gftest/TouchTestActivity;->access$2600(Lcom/goodix/gftest/TouchTestActivity;Ljava/util/HashMap;)V

    :cond_19
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x25
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x41
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
