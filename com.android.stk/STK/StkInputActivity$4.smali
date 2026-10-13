.class Lcom/android/stk/StkInputActivity$4;
.super Landroid/content/BroadcastReceiver;
.source "StkInputActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkInputActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkInputActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkInputActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onReceive, action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkInputActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p1}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p1}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkInputActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 p2, 0x15

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0, v2}, Lcom/android/stk/StkInputActivity;->sendResponse(ILjava/lang/String;Z)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "slot"

    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {v0}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkInputActivity;)I

    move-result v0

    if-eq p1, v0, :cond_2

    return-void

    :cond_2
    const-string v0, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_7

    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkInputActivity;)V

    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/stk/StkAppService;->getStkContext(I)Lcom/android/stk/StkAppService$StkContext;

    move-result-object p2

    iget-object p2, p2, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p2, :cond_3

    move v2, v0

    :cond_3
    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-static {p2}, Lcom/android/stk/StkInputActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkInputActivity;)Lcom/android/stk/StkAppService;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/android/stk/StkAppService;->isAllOtherCardsAbsent(I)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v2, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_5
    iget-object p0, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_6
    const-string v0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "reason"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "reason: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "homekey"

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "handleHomeKeyClick, ready to response"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    const/16 p2, 0x16

    invoke-virtual {p1, p2}, Lcom/android/stk/StkInputActivity;->sendResponse(I)V

    iget-object p0, p0, Lcom/android/stk/StkInputActivity$4;->this$0:Lcom/android/stk/StkInputActivity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_7
    :goto_0
    return-void
.end method
