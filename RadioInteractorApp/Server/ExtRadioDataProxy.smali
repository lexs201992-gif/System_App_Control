.class public Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;
.super Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.source "ExtRadioDataProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioDataProxy"


# instance fields
.field private volatile mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    return-void
.end method

.method private static convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method


# virtual methods
.method public attachData(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->attachData(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->attachData(IZ)V

    :goto_0
    return-void
.end method

.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    return-void
.end method

.method public enableRauNotify(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->enableRauNotify(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->enableRauNotify(I)V

    :goto_0
    return-void
.end method

.method public forceDetachDataConn(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->forceDeatch(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->forceDeatch(I)V

    :goto_0
    return-void
.end method

.method public getActivePdpCount(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->getActivedPdpCount(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getActivedPdpCount(I)V

    :goto_0
    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/data/IExtRadioData;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reAttach(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->reAttach(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->reAttach(I)V

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

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->responseAcknowledgement()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/data/IExtRadioData;)V
    .locals 2

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mIsAidl:Z

    const-string v0, "ExtRadioDataProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setPsDataOff(IZI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->setPsDataOff(IZI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setPsDataOff(IZI)V

    :goto_0
    return-void
.end method

.method public setSinglePDN(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioDataProxy"

    const-string v1, "AIDL setSinglePDN interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setSinglePDN(IZ)V

    :goto_0
    return-void
.end method

.method public setTrafficClass(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioDataProxy"

    const-string v1, "AIDL setTrafficClass interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setTrafficClass(II)V

    :goto_0
    return-void
.end method

.method public setUsbShareStateSwitch(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtDataProxy:Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->setUsbShareStateSwitch(IZ)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioDataProxy"

    const-string v1, "HIDL setUsbShareStateSwitch interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setXcapIPAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioDataProxy"

    const-string v1, "AIDL setXcapIPAddress interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-static {p2}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p3}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p4}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, p1, v1, v2, v3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setXcapIPAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
