.class public Lcom/android/internal/telephony/uicc/UniRuimRecords;
.super Lcom/android/internal/telephony/uicc/RuimRecords;
.source "UniRuimRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_GET_CDMA_SUBSCRIPTION_DONE:I = 0xa

.field private static final EVENT_GET_ICCID_DONE:I = 0x5

.field protected static final TAG:Ljava/lang/String; = "UniRuimRecords"


# instance fields
.field private mMeid:Ljava/lang/String;

.field public mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;


# direct methods
.method static bridge synthetic -$$Nest$monGetCSimMeidDone(Lcom/android/internal/telephony/uicc/UniRuimRecords;Landroid/os/AsyncResult;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->onGetCSimMeidDone(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/RuimRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    return-void
.end method

.method private onGetCSimMeidDone(Landroid/os/AsyncResult;)V
    .locals 6

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x10

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v3, 0x2

    rsub-int/lit8 v5, v5, 0xe

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    mul-int/lit8 v5, v3, 0x2

    rsub-int/lit8 v5, v5, 0xf

    invoke-virtual {v1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    const-string v3, "Fail to get MEID on CSIM."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->loge(Ljava/lang/String;)V

    :goto_1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mMeid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->reset()V

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->dispose()V

    return-void
.end method

.method protected fetchRuimRecords()V
    .locals 4

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/RuimRecords;->fetchRuimRecords()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchRuimRecords "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v1, Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded;-><init>(Lcom/android/internal/telephony/uicc/UniRuimRecords;Lcom/android/internal/telephony/uicc/UniRuimRecords$EfCsimMeidLoaded-IA;)V

    const/16 v2, 0x64

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f38

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mRecordsToLoad:I

    return-void
.end method

.method public getMeid()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mMeid:Ljava/lang/String;

    return-object v0
.end method

.method public getUniAdnRecordCache()Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    return-object v0
.end method

.method protected handleFileUpdate(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->resetWithFileUpdate()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mAdnCache:Lcom/android/internal/telephony/uicc/AdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecordCache;->reset()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->fetchRuimRecords()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    :pswitch_0
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    array-length v3, v2

    const/4 v4, 0x0

    invoke-static {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mFullIccId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mFullIccId:Ljava/lang/String;

    const-string v5, "(F|f){20}"

    invoke-virtual {v3, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "%020d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v4

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mFullIccId:Ljava/lang/String;

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mFullIccId:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mIccId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :goto_0
    if-eqz v0, :cond_3

    :goto_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->onRecordLoaded()V

    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception parsing RUIM record: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->logd(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->onRecordLoaded()V

    :cond_4
    throw v1

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method protected logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniRuimRecords"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniRuimRecords"

    invoke-static {v0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onReady()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->fetchRuimRecords()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCDMASubscription(Landroid/os/Message;)V

    return-void
.end method

.method public onRefresh(Z[I)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->fetchRuimRecords()V

    :cond_0
    return-void
.end method
