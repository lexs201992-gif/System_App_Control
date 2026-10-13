.class Lcom/android/stk/StkDialogActivity$6;
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

    iput-object p1, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "android.intent.action.CLOSE_DIALOG_ACTIVITY"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SLOT_ID"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CLOSE_DIALOG_ACTIVITY, mIsResponseSent: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {v1}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmIsResponseSent(Lcom/android/stk/StkDialogActivity;)Z

    move-result v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " slotId:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "StkDialogActivity"

    invoke-static {v1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p2}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmIsResponseSent(Lcom/android/stk/StkDialogActivity;)Z

    move-result p2

    if-nez p2, :cond_2

    if-eq p1, v0, :cond_2

    iget-object p2, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-static {p2}, Lcom/android/stk/StkDialogActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkDialogActivity;)I

    move-result p2

    if-ne p2, p1, :cond_2

    const-string p1, "CLOSE_DIALOG_ACTIVITY finish"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    iget-object p2, p1, Lcom/android/stk/StkDialogActivity;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean p2, p2, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-eqz p2, :cond_1

    const/16 p2, 0xd

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/android/stk/StkDialogActivity;->-$$Nest$msendResponse(Lcom/android/stk/StkDialogActivity;IZ)V

    :cond_1
    iget-object p0, p0, Lcom/android/stk/StkDialogActivity$6;->this$0:Lcom/android/stk/StkDialogActivity;

    invoke-virtual {p0}, Lcom/android/stk/StkDialogActivity;->finish()V

    :cond_2
    return-void
.end method
