.class public Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;
.super Landroid/os/Handler;
.source "UniIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateThreadHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method private notifyPending(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;Ljava/lang/Object;)V
    .locals 2

    if-eqz p1, :cond_0

    monitor-enter p1

    :try_start_0
    iput-object p2, p1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mResult:Ljava/lang/Object;

    iget-object v0, p1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;->mStatus:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;

    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-eqz v2, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getInsertIndex()I

    move-result v3

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    iget v3, v4, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;->mErrorCode:I

    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_UPDATE_DONE simIndex: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {p0, v1, v4}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->notifyPending(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_1
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    const-string v4, "EVENT_LOAD_DONE"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, Ljava/util/List;

    :cond_3
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->notifyPending(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_2
    const/4 v2, 0x0

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_4

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v2, v3

    check-cast v2, [I

    iget-object v3, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_GET_SIZE_DONE Size: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$mlog(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Ljava/lang/String;)V

    :cond_4
    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UpdateThreadHandler;->notifyPending(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$UniRequest;Ljava/lang/Object;)V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
