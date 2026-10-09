.class public Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;
.super Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;
.source "ExtRadioDataIndication.java"


# instance fields
.field private final mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method


# virtual methods
.method public clearCodeFallbackInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1391

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolClearCodeFallbackRegistrants()V

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

.method public postUrspInd(IILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    aput-object p3, v0, v1

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x13a6

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolPostUrspRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public rauSuccessInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1390

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRauSuccessRegistrants()V

    return-void
.end method
