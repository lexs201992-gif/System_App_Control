.class Lcom/android/internal/telephony/data/UniDataNetworkController$1;
.super Landroid/content/BroadcastReceiver;
.source "UniDataNetworkController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/UniDataNetworkController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/data/UniDataNetworkController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onReceive action="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataNetworkController;Ljava/lang/String;)V

    const-string v1, "android.callsettings.action.FDN_STATUS_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "subid"

    if-eqz v1, :cond_2

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-virtual {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->getIccFdnEnabled()Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fputmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onFdnChanged mLastFdnEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v4}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmLastFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mFdnEnable = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v4}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$mlog(Lcom/android/internal/telephony/data/UniDataNetworkController;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v3}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmLastFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v3

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fputmLastFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmFdnEnable(Lcom/android/internal/telephony/data/UniDataNetworkController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$mqueryFdnList(Lcom/android/internal/telephony/data/UniDataNetworkController;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmUniDataSettingsManager(Lcom/android/internal/telephony/data/UniDataNetworkController;)Lcom/android/internal/telephony/data/UniDataSettingsManager;

    move-result-object v2

    const/4 v3, 0x1

    const/16 v4, 0xd

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/data/UniDataSettingsManager;->setVendorDataEnabled(ZI)V

    :cond_1
    :goto_0
    goto :goto_2

    :cond_2
    const-string v1, "android.callsettings.action.FDN_LIST_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    if-ne v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$mqueryFdnList(Lcom/android/internal/telephony/data/UniDataNetworkController;)V

    goto :goto_1

    :cond_3
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/data/UniDataNetworkController$1;->this$0:Lcom/android/internal/telephony/data/UniDataNetworkController;

    invoke-static {v1}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$fgetmPhone(Lcom/android/internal/telephony/data/UniDataNetworkController;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v1, p2, v2}, Lcom/android/internal/telephony/data/UniDataNetworkController;->-$$Nest$msetPsDataOff(Lcom/android/internal/telephony/data/UniDataNetworkController;Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_2

    :cond_4
    :goto_1
    nop

    :goto_2
    return-void
.end method
