.class Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;
.super Landroid/content/BroadcastReceiver;
.source "UniIccRecordsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UniIccRecordsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UniIccRecordsController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UniIccRecordsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "phone"

    const v2, 0x7fffffff

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "android.telephony.extra.SIM_STATE"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", simState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniIccRecordsController"

    invoke-static {v5, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/uicc/UniIccRecordsController;)[I

    move-result-object v4

    aget v4, v4, v1

    if-ne v4, v2, :cond_1

    const-string v3, "Sim State not change return"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->-$$Nest$fgetmSimState(Lcom/android/internal/telephony/uicc/UniIccRecordsController;)[I

    move-result-object v4

    aput v2, v4, v1

    const/16 v4, 0xa

    const/4 v5, -0x1

    if-ne v2, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    const/4 v3, 0x6

    if-ne v2, v3, :cond_4

    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecordsController$1;->this$0:Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v1, v5}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->sendMessage(Landroid/os/Message;)Z

    :cond_4
    :goto_0
    return-void
.end method
