.class Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;
.super Lcom/android/unisoc/telephony/RadioInteractorListener;
.source "SubsidyLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subsidy/SubsidyLockController;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

.field final synthetic blacklist val$phoneId:I


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/subsidy/SubsidyLockController;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    iput p3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->val$phoneId:I

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/RadioInteractorListener;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist onRealSimStateChangedEvent()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRealSimStateChangedEvent phoneId= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->val$phoneId:I

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->getRealSimSatus(I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    iget v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->val$phoneId:I

    invoke-static {v0, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$msetSimEnabledForOperator(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)V

    :cond_0
    return-void
.end method

.method public blacklist onSubsidyLockEvent(Ljava/lang/Object;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubsidyLockEvent phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->val$phoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_6

    iget v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->val$phoneId:I

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    if-ne v2, v4, :cond_1

    move v6, v4

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-static {v5, v6}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fputmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SubsidyLock change to "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v5}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPhoneCount(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$msetSimEnabledForOperator(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v3, v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$misLowPriSim(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2, v4}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$mresetPrimaryCardIfNeed(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$menableLte(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)V

    goto :goto_2

    :cond_5
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sprd.action.ACTION_SUBSIDYLOCK_STATUS_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "INTENT_KEY_SUBSIDYLOCK_STATUS"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x20000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$3;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_6
    :goto_3
    return-void
.end method
