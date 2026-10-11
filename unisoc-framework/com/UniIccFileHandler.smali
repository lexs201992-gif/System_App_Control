.class public Lcom/android/internal/telephony/uicc/UniIccFileHandler;
.super Landroid/os/Handler;
.source "UniIccFileHandler.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UniUiccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;
    }
.end annotation


# static fields
.field protected static final blacklist COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final blacklist COMMAND_READ_BINARY:I = 0xb0

.field protected static final blacklist COMMAND_READ_RECORD:I = 0xb2

.field protected static final blacklist COMMAND_SEEK:I = 0xa2

.field protected static final blacklist COMMAND_UPDATE_BINARY:I = 0xd6

.field protected static final blacklist COMMAND_UPDATE_RECORD:I = 0xdc

.field private static final blacklist DBG:Z = true

.field protected static final blacklist EF_TYPE_CYCLIC:I = 0x3

.field protected static final blacklist EF_TYPE_LINEAR_FIXED:I = 0x1

.field protected static final blacklist EF_TYPE_TRANSPARENT:I = 0x0

.field protected static final blacklist EVENT_GET_BINARY_SIZE_DONE:I = 0x1

.field protected static final blacklist EVENT_GET_RECORD_SIZE_DONE:I = 0x3

.field protected static final blacklist EVENT_READ_BINARY_DONE:I = 0x2

.field protected static final blacklist EVENT_READ_RECORD_DONE:I = 0x4

.field protected static final blacklist EVENT_UPDATE_BINARY_DONE:I = 0x5

.field protected static final blacklist GET_RESPONSE_EF_IMG_SIZE_BYTES:I = 0xa

.field protected static final blacklist GET_RESPONSE_EF_SIZE_BYTES:I = 0xf

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "UniIccFileHandler"

.field protected static final blacklist READ_RECORD_MODE_ABSOLUTE:I = 0x4

.field protected static final blacklist RESPONSE_DATA_FILE_ID_1:I = 0x4

.field protected static final blacklist RESPONSE_DATA_FILE_ID_2:I = 0x5

.field protected static final blacklist RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final blacklist RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field protected static final blacklist RESPONSE_DATA_FILE_TYPE:I = 0x6

.field protected static final blacklist RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field protected static final blacklist RESPONSE_DATA_STRUCTURE:I = 0xd

.field protected static final blacklist TYPE_EF:I = 0x4


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mIccType:I

.field blacklist mMessenger:Landroid/os/Messenger;

.field private blacklist mPhoneId:I

