.class Lcom/android/stk/StkAppService$12;
.super Landroid/content/BroadcastReceiver;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive, action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p2}, Lcom/android/stk/StkAppService;->hasVowifiConnected()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p2}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p2}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p2

    if-eqz p2, :cond_2

    :goto_0
    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p2}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p2

    if-ge v3, p2, :cond_a

    invoke-static {p1, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_3

    :cond_3
    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p2}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p2

    if-eqz p2, :cond_5

    :goto_1
    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p2}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p2

    if-ge v3, p2, :cond_a

    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p2, p1, v3}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;I)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1, v3}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p2, p1}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_a

    iget-object p0, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$maddToMenuSystemOrUpdateLabel(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_3

    :cond_6
    const-string p1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    const-string v0, "android.intent.extra.user_handle"

    const/4 v4, -0x1

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/stk/StkAppService;->-$$Nest$fputmCurrentUserId(Lcom/android/stk/StkAppService;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "mCurrentUserId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p2}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCurrentUserId(Lcom/android/stk/StkAppService;)I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCurrentUserId(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-eqz p1, :cond_a

    :goto_2
    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-ge v3, p1, :cond_a

    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez p1, :cond_7

    const-string p0, "secondary users,mCurrentCmd is null"

    invoke-static {v2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v3

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result p1

    sget-object p2, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {p2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result p2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v3

    iget-boolean p1, p1, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    if-nez p1, :cond_8

    const-string p1, "secondary users, need send TR"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$12;->this$0:Lcom/android/stk/StkAppService;

    const/16 p2, 0xd

    invoke-static {p1, p2, v3, v1}, Lcom/android/stk/StkAppService;->-$$Nest$msendResponse(Lcom/android/stk/StkAppService;IIZ)V

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_9
    const-string p0, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    const-string p0, "reason"

    invoke-virtual {p2, p0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "HomeKeyEvent reason:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "homekey"

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_a

    sput-boolean v1, Lcom/android/stk/StkAppService;->mHomePressedFlg:Z

    :cond_a
    :goto_3
    return-void
.end method
