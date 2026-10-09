.class public Lcom/android/internal/telephony/UtExProxy;
.super Ljava/lang/Object;
.source "UtExProxy.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "UtExProxy"

.field private static sUtExProxy:Lcom/android/internal/telephony/UtExProxy;


# instance fields
.field private mIImsUtEx:Lcom/android/ims/internal/IImsUtEx;

.field private final mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

.field private mLockObj:Ljava/lang/Object;

.field private mPendingCmds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field

.field private mPhoneId:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmLockObj(Lcom/android/internal/telephony/UtExProxy;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/UtExProxy;->mLockObj:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPendingCmds(Lcom/android/internal/telephony/UtExProxy;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/UtExProxy;->mPendingCmds:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msendFailureReport(Lcom/android/internal/telephony/UtExProxy;Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendFailureReport(Lcom/android/internal/telephony/UtExProxy;Landroid/os/Message;Ljava/lang/Object;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Ljava/lang/Object;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSuccessReport(Lcom/android/internal/telephony/UtExProxy;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UtExProxy;->sendSuccessReport(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSuccessReport(Lcom/android/internal/telephony/UtExProxy;Landroid/os/Message;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/UtExProxy;->sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/UtExProxy;->sUtExProxy:Lcom/android/internal/telephony/UtExProxy;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mLockObj:Ljava/lang/Object;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mPendingCmds:Landroid/util/SparseArray;

    new-instance v0, Lcom/android/internal/telephony/UtExProxy$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/UtExProxy$1;-><init>(Lcom/android/internal/telephony/UtExProxy;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    return-void
.end method

.method private getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCommandException code= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", errorString= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UtExProxy"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    :sswitch_1
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    :sswitch_2
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    goto :goto_0

    :sswitch_3
    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    nop

    :goto_0
    new-instance v1, Lcom/android/internal/telephony/CommandException;

    invoke-direct {v1, v0, p2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;Ljava/lang/String;)V

    return-object v1

    :sswitch_data_0
    .sparse-switch
        0xf1 -> :sswitch_3
        0x321 -> :sswitch_2
        0x322 -> :sswitch_1
        0x335 -> :sswitch_0
    .end sparse-switch
.end method

.method private getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/android/ims/ImsException;

    if-eqz v1, :cond_0

    move-object v1, p1

    check-cast v1, Lcom/android/ims/ImsException;

    invoke-virtual {v1}, Lcom/android/ims/ImsException;->getCode()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/UtExProxy;->getCommandException(ILjava/lang/String;)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "UtExProxy"

    const-string v2, "getCommandException generic failure"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/internal/telephony/CommandException;

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/CommandException;-><init>(Lcom/android/internal/telephony/CommandException$Error;)V

    move-object v0, v1

    :goto_0
    return-object v0
.end method

.method private getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mIImsUtEx:Lcom/android/ims/internal/IImsUtEx;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mIImsUtEx:Lcom/android/ims/internal/IImsUtEx;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    iget-object v2, p0, Lcom/android/internal/telephony/UtExProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-interface {v0, v1, v2}, Lcom/android/ims/internal/IImsUtEx;->setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    const-string v1, "Service ims_ex hasn\'t started!"

    invoke-direct {v0, v1}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mIImsUtEx:Lcom/android/ims/internal/IImsUtEx;

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/android/internal/telephony/UtExProxy;
    .locals 2

    const-class v0, Lcom/android/internal/telephony/UtExProxy;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/UtExProxy;->sUtExProxy:Lcom/android/internal/telephony/UtExProxy;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/UtExProxy;

    invoke-direct {v1}, Lcom/android/internal/telephony/UtExProxy;-><init>()V

    sput-object v1, Lcom/android/internal/telephony/UtExProxy;->sUtExProxy:Lcom/android/internal/telephony/UtExProxy;

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/UtExProxy;->sUtExProxy:Lcom/android/internal/telephony/UtExProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    .locals 3

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "IMS UT exception"

    goto :goto_0

    :cond_1
    iget-object v0, p2, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    :goto_0
    nop

    new-instance v1, Lcom/android/ims/ImsException;

    iget v2, p2, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-direct {v1, v0, v2}, Lcom/android/ims/ImsException;-><init>(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UtExProxy;->getCommandException(Ljava/lang/Throwable;)Lcom/android/internal/telephony/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private sendFailureReport(Landroid/os/Message;Ljava/lang/Object;I)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p3}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendSuccessReport(Landroid/os/Message;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private sendSuccessReport(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UtExProxy;->getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    invoke-interface {v2, v3, p1, p2, p3}, Lcom/android/ims/internal/IImsUtEx;->changeBarringPassword(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_0

    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v3

    invoke-direct {p0, p4, v1, v3}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Ljava/lang/Object;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/UtExProxy;->mPendingCmds:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v3

    invoke-direct {p0, p4, v1, v3}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Ljava/lang/Object;I)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public getCallForwardingOption(IILjava/lang/String;Landroid/os/Message;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mLockObj:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UtExProxy;->getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    invoke-interface {v1, v2, p1, p2, p3}, Lcom/android/ims/internal/IImsUtEx;->getCallForwardingOption(IIILjava/lang/String;)I

    move-result v1

    if-gez v1, :cond_0

    new-instance v2, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v3, 0x322

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, p4, v2}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/UtExProxy;->mPendingCmds:Landroid/util/SparseArray;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_3
    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, p4, v3, v2}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Ljava/lang/Object;I)V

    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public setCallForwardingOption(IIILjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 12

    move-object v1, p0

    move-object/from16 v2, p7

    iget-object v3, v1, Lcom/android/internal/telephony/UtExProxy;->mLockObj:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UtExProxy;->getIImsUtEx()Lcom/android/ims/internal/IImsUtEx;

    move-result-object v4

    iget v5, v1, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    move v6, p1

    move v7, p2

    move v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    invoke-interface/range {v4 .. v11}, Lcom/android/ims/internal/IImsUtEx;->setCallForwardingOption(IIIILjava/lang/String;ILjava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    new-instance v4, Landroid/telephony/ims/ImsReasonInfo;

    const/16 v5, 0x322

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Landroid/telephony/ims/ImsReasonInfo;-><init>(II)V

    invoke-direct {p0, v2, v4}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Landroid/telephony/ims/ImsReasonInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :cond_0
    :try_start_2
    iget-object v4, v1, Lcom/android/internal/telephony/UtExProxy;->mPendingCmds:Landroid/util/SparseArray;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_3
    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CommandException$Error;->ordinal()I

    move-result v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v5, v4}, Lcom/android/internal/telephony/UtExProxy;->sendFailureReport(Landroid/os/Message;Ljava/lang/Object;I)V

    :goto_0
    monitor-exit v3

    return-void

    :goto_1
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method

.method public setPhoneId(I)V
    .locals 3

    iget v0, p0, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/android/internal/telephony/UtExProxy;->mPhoneId:I

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/UtExProxy;->mIImsUtEx:Lcom/android/ims/internal/IImsUtEx;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/UtExProxy;->mImsUtListenerExBinder:Lcom/android/ims/internal/IImsUtListenerEx$Stub;

    invoke-interface {v0, p1, v1}, Lcom/android/ims/internal/IImsUtEx;->setListenerEx(ILcom/android/ims/internal/IImsUtListenerEx;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "UtExProxy"

    const-string v2, "Service ims_ex hasn\'t started!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
