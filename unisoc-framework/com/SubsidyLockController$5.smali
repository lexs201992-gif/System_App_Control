.class Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "SubsidyLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/subsidy/SubsidyLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-direct {p0}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onSubscriptionsChanged()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSubscriptionManager(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$misLowPriSim(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPrimarySubConfig(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPrimarySubConfig(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PrimarySubConfig;->getPreferredPrimaryCard()I

    move-result v2

    if-eq v1, v2, :cond_0

    const-string v2, "SubsidyLockController"

    const-string v3, "current data sub is not desired"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$5;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$mresetPrimaryCardIfNeed(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    :cond_0
    return-void
.end method
