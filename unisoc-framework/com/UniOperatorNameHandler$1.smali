.class Lcom/android/internal/telephony/uicc/UniOperatorNameHandler$1;
.super Landroid/content/BroadcastReceiver;
.source "UniOperatorNameHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniOperatorNameHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->-$$Nest$fputmResetPlmn(Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;Ljava/lang/Boolean;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler$1;->this$0:Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;->-$$Nest$mupdatePlmn(Lcom/android/internal/telephony/uicc/UniOperatorNameHandler;)V

    :cond_1
    return-void
.end method
