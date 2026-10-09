.class public Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;
.super Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;
.source "ExtRadioDataResponse.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ExtRadioDataResponse"


# instance fields
.field mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method


# virtual methods
.method public attachDataResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-static {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method

.method public enableRauNotifyResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-static {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method

.method public forceDeatchResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-static {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method

.method public getActivedPdpCountResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    filled-new-array {p2}, [I

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2, v0, p1, v1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "c5bbc1e0f4303a5896de835152ce1060178f88dd"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public reAttachResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-static {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setPsDataOffResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-static {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method

.method public setUsbShareStateSwitchResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-static {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method
