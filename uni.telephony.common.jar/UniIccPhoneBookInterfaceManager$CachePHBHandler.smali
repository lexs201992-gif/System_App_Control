.class public Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;
.super Landroid/os/Handler;
.source "UniIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CachePHBHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$fputmIsPhonebookLoading(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    const/16 v1, 0x6f3a

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAdnRecordsInEfEx(I)Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    const/16 v1, 0x6f49

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getAdnRecordsInEfEx(I)Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->getGasInEf()Ljava/util/List;

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$fgetmLockForReadSizes(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-static {v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$fgetmLockForReadSizes(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$fputmIsPhonebookLoading(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;Z)V

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager$CachePHBHandler;->this$0:Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;

    invoke-static {v0}, Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;->-$$Nest$monUpdateIccAvailability(Lcom/android/internal/telephony/UniIccPhoneBookInterfaceManager;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
