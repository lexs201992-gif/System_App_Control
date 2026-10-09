.class public Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;
.super Lvendor/unisoc/hardware/radio/sim/IExtRadioSimIndication$Stub;
.source "ExtRadioSimIndication.java"


# instance fields
.field private final mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSimIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "0bb93e9c2892d811d8b5c6fb116dae8dc695bd14"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public simMgrSimStatusChangedInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1395

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mHasRealSimStateChanged:Z

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iput p2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDate:I

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRealSimStateChangedRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public simRefresh(ILvendor/unisoc/hardware/radio/sim/ExtSimRefreshResult;)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget v0, p2, Lvendor/unisoc/hardware/radio/sim/ExtSimRefreshResult;->type:I

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v2, 0x139c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolSimRefreshRegistrants()V

    return-void
.end method

.method public simlockSimExpiredInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1393

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolExpireSimdRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public subsidyLockStatusChangedInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139a

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolSubsidyLockStateRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
