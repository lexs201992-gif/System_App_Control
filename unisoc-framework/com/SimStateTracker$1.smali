.class Lcom/android/internal/telephony/SimStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "SimStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SimStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/SimStateTracker;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/SimStateTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fputmShuttingDown(Lcom/android/internal/telephony/SimStateTracker;Z)V

    goto/16 :goto_3

    :cond_2
    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    const-string v2, "MULTI_SIM_CONFIG_CHANGED"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmTeleMgr(Lcom/android/internal/telephony/SimStateTracker;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fputmPhoneCount(Lcom/android/internal/telephony/SimStateTracker;I)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/SimStateTracker;)[I

    move-result-object v1

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    goto/16 :goto_3

    :cond_3
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    const-string v3, "ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SimStateTracker;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v4

    const-string v5, "android.telephony.extra.SUBSCRIPTION_INDEX"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fputmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v3

    if-nez v3, :cond_4

    return-void

    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v4

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    const-string v5, "phone"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fputmNotifyPhoneId(Lcom/android/internal/telephony/SimStateTracker;I)V

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SimStateTracker;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v4

    invoke-static {v3, v4}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x8030005

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isPayStateSupport="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",subId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",phoneId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifyPhoneId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",mIsNotify="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v6}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmIsNotify(Lcom/android/internal/telephony/SimStateTracker;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmIsNotify(Lcom/android/internal/telephony/SimStateTracker;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4, v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fputmIsNotify(Lcom/android/internal/telephony/SimStateTracker;Z)V

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mupdateNotification(Lcom/android/internal/telephony/SimStateTracker;I)V

    goto/16 :goto_1

    :cond_5
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    const-string v3, "ACTION_LOCALE_CHANGED"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmContext(Lcom/android/internal/telephony/SimStateTracker;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetsPreviousLanguage(Lcom/android/internal/telephony/SimStateTracker;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fputsPreviousLanguage(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    const/4 v1, 0x1

    :cond_6
    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "currentLanguage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",isLanguageChange:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V

    if-eqz v1, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v4}, Lcom/android/internal/telephony/SimStateTracker;->isAllSimAbsent()Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;

    move-result-object v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v4}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    array-length v5, v4

    :goto_0
    if-ge v2, v5, :cond_a

    aget-object v6, v4, v2

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    const/16 v8, 0x3f2

    if-ne v7, v8, :cond_7

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$mcreateNoSimNotification(Lcom/android/internal/telephony/SimStateTracker;)V

    goto :goto_3

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_8
    :goto_1
    goto :goto_3

    :cond_9
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker$1;->this$0:Lcom/android/internal/telephony/SimStateTracker;

    invoke-static {v1, p2}, Lcom/android/internal/telephony/SimStateTracker;->-$$Nest$monSimStateChanged(Lcom/android/internal/telephony/SimStateTracker;Landroid/content/Intent;)V

    :cond_a
    :goto_3
    return-void
.end method
