.class Lcom/android/internal/telephony/simlock/OpSimLockController$1;
.super Landroid/content/BroadcastReceiver;
.source "OpSimLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/simlock/OpSimLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/simlock/OpSimLockController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "phone"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "ss"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/simlock/OpSimLockController$1;->this$0:Lcom/android/internal/telephony/simlock/OpSimLockController;

    invoke-static {v3, v1, v2}, Lcom/android/internal/telephony/simlock/OpSimLockController;->-$$Nest$mnotifySimStateChangedForSlot(Lcom/android/internal/telephony/simlock/OpSimLockController;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
