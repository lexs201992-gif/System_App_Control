.class Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;
.super Landroid/content/BroadcastReceiver;
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

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive broadcast : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFirstReceive : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmFirstReceive(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubsidyLockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "com.slc.action.ACTION_SUBSIDYLOCK_STATE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "com.sprd.action.ACTION_SUBSIDYLOCK_STATE"

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    const/4 v5, 0x1

    invoke-static {v3, v5}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fputmHasReceiveBroadcastFromSlc(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v3}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmHasReceiveBroadcastFromSlc(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v1, "Has receive Broadcast From Slc, no need to handle ACTION_SUBSIDYLOCK_STATE_EXTEND"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const-string v1, "phone"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SIM_STATE_CHANGED: simState["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v4

    if-nez v4, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$sfgetSIM_STATE_LIST()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSimStates(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return-void

    :cond_4
    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSimStates(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Ljava/lang/String;

    move-result-object v4

    aput-object v3, v4, v1

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPrimarySubConfig(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/PrimarySubConfig;->update()V

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSimStates(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Ljava/lang/String;

    move-result-object v4

    aget-object v4, v4, v1

    const-string v5, "READY"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->getRealSimSatus(I)I

    move-result v4

    if-eqz v4, :cond_e

    const-string v4, "sim ready, set emergency only according to lock state"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$msetEmergencyOnly(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)V

    goto/16 :goto_4

    :cond_5
    const-string v2, "LOADED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPrimarySubConfig(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/PrimarySubConfig;->update()V

    goto/16 :goto_4

    :cond_6
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    const-string v1, "INTENT_KEY_LOCK_SCREEN"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "true"

    const-string v5, "gsm.subsidylock.currentstate"

    const-string v6, "gsm.subsidy.lock.state"

    if-eqz v1, :cond_7

    const-string v1, "---- Receive broadcast: INTENT_KEY_LOCK_SCREEN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "1"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    const-string v1, "INTENT_KEY_SWITCH_SIM_SCREEN"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "---- Receive broadcast: INTENT_KEY_SWITCH_SIM_SCREEN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "2"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v1, "INTENT_KEY_UNLOCK_SCREEN"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    const-string v4, "false"

    if-eqz v1, :cond_9

    const-string v1, "---- Receive broadcast: INTENT_KEY_UNLOCK_SCREEN"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "3"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v1, "INTENT_KEY_UNLOCK_PERMANENTLY"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "---- Receive broadcast: INTENT_KEY_UNLOCK_PERMANENTLY"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "4"

    invoke-static {v5, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v1, "No Valid Extra For SubsidyLock"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmFirstReceive(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z

    move-result v1

    if-eqz v1, :cond_c

    const-string v1, "First Receive Broadcast, send the state to SystemUI later"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1$1;-><init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;)V

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1, v3}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fputmFirstReceive(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V

    :cond_c
    const/4 v1, 0x0

    :goto_3
    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPhoneCount(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)I

    move-result v2

    if-ge v1, v2, :cond_d

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$msetEmergencyOnly(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$1;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$menableLte(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    :cond_e
    :goto_4
    return-void
.end method
