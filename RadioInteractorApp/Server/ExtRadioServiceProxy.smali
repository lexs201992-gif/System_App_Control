.class public abstract Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
.super Ljava/lang/Object;
.source "ExtRadioServiceProxy.java"


# instance fields
.field volatile mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

.field mHalVersion:Lcom/android/internal/telephony/HalVersion;

.field mIsAidl:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    return-void
.end method

.method public getHidl()Lvendor/sprd/hardware/radio/V1_0/IExtRadio;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    return-object v0
.end method

.method public isAidl()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mIsAidl:Z

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public responseAcknowledgement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isAidl()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-interface {v0}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V

    :cond_1
    return-void
.end method

.method public setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/sprd/hardware/radio/V1_0/IExtRadio;)V
    .locals 1

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mHalVersion:Lcom/android/internal/telephony/HalVersion;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->mIsAidl:Z

    return-void
.end method
