.class Lcom/android/stk/StkAppService$2;
.super Landroid/telephony/PhoneStateListener;
.source "StkAppService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/stk/StkAppService;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/stk/StkAppService;

.field final synthetic val$phoneId:I


# direct methods
.method constructor <init>(Lcom/android/stk/StkAppService;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    iput p2, p0, Lcom/android/stk/StkAppService$2;->val$phoneId:I

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreciseCallStateChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result v0

    iget v1, p0, Lcom/android/stk/StkAppService$2;->val$phoneId:I

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v1, 0x4

    const/16 v2, 0x9

    const/4 v3, 0x1

    const-string v4, "StkAppService"

    if-ne v0, v1, :cond_0

    const-string v0, "Call State: 4"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$misEndCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, v2}, Lcom/android/stk/StkAppService;->-$$Nest$fputmCallState(Lcom/android/stk/StkAppService;I)V

    const-string p1, "SETUP_CALL_END_CALL success cancelTimeOut()"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result p1

    invoke-static {p0, p1, v3}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessSetupCallResponse(Lcom/android/stk/StkAppService;IZ)V

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v1, 0x7

    const/4 v5, 0x2

    if-ne v0, v5, :cond_1

    const-string v0, "Call State: 2"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result p1

    if-ne p1, v5, :cond_7

    const-string p1, "SETUP_CALL_HOLD_CALL succcess cancelTimeOut()"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1, v1}, Lcom/android/stk/StkAppService;->-$$Nest$fputmCallState(Lcom/android/stk/StkAppService;I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result p1

    invoke-static {p0, p1, v3}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessSetupCallResponse(Lcom/android/stk/StkAppService;IZ)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/16 v2, 0x8

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    const/4 v2, 0x6

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-ne v0, v3, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result v0

    if-ne v0, v1, :cond_7

    const-string v0, "Call State: 7"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$misSetUpCallAfterHoldCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "SETUP_CALL_AFTER_HOLD_CALL success cancelTimeOut()"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessNormalResponse(Lcom/android/stk/StkAppService;I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$misSetUpCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V

    const-string p1, "cancelTimeOut()"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mprocessNormalResponse(Lcom/android/stk/StkAppService;I)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mstartSetUpCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string p1, "mStartSetUpCallSuccess = true"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0, v3}, Lcom/android/stk/StkAppService;->-$$Nest$fputmStartSetUpCallSuccess(Lcom/android/stk/StkAppService;Z)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmStartSetUpCallSuccess(Lcom/android/stk/StkAppService;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$misEndCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {v0, p1}, Lcom/android/stk/StkAppService;->-$$Nest$mstartSetUpCallFail(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I

    move-result p1

    const/16 v0, 0x10

    if-eq p1, v0, :cond_7

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p1}, Lcom/android/stk/StkAppService;->-$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/stk/StkAppService;->-$$Nest$fputmStartSetUpCallSuccess(Lcom/android/stk/StkAppService;Z)V

    iget-object p0, p0, Lcom/android/stk/StkAppService$2;->this$0:Lcom/android/stk/StkAppService;

    invoke-static {p0}, Lcom/android/stk/StkAppService;->-$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    :cond_7
    :goto_1
    return-void
.end method
