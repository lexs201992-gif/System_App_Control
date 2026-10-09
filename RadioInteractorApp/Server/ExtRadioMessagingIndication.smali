.class public Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;
.super Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessagingIndication$Stub;
.source "ExtRadioMessagingIndication.java"


# instance fields
.field private final mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessagingIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

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
