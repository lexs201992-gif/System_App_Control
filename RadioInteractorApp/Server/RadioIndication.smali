.class public Lcom/android/unisoc/telephony/server/RadioIndication;
.super Lvendor/sprd/hardware/radio/V1_1/IExtRadioIndication$Stub;
.source "RadioIndication.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RadioIndication"


# instance fields
.field mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/sprd/hardware/radio/V1_1/IExtRadioIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static arrayListToStringArray(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getOperatorNameHandler()Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;
    .locals 1

    const-string v0, "ions_ex"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public IMSCsfbVendorCauseInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139b

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolImsCsfbVendorCauseRegistrant(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public MNOPResetModemInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139e

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolMNOPResetModemRegistrants()V

    return-void
.end method

.method public availableNetworksInd(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->arrayListToString(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x1397

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolAvailableNetworksRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public clearCodeFallbackInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1391

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolClearCodeFallbackRegistrants()V

    return-void
.end method

.method public earlyMediaInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1396

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolEarlyMediaRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public exceptionEventsInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a1

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolExceptionEventsRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public modemStateChangedInd(ILvendor/sprd/hardware/radio/V1_0/ModemStatusInfo;)V
    .locals 4

    if-nez p2, :cond_0

    const-string v0, "RadioIndication"

    const-string v1, "modemStateChangedInd return when statusInfo is null."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    new-instance v0, Lcom/android/unisoc/telephony/ModemStatusIndication;

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/ModemStatusInfo;->status:I

    iget-object v2, p2, Lvendor/sprd/hardware/radio/V1_0/ModemStatusInfo;->assertInfo:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/unisoc/telephony/ModemStatusIndication;-><init>(ILjava/lang/String;)V

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ModemStatusInfo;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x139d

    invoke-virtual {v1, v3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v1, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolModemStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public networkErrorCodeInd(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x1394

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolNetworkErrorCodeRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public nrCfgInfoInd(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/RadioIndication;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x13a0

    invoke-virtual {v1, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v1, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v1, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public nsaConnStatusInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v0, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNsaConnStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public rauSuccessInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1390

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRauSuccessRegistrants()V

    return-void
.end method

.method public reasonsForRegRejectedInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a4

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v0, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolReasonsForRegRejectedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public rilConnected(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x40a

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyRegistrantsRilConnectionChanged(I)V

    return-void
.end method

.method public rilConnectedInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1392

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRIConnectedRegistrants()V

    return-void
.end method

.method public sib24StatusInd(ILjava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/RadioIndication;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x13a3

    invoke-virtual {v1, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    array-length v1, v0

    if-lez v1, :cond_1

    new-instance v1, Lcom/android/unisoc/telephony/Sib24StatusIndication;

    const/4 v2, 0x0

    aget v2, v0, v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-direct {v1, v2, v3}, Lcom/android/unisoc/telephony/Sib24StatusIndication;-><init>(II)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v2, v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v2, v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v1, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public simMgrSimStatusChangedInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1395

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mHasRealSimStateChanged:Z

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iput p2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDate:I

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRealSimStateChangedRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public simRefresh(ILvendor/sprd/hardware/radio/V1_0/ExtSimRefreshResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lvendor/sprd/hardware/radio/V1_0/ExtSimRefreshResult;->type:I

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x139c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolSimRefreshRegistrants()V

    return-void
.end method

.method public simlockSimExpiredInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1393

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolExpireSimdRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public smartNrChangedInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139f

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v0, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v0, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    :cond_1
    return-void
.end method

.method public subsidyLockStatusChangedInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolSubsidyLockStateRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public updateHdStateInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1399

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolHdStatusdRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public updateNetworkList(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->arrayListToString(Ljava/util/ArrayList;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/RadioIndication;->getOperatorNameHandler()Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;->updateNetworkList(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v3, "NullPointerException updateNetworkList"

    invoke-virtual {v2, v3, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v3, "RemoteException updateNetworkList"

    invoke-virtual {v2, v3, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    nop

    :goto_1
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method public updatePlmn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/RadioIndication;->getOperatorNameHandler()Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;->getHighPriorityPlmn(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v2, "NullPointerException updatePlmn"

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v2, "RemoteException updatePlmn"

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    nop

    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public videoPhoneCodecInd(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x1388

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPCodecRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public videoPhoneDSCIInd(ILvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;)V
    .locals 10

    if-nez p2, :cond_0

    const-string v0, "RadioIndication"

    const-string v1, "videoPhoneDSCIInd return when data is null."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    new-instance v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;-><init>()V

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->id:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->id:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->idr:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->idr:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->stat:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->stat:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->type:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->type:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->mpty:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->mpty:I

    iget-object v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->number:Ljava/lang/String;

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->number:Ljava/lang/String;

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->numType:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->numType:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->bsType:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->bsType:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->location:I

    iput v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->location:I

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x1389

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_1
    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    const/16 v2, 0x2f

    const/16 v3, 0x39

    const/16 v4, 0x32

    if-eq v1, v2, :cond_2

    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    if-eq v1, v3, :cond_2

    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    if-eq v1, v4, :cond_2

    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    const/16 v2, 0x3a

    if-eq v1, v2, :cond_2

    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    const/16 v2, 0x45

    if-eq v1, v2, :cond_2

    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    const/16 v2, 0x58

    if-ne v1, v2, :cond_6

    :cond_2
    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    const/4 v2, 0x0

    if-eq v1, v4, :cond_3

    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    if-ne v1, v3, :cond_5

    :cond_3
    iget v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->location:I

    const/4 v3, 0x2

    if-gt v1, v3, :cond_5

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v4, Landroid/os/AsyncResult;

    new-instance v5, Landroid/os/AsyncResult;

    iget v6, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->idr:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    new-instance v7, Landroid/os/AsyncResult;

    iget-object v8, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->number:Ljava/lang/String;

    iget v9, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->location:I

    if-ne v9, v3, :cond_4

    iget v3, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    add-int/lit16 v3, v3, 0xc8

    goto :goto_0

    :cond_4
    iget v3, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    add-int/lit8 v3, v3, 0x64

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v7, v8, v3, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v5, v6, v7, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v4, v2, v5, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPFallBackRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v3, Landroid/os/AsyncResult;

    new-instance v4, Landroid/os/AsyncResult;

    iget v5, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->idr:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-instance v6, Landroid/os/AsyncResult;

    iget-object v7, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->number:Ljava/lang/String;

    iget v8, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDSCI;->cause:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v4, v5, v6, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v3, v2, v4, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPFallBackRegistrants(Landroid/os/AsyncResult;)V

    :cond_6
    :goto_1
    return-void
.end method

.method public videoPhoneMMRingInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x138c

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPMMRingRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public videoPhoneMediaStartInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x138f

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPMediaStartRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public videoPhoneRecordVideoInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x138e

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPRecordVideoRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public videoPhoneReleasingInd(ILjava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x138d

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Landroid/os/AsyncResult;

    new-instance v3, Landroid/os/AsyncResult;

    const/16 v4, 0x3e8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v3, p2, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v2, v5, v3, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {v1, v5, v2, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPFailRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public videoPhoneRemoteMediaInd(ILjava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I

    move-result-object v0

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x138b

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPRemoteMediaRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public videoPhoneStringInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x138a

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioIndication;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolVPStrsRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
