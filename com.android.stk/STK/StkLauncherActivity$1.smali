.class Lcom/android/stk/StkLauncherActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "StkLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkLauncherActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkLauncherActivity;


# direct methods
.method constructor <init>(Lcom/android/stk/StkLauncherActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkLauncherActivity$1;->this$0:Lcom/android/stk/StkLauncherActivity;

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

    const-string v0, "onReceive, action: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StkLauncherActivity"

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/stk/StkAppService;->getInstance()Lcom/android/stk/StkAppService;

    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/stk/StkLauncherActivity$1;->this$0:Lcom/android/stk/StkLauncherActivity;

    invoke-virtual {p1}, Lcom/android/stk/StkLauncherActivity;->isAllVowifiOn()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/android/stk/StkLauncherActivity$1;->this$0:Lcom/android/stk/StkLauncherActivity;

    invoke-virtual {p0}, Landroid/app/ListActivity;->finishAndRemoveTask()V

    :cond_1
    return-void
.end method
