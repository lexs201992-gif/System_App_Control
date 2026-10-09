.class public Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;
.super Lvendor/unisoc/hardware/radio/modem/IExtRadioModemResponse$Stub;
.source "ExtRadioModemResponse.java"


# instance fields
.field private final mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModemResponse$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method


# virtual methods
.method public getCpComLogVersionResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getExceptionEventsResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public getIdentityStateResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;I)V
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    const/4 v2, 0x0

    aput p2, v0, v2

    const/4 v2, 0x1

    aput v1, v0, v2

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v3, 0x3

    invoke-static {v3, v2, p1, v0}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "754e520840482f66cc39d3aad05f225441cb5eef"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getPcbaResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public resetModemResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method

.method public sendCmdAsyncResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public setMNOParamResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-static {v1, v0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method
