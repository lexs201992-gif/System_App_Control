.class Lcom/android/stk/ToneDialog$2;
.super Landroid/content/BroadcastReceiver;
.source "ToneDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/ToneDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/ToneDialog;


# direct methods
.method constructor <init>(Lcom/android/stk/ToneDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive, action : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    iget p2, p2, Lcom/android/stk/ToneDialog;->mSlotId:I

    invoke-virtual {p1, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p0, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_1
    const-string v0, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "slot"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object v1, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    iget v1, v1, Lcom/android/stk/ToneDialog;->mSlotId:I

    if-eq p1, v1, :cond_2

    return-void

    :cond_2
    const-string v1, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne v0, p2, :cond_5

    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    move-result-object p2

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/android/stk/StkAppService;->isAllOtherCardsAbsent(I)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2, p1}, Lcom/android/stk/StkAppService;->isMainMenuExsit(I)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/stk/ToneDialog$2;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_5
    :goto_0
    return-void
.end method
