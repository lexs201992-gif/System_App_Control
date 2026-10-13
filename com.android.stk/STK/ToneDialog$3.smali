.class Lcom/android/stk/ToneDialog$3;
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

    iput-object p1, p0, Lcom/android/stk/ToneDialog$3;->this$0:Lcom/android/stk/ToneDialog;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p2, "android.intent.action.stk.finish_activity"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Finishing Tone dialog activity"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/ToneDialog$3;->this$0:Lcom/android/stk/ToneDialog;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
