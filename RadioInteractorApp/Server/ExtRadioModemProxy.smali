.class public Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;
.super Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.source "ExtRadioModemProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioModemProxy"


# instance fields
.field private volatile mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

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

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    return-object v0
.end method

.method public getCpComLogVersion(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->getCpComLogVersion(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->getCpComLogVersion(I)V

    :goto_0
    return-void
.end method

.method public getExceptionEvents(IIIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->getExceptionEvents(IIIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-object v1, v0

    check-cast v1, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->getExceptionEvents(IIIII)V

    :goto_0
    return-void
.end method

.method public getIdentityState(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->getIdentityState(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioModemProxy"

    const-string v1, "HIDL getIdentityState interface has not been apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public getPcba(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->getPcba(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getPcba(I)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryRootNode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioModemProxy"

    const-string v1, "AIDL queryRootNode interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->queryRootNode(I)V

    :goto_0
    return-void
.end method

.method public requestShutdownExt(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioModemProxy"

    const-string v1, "AIDL requestShutdownExt interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->requestShutdownExt(I)V

    :goto_0
    return-void
.end method

.method public resetModem(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->resetModem(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->resetModem(I)V

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

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->responseAcknowledgement()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :goto_0
    return-void
.end method

.method public sendCmdAsync(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->sendCmdAsync(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->sendCmdAsync(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;)V
    .locals 2

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mIsAidl:Z

    const-string v0, "ExtRadioModemProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMNOParam(IILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtModemProxy:Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    invoke-interface {v0, p1, p2, p3}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->setMNOParam(IILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2, p3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setMNOParam(IILjava/lang/String;)V

    :goto_0
    return-void
.end method
