.class Lcom/android/internal/telephony/DataEnableController$1;
.super Landroid/content/BroadcastReceiver;
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
.method constructor blacklist <init>(Lcom/android/internal/telephony/DataEnableController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/DataEnableController$1;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController$1;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v1}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$misDeviceProvisioned(Lcom/android/internal/telephony/DataEnableController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController$1;->this$0:Lcom/android/internal/telephony/DataEnableController;

    invoke-static {v1}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$mselectDataCardUpdate(Lcom/android/internal/telephony/DataEnableController;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/DataEnableController$1;->this$0:Lcom/android/internal/telephony/DataEnableController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/DataEnableController;->-$$Nest$fputmNeedUpdateDataEnable(Lcom/android/internal/telephony/DataEnableController;Z)V

    :cond_1
    :goto_0
    return-void
.end method
