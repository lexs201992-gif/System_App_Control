.class Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;
.super Ljava/lang/Object;
.source "SubsidyLockController.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/subsidy/SubsidyLockController;->addRadioInteractorListener()V
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

    iput-object p1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string v0, "on radioInteractor service connected"

    const-string v1, "SubsidyLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    new-instance v2, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v3}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fputmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Lcom/android/unisoc/telephony/RadioInteractor;)V

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPhoneCount(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)I

    move-result v2

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v3, v0}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$mgetRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v3}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v3

    aget-object v3, v3, v0

    const/16 v4, 0x4000

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v3}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v3

    aget-object v3, v3, v0

    const/high16 v4, 0x100000

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/unisoc/telephony/RadioInteractor;->getSubsidyLockStatus(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v5, v4

    :cond_1
    invoke-static {v3, v5}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fputmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;Z)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "When radioInteractor service connected, SubsidyLock state is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmSubsidyLocked(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.sprd.action.ACTION_REMOVE_SUBSIDYLOCK_INIT"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.systemui"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "INTENT_KEY_SUBSIDYLOCK_STATUS"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v4, 0x20000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v4}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v4, v3, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public whitelist onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmPhoneCount(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v1}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)Lcom/android/unisoc/telephony/RadioInteractor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/subsidy/SubsidyLockController$2;->this$0:Lcom/android/internal/telephony/subsidy/SubsidyLockController;

    invoke-static {v2}, Lcom/android/internal/telephony/subsidy/SubsidyLockController;->-$$Nest$fgetmRadioInteractorListener(Lcom/android/internal/telephony/subsidy/SubsidyLockController;)[Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v2

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
