.class public Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;
.super Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessagingResponse$Stub;
.source "ExtRadioMessagingResponse.java"


# instance fields
.field mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessagingResponse$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "2120706b8828af75e8d1f6ab3a5655f40890b611"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getSmsBearerResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x2

    filled-new-array {p2}, [I

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public getTPMRStateResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x2

    filled-new-array {p2}, [I

    move-result-object v2

    invoke-static {v1, v0, p1, v2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseInts(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;[I)V

    return-void
.end method

.method public querySmsStorageModeResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x2

    invoke-static {v1, v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseString(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/String;)V

    return-void
.end method

.method public storeSmsToSimResponse(Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x2

    invoke-static {v1, v0, p1}, Lcom/android/unisoc/telephony/server/RadioResponse;->responseVoid(ILcom/android/unisoc/telephony/server/RadioInteractorCore;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)V

    return-void
.end method
