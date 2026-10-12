.class Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;
.super Landroid/os/Handler;
.source "MotoCellularDataSelect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ape/setupwizard/activity/MotoCellularDataSelect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;


# direct methods
.method constructor <init>(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V
    .locals 0

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage(), msg.what - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelectData"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq v0, v3, :cond_8

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-eq v0, v4, :cond_5

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/16 v2, 0x8

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDSS  EVENT_UPDATE_NW_MENU Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$500(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;I)V

    return-void

    :cond_1
    const-string p1, "UPDATE_AUTO_SELECT_DATA"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$400(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)V

    return-void

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDSS  UPDATE_SIM_NAME Message "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$300(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v2, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget-object v2, v2, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget-object v4, v4, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UPDATE_SIM_NAME,  newSim1Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mSim1Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " newSim2Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mSim2Name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget-object v1, v1, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    invoke-interface {v1, v5, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget-object v0, v0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mSimList:Ljava/util/List;

    invoke-interface {v0, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    :cond_4
    return-void

    :cond_5
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/MultiSimUtils;->checkConnection(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    iget-object p1, p1, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$200(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Landroid/os/Handler;

    move-result-object p1

    invoke-static {}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$100()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p0, v5}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$000(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;I)V

    return-void

    :cond_7
    :goto_0
    const-string p1, "Connection is True"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p1, p0, v2}, Lcom/ape/setupwizard/utils/MultiSimUtils;->onNext(Landroid/content/Intent;Landroid/app/Activity;I)V

    return-void

    :cond_8
    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setResult(I)V

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$1;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p0, v3}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$000(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;I)V

    return-void
.end method
