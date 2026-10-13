.class Lcom/android/stk/StkDialogActivity$5;
.super Landroid/content/BroadcastReceiver;
.source "StkDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkDialogActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkDialogActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkDialogActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkDialogActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0xd

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkDialogActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkDialogActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p2}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkDialogActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1, v2, v3}, Lcom/android/stk/StkDialogActivity;->-$$Nest$msendResponse(Lcom/android/stk/StkDialogActivity;IZ)V

    iget-object p0, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CLOSE_SYSTEM_DIALOGS, mIsResponseSent: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v0}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmIsResponseSent(Lcom/android/stk/StkDialogActivity;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "homekey"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmIsResponseSent(Lcom/android/stk/StkDialogActivity;)Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkDialogActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkDialogActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/android/stk/StkAppService;->setmHomeKeyEvent(Z)V

    :cond_2
    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p1, v2, v3}, Lcom/android/stk/StkDialogActivity;->-$$Nest$msendResponse(Lcom/android/stk/StkDialogActivity;IZ)V

    iget-object p0, p0, Lcom/android/stk/StkDialogActivity$5;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
