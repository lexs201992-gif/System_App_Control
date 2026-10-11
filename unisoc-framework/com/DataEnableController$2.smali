.class Lcom/android/internal/telephony/DataEnableController$2;
.super Landroid/database/ContentObserver;
.source "DataEnableController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/DataEnableController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/DataEnableController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/DataEnableController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(Z)V
    .locals 5

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSetupWizardCompleteObserver : isDeviceProvisioned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v1}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/DataEnableController;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataEnableController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v0}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/DataEnableController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v0}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$fgetmNeedUpdateDataEnable(Lcom/android/internal/telephony/DataEnableController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$fputmNeedUpdateDataEnable(Lcom/android/internal/telephony/DataEnableController;Z)V

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object v2, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v2}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$mgetDataEnable(Lcom/android/internal/telephony/DataEnableController;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v3}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/DataEnableController;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v3

    if-eq v2, v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setDataEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v1}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/DataEnableController;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController$2;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v1, v0}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$mdisableDataForOtherSubscriptions(Lcom/android/internal/telephony/DataEnableController;I)V

    :cond_1
    return-void
.end method
