.class public Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;
.super Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.source "ExtRadioMessagingProxy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioMessagingProxy"


# instance fields
.field private volatile mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    invoke-super {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    return-void
.end method

.method public getAidl()Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    return-object v0
.end method

.method public getSmsBearer(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->getSmsBearer(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getSmsBearer(I)V

    :goto_0
    return-void
.end method

.method public getTPMRState(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->getTPMRState(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getTPMRState(I)V

    :goto_0
    return-void
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public querySmsStorageMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    invoke-interface {v0, p1}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->querySmsStorageMode(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->querySmsStorageMode(I)V

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

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    invoke-interface {v0}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->responseAcknowledgement()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :goto_0
    return-void
.end method

.method public setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;)V
    .locals 2

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mIsAidl:Z

    const-string v0, "ExtRadioMessagingProxy"

    const-string v1, "AIDL initialized"

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public storeSmsToSim(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isAidl()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtMessagingProxy:Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    invoke-interface {v0, p1, p2}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->storeSmsToSim(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0, p1, p2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->storeSmsToSim(IZ)V

    :goto_0
    return-void
.end method
