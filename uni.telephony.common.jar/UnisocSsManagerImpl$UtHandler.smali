.class Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;
.super Landroid/os/Handler;
.source "UnisocSsManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UnisocSsManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UtHandler"
.end annotation


# static fields
.field public static final EVENT_GET_CALL_FORWARD_DONE:I = 0x2

.field public static final EVENT_SET_CALL_FORWARD_DONE:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/UnisocSsManagerImpl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;->this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    invoke-static {}, Lcom/android/internal/telephony/UnisocSsManagerImpl;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UtHandler msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v2, v2, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;

    :cond_1
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;->this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;

    iget v3, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mPhoneId:I

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [Lcom/android/ims/internal/ImsCallForwardInfoEx;

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/UnisocSsManagerImpl;->-$$Nest$mhandleCfQueryResult(Lcom/android/internal/telephony/UnisocSsManagerImpl;I[Lcom/android/ims/internal/ImsCallForwardInfoEx;)V

    iget-object v2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;->this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;

    iget-object v3, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mOnComplete:Landroid/os/Message;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/UnisocSsManagerImpl;->-$$Nest$msendResponse(Lcom/android/internal/telephony/UnisocSsManagerImpl;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    :pswitch_1
    if-eqz v1, :cond_3

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;->this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;

    iget v3, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mCfReason:I

    iget v4, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mServiceClass:I

    invoke-static {v2, v3, v4}, Lcom/android/internal/telephony/UnisocSsManagerImpl;->-$$Nest$misVoiceUnconditionalForwarding(Lcom/android/internal/telephony/UnisocSsManagerImpl;II)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    if-eqz v2, :cond_2

    iget v2, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mPhoneId:I

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;->this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;

    iget v4, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mCfAction:I

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UnisocSsManagerImpl;->-$$Nest$misCfEnable(Lcom/android/internal/telephony/UnisocSsManagerImpl;I)Z

    move-result v3

    iget-object v4, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mDialingNumber:Ljava/lang/String;

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v3, v4}, Lcom/android/internal/telephony/Phone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/UnisocSsManagerImpl$UtHandler;->this$0:Lcom/android/internal/telephony/UnisocSsManagerImpl;

    iget-object v3, v1, Lcom/android/internal/telephony/UnisocSsManagerImpl$SsRequest;->mOnComplete:Landroid/os/Message;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4, v5}, Lcom/android/internal/telephony/UnisocSsManagerImpl;->-$$Nest$msendResponse(Lcom/android/internal/telephony/UnisocSsManagerImpl;Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
