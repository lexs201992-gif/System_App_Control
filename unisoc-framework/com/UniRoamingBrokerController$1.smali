.class Lcom/android/internal/telephony/uicc/UniRoamingBrokerController$1;
.super Landroid/content/BroadcastReceiver;
.source "UniRoamingBrokerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController$1;->this$0:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "ss"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "phone"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v2, "ABSENT"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController$1;->this$0:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->-$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;)I

    move-result v2

    if-ne v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController$1;->this$0:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->-$$Nest$mresetAllValues(Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;)V

    :cond_1
    return-void
.end method
