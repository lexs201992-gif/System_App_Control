.class public Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
.super Landroid/os/Handler;
.source "UniAdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UniIccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_LOAD_ALL_EXT_LIKE_DONE:I = 0x6

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_CYCLIC_DONE:I = 0x4

.field static final EVENT_UPDATE_EXT_DONE:I = 0x7

.field static final EVENT_UPDATE_SNE_DONE:I = 0x8

.field static final EVENT_UPDATE_USIM_ADN_DONE:I = 0x3

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAdnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field mAdnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public mAlreadyReset:Z

.field mExtLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "[B>;>;"
        }
    .end annotation
.end field

.field public mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field public mInsertId:I

.field private mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

.field mUserWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UniAdnRecordCache"

    sput-object v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAlreadyReset:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    return-void
.end method

.method private checkAnrLength(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z
    .locals 7

    const/4 v0, 0x0

    const-string v1, ""

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, ";"

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v2, v0

    sub-int/2addr v2, v4

    array-length v5, v0

    sub-int/2addr v5, v4

    aget-object v5, v0, v5

    array-length v6, v0

    sub-int/2addr v6, v4

    aget-object v6, v0, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-virtual {v5, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v2

    :cond_0
    if-nez v0, :cond_1

    return v4

    :cond_1
    const/4 v2, 0x0

    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_3

    aget-object v1, v0, v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAnrLength anr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x14

    if-le v5, v6, :cond_2

    return v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v4
.end method

.method private clearUserWriters()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private clearWaiters()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    invoke-direct {v3, v5, v5, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method private compareSubject(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z
    .locals 4

    const/4 v0, 0x1

    const-string v1, ", newAdn.aas == "

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldAdn.mSne == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newAdn.mSne == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto/16 :goto_1

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldAdn.aas == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "oldAdn.mGrp == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newAdn.mGrp == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    goto :goto_1

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USIM_SUBJCET_ANR oldAdn.aas == "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    :pswitch_4
    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v2, p3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p2, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    nop

    :goto_1
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findEmptyExt(Ljava/util/ArrayList;)B
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)B"
        }
    .end annotation

    const/4 v0, -0x1

    if-nez p1, :cond_0

    const-string v1, "extList is not existed "

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    const/4 v4, 0x0

    aget-byte v3, v3, v4

    if-ne v0, v3, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "we got the index "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    int-to-byte v1, v3

    goto :goto_0

    :cond_2
    const-string v2, "find no empty ext"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private gasToByte(Ljava/lang/String;I)[B
    .locals 8

    const-string v0, "over the length of group name"

    new-array v1, p2, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p2, :cond_0

    const/4 v3, -0x1

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/android/internal/telephony/UniGsmAlphabet;->stringToGsmAlphaSS(Ljava/lang/String;)[B

    move-result-object v4

    array-length v5, v4

    invoke-static {v4, v3, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-object v2

    :catch_1
    move-exception v4

    :try_start_1
    const-string v5, "utf-16be"

    invoke-virtual {p1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    array-length v6, v5

    const/4 v7, 0x1

    invoke-static {v5, v3, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v6, -0x80

    aput-byte v6, v1, v3
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    goto :goto_1

    :catch_2
    move-exception v3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-object v2

    :catch_3
    move-exception v0

    const-string v3, "gas convert byte exception"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-object v2

    :cond_1
    :goto_1
    return-object v1
.end method

.method private getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnrNumGroup anr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, ";"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getAvailableExtIndex(II)B
    .locals 10

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    const/16 v1, 0xd

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    const/4 v4, -0x1

    if-ge v2, v3, :cond_0

    aput-byte v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->findEmptyExt(Ljava/util/ArrayList;)B

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAvailableExtIndex:extEfId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "index& 0xff = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    and-int/lit16 v5, v2, 0xff

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    and-int/lit16 v3, v2, 0xff

    const/16 v5, 0xff

    if-ne v3, v5, :cond_7

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getUsedExtRecordIndex(I)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usedExtIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-eqz v3, :cond_6

    if-nez v0, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    const/4 v5, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-ne v8, v9, :cond_2

    const/4 v5, 0x1

    nop

    :cond_3
    if-nez v5, :cond_4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "set emptyRecord : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7, v6, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->findEmptyExt(Ljava/util/ArrayList;)B

    move-result v6

    return v6

    :cond_6
    :goto_2
    const-string v5, "extList is not existed"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v4

    :cond_7
    return v2
.end method

.method private getRecordsSizeByEf(I)[I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getRecordsSize()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getRecordsSize()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getRecordsSize()Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private getSubjectAasString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    nop

    :goto_0
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private getSubjectString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :pswitch_2
    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    goto :goto_0

    :pswitch_3
    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getAnrNumGroup(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :pswitch_4
    iget-object v0, p2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    nop

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getUpdateSubjectFlag(IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;[I)[I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-nez v4, :cond_0

    const/4 v7, 0x0

    return-object v7

    :cond_0
    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectAasString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectAasString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v10

    if-eqz v7, :cond_1

    array-length v5, v7

    :cond_1
    if-eqz v8, :cond_2

    array-length v6, v8

    :cond_2
    array-length v11, v4

    new-array v12, v11, [I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getUpdateSubjectFlag oldCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " newCount = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " count = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v11, :cond_9

    const-string v14, ""

    const-string v15, ""

    const-string v16, ""

    const-string v17, ""

    if-ge v13, v5, :cond_3

    aget-object v18, v7, v13

    if-eqz v18, :cond_3

    aget-object v14, v7, v13

    :cond_3
    if-ge v13, v6, :cond_4

    aget-object v18, v8, v13

    if-eqz v18, :cond_4

    aget-object v15, v8, v13

    :cond_4
    if-ge v13, v5, :cond_5

    if-eqz v9, :cond_5

    array-length v1, v9

    if-ge v13, v1, :cond_5

    aget-object v1, v9, v13

    if-eqz v1, :cond_5

    aget-object v16, v9, v13

    :cond_5
    if-ge v13, v6, :cond_6

    if-eqz v10, :cond_6

    array-length v1, v10

    if-ge v13, v1, :cond_6

    aget-object v1, v10, v13

    if-eqz v1, :cond_6

    aget-object v17, v10, v13

    :cond_6
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/4 v1, 0x1

    :goto_2
    aput v1, v12, v13

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getUpdateSubjectFlag flag[i] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget v2, v12, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, p2

    move-object/from16 v2, p3

    goto :goto_0

    :cond_9
    return-object v12
.end method

.method private getUsedExtRecordIndex(I)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    iget v2, v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    const/16 v4, 0xff

    if-eq v2, v4, :cond_1

    if-eqz v2, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "usedIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method private isCleanRecord(IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;I)Z
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectAasString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getSubjectAasString(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)[Ljava/lang/String;

    move-result-object v12

    if-eqz v9, :cond_0

    array-length v4, v9

    :cond_0
    if-eqz v10, :cond_1

    array-length v5, v10

    :cond_1
    iget-object v13, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move/from16 v14, p1

    invoke-virtual {v13, v1, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v8

    const/4 v13, 0x0

    if-nez v8, :cond_2

    return v13

    :cond_2
    array-length v6, v8

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isCleanRecord oldCount = "

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " newCount = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, " count = "

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v13}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v6, :cond_9

    if-ge v7, v4, :cond_3

    aget-object v13, v9, v7

    if-eqz v13, :cond_3

    aget-object v13, v9, v7

    goto :goto_1

    :cond_3
    const-string v13, ""

    :goto_1
    if-ge v7, v5, :cond_4

    aget-object v15, v10, v7

    if-eqz v15, :cond_4

    aget-object v15, v10, v7

    goto :goto_2

    :cond_4
    const-string v15, ""

    :goto_2
    if-ge v7, v4, :cond_5

    if-eqz v11, :cond_5

    array-length v1, v11

    if-ge v7, v1, :cond_5

    aget-object v1, v11, v7

    if-eqz v1, :cond_5

    aget-object v1, v11, v7

    goto :goto_3

    :cond_5
    const-string v1, ""

    :goto_3
    if-ge v7, v5, :cond_6

    if-eqz v12, :cond_6

    array-length v2, v12

    if-ge v7, v2, :cond_6

    aget-object v2, v12, v7

    if-eqz v2, :cond_6

    aget-object v2, v12, v7

    goto :goto_4

    :cond_6
    const-string v2, ""

    :goto_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v4

    const-string v4, "isCleanRecord: aas1 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", aas2 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    move/from16 v3, p5

    if-ne v3, v7, :cond_8

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    :cond_7
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    :cond_8
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move/from16 v4, v16

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    iget-object v2, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v1, v2, v3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method private updateGrpOfAdn(Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const/4 v0, 0x2

    invoke-direct {p0, v0, p4, p5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->compareSubject(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getGrp()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getGrpCount()I

    move-result v1

    new-array v1, v1, [B

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    const/4 v3, 0x0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, ";"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    array-length v4, v1

    if-le v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v3, p7}, Landroid/util/SparseArray;->delete(I)V

    const/16 v3, -0xa

    const-string v4, "over the length of grp"

    invoke-direct {p0, p8, v3, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_2
    const/4 v3, 0x0

    :goto_1
    array-length v4, v2

    if-ge v3, v4, :cond_3

    array-length v4, v1

    if-ge v3, v4, :cond_3

    aget-object v4, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-byte v5, v4

    aput-byte v5, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    const/16 v3, 0xc6

    invoke-virtual {v2, p3, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEfIdByTag(II)I

    move-result v2

    invoke-virtual {p1, v2, p2, v1, p6}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFGrpToUsim(II[BLjava/lang/String;)V

    return-void
.end method

.method private updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I
    .locals 35

    move-object/from16 v7, p0

    move/from16 v15, p1

    move/from16 v14, p2

    move/from16 v13, p4

    move/from16 v12, p5

    const/4 v0, 0x0

    const/16 v28, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget-object v1, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1, v15, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v11

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Begin : updateSubjectOfAdn, file type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pbrNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adnNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    move-object/from16 v6, p7

    move-object/from16 v5, p8

    invoke-direct {v7, v15, v6, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->compareSubject(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    return v4

    :cond_0
    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p1

    move/from16 v29, v4

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    move-object v6, v11

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getUpdateSubjectFlag(IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;[I)[I

    move-result-object v30

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v6, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v1

    if-eqz v30, :cond_17

    if-eqz v11, :cond_17

    array-length v1, v11

    if-nez v1, :cond_1

    move/from16 v1, p9

    move-object v4, v5

    move v2, v12

    move v3, v15

    move/from16 v5, v29

    move-object/from16 v29, v11

    goto/16 :goto_9

    :cond_1
    iget-object v1, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1, v15, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectTagNumberInIap(II)[[I

    move-result-object v31

    array-length v1, v11

    new-array v4, v1, [I

    const/4 v0, 0x0

    move-object/from16 v16, p3

    move v3, v0

    move/from16 v32, v10

    :goto_0
    array-length v0, v11

    const/4 v2, 0x1

    if-ge v3, v0, :cond_f

    aget v0, v11, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    aget v0, v30, v3

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSubjectFlag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] = 0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v32, v32, 0x1

    move/from16 v1, p9

    move/from16 v33, v3

    move-object/from16 v34, v4

    move-object v4, v5

    move v2, v12

    move v3, v13

    move/from16 v0, v29

    move-object/from16 v29, v11

    goto/16 :goto_5

    :cond_2
    iget-object v0, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0, v15, v14, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->isSubjectRecordInIap(III)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_d

    const-string v0, "updateSubjectOfAdn in iap"

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v8, 0x0

    :try_start_0
    iget-object v0, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getIapFileRecord(I)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_c

    add-int/lit8 v9, v12, -0x1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v10, v9

    nop

    if-nez v31, :cond_3

    return v1

    :cond_3
    if-eqz v10, :cond_b

    aget-object v0, v31, v3

    aget v0, v0, v2

    array-length v8, v10

    if-lt v0, v8, :cond_4

    const-string v0, "anrTagMap[m][1] Error"

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v1

    :cond_4
    aget-object v0, v31, v3

    aget v0, v0, v2

    aget-byte v0, v10, v0

    const/16 v9, 0xff

    and-int/2addr v0, v9

    aput v0, v4, v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "subjectNumberInIap = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v8, v31, v3

    aget v8, v8, v2

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, ", subjectNumber = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v8, v4, v3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    aget v0, v4, v3

    if-ne v0, v9, :cond_5

    move v0, v1

    goto :goto_1

    :cond_5
    aget v0, v4, v3

    :goto_1
    aput v0, v4, v3

    aget v0, v4, v3

    if-ge v0, v2, :cond_6

    iget-object v8, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    aget-object v0, v31, v3

    move/from16 v1, v29

    aget v0, v0, v1

    const/16 v17, 0x1

    move/from16 v9, p1

    move-object/from16 v24, v10

    move/from16 v10, p2

    move-object/from16 v29, v11

    move v11, v0

    move/from16 v12, v32

    move v15, v13

    move/from16 v13, p5

    move v15, v14

    move/from16 v14, v17

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNewSubjectNumber(IIIIIZ)I

    move-result v0

    aput v0, v4, v3

    aget v0, v4, v3

    const/4 v8, -0x1

    if-ne v0, v8, :cond_7

    return v8

    :cond_6
    move-object/from16 v24, v10

    move v15, v14

    move/from16 v1, v29

    move-object/from16 v29, v11

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSubjectOfAdn subjectNum[m] = "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget v8, v4, v3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    aget v0, v4, v3

    const/4 v8, -0x1

    if-eq v0, v8, :cond_a

    aget v0, v4, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v1

    move v14, v8

    move-object/from16 v1, p0

    move v8, v2

    move/from16 v2, p2

    move/from16 v33, v3

    move/from16 v3, p1

    move-object/from16 v34, v4

    move-object/from16 v4, p7

    move-object v13, v5

    move-object/from16 v5, p8

    move-object v12, v6

    move/from16 v6, v33

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->isCleanRecord(IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;I)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clean anrTagMap[m][0] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v31, v33

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    aget-object v2, v31, v33

    aget v4, v2, v0

    aget v6, v34, v33

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v5, v32

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->removeSubjectNumFromSet(IIIII)V

    iget-object v1, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    move/from16 v2, p5

    add-int/lit8 v3, v2, -0x1

    aget-object v4, v31, v33

    aget v4, v4, v8

    invoke-virtual {v1, v15, v3, v14, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setIapFileRecord(IIBI)V

    aget-object v1, v31, v33

    aget v1, v1, v8

    aput-byte v14, v24, v1

    goto :goto_2

    :cond_8
    move/from16 v2, p5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "anrTagMap[m][0] = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v31, v33

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v1, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    add-int/lit8 v3, v2, -0x1

    aget v4, v34, v33

    const/16 v5, 0xff

    and-int/2addr v4, v5

    int-to-byte v4, v4

    aget-object v6, v31, v33

    aget v6, v6, v8

    invoke-virtual {v1, v15, v3, v4, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setIapFileRecord(IIBI)V

    aget-object v1, v31, v33

    aget v1, v1, v8

    aget v3, v34, v33

    and-int/2addr v3, v5

    int-to-byte v3, v3

    aput-byte v3, v24, v1

    :goto_2
    aget-object v1, v31, v33

    aget v1, v1, v0

    if-lez v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "begin to update IAP ---IAP recordId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v3, p4

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ", iapEF = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v4, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move-object/from16 v16, v1

    const/16 v22, 0x0

    move/from16 v1, p9

    invoke-direct {v7, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v23

    move-object/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p5

    move-object/from16 v20, v24

    move-object/from16 v21, p10

    invoke-virtual/range {v16 .. v23}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFIapToUsim(Lcom/android/internal/telephony/phonebook/UniAdnRecord;II[BLjava/lang/String;Landroid/os/Message;[I)V

    goto :goto_3

    :cond_9
    move/from16 v3, p4

    move/from16 v1, p9

    :goto_3
    nop

    add-int/lit8 v32, v32, 0x1

    move-object v6, v12

    move-object v4, v13

    goto/16 :goto_5

    :cond_a
    move v14, v8

    const-string v0, "file capacity full"

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v14

    :cond_b
    move v14, v1

    return v14

    :cond_c
    move v14, v1

    move/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v29, v11

    move v2, v12

    move v3, v13

    move/from16 v1, p9

    move-object v13, v5

    move-object v12, v6

    :try_start_1
    const-string v4, "updateSubjectOfAdn mIapFileRecord == null "

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    return v14

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move v14, v1

    move/from16 v33, v3

    move-object/from16 v34, v4

    move-object/from16 v29, v11

    move v2, v12

    move v3, v13

    move/from16 v1, p9

    move-object v13, v5

    move-object v12, v6

    :goto_4
    const-string v4, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-direct {v7, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v14

    :cond_d
    move v14, v1

    move/from16 v33, v3

    move-object/from16 v34, v4

    move v2, v12

    move v3, v13

    move/from16 v0, v29

    move/from16 v1, p9

    move-object v13, v5

    move-object v12, v6

    move-object/from16 v29, v11

    iget-object v8, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    aget v11, v29, v33

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v9, p1

    move/from16 v10, p2

    move v12, v4

    move-object v4, v13

    move/from16 v13, p5

    move v15, v14

    move v14, v5

    invoke-virtual/range {v8 .. v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNewSubjectNumber(IIIIIZ)I

    move-result v5

    if-ne v5, v2, :cond_e

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_5
    add-int/lit8 v5, v33, 0x1

    move/from16 v15, p1

    move/from16 v14, p2

    move v12, v2

    move v13, v3

    move v3, v5

    move-object/from16 v11, v29

    move/from16 v29, v0

    move-object v5, v4

    move-object/from16 v4, v34

    goto/16 :goto_0

    :cond_e
    const-string v0, "updateSubjectOfAdn fail to get  new subject "

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v15

    :cond_f
    move/from16 v1, p9

    move v8, v2

    move/from16 v33, v3

    move-object/from16 v34, v4

    move-object v4, v5

    move v2, v12

    move v3, v13

    move/from16 v0, v29

    move-object/from16 v29, v11

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " END :updateSubjectOfAdn  updateSubjectOfAdn efids is = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v9, ", subjectNums = "

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_16

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    if-eqz v9, :cond_14

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v12, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v13, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v12, v13}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move-object/from16 v16, v12

    move/from16 v3, p1

    if-nez v3, :cond_10

    const/16 v24, 0x0

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v7, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v25

    move-object/from16 v17, p8

    move-object/from16 v18, v11

    move-object/from16 v19, v9

    move/from16 v20, p6

    move/from16 v21, p5

    move-object/from16 v22, v10

    move-object/from16 v23, p10

    invoke-virtual/range {v16 .. v25}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFEmailToUsim(Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;[I)V

    :cond_10
    const/4 v12, 0x4

    if-ne v3, v12, :cond_11

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v12

    if-eqz v12, :cond_11

    const/16 v25, 0x0

    move-object/from16 v17, v16

    move-object/from16 v18, p8

    move-object/from16 v19, v11

    move-object/from16 v20, v9

    move/from16 v21, p6

    move/from16 v22, p5

    move-object/from16 v23, v10

    move-object/from16 v24, p10

    invoke-virtual/range {v17 .. v25}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFSneToUsim(Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/util/ArrayList;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;)V

    :cond_11
    if-ne v3, v8, :cond_15

    const/4 v12, 0x0

    if-eqz p11, :cond_12

    move-object/from16 v12, p11

    check-cast v12, [I

    :cond_12
    if-eqz v12, :cond_13

    array-length v13, v12

    if-ge v5, v13, :cond_13

    aget v13, v12, v5

    goto :goto_7

    :cond_13
    move v13, v0

    :goto_7
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "aasIndex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v7, v14}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/16 v25, 0x0

    :try_start_2
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    invoke-direct {v7, v14}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v26

    move-object/from16 v17, v16

    move-object/from16 v18, p8

    move-object/from16 v19, v11

    move/from16 v20, p6

    move/from16 v21, p5

    move-object/from16 v22, v9

    move-object/from16 v23, v10

    move-object/from16 v24, p10

    move/from16 v27, v13

    invoke-virtual/range {v17 .. v27}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFAnrToUsim(Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/util/ArrayList;IILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Landroid/os/Message;[II)V
    :try_end_2
    .catch Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_8

    :catch_2
    move-exception v0

    const/4 v8, -0x2

    return v8

    :cond_14
    move/from16 v3, p1

    :cond_15
    :goto_8
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, p4

    goto/16 :goto_6

    :cond_16
    move/from16 v3, p1

    const-string v0, "updateSubjectOfAdn done"

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v8

    :cond_17
    move/from16 v1, p9

    move-object v4, v5

    move v2, v12

    move v3, v15

    move/from16 v5, v29

    move-object/from16 v29, v11

    :goto_9
    return v5
.end method


# virtual methods
.method public extensionEfForEf(I)I
    .locals 1

    const/16 v0, 0x6f4a

    sparse-switch p1, :sswitch_data_0

    const/4 v0, -0x1

    return v0

    :sswitch_0
    const/16 v0, 0x6fc8

    return v0

    :sswitch_1
    const/16 v0, 0x6f4c

    return v0

    :sswitch_2
    return v0

    :sswitch_3
    const/16 v0, 0x6f4b

    return v0

    :sswitch_4
    return v0

    :sswitch_5
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_5
        0x6f3a -> :sswitch_4
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_2
        0x6f44 -> :sswitch_4
        0x6f49 -> :sswitch_1
        0x6fc7 -> :sswitch_0
    .end sparse-switch
.end method

.method public getAdnIndex(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)I
    .locals 5

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAdnIndex efid = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    if-nez v0, :cond_0

    const/4 v1, -0x1

    return v1

    :cond_0
    const-string v1, "updateAdnBySearch (2)"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    const/4 v1, -0x1

    const/4 v2, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEqual(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method public getAdnLikeSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    return v0
.end method

.method public getEFAdnRecordSize()[I
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v1, 0x6f3a

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->getRecordsSize(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getInsertId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    return v0
.end method

.method public getRecordsIfLoadedEx(I)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getSneLength()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSneLength()[I

    move-result-object v0

    return-object v0
.end method

.method public getSneSize()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSneSize()I

    move-result v0

    return v0
.end method

.method public getUniUsimPhoneBookManager()Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const-string v2, ", target = "

    const-string v3, "response = "

    const-string v4, ", index = "

    const/4 v5, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->arg1:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_SNE_DONE exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " efid:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Message;

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v3, :cond_0

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v1, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_UPDATE_SNE_DONE response is null efid:0x"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [B

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_UPDATE_EXT_DONE index = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    if-lez v2, :cond_11

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-gt v2, v4, :cond_11

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {v4, v5, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_UPDATE_EXT_DONE failed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    new-instance v3, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {p0, v5, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v2, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v6, p1, Landroid/os/Message;->arg2:I

    iget-object v7, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    iput v5, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "efid:0x "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, ", mInsertId = "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_3

    const-string v4, "ar.exception != null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Message;

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v5, v1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v4, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v4, v5, v8}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v4}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UPDATE_CYCLIC_DONE response is null efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_5
    const-string v0, "EVENT_UPDATE_USIM_ADN_DONE"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    iget-object v4, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const/4 v5, -0x1

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v7

    if-ge v6, v7, :cond_6

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFInfo(I)I

    move-result v7

    if-ne v2, v7, :cond_5

    move v5, v6

    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_6
    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v6

    const/4 v7, -0x1

    if-ne v5, v7, :cond_7

    goto/16 :goto_4

    :cond_7
    add-int/lit8 v7, v3, -0x1

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v5, :cond_8

    aget v9, v6, v8

    add-int/2addr v7, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "EVENT_UPDATE_USIM_ADN_DONE:mInsertId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", adnRecNum = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", adn.extrecord = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v4, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v8, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v8, :cond_9

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    iget v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v4, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setRecordNumber(I)V

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v8, v7, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setPhoneBookRecords(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)V

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    add-int/lit8 v9, v3, -0x1

    invoke-virtual {v8, v9, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x8030025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    if-eqz v8, :cond_a

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v8, v2, v5, v7, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateUidForAdn(IIILcom/android/internal/telephony/phonebook/UniAdnRecord;)V

    goto :goto_2

    :cond_9
    const-string v8, " fail to Update Usim Adn"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->loge(Ljava/lang/String;)V

    :cond_a
    :goto_2
    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/Message;

    iget-object v9, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v8, :cond_b

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v8, v1, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {v8}, Landroid/os/Message;->sendToTarget()V

    :cond_b
    const-string v1, "EVENT_UPDATE_USIM_ADN_DONE finish"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v5, p1, Landroid/os/Message;->arg2:I

    iget-object v6, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "UniAdnRecordCache:EVENT_UPDATE_ADN_DONE:mInsertId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v7, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v7, :cond_c

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_c

    iget v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v6, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setRecordNumber(I)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EVENT_UPDATE_ADN_DONE:adn.extRecord = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    add-int/lit8 v8, v5, -0x1

    invoke-virtual {v7, v8, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_c
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "efid 0x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v8, v1}, Landroid/util/SparseArray;->delete(I)V

    if-eqz v7, :cond_d

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v9, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v7, v8, v9}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_4

    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_UPDATE_ADN_DONE response is null efid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->delete(I)V

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_10

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_10

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->hasExtendedRecord()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->extRecord4DisplayIsNeeded()Z

    move-result v8

    if-eqz v8, :cond_e

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adn.extRecord = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_e

    iget v8, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iget-object v9, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v9, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-gt v8, v9, :cond_e

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    iget v9, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    sub-int/2addr v9, v5

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v7, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->appendExtRecord([B)V

    :cond_e
    goto :goto_3

    :cond_f
    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    iget-object v6, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v5, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_LOAD_ALL_ADN_LIKE_DONE:efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ar.exception = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-eqz v3, :cond_11

    invoke-direct {p0, v3, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    :cond_11
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public insertLndBySearch(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 9

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertLndBySearch:efid = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " extensionEF = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, -0x1

    if-gez v7, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known LND-like EF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->removedRecordsIfLoaded(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Landroid/os/Message;

    if-eqz v8, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p5, v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v0, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p3

    move v2, p1

    move v3, v7

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFCyclic(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public loadAasFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loadAasFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public loadGasFromUsim()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAlreadyReset:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loadGasFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public removedRecordsIfLoaded(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6

    iget-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAlreadyReset:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    const-string v0, "Have already reset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    const/16 v0, 0x4f30

    if-ne p1, v0, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loadEfFilesFromUsimEx()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x0

    :cond_3
    :goto_0
    if-ne p1, v0, :cond_4

    if-nez v1, :cond_4

    const/16 p1, 0x6f3a

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->extensionEfForEf(I)I

    move-result p2

    const-string v0, "pbr is empty,read adn"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    :cond_4
    if-eqz v1, :cond_6

    if-eqz p3, :cond_5

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v0

    iput-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have already loaded ef: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-void

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Already started loading this efid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return-void

    :cond_7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    if-gez p2, :cond_9

    if-eqz p3, :cond_8

    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    const-string v2, "extensionEf < 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    return-void

    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestLoadAllAdnLike efid:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logi(Ljava/lang/String;)V

    new-instance v2, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x6

    invoke-virtual {p0, v3, p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->loadAllExtFromEF(IILandroid/os/Message;)V

    return-void
.end method

.method public reset()V
    .locals 1

    const-string v0, "reset adnLikeFiles"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAlreadyReset:Z

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->clearWaiters()V

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->clearUserWriters()V

    return-void
.end method

.method public resetWithFileUpdate()V
    .locals 1

    const-string v0, "reset adnLikeFiles FileUpdate"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mExtLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mAdnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->reset()V

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->clearWaiters()V

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->clearUserWriters()V

    return-void
.end method

.method public updateAasByIndex(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFAasInfo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->gasToByte(Ljava/lang/String;I)[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "data == null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/16 v3, -0xb

    return v3

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v2, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFGasToUsim(II[BLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateAasList(Ljava/lang/String;I)V

    return p2
.end method

.method public updateAasBySearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loadAasFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v2, "Aas list not exist"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Aas record don\'t exist for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/16 v1, -0xc

    return v1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFAasInfo()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Aas aasEfId == "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v5

    if-nez v5, :cond_4

    return v1

    :cond_4
    const/4 v1, 0x0

    aget v1, v5, v1

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->gasToByte(Ljava/lang/String;I)[B

    move-result-object v1

    if-nez v1, :cond_5

    const-string v6, "data == null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/16 v6, -0xb

    return v6

    :cond_5
    new-instance v6, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v2, v1, v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFGasToUsim(II[BLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v6, p2, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateAasList(Ljava/lang/String;I)V

    return v2
.end method

.method public updateAdnByIndexEx(ILcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move-object/from16 v11, p5

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->extensionEfForEf(I)I

    move-result v12

    const/4 v1, -0x1

    if-gez v12, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/os/Message;

    if-eqz v13, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_1
    iput v10, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v14

    if-nez v14, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adn list not exist for EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v10, -0x1

    invoke-virtual {v14, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldAdn extRecord = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->extRecordIsNeeded()Z

    move-result v2

    const/4 v3, 0x7

    const/16 v7, 0xff

    if-eqz v2, :cond_5

    const/4 v2, -0x1

    iget v4, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v4, v7, :cond_3

    iget v4, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    int-to-byte v2, v4

    move v6, v2

    goto :goto_0

    :cond_3
    invoke-direct {v0, v12, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getAvailableExtIndex(II)B

    move-result v2

    move v6, v2

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-ne v6, v1, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, -0x5

    const-string v2, "ext list full"

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_4
    iput v6, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, v3, v12, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v16

    move-object/from16 v2, p2

    move/from16 v3, p1

    move v4, v12

    move v5, v6

    move/from16 v17, v6

    move-object/from16 v6, p4

    move v11, v7

    move-object/from16 v7, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :cond_5
    move v11, v7

    iget v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v1, v11, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to clear extRecord = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v5, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iget v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v0, v3, v12, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p2

    move/from16 v3, p1

    move v4, v12

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    :cond_6
    :goto_1
    iput v11, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8, v10, v9}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p2

    move/from16 v3, p1

    move v4, v12

    move/from16 v5, p3

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateAdnBySearchEx(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 19

    move-object/from16 v0, p0

    move/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p5

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->extensionEfForEf(I)I

    move-result v12

    const/4 v1, -0x1

    if-gez v12, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v13

    if-nez v13, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adn list not exist for EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v14, v3

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v9, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEqual(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v2, v14

    iput v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    move v15, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    :cond_3
    move v15, v2

    :goto_1
    if-ne v15, v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn record don\'t exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, -0x3

    invoke-direct {v0, v11, v2, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_4
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/os/Message;

    if-eqz v16, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_5
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v15, -0x1

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    iget v2, v2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iput v2, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oldAdn extRecord = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->extRecordIsNeeded()Z

    move-result v2

    const/4 v3, 0x7

    const/16 v7, 0xff

    if-eqz v2, :cond_8

    const/4 v2, -0x1

    iget v4, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v4, v7, :cond_6

    iget v4, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    int-to-byte v2, v4

    move v6, v2

    goto :goto_2

    :cond_6
    invoke-direct {v0, v12, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getAvailableExtIndex(II)B

    move-result v2

    move v6, v2

    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "extIndex = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-ne v6, v1, :cond_7

    iget-object v1, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v8}, Landroid/util/SparseArray;->delete(I)V

    const/4 v1, -0x5

    const-string v2, "ext list full"

    invoke-direct {v0, v11, v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    return-void

    :cond_7
    iput v6, v10, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v0, v3, v12, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v12

    move v5, v6

    move/from16 v18, v6

    move-object/from16 v6, p4

    move v11, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_3

    :cond_8
    move v11, v7

    iget v1, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v1, v11, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "need to clear extRecord "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v5, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iget v2, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v0, v3, v12, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v12

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    :cond_9
    :goto_3
    iput v11, v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v1, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v8, v15, v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p3

    move/from16 v3, p1

    move v4, v12

    move v5, v15

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updateGasByIndex(Ljava/lang/String;I)I
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFGasInfo()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v1

    if-nez v1, :cond_0

    const/4 v2, -0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    aget v2, v1, v2

    invoke-direct {p0, p1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->gasToByte(Ljava/lang/String;I)[B

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "data == null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v3, -0x7

    return v3

    :cond_1
    new-instance v3, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v0, p2, v2, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFGasToUsim(II[BLjava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v3, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateGasList(Ljava/lang/String;I)V

    return p2
.end method

.method public updateGasBySearch(Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loadGasFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    const-string v2, "Gas list not exist"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    return v1

    :cond_0
    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ne v2, v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gas record don\'t exist for "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v1, -0x8

    return v1

    :cond_3
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFGasInfo()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v5

    if-nez v5, :cond_4

    return v1

    :cond_4
    const/4 v1, 0x0

    aget v1, v5, v1

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->gasToByte(Ljava/lang/String;I)[B

    move-result-object v1

    if-nez v1, :cond_5

    const-string v6, "data == null"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v6, -0x7

    return v6

    :cond_5
    new-instance v6, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v2, v1, v7}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFGasToUsim(II[BLjava/lang/String;)V

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v6, p2, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateGasList(Ljava/lang/String;I)V

    return v2
.end method

.method public declared-synchronized updateUSIMAdnByIndex(IILcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 31

    move-object/from16 v15, p0

    move/from16 v0, p2

    move-object/from16 v14, p3

    move-object/from16 v13, p5

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v5

    move v12, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateUSIMAdnByIndex efid = 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", RecsNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", simIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v15, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v11, -0x1

    if-ltz v0, :cond_14

    iget-object v5, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getPhoneBookRecordsNum()I

    move-result v5

    if-le v0, v5, :cond_0

    move v5, v11

    move/from16 v30, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    goto/16 :goto_a

    :cond_0
    iget-object v5, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v5

    const/4 v6, 0x0

    aget v5, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "baseNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v12, :cond_2

    if-gt v0, v5, :cond_1

    move v4, v6

    iget-object v7, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v7

    aget v7, v7, v6

    sub-int/2addr v5, v7

    move v9, v4

    move/from16 v23, v5

    goto :goto_1

    :cond_1
    iget-object v7, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v7

    add-int/lit8 v8, v6, 0x1

    aget v7, v7, v8

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    move v9, v4

    move/from16 v23, v5

    :goto_1
    sub-int v8, v0, v23

    iput v0, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFInfo(I)I

    move-result v2

    move v7, v2

    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v2, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findExtensionEFInfo(I)I

    move-result v2

    move v6, v2

    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v10

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adn efid:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extensionEF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", iapEF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-ltz v7, :cond_13

    if-gez v6, :cond_3

    move v0, v6

    move v3, v7

    move/from16 v28, v9

    move v5, v11

    move/from16 v30, v12

    move-object v6, v13

    move-object v7, v14

    move v9, v8

    move-object v8, v15

    goto/16 :goto_9

    :cond_3
    invoke-virtual {v15, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v1

    move-object v5, v1

    if-nez v5, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn list not exist for EF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v13, v11, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_4
    add-int/lit8 v1, v8, -0x1

    :try_start_1
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-object v3, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "recNum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", adnIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mInsertId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", oldAdn:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-direct {v15, v14}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->checkAnrLength(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v1

    const/16 v2, -0xd

    if-nez v1, :cond_5

    const-string v1, "[updateUSIMAdnByIndex] Max length of dailing mNumber is 20"

    invoke-direct {v15, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const-string v1, "Anr number too long"

    invoke-direct {v15, v13, v2, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_5
    :try_start_2
    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Message;

    move-object/from16 v24, v1

    if-eqz v24, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v13, v11, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, v7, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v4, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v4, v1}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v16

    if-eqz v16, :cond_a

    iget-object v2, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    if-nez v2, :cond_7

    const-string v2, ""

    goto :goto_2

    :cond_7
    iget-object v2, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    :goto_2
    iput-object v2, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->loadAasFromUsim()Ljava/util/ArrayList;

    move-result-object v2

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "aasArr = "

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, ", newAdn.mAas = "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v11, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_9

    iget-object v0, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    const-string v11, ";"

    invoke-virtual {v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v11, v0

    new-array v11, v11, [I

    move-object v1, v11

    const/4 v11, 0x0

    :goto_3
    move-object/from16 v17, v3

    array-length v3, v0

    if-ge v11, v3, :cond_8

    aget-object v3, v0, v11

    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    aput v3, v1, v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    const-string v2, "aas["

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", aasIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v1, v11

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v3, v17

    move-object/from16 v2, v18

    goto :goto_3

    :cond_8
    move-object/from16 v18, v2

    move-object v0, v1

    goto :goto_5

    :cond_9
    move-object/from16 v18, v2

    move-object/from16 v17, v3

    goto :goto_4

    :cond_a
    move-object/from16 v17, v3

    :goto_4
    move-object v0, v1

    :goto_5
    const/4 v2, 0x1

    iget v11, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    move-object/from16 v1, p0

    const/16 v3, -0xd

    move-object/from16 p1, v17

    move v3, v9

    move-object/from16 v25, v5

    move v5, v11

    move v11, v6

    move v6, v8

    move/from16 v26, v7

    move/from16 v27, v8

    move-object/from16 v8, p1

    move/from16 v28, v9

    move-object/from16 v9, p3

    move/from16 v29, v11

    move-object/from16 v11, p4

    move/from16 v30, v12

    move-object v12, v0

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_c

    const-string v2, "update anr failed"

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v3, v26

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    const/4 v5, -0x1

    if-ne v1, v5, :cond_b

    const-string v2, "Anr capacity full"

    const/16 v5, -0x9

    invoke-direct {v15, v13, v5, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v2, "Anr number too long"

    const/16 v5, -0xd

    invoke-direct {v15, v13, v5, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_6
    monitor-exit p0

    return-void

    :cond_c
    move/from16 v3, v26

    const/4 v5, -0x1

    const/4 v12, 0x0

    :try_start_4
    iget v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/16 v22, 0x0

    move-object/from16 v11, p0

    move-object v6, v13

    move/from16 v13, v28

    move-object v7, v14

    move-object v14, v4

    move-object v8, v15

    move v15, v2

    move/from16 v16, v27

    move/from16 v17, v3

    move-object/from16 v18, p1

    move-object/from16 v19, p3

    move/from16 v20, v10

    move-object/from16 v21, p4

    :try_start_5
    invoke-direct/range {v11 .. v22}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_d

    const-string v5, "update email failed"

    invoke-direct {v8, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v5, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    const-string v5, "Email capacity full"

    const/4 v9, -0x2

    invoke-direct {v8, v6, v9, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_d
    :try_start_6
    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v9

    if-eqz v9, :cond_e

    const/4 v12, 0x4

    iget v15, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    const/16 v22, 0x0

    move-object/from16 v11, p0

    move/from16 v13, v28

    move-object v14, v4

    move/from16 v16, v27

    move/from16 v17, v3

    move-object/from16 v18, p1

    move-object/from16 v19, p3

    move/from16 v20, v10

    move-object/from16 v21, p4

    invoke-direct/range {v11 .. v22}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I

    move-result v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSneResult = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-gez v9, :cond_e

    const-string v11, "update sne failed"

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v11, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->delete(I)V

    const-string v11, "Sne capacity full"

    invoke-direct {v8, v6, v5, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_e
    move-object/from16 v11, p0

    move-object v12, v4

    move/from16 v13, v27

    move/from16 v14, v28

    move-object/from16 v15, p1

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, v3

    move-object/from16 v19, p5

    :try_start_7
    invoke-direct/range {v11 .. v19}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateGrpOfAdn(Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;ILandroid/os/Message;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->extRecordIsNeeded()Z

    move-result v9

    const/4 v11, 0x7

    const/16 v15, 0xff

    if-eqz v9, :cond_11

    const/4 v9, -0x1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "oldAdn extIndex = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v14, p1

    iget v13, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget v12, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v12, v15, :cond_f

    iget v12, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    int-to-byte v9, v12

    move/from16 v13, v29

    goto :goto_7

    :cond_f
    move/from16 v13, v29

    invoke-direct {v8, v13, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getAvailableExtIndex(II)B

    move-result v12

    move v9, v12

    :goto_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "got extIndex = "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-ne v9, v5, :cond_10

    iget-object v5, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->delete(I)V

    const-string v5, "ext list full"

    const/4 v11, -0x5

    invoke-direct {v8, v6, v11, v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_10
    :try_start_8
    iput v9, v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v5, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v12, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v5, v12}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-virtual {v8, v11, v13, v9}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object v11, v5

    move-object/from16 v12, p3

    move v5, v13

    move v13, v3

    move-object v15, v14

    move v14, v5

    move-object/from16 v19, v0

    move/from16 p1, v1

    move-object v0, v15

    const/16 v1, 0xff

    move v15, v9

    move-object/from16 v16, p4

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_8

    :cond_11
    move-object/from16 v19, v0

    move/from16 v5, v29

    move-object/from16 v0, p1

    move/from16 p1, v1

    move v1, v15

    iget v9, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v9, v1, :cond_12

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need to clear extRecord "

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v12, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    new-instance v9, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v12, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v9, v12}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v15, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iget v12, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v8, v11, v5, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object v11, v9

    move-object/from16 v12, p3

    move v13, v3

    move v14, v5

    move-object/from16 v16, p4

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    :cond_12
    :goto_8
    iput v1, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v11, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v1, v8, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v11, v1}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v1, 0x3

    move/from16 v9, v27

    invoke-virtual {v8, v1, v3, v9, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-direct {v8, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v18

    move-object/from16 v12, p3

    move v13, v3

    move v14, v5

    move v15, v9

    move-object/from16 v16, p4

    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFAdnToUsim(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;[I)V

    const-string v1, "updateUSIMAdnByIndex  finish"

    invoke-direct {v8, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :cond_13
    move v0, v6

    move v3, v7

    move/from16 v28, v9

    move v5, v11

    move/from16 v30, v12

    move-object v6, v13

    move-object v7, v14

    move v9, v8

    move-object v8, v15

    :goto_9
    :try_start_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF: efid:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", extensionEF:0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v8, v6, v5, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :cond_14
    move v5, v11

    move/from16 v30, v12

    move-object v6, v13

    move-object v7, v14

    move-object v8, v15

    :goto_a
    :try_start_a
    const-string v0, "the sim index is invalid"

    invoke-direct {v8, v6, v5, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object v8, v15

    :goto_b
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized updateUSIMAdnBySearch(ILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 35

    move-object/from16 v15, p0

    move-object/from16 v0, p3

    move-object/from16 v14, p5

    monitor-enter p0

    const/4 v1, 0x0

    const/4 v2, -0x1

    const/16 v23, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v24, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateUSIMAdnBySearch efid:0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v15, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v6, 0x0

    move v10, v3

    move v13, v5

    move v12, v6

    move v3, v1

    move v5, v4

    move/from16 v1, p1

    move v4, v2

    move-object/from16 v2, p2

    :goto_0
    iget-object v6, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v6

    const/4 v9, -0x1

    if-ge v12, v6, :cond_16

    const/4 v4, -0x1

    iget-object v6, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v6, v12}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFInfo(I)I

    move-result v6

    move v8, v6

    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findExtensionEFInfo(I)I

    move-result v1

    move v7, v1

    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v1

    move v10, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "efid:0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", extensionEF:0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", iapEF:0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-ltz v8, :cond_15

    if-gez v7, :cond_0

    move v3, v8

    move/from16 v33, v12

    move-object v9, v14

    move-object v6, v15

    move/from16 v34, v7

    move-object v7, v2

    move/from16 v2, v34

    goto/16 :goto_a

    :cond_0
    const-string v1, "updateUSIMAdnBySearch (1)"

    invoke-direct {v15, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v1

    move-object v6, v1

    if-nez v6, :cond_2

    iget-object v1, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v12, v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adn list not exist for EF:0x"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v15, v14, v9, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-void

    :cond_1
    move v3, v8

    move/from16 v33, v12

    move-object v9, v14

    move-object v6, v15

    move/from16 v34, v7

    move-object v7, v2

    move/from16 v2, v34

    goto/16 :goto_9

    :cond_2
    :try_start_1
    const-string v1, "updateUSIMAdnBySearch (2)"

    invoke-direct {v15, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v11, v17

    check-cast v11, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v2, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEqual(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "we got the index "

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v15, v9}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v3, 0x1

    move v4, v1

    iput v4, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    move/from16 v25, v3

    move v11, v4

    goto :goto_2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    const/4 v9, -0x1

    goto :goto_1

    :cond_4
    move/from16 v25, v3

    move v11, v4

    :goto_2
    if-eqz v25, :cond_14

    move v9, v12

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v12, :cond_5

    iget v4, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    iget-object v5, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v5

    aget v5, v5, v3

    add-int/2addr v4, v5

    iput v4, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateUSIMAdnBySearch (3) mInsertId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v15, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    add-int/lit8 v3, v11, -0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    move-object v5, v3

    invoke-direct {v15, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->checkAnrLength(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v2

    const/16 v3, -0xd

    if-nez v2, :cond_6

    const-string v2, "[updateUSIMAdnBySearch] Max length of dailing mNumber is 20"

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const-string v2, "Anr number too long"

    invoke-direct {v15, v14, v3, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :cond_6
    :try_start_2
    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    move-object/from16 v26, v2

    if-eqz v26, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v4, -0x1

    invoke-direct {v15, v14, v4, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-void

    :cond_7
    const/4 v4, -0x1

    :try_start_3
    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v8, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v2, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v3, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    move/from16 v16, v4

    move-object v4, v2

    const/4 v2, 0x0

    iget v3, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    const/16 v17, 0x0

    move/from16 v27, v1

    move-object/from16 v1, p0

    move/from16 v18, v3

    move v3, v9

    move-object/from16 p2, v5

    move/from16 v5, v18

    move-object/from16 v28, v6

    move v6, v11

    move/from16 v29, v7

    move v7, v8

    move/from16 v30, v8

    move-object/from16 v8, p2

    move/from16 v31, v9

    move-object/from16 v9, p3

    move/from16 v32, v11

    move-object/from16 v11, p4

    move/from16 v33, v12

    move-object/from16 v12, v17

    invoke-direct/range {v1 .. v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEmailResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v6, -0x1

    if-ne v1, v6, :cond_9

    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    move/from16 v3, v30

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->delete(I)V

    iget-object v2, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    move/from16 v5, v31

    if-ne v5, v2, :cond_8

    const-string v2, "Email capacity full"

    const/4 v7, -0x2

    invoke-direct {v15, v14, v7, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return-void

    :cond_8
    :try_start_4
    const-string v2, "in the first pbr,no subject found, search in the second pbr"

    invoke-direct {v15, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    move-object/from16 v7, p2

    move v13, v2

    move-object v9, v14

    move-object v6, v15

    move/from16 v2, v29

    move/from16 v4, v32

    goto/16 :goto_9

    :cond_9
    move/from16 v3, v30

    move/from16 v5, v31

    const/4 v7, -0x2

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v9

    if-eqz v9, :cond_b

    iget-object v9, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    if-nez v9, :cond_a

    const-string v9, ""

    goto :goto_4

    :cond_a
    iget-object v9, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    :goto_4
    iput-object v9, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->loadAasFromUsim()Ljava/util/ArrayList;

    move-result-object v9

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "aasArr = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", newAdn.mAas = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v15, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-eqz v9, :cond_b

    iget-object v11, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    if-eqz v11, :cond_b

    iget-object v11, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    const-string v12, ";"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    array-length v12, v11

    new-array v12, v12, [I

    move-object v8, v12

    const/4 v12, 0x0

    :goto_5
    array-length v13, v11

    if-ge v12, v13, :cond_b

    aget-object v13, v11, v12

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    aput v13, v8, v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "aasIndex = "

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget v13, v8, v12

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v15, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    add-int/lit8 v12, v12, 0x1

    const/4 v7, -0x2

    goto :goto_5

    :cond_b
    const/4 v12, 0x1

    iget v7, v15, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v11, p0

    move v13, v5

    move-object v9, v14

    move-object v14, v4

    move-object v6, v15

    move v15, v7

    move/from16 v16, v32

    move/from16 v17, v3

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move/from16 v20, v10

    move-object/from16 v21, p4

    move-object/from16 v22, v8

    :try_start_5
    invoke-direct/range {v11 .. v22}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I

    move-result v7

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateAnrResult = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-gez v7, :cond_e

    iget-object v11, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->delete(I)V

    iget-object v11, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUniUsimPhoneBookManager:Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ne v5, v11, :cond_d

    const-string v11, "update anr failed"

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v11, -0x1

    if-ne v7, v11, :cond_c

    const-string v11, "Anr capacity full"

    const/16 v12, -0x9

    invoke-direct {v6, v9, v12, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_6

    :cond_c
    const-string v11, "Anr number too long"

    const/16 v12, -0xd

    invoke-direct {v6, v9, v12, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_6
    monitor-exit p0

    return-void

    :cond_d
    :try_start_6
    const-string v11, "in the first pbr,no subject found, search in the second pbr"

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    move-object/from16 v7, p2

    move v13, v2

    move/from16 v2, v29

    move/from16 v4, v32

    goto/16 :goto_9

    :cond_e
    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v11

    if-eqz v11, :cond_f

    const/4 v12, 0x4

    iget v15, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mInsertId:I

    const/16 v22, 0x0

    move-object/from16 v11, p0

    move v13, v5

    move-object v14, v4

    move/from16 v16, v32

    move/from16 v17, v3

    move-object/from16 v18, p2

    move-object/from16 v19, p3

    move/from16 v20, v10

    move-object/from16 v21, p4

    invoke-direct/range {v11 .. v22}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateSubjectOfAdn(IILcom/android/internal/telephony/uicc/UniAdnRecordLoader;IIILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;ILjava/lang/String;Ljava/lang/Object;)I

    move-result v11

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "updateSneResult = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    if-gez v11, :cond_f

    const-string v12, "update sne failed"

    invoke-direct {v6, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget-object v12, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v12, v3}, Landroid/util/SparseArray;->delete(I)V

    const-string v12, "sne capacity full"

    const/4 v13, -0x1

    invoke-direct {v6, v9, v13, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_f
    move-object/from16 v11, p0

    move-object v12, v4

    move/from16 v13, v32

    move v14, v5

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move/from16 v18, v3

    move-object/from16 v19, p5

    :try_start_7
    invoke-direct/range {v11 .. v19}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->updateGrpOfAdn(Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;IILcom/android/internal/telephony/phonebook/UniAdnRecord;Lcom/android/internal/telephony/phonebook/UniAdnRecord;Ljava/lang/String;ILandroid/os/Message;)V

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->extRecordIsNeeded()Z

    move-result v11

    const/16 v15, 0xff

    if-eqz v11, :cond_12

    const/4 v11, -0x1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "oldAdn extIndex = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v14, p2

    iget v12, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    iget v12, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v12, v15, :cond_10

    iget v12, v14, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    int-to-byte v11, v12

    move v12, v11

    move/from16 v13, v29

    goto :goto_7

    :cond_10
    move/from16 v13, v29

    invoke-direct {v6, v13, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getAvailableExtIndex(II)B

    move-result v12

    move v11, v12

    move v12, v11

    :goto_7
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "extIndex = "

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    const/4 v11, -0x1

    if-ne v12, v11, :cond_11

    iget-object v11, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mUserWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v11, v3}, Landroid/util/SparseArray;->delete(I)V

    const-string v11, "ext list full"

    const/4 v15, -0x5

    invoke-direct {v6, v9, v15, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :cond_11
    :try_start_8
    iput v12, v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v11, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v15, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v11, v15}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v15, 0x7

    invoke-virtual {v6, v15, v13, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move/from16 v18, v12

    move-object/from16 v12, p3

    move v15, v13

    move v13, v3

    move/from16 v19, v1

    move-object v1, v14

    move v14, v15

    move/from16 v20, v2

    move-object/from16 p2, v4

    move v2, v15

    const/16 v4, 0xff

    move/from16 v15, v18

    move-object/from16 v16, p4

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_8

    :cond_12
    move/from16 v19, v1

    move/from16 v20, v2

    move/from16 v2, v29

    move-object/from16 v1, p2

    move-object/from16 p2, v4

    move v4, v15

    iget v11, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eq v11, v4, :cond_13

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "need to clear extRecord "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V

    new-instance v11, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v12, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v11, v12}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget v15, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iget v12, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    const/4 v13, 0x7

    invoke-virtual {v6, v13, v2, v12}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v17

    move-object/from16 v12, p3

    move v13, v3

    move v14, v2

    move-object/from16 v16, p4

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateExtEF(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    :cond_13
    :goto_8
    iput v4, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    new-instance v11, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;

    iget-object v4, v6, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v11, v4}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v4, 0x3

    move/from16 v15, v32

    invoke-virtual {v6, v4, v3, v15, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v17

    invoke-direct {v6, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsSizeByEf(I)[I

    move-result-object v18

    move-object/from16 v12, p3

    move v13, v3

    move v14, v2

    move v4, v15

    move-object/from16 v16, p4

    invoke-virtual/range {v11 .. v18}, Lcom/android/internal/telephony/uicc/UniAdnRecordLoader;->updateEFAdnToUsim(Lcom/android/internal/telephony/phonebook/UniAdnRecord;IIILjava/lang/String;Landroid/os/Message;[I)V

    move/from16 v13, v20

    move/from16 v34, v2

    move-object v2, v1

    move v1, v3

    move/from16 v3, v34

    goto :goto_b

    :cond_14
    move/from16 v27, v1

    move-object/from16 v28, v6

    move v3, v8

    move v4, v11

    move/from16 v33, v12

    move-object v9, v14

    move-object v6, v15

    move/from16 v34, v7

    move-object v7, v2

    move/from16 v2, v34

    :goto_9
    add-int/lit8 v12, v33, 0x1

    move v1, v3

    move-object v15, v6

    move-object v14, v9

    move v3, v2

    move-object v2, v7

    goto/16 :goto_0

    :cond_15
    move v3, v8

    move/from16 v33, v12

    move-object v9, v14

    move-object v6, v15

    move/from16 v34, v7

    move-object v7, v2

    move/from16 v2, v34

    :goto_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "EF is not known ADN-like EF: efid:0x"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, -0x1

    invoke-direct {v6, v9, v8, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :cond_16
    move-object v7, v2

    move/from16 v33, v12

    move-object v9, v14

    move-object v6, v15

    :goto_b
    const/4 v7, -0x1

    if-ne v4, v7, :cond_18

    if-eqz v13, :cond_17

    :try_start_9
    const-string v7, "Email capacity full"

    const/4 v8, -0x2

    invoke-direct {v6, v9, v8, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    goto :goto_c

    :cond_17
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adn record don\'t exist for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x3

    invoke-direct {v6, v9, v8, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->sendErrorResponse(Landroid/os/Message;ILjava/lang/String;)V

    :cond_18
    :goto_c
    const-string v7, "updateUSIMAdnBySearch finish"

    invoke-direct {v6, v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->logd(Ljava/lang/String;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v6, v15

    :goto_d
    monitor-exit p0

    throw v0
.end method
