.class public Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;
.super Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.source "ExtRadioSimProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioSimProxy"


# instance fields
.field private volatile mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

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

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    return-object v0
.end method

.method public getIccCardStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getIccCardStatusExt(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getIccCardStatusExt(I)V

    :goto_0
    return-void
.end method

.method public getSimCapacity(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getSimCapacity(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSimCapacity(I)V

    :goto_0
    return-void
.end method

.method public getSimlockDummys(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getSimlockDummys(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSimlockDummys(I)V

    :goto_0
    return-void
.end method

.method public getSimlockRemaintimes(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getSimlockRemaintimes(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSimlockRemaintimes(II)V

    :goto_0
    return-void
.end method

.method public getSimlockStatus(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getSimlockStatus(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSimlockStatus(II)V

    :goto_0
    return-void
.end method

.method public getSimlockWhitelist(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getSimlockWhitelist(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSimlockWhitelist(II)V

    :goto_0
    return-void
.end method

.method public getSubsidyLockdyStatus(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getSubsidyLockdyStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSubsidyLockdyStatus(I)V

    :goto_0
    return-void
.end method

.method public iccIOForAllFile(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->iccIOForAllFile(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    check-cast v0, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->iccIOForAllFile(I)V

    :goto_0
    return-void
.end method

.method public iccIOForAppExt(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;

    invoke-direct {v0}, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;-><init>()V

    iput p2, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->command:I

    iput p3, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->fileId:I

    invoke-direct {p0, p4}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->path:Ljava/lang/String;

    iput p5, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->p1:I

    iput p6, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->p2:I

    iput p7, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->p3:I

    invoke-direct {p0, p8}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->data:Ljava/lang/String;

    invoke-direct {p0, p9}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->pin2:Ljava/lang/String;

    invoke-direct {p0, p10}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/unisoc/hardware/radio/sim/ExtIccIo;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v1, p1, v0}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->iccIOForAppExt(ILvendor/unisoc/hardware/radio/sim/ExtIccIo;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;

    invoke-direct {v0}, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;-><init>()V

    iput p2, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->command:I

    iput p3, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->fileId:I

    invoke-direct {p0, p4}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->path:Ljava/lang/String;

    iput p5, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->p1:I

    iput p6, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->p2:I

    iput p7, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->p3:I

    invoke-direct {p0, p8}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->data:Ljava/lang/String;

    invoke-direct {p0, p9}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->pin2:Ljava/lang/String;

    invoke-direct {p0, p10}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lvendor/sprd/hardware/radio/V1_0/ExtIccIo;->aid:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v1, p1, v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->iccIOForAppExt(ILvendor/sprd/hardware/radio/V1_0/ExtIccIo;)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public queryFacilityLockForAppExt(ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    move v2, p1

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->getFacilityLockForAppExt(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-object v1, v0

    check-cast v1, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, p3}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, ""

    move v2, p1

    move v5, p4

    invoke-interface/range {v1 .. v6}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->getFacilityLockForAppExt(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public queryPlmn(II)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->queryPlmn(II)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->queryPlmn(II)V

    :goto_0
    return-void
.end method

.method public readNvcodeFromMiscdata(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->readNvcodeFromMiscdata(I)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioSimProxy"

    const-string v1, "HIDL readNvcodeFromMiscdata interface has not apply."

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

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->responseAcknowledgement()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;)V
    .locals 2

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mIsAidl:Z

    const-string v0, "ExtRadioSimProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFacilityLock(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-virtual/range {p0 .. p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v3}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move/from16 v6, p1

    move/from16 v8, p3

    move/from16 v10, p5

    invoke-interface/range {v5 .. v11}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->setFacilityLock(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v12, v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    invoke-direct {v0, v3}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move/from16 v13, p1

    move/from16 v15, p3

    move/from16 v17, p5

    invoke-interface/range {v12 .. v18}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setFacilityLock(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setFacilityLockForUser(ILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->setFacilityLockForUser(ILjava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1, p3}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setFacilityLockForUser(ILjava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public setNvcodeToMiscdata(ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->setNvcodeToMiscdata(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "ExtRadioSimProxy"

    const-string v1, "HIDL setNvcodeToMiscdata interface has not apply."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSimPowerReal(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioSimProxy"

    const-string v1, "AIDL setSimPowerReal interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setSimPowerReal(IZ)V

    :goto_0
    return-void
.end method

.method public simGetAtr(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->simGetAtr(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->simGetAtr(I)V

    :goto_0
    return-void
.end method

.method public simmgrSimPower(IZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ExtRadioSimProxy"

    const-string v1, "AIDL simmgrSimPower interface has been deleted."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->simmgrSimPower(IZ)V

    :goto_0
    return-void
.end method

.method public updatePlmnPriority(IIIIIII)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object v0, p0

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isAidl()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtSimProxy:Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-interface/range {v2 .. v9}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->updatePlmnPriority(IIIIIII)V

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-interface/range {v3 .. v10}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->updatePlmnPriority(IIIIIII)V

    :goto_0
    return-void
.end method
