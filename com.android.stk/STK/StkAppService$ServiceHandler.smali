.class final Lcom/android/stk/StkAppService$ServiceHandler;
.super Landroid/os/Handler;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/stk/StkAppService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;


# direct methods
.method private constructor <init>(Lcom/android/stk/StkAppService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$ServiceHandler-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;)V

    return-void
.end method

.method private handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;I)V
    .locals 3

    const-string v0, "card_status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CardStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_3

    const-string p1, "CARD is ABSENT"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, p2}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelIdleText(Lcom/android/stk/StkAppService;I)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkService(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object p1

    aput-object v0, p1, p2

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmNotificationManager(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;

    move-result-object p1

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1, p2}, Lcom/android/stk/StkAppService;->-$$Nest$mgetNotificationId(Lcom/android/stk/StkAppService;I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    :cond_0
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkService(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object p1

    aput-object v0, p1, p2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mStkContext[slotId]: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    iput-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1, v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p1}, Lcom/android/stk/StkAppService$StkContext;->getPendingDialogInstance()Landroid/app/Activity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$StkContext;->getPendingActivityInstance()Landroid/app/Activity;

    move-result-object v1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    const-string p1, "dialog.finish"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1, v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    const-string p1, "activity.finish"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-static {p1, v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmActivityInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    :cond_2
    :goto_0
    new-instance p1, Landroid/content/Intent;

    const-string v0, "card_absent"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "SLOT_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result p1

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->PLAY_TONE:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    if-ne p1, v0, :cond_5

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, p2}, Lcom/android/stk/StkAppService;->-$$Nest$mterminateTone(Lcom/android/stk/StkAppService;I)V

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/IccRefreshResponse;-><init>()V

    const-string v1, "refresh_result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icc Refresh Result: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, p2}, Lcom/android/stk/StkAppService;->-$$Nest$mlaunchRefreshMsg(Lcom/android/stk/StkAppService;I)V

    iget p1, v0, Lcom/android/internal/telephony/uicc/IccRefreshResponse;->refreshResult:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-ne p1, v0, :cond_5

    :cond_4
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, p2}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelIdleText(Lcom/android/stk/StkAppService;I)V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const-string v0, "StkAppService"

    if-nez p1, :cond_0

    const-string p0, "ServiceHandler handleMessage msg is null"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleMessage opcode["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "], sim id["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v5, :cond_1

    check-cast v5, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cmdName["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v5

    if-eqz v5, :cond_17

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v5}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    array-length v5, v5

    if-ge v2, v5, :cond_17

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v5}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v2

    if-nez v5, :cond_2

    goto/16 :goto_7

    :cond_2
    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v5}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v5

    aget-object v5, v5, v2

    iput v1, v5, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    const/16 v5, 0x10

    if-eq v1, v5, :cond_15

    const/16 v5, 0x11

    if-eq v1, v5, :cond_15

    const/16 v5, 0x14

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eq v1, v5, :cond_14

    const/16 v5, 0x15

    if-eq v1, v5, :cond_13

    const/16 v5, 0x1f4

    if-eq v1, v5, :cond_12

    const/16 v5, 0xd05

    if-eq v1, v5, :cond_11

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    const-string p1, "Process the home key pressed event"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-ge v8, p1, :cond_16

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v8

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, v8}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleHomeKeyPressed(Lcom/android/stk/StkAppService;I)V

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :pswitch_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set dialog instance for immediate response. "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0, p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmImmediateDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    goto/16 :goto_6

    :goto_1
    :pswitch_2
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-ge v8, p1, :cond_16

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v8

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, v8}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleIdleScreen(Lcom/android/stk/StkAppService;I)V

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :pswitch_3
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleAlphaNotify(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V

    goto/16 :goto_6

    :pswitch_4
    const-string v1, "Locale Changed"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-ge v8, v0, :cond_5

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x7

    invoke-static {v0, v2, v1, v8}, Lcom/android/stk/StkAppService;->-$$Nest$mcheckForSetupEvent(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_5
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$mcreateAllChannels(Lcom/android/stk/StkAppService;)V

    goto/16 :goto_6

    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmDialogInstance(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p1, :cond_16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set pending dialog instance - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0, p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    goto/16 :goto_6

    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmActivityInstance(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set pending activity instance - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmActivityInstance(Lcom/android/stk/StkAppService$StkContext;)Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v3}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-static {v3, p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmActivityInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    if-eqz p1, :cond_6

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finish the previous pending activity - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    :cond_6
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Lcom/android/stk/StkAppService$StkContext;->getPendingDialogInstance()Landroid/app/Activity;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_7

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_16

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Clear pending dialog instance - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p0

    aget-object p0, p0, v2

    invoke-static {p0, v7}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    goto/16 :goto_6

    :pswitch_7
    const-string v1, "Card/Icc Status change received"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-direct {p0, p1, v2}, Lcom/android/stk/StkAppService$ServiceHandler;->handleCardStatusChangeAndIccRefresh(Landroid/os/Bundle;I)V

    goto/16 :goto_6

    :pswitch_8
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleDelayedCmd(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_6

    :pswitch_9
    const-string p1, " OP_BOOT_COMPLETED"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-ge v8, p1, :cond_a

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v8

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v8}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    :cond_8
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v8

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p1, :cond_9

    goto :goto_4

    :cond_9
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_a
    :goto_4
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-ne v8, p1, :cond_16

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f040004

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_16

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto/16 :goto_6

    :pswitch_a
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v2

    iget-boolean p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v2

    iput-boolean v3, p1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleSessionEnd(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_6

    :cond_b
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v0, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {v0, p0, v6, v7, v2}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto/16 :goto_6

    :pswitch_b
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez p1, :cond_c

    const-string p0, "mMainCmd is null"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage OP_LAUNCH_APP - mCmdInProgress["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean v8, Lcom/android/stk/StkAppService;->mHomePressedFlg:Z

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mcleanUpInstanceStackBySlot(Lcom/android/stk/StkAppService;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current cmd type: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mrestoreInstanceFromStackBySlot(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_6

    :pswitch_c
    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v0, p1, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleCmdResponse(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p1

    aget-object p1, p1, v2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_d

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mcallDelayedMsg(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_6

    :cond_d
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object p0

    aget-object p0, p0, v2

    iput-boolean v8, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    goto/16 :goto_6

    :pswitch_d
    const-string v1, "[OP_CMD]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f040007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    const-class v5, Lcom/android/stk/StkDialogActivity;

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/stk/StkAppService;->-$$Nest$misPackageInStack(Lcom/android/stk/StkAppService;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v4

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    if-ne v4, v5, :cond_e

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OP_CMD] the second display_text slotId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.CLOSE_DIALOG_ACTIVITY"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "SLOT_ID"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v5}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_e
    iget-object v4, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v4, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misCmdInteractive(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result v4

    if-nez v4, :cond_f

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v1, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleCmd(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto/16 :goto_6

    :cond_f
    iget-object v1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v1

    aget-object v1, v1, v2

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    if-nez v1, :cond_10

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    aget-object v0, v0, v2

    iput-boolean v3, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {p0, p1, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleCmd(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    goto :goto_6

    :cond_10
    const-string v1, "[Interactive][in progress]"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;

    move-result-object v0

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/stk/StkAppService$DelayedCmd;

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v1, p0, v3, p1, v2}, Lcom/android/stk/StkAppService$DelayedCmd;-><init>(Lcom/android/stk/StkAppService;ILcom/android/internal/telephony/cat/CatCmdMessage;I)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_6

    :cond_11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/AsyncResult;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    sget-object v0, Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;->SWITCH:Lcom/android/internal/telephony/PhoneInternalInterface$SuppService;

    if-ne p1, v0, :cond_16

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-virtual {p1, v2}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V

    goto :goto_6

    :cond_12
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mlaunchTextDialog(Lcom/android/stk/StkAppService;I)V

    goto :goto_6

    :cond_13
    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleMultiSimConfigChanged(Lcom/android/stk/StkAppService;)V

    goto :goto_6

    :cond_14
    :goto_5
    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I

    move-result p1

    if-ge v8, p1, :cond_16

    iget-object p1, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, v6, v7, v8}, Lcom/android/stk/StkAppService;->-$$Nest$mcheckForSetupEvent(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_15
    const-string v1, "Stop tone"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$ServiceHandler;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, p1, v2}, Lcom/android/stk/StkAppService;->-$$Nest$mhandleStopTone(Lcom/android/stk/StkAppService;Landroid/os/Message;I)V

    :cond_16
    :goto_6
    return-void

    :cond_17
    :goto_7
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "invalid slotId "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
