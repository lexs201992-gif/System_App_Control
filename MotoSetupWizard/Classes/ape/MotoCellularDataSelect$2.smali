.class Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive::Action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectData"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    const-string p1, "networkInfo"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/MultiSimUtils;->checkConnection(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$200(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CardState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/ape/setupwizard/utils/MultiSimUtils;->dualSimCardsExists(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/ape/setupwizard/utils/MultiSimUtils;->isAutoSelectCarrier(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "dual sim card does not exist ,So exiting"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setResult(I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    iget-object v1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p1, v1, v0}, Lcom/ape/setupwizard/utils/MultiSimUtils;->onNext(Landroid/content/Intent;Landroid/app/Activity;I)V

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_1
    const-string p1, "LOADED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cardState : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p1, v3}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$602(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;Z)Z

    iget-object p1, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p1}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$200(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object p0, p0, Lcom/ape/setupwizard/activity/MotoCellularDataSelect$2;->this$0:Lcom/ape/setupwizard/activity/MotoCellularDataSelect;

    invoke-static {p0}, Lcom/ape/setupwizard/activity/MotoCellularDataSelect;->access$200(Lcom/ape/setupwizard/activity/MotoCellularDataSelect;)Landroid/os/Handler;

    move-result-object p0

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    :goto_0
    return-void
.end method
