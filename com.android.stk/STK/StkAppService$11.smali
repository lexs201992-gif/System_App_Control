.class Lcom/android/stk/StkAppService$11;
.super Ljava/lang/Object;
.source "StkAppService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


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

    iput-object p1, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 6

    const-string v0, "The alarm time is reached"

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    const-wide/16 v2, -0x1

    invoke-static {v0, v2, v3}, Lcom/android/stk/StkAppService;->-$$Nest$fputmAlarmTime(Lcom/android/stk/StkAppService;J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCallState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v2}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_8

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v3, 0x7

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misSetupCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misHoldCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessNormalResponse(Lcom/android/stk/StkAppService;I)V

    goto/16 :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    goto/16 :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misHoldCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, v3}, Lcom/android/stk/StkAppService;->-$$Nest$fputmCallState(Lcom/android/stk/StkAppService;I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-static {p0, v0, v5}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessSetupCallResponse(Lcom/android/stk/StkAppService;IZ)V

    goto/16 :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    goto/16 :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$misAllCallsIdle(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$fputmCallState(Lcom/android/stk/StkAppService;I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-static {p0, v0, v5}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessSetupCallResponse(Lcom/android/stk/StkAppService;IZ)V

    goto :goto_1

    :cond_5
    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-ne v0, v5, :cond_a

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, v2}, Lcom/android/stk/StkAppService;->-$$Nest$fputmCallState(Lcom/android/stk/StkAppService;I)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misAllCallsIdle(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-static {p0, v0, v5}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessSetupCallResponse(Lcom/android/stk/StkAppService;IZ)V

    goto :goto_1

    :cond_7
    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misSetupCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessNormalResponse(Lcom/android/stk/StkAppService;I)V

    goto :goto_1

    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService;->-$$Nest$misSetupCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessNormalResponse(Lcom/android/stk/StkAppService;I)V

    goto :goto_1

    :cond_9
    iget-object p0, p0, Lcom/android/stk/StkAppService$11;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    :cond_a
    :goto_1
    return-void
.end method
