.class Lcom/android/stk/StkMenuActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "StkMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkMenuActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

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

    const-string v1, "onReceive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkMenuActivity"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "session_ended"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SLOT_ID"

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLocalBroadcastReceiver SESSION_ENDED, mState : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {v0}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fgetmState(Lcom/android/stk/StkMenuActivity;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " slotId : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p2}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkMenuActivity;)I

    move-result p2

    if-ne p2, p1, :cond_4

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fputmAcceptUsersInput(Lcom/android/stk/StkMenuActivity;Z)V

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p0, v3}, Lcom/android/stk/StkMenuActivity;->-$$Nest$mshowProgressBar(Lcom/android/stk/StkMenuActivity;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "refresh_uninstall"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p1}, Lcom/android/stk/StkMenuActivity;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkMenuActivity;)V

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    goto :goto_0

    :cond_2
    const-string v0, "card_absent"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p2}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkMenuActivity;)I

    move-result p2

    if-eq p1, p2, :cond_3

    return-void

    :cond_3
    iget-object p0, p0, Lcom/android/stk/StkMenuActivity$1;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finish()V

    :cond_4
    :goto_0
    return-void
.end method
