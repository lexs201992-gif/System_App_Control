.class public Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;
.super Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.source "ExtRadioNetworkProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioNetworkProxy"


# instance fields
.field private volatile mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

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

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    return-void
.end method

.method public enableLTE(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->enableLTE(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->enableLTE(IZ)V

    :goto_0
    return-void
.end method

.method public enableNrSwitch(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->enableNrSwitch(III)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->enableNrSwitch(III)V

    :goto_0
    return-void
.end method

.method public enableRadioPowerFallback(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2, v1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setRadioPowerFallback(IZI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, v1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setRadioPowerFallback(IZI)V

    :goto_0
    return-void
.end method

.method public enableRadioPowerFallbackWithScenarioId(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setRadioPowerFallback(IZI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setRadioPowerFallback(IZI)V

    :goto_0
    return-void
.end method

.method public enableSmartNrSwitch(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->enableSmartNrSwitch(II)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL enableSmartNrSwitch interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    return-object v0
.end method

.method public getBigDataOfNetAndCall(IIIZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->getBigDataOfNetAndCall(IIIZ)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL getCommunicationData interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getNsaConnStatus(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->getNsaConnStatus(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL getNsaConnStatus interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPreferredNetworkTypeExt(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->getPreferredNetworkTypeExt(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getPreferredNetworkTypeExt(I)V

    :goto_0
    return-void
.end method

.method public getRadioPreference(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->getRadioPreference(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getRadioPreference(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getSA(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->getSA(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->getSA(I)V

    :goto_0
    return-void
.end method

.method public getVoLTEAllowedPLMN(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->getVoLTEAllowedPLMN(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getVoLTEAllowedPLMN(I)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public requestLteSpeedAndSignalStrength(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->requestLteSpeedAndSignalStrength(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->requestLteSpeedAndSignalStrength(I)V

    :goto_0
    return-void
.end method

.method public requestNrSpeedAndSignalStrength(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->requestNrSpeedAndSignalStrength(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL setRadioPowerFallbackWithType interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

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

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->responseAcknowledgement()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;)V
    .locals 2

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mIsAidl:Z

    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFastReturnNetwork(ILjava/lang/String;IIII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setFastReturnNetwork(ILjava/lang/String;IIII)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL setFastReturnNetwork interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setPreferredNetworkTypeExt(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setPreferredNetworkTypeExt(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setPreferredNetworkTypeExt(II)V

    :goto_0
    return-void
.end method

.method public setRadioPowerFallbackWithType(IZII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2, p3, p4}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setRadioPowerFallbackWithType(IZII)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL setRadioPowerFallbackWithType interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setRadioPreference(ILjava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setRadioPreference(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setRadioPreference(ILjava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSA(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setSA(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->setSA(II)V

    :goto_0
    return-void
.end method

.method public setSCGAllow(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setSCGAllow(IZ)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioNetworkProxy"

    const-string v1, "HIDL setSCGAllow interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public updateOperatorName(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtNetworkProxy:Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->updateOperatorName(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->updateOperatorName(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