.field private blacklist mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field blacklist mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field blacklist sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor blacklist <init>(ILandroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRequestList:Landroid/util/SparseArray;

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mIccType:I

    iput p3, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {v0, p2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    new-instance v0, Landroid/os/Messenger;

    invoke-direct {v0, p0}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private blacklist findAndRemoveMessageFromList(I)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private blacklist getSerial(Ljava/lang/Object;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndUpdate(Ljava/util/function/IntUnaryOperator;)I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSerial = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private blacklist getUniIccIoResult([B)Lcom/android/internal/telephony/uicc/UniIccIoResult;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    array-length v1, p1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    array-length v1, p1

    sub-int/2addr v1, v2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    array-length v3, p1

    add-int/lit8 v3, v3, -0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    array-length v4, p1

    sub-int/2addr v4, v2

    new-array v4, v4, [B

    array-length v5, p1

    sub-int/2addr v5, v2

    const/4 v2, 0x0

    invoke-static {p1, v2, v4, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v2, Lcom/android/internal/telephony/uicc/UniIccIoResult;

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/uicc/UniIccIoResult;-><init>(II[B)V

    move-object v0, v2

    return-object v0

    :cond_1
    :goto_0
    return-object v0
.end method

.method static synthetic blacklist lambda$getSerial$0(I)I
    .locals 2

    add-int/lit8 v0, p0, 0x1

    const v1, 0x7fffffff

    rem-int/2addr v0, v1

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UniIccFileHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniIccFileHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UniIccFileHandler"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniIccFileHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist processException(Landroid/os/Message;Lcom/android/internal/telephony/uicc/UniIccIoResult;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-instance v2, Lcom/android/internal/telephony/uicc/UniIccException;

    const-string v3, "length wrong"

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UniIccException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UniIccIoResult;->getException()Lcom/android/internal/telephony/uicc/UniIccException;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, p1, v1, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method private blacklist sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1, p2, p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method protected blacklist getEFPath(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mIccType:I

    const/4 v2, 0x2

    if-ne v2, v1, :cond_0

    const-string v0, "3F007FFF"

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v2, v1, :cond_1

    const-string v0, "3F007F20"

    goto :goto_0

    :sswitch_1
    const-string v1, "3F007F20"

    move-object v0, v1

    return-object v1

    :sswitch_2
    const-string v0, "3F007F43"

    goto :goto_0

    :sswitch_3
    const-string v1, "3F007FFF5FC0"

    return-object v1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " getEFPath, return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x4f08 -> :sswitch_3
        0x6f02 -> :sswitch_2
        0x6f14 -> :sswitch_1
        0x6f18 -> :sswitch_1
        0x6f30 -> :sswitch_0
        0x6f38 -> :sswitch_0
        0x6f60 -> :sswitch_0
        0x6fad -> :sswitch_0
        0x6fb7 -> :sswitch_0
        0x6fc5 -> :sswitch_0
        0x6fc6 -> :sswitch_0
        0x6fcd -> :sswitch_0
        0x6fd9 -> :sswitch_0
        0x6ff9 -> :sswitch_0
    .end sparse-switch
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleMessage Message = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    iget v3, v2, Landroid/os/Message;->arg1:I

    const/4 v4, 0x0

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->findAndRemoveMessageFromList(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccIoContext = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    :try_start_0
    iget v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mWhat:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    const/4 v13, 0x1

    const/4 v14, 0x6

    const/4 v11, 0x4

    const-string v15, "data = "

    const-string v12, "payload"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mPath:Ljava/lang/String;

    move-object v9, v0

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    move-object v4, v0

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getUniIccIoResult([B)Lcom/android/internal/telephony/uicc/UniIccIoResult;

    move-result-object v0

    move-object v7, v0

    invoke-direct {v1, v4, v7}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->processException(Landroid/os/Message;Lcom/android/internal/telephony/uicc/UniIccIoResult;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, v7, Lcom/android/internal/telephony/uicc/UniIccIoResult;->payload:[B

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->results:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    add-int/2addr v0, v13

    iput v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    iget v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    iget v11, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mCountRecords:I

    if-le v0, v11, :cond_1

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->results:Ljava/util/ArrayList;

    invoke-direct {v1, v4, v0, v10}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :cond_1
    if-nez v9, :cond_2

    iget v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mEfid:I

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    :cond_2
    invoke-direct {v1, v5}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getSerial(Ljava/lang/Object;)I

    move-result v23
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    :try_start_2
    iget-object v11, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v12, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    const/16 v13, 0xb2

    iget v14, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mEfid:I

    iget v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    const/16 v17, 0x4

    iget v3, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordSize:I

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    iget v15, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    move/from16 v22, v15

    move-object v15, v9

    move/from16 v16, v0

    move/from16 v18, v3

    invoke-virtual/range {v11 .. v23}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move/from16 v3, v23

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move/from16 v3, v23

    goto/16 :goto_1

    :pswitch_1
    :try_start_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    if-eqz v6, :cond_3

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    :cond_3
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    move-object v4, v0

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getUniIccIoResult([B)Lcom/android/internal/telephony/uicc/UniIccIoResult;

    move-result-object v0

    move-object v7, v0

    invoke-direct {v1, v4, v7}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->processException(Landroid/os/Message;Lcom/android/internal/telephony/uicc/UniIccIoResult;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "exception caught from EVENT_GET_RECORD_SIZE"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mPath:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v23, v0

    :try_start_4
    iget-object v0, v7, Lcom/android/internal/telephony/uicc/UniIccIoResult;->payload:[B

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    aget-byte v0, v8, v14

    if-ne v11, v0, :cond_6

    const/16 v0, 0xd

    aget-byte v0, v8, v0

    if-ne v13, v0, :cond_5

    const/16 v0, 0xe

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordSize:I

    const/4 v0, 0x2

    aget-byte v0, v8, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v9, 0x3

    aget-byte v9, v8, v9

    and-int/lit16 v9, v9, 0xff

    add-int/2addr v0, v9

    iget v9, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordSize:I

    div-int v9, v0, v9

    iput v9, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mCountRecords:I

    new-instance v9, Ljava/util/ArrayList;

    iget v12, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mCountRecords:I

    invoke-direct {v9, v12}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v9, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->results:Ljava/util/ArrayList;

    iput v11, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mWhat:I

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getSerial(Ljava/lang/Object;)I

    move-result v31
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    :try_start_5
    iget-object v3, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v9, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    const/16 v21, 0xb2

    iget v11, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mEfid:I

    iget v12, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordNum:I

    const/16 v25, 0x4

    iget v13, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mRecordSize:I

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget v14, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    move-object/from16 v19, v3

    move-object/from16 v20, v9

    move/from16 v22, v11

    move/from16 v24, v12

    move/from16 v26, v13

    move/from16 v30, v14

    invoke-virtual/range {v19 .. v31}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    move-object/from16 v9, v23

    move/from16 v3, v31

    goto/16 :goto_0

    :cond_5
    :try_start_6
    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;-><init>()V

    throw v0

    :cond_6
    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :pswitch_2
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    move-object v4, v0

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getUniIccIoResult([B)Lcom/android/internal/telephony/uicc/UniIccIoResult;

    move-result-object v0

    move-object v7, v0

    invoke-direct {v1, v4, v7}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->processException(Landroid/os/Message;Lcom/android/internal/telephony/uicc/UniIccIoResult;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v0, v7, Lcom/android/internal/telephony/uicc/UniIccIoResult;->payload:[B

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    invoke-direct {v1, v4, v8, v10}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    move-object v6, v0

    if-eqz v6, :cond_8

    invoke-virtual {v6, v12}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    move-object v8, v0

    :cond_8
    iget v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mEfid:I

    move/from16 v22, v0

    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mPath:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move-object/from16 v23, v0

    :try_start_8
    iget-object v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mOnLoaded:Landroid/os/Message;

    move-object v4, v0

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getUniIccIoResult([B)Lcom/android/internal/telephony/uicc/UniIccIoResult;

    move-result-object v0

    move-object v7, v0

    invoke-direct {v1, v4, v7}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->processException(Landroid/os/Message;Lcom/android/internal/telephony/uicc/UniIccIoResult;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object/from16 v9, v23

    goto/16 :goto_0

    :cond_9
    iget-object v0, v7, Lcom/android/internal/telephony/uicc/UniIccIoResult;->payload:[B

    move-object v8, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->logd(Ljava/lang/String;)V

    aget-byte v0, v8, v14

    if-ne v11, v0, :cond_b

    const/16 v0, 0xd

    aget-byte v0, v8, v0

    if-nez v0, :cond_a

    const/4 v0, 0x2

    aget-byte v9, v8, v0

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    const/4 v11, 0x3

    aget-byte v11, v8, v11

    and-int/lit16 v11, v11, 0xff

    add-int/2addr v9, v11

    iput v0, v5, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;->mWhat:I

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getSerial(Ljava/lang/Object;)I

    move-result v31
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    :try_start_9
    iget-object v0, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    const/16 v21, 0xb0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    iget v11, v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    move-object/from16 v19, v0

    move-object/from16 v20, v3

    move/from16 v26, v9

    move/from16 v30, v11

    invoke-virtual/range {v19 .. v31}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    move-object/from16 v9, v23

    move/from16 v3, v31

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v9, v23

    move/from16 v3, v31

    goto :goto_1

    :cond_a
    :try_start_a
    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;-><init>()V

    throw v0

    :cond_b
    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;

    invoke-direct {v0}, Lcom/android/internal/telephony/uicc/UniIccFileTypeMismatch;-><init>()V

    throw v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    :catch_2
    move-exception v0

    move-object/from16 v9, v23

    goto :goto_1

    :goto_0
    goto :goto_2

    :catch_3
    move-exception v0

    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "exc = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v1, v11}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loge(Ljava/lang/String;)V

    if-eqz v4, :cond_c

    invoke-direct {v1, v4, v10, v0}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->sendResult(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_c
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "uncaught exception = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loge(Ljava/lang/String;)V

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public blacklist loadEFLinearFixedAll(ILandroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;

    const/4 v2, 0x3

    move/from16 v15, p1

    move-object/from16 v13, p2

    invoke-direct {v1, v2, v15, v14, v13}, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    move-object v12, v1

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getSerial(Ljava/lang/Object;)I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loadEFLinearFixedAll iccIoContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniIccFileHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v5, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    move/from16 v4, p1

    move/from16 v17, v5

    move-object v5, v14

    move-object/from16 v18, v12

    move/from16 v12, v17

    move/from16 v13, v16

    invoke-virtual/range {v1 .. v13}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist loadEFTransparent(ILandroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;

    const/4 v2, 0x1

    move/from16 v15, p1

    move-object/from16 v13, p2

    invoke-direct {v1, v2, v15, v14, v13}, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    move-object v12, v1

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getSerial(Ljava/lang/Object;)I

    move-result v16

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    const/16 v3, 0xc0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0xf

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v5, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    move/from16 v4, p1

    move/from16 v17, v5

    move-object v5, v14

    move-object/from16 v18, v12

    move/from16 v12, v17

    move/from16 v13, v16

    invoke-virtual/range {v1 .. v13}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public blacklist updateEFTransparent(I[BLandroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getEFPath(I)Ljava/lang/String;

    move-result-object v14

    new-instance v1, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;

    const/4 v2, 0x5

    move/from16 v15, p1

    move-object/from16 v13, p3

    invoke-direct {v1, v2, v15, v14, v13}, Lcom/android/internal/telephony/uicc/UniIccFileHandler$IccIoContext;-><init>(IILjava/lang/String;Landroid/os/Message;)V

    move-object v12, v1

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->getSerial(Ljava/lang/Object;)I

    move-result v16

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEFTransparent iccIoContext = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniIccFileHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mMessenger:Landroid/os/Messenger;

    const/16 v3, 0xd6

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v11, p2

    array-length v8, v11

    invoke-static/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/16 v17, 0x0

    iget v5, v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->mPhoneId:I

    move/from16 v4, p1

    move/from16 v18, v5

    move-object v5, v14

    move-object/from16 v11, v17

    move-object/from16 v17, v12

    move/from16 v12, v18

    move/from16 v13, v16

    invoke-virtual/range {v1 .. v13}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method
