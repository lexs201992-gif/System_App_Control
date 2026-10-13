.class Lcom/android/stk/StkMenuActivity$3;
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

    iput-object p1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mReceiver action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StkMenuActivity"

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p1}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p1}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fgetappService(Lcom/android/stk/StkMenuActivity;)Lcom/android/stk/StkAppService;

    move-result-object p1

    iget-object p2, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-static {p2}, Lcom/android/stk/StkMenuActivity;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkMenuActivity;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    const/16 p2, 0x16

    invoke-static {p1, p2}, Lcom/android/stk/StkMenuActivity;->-$$Nest$msendResponse(Lcom/android/stk/StkMenuActivity;I)V

    iget-object p0, p0, Lcom/android/stk/StkMenuActivity$3;->this$0:Lcom/android/stk/StkMenuActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finishAndRemoveTask()V

    :cond_1
    return-void
.end method
