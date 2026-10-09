.class public Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;
.super Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.source "ExtRadioVoiceProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioVoiceProxy"


# instance fields
.field private volatile mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    return-void
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    return-void
.end method

.method public explicitCallTransfer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->explicitCallTransferExt(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->explicitCallTransferExt(I)V

    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    return-object v0
.end method

.method public getCNAP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->getCnap(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getCnap(I)V

    :goto_0
    return-void
.end method

.method public getHDVoiceState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioVoiceProxy"

    const-string v1, "AIDL getHDVoiceState interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getHDVoiceState(I)V

    :goto_0
    return-void
.end method

.method public getNumberControl(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->getNumberControl(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getNumberControl(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSpecialRatcap(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->getSpecialRatcap(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSpecialRatcap(II)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryCOLP(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->queryColp(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->queryColp(I)V

    :goto_0
    return-void
.end method

.method public queryCOLR(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->queryColr(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->queryColr(I)V

    :goto_0
    return-void
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->responseAcknowledgement()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :goto_0
    return-void
.end method

.method public sendScreenInteractionExtras(IIIIILjava/lang/String;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p0

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->sendScreenInteractionExtras(IIIIILjava/lang/String;I)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    const-string v1, "ExtRadioVoiceProxy"

    const-string v2, "HIDL sendScreenInteractionExtras interface has not been applied."

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;)V
    .locals 2

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mIsAidl:Z

    const-string v0, "ExtRadioVoiceProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEmergencyOnly(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setEmergencyOnly(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    nop

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setEmergencyOnly(II)V

    :goto_0
    return-void
.end method

.method public setFdnList(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setFdnList(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->setFdnList(IILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setImsUserAgent(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setImsUserAgent(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setImsUserAgent(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setLocationInfo(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSSflag(IIII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setSSflag(IIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setSSflag(IIII)V

    :goto_0
    return-void
.end method

.method public setTPMRState(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setTPMRState(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setTPMRState(II)V

    :goto_0
    return-void
.end method

.method public updateCLIP(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->updateClip(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->updateClip(II)V

    :goto_0
    return-void
.end method

.method public updateEcclist(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->updateEcclist(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->updateEcclist(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public videoPhoneCodec(IILandroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioVoiceProxy"

    const-string v1, "AIDL videoPhoneCodec interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneCodec;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneCodec;-><init>()V

    iput p2, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneCodec;->type:I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v1, p1, v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->videoPhoneCodec(ILvendor/sprd/hardware/radio/V1_0/VideoPhoneCodec;)V

    :goto_0
    return-void
.end method

.method public videoPhoneControlIFrame(IZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->videoPhoneControlIFrame(IZZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->videoPhoneControlIFrame(IZZ)V

    :goto_0
    return-void
.end method

.method public videoPhoneDial(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioVoiceProxy"

    const-string v1, "AIDL videoPhoneDial interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDial;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDial;-><init>()V

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDial;->address:Ljava/lang/String;

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDial;->subAddress:Ljava/lang/String;

    iput p4, v0, Lvendor/sprd/hardware/radio/V1_0/VideoPhoneDial;->clir:I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v1, p1, v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->videoPhoneDial(ILvendor/sprd/hardware/radio/V1_0/VideoPhoneDial;)V

    :goto_0
    return-void
.end method

.method public videoPhoneFallback(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->videoPhoneFallback(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->videoPhoneFallback(I)V

    :goto_0
    return-void
.end method

.method public videoPhoneLocalMedia(IIIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->videoPhoneLocalMedia(IIIZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->videoPhoneLocalMedia(IIIZ)V

    :goto_0
    return-void
.end method

.method public videoPhoneString(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtVoiceProxy:Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->videoPhoneString(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->videoPhoneString(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
