.class Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "UniEmergencyNumberTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    const-string v3, "phone"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "ss"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_SIM_STATE_CHANGED: intentPhoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " phoneId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " simState "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->-$$Nest$mlogd(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    invoke-static {v4, v1, v2, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->-$$Nest$mneedInitDatabase(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;IILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->-$$Nest$minitializeDatabaseSimStateChange(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker$1;->this$0:Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;->-$$Nest$mremoveRadioEccListBySource(Lcom/android/internal/telephony/emergency/UniEmergencyNumberTracker;I)V

    :cond_2
    return-void

    :cond_3
    return-void
.end method
