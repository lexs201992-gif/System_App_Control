.class public Lcom/android/unisoc/telephony/server/RadioResponse;
.super Lvendor/sprd/hardware/radio/V1_1/IExtRadioResponse$Stub;
.source "RadioResponse.java"


# static fields
.field static final DBG:Z


# instance fields
.field mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/android/unisoc/telephony/server/RadioResponse;->DBG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/sprd/hardware/radio/V1_1/IExtRadioResponse$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method

.method public static responseIntArrayList(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/unisoc/telephony/server/RadioInteractorCore;",
            "Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(ILvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static varargs responseInts(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;[I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseIntArrayList(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method private responseNumberControl(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;)V
    .locals 5

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    const-string v1, "RadioInteractor"

    if-nez v0, :cond_0

    const-string v2, "responseNumberControl.rr is null."

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v2, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;

    invoke-direct {v2}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;-><init>()V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->currentCallType:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setCurrentCallType(I)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->ctrlResult:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setCtrlResult(I)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->isAlphaId:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setIsAlphaId(I)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->alphaLen:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setAlphaLen(I)V

    iget-object v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->alphaData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setAlphaData(Ljava/lang/String;)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->lastCallType:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setLastCallType(I)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->ton:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setTon(I)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->npi:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setNpi(I)V

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->modifyLen:I

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setModifyLen(I)V

    iget-object v3, p2, Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;->modifyData:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;->setModifyData(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "responseNumberControl: from HIDL: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    return-void
.end method

.method public static responseString(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p1, p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(ILvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p3}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static responseStringArrayList(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/unisoc/telephony/server/RadioInteractorCore;",
            "Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1, p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(ILvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    const/4 v1, 0x0

    iget v2, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_1

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public static varargs responseStrings(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p3

    if-ge v1, v2, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p0, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseStringArrayList(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 3

    invoke-virtual {p1, p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(ILvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v2, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p1, v0, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public static sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method


# virtual methods
.method public attachDataResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public enableLTEResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public enableNrSwitchResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public enableRauNotifyResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public explicitCallTransferExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public forceDeatchResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public getActivedPdpCountResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getCnapResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;II)V
    .locals 1

    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getCpComLogVersionResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getExceptionEventsResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getFacilityLockForAppExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;II)V
    .locals 1

    filled-new-array {p2, p3}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getHDVoiceStateResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getIccCardStatusExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseSimStatus(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;)V

    return-void
.end method

.method public getNumberControlResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseNumberControl(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/NumberControlInfo;)V

    return-void
.end method

.method public getPcbaResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getPreferredNetworkTypeExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getRadioPreferenceResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getSAResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getSimCapacityResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseStringArrayList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getSimlockDummysResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseIntArrayList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public getSimlockRemaintimesResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getSimlockStatusResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getSimlockWhitelistResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getSmsBearerResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getSpecialRatcapResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getSubsidyLockdyStatusResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getTPMRStateResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getVoLTEAllowedPLMNResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public iccIOForAllFileResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseIccIOForAllFileList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public iccIOForAppExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseIccIo(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;)V

    return-void
.end method

.method public queryColpResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public queryColrResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public queryPlmnResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public queryRootNodeResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public querySmsStorageModeResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public reAttachResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public requestLteSpeedAndSignalStrengthResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseLteSpeedAndSignalStrength(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;)V

    return-void
.end method

.method public requestShutdownExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public resetModemResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public responseIccIOForAllFileList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;

    iget v5, v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;->efid:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;->size:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;

    iget-object v4, v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;->iccIoResultEx:Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;

    iget v7, v4, Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;->sw1:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;

    iget-object v4, v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;->iccIoResultEx:Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;

    iget v8, v4, Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;->sw2:I

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;

    iget-object v4, v4, Lvendor/sprd/hardware/radio/V1_1/UniIccIoResultEx;->iccIoResultEx:Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;

    iget-object v9, v4, Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;->simResponse:Ljava/lang/String;

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;-><init>(IIIILjava/lang/String;)V

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public responseIccIo(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;)V
    .locals 6

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    if-eqz p2, :cond_0

    new-instance v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;

    iget v3, p2, Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;->sw1:I

    iget v4, p2, Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;->sw2:I

    iget-object v5, p2, Lvendor/sprd/hardware/radio/V1_0/ExtIccIoResult;->simResponse:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5}, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;-><init>(IILjava/lang/String;)V

    move-object v1, v2

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public responseIntArrayList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public varargs responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    aget v2, p2, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseIntArrayList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public responseLteSpeedAndSignalStrength(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;

    invoke-direct {v1}, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;-><init>()V

    if-eqz p2, :cond_0

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;->txSpeed:I

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;->setTxSpeed(I)V

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;->rxSpeed:I

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;->setRxSpeed(I)V

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;->snr:I

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;->setSnr(I)V

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/LteSpeedAndSignalStrength;->rsrp:I

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;->setRsrp(I)V

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseLteSpeedAndSignalStrength: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public responseSimStatus(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;)V
    .locals 7

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_4

    new-instance v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;

    invoke-direct {v1}, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;-><init>()V

    if-eqz p2, :cond_1

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->cardState:I

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->setCardState(I)V

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->universalPinState:I

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->setUniversalPinState(I)V

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->gsmUmtsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mGsmUmtsSubscriptionAppIndex:I

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->cdmaSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCdmaSubscriptionAppIndex:I

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->imsSubscriptionAppIndex:I

    iput v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mImsSubscriptionAppIndex:I

    iget v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->physicalSlotId:I

    iput v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->physicalSlotIndex:I

    iget-object v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->atr:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->atr:Ljava/lang/String;

    iget-object v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->iccid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->iccid:Ljava/lang/String;

    iget-object v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->eid:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->eid:Ljava/lang/String;

    iget-object v2, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v3, 0x8

    if-le v2, v3, :cond_0

    const/16 v2, 0x8

    :cond_0
    new-array v3, v2, [Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    iput-object v3, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    iget-object v4, p2, Lvendor/sprd/hardware/radio/V1_0/ExtCardStatus;->applications:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;

    new-instance v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    invoke-direct {v5}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;-><init>()V

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->appType:I

    invoke-virtual {v5, v6}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->AppTypeFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    move-result-object v6

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->appState:I

    invoke-virtual {v5, v6}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->AppStateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    move-result-object v6

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_state:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->persoSubstate:I

    invoke-virtual {v5, v6}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->PersoSubstateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    move-result-object v6

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->perso_substate:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    iget-object v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->aidPtr:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->aid:Ljava/lang/String;

    iget-object v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->appLabelPtr:Ljava/lang/String;

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_label:Ljava/lang/String;

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->pin1Replaced:I

    iput v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->pin1_replaced:I

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->pin1:I

    invoke-virtual {v5, v6}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->PinStateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    move-result-object v6

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->pin1:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iget v6, v4, Lvendor/sprd/hardware/radio/V1_0/ExtAppStatus;->pin2:I

    invoke-virtual {v5, v6}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->PinStateFromRILInt(I)Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    move-result-object v6

    iput-object v6, v5, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->pin2:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$PinState;

    iget-object v6, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    aput-object v5, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioResponse;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "responseSimStatus: from HIDL: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_3

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_3
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public responseStringArrayList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_1

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_1
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public varargs responseStrings(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[Ljava/lang/String;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseStringArrayList(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    if-nez v2, :cond_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->sendMessageResponse(Landroid/os/Message;Ljava/lang/Object;)V

    :cond_0
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioResponse;->mRi:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public sendCmdAsyncResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setEmergencyOnlyResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setFacilityLockExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;I)V
    .locals 1

    filled-new-array {p2}, [I

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public setFacilityLockForUserResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setFdnListResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setImsUserAgentResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setLocalToneResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setLocationInfoResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setMNOParamResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setPreferredNetworkTypeExtResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setPsDataOffResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setRadioPowerFallbackResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setRadioPreferenceResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setSAResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setSSflagResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setSimPowerRealResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setSinglePDNResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setSmsBearerResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setTPMRStateResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setTrafficClassResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setXcapIPAddressResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public simGetAtrResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public simmgrSimPowerResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public storeSmsToSimResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public updateClipResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public updateEcclistResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public updateOperatorNameResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public updatePlmnPriorityResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public videoPhoneCodecResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public videoPhoneControlIFrameResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public videoPhoneDialResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public videoPhoneFallbackResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public videoPhoneLocalMediaResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method

.method public videoPhoneStringResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)V

    return-void
.end method
