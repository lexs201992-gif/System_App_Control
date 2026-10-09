.class public Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;
.super Lvendor/unisoc/hardware/radio/network/IExtRadioNetworkIndication$Stub;
.source "ExtRadioNetworkIndication.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "ExtRadioNetworkIndication"


# instance fields
.field private final mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetworkIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method

.method private getOperatorNameHandler()Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;
    .locals 1

    const-string v0, "ions_ex"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abnormalPowerDetectionInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a7

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolAbnormalPowerDetectionRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public availableNetworksInd(I[Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1397

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolAvailableNetworksRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "2921258897bb8c47d6624394f605ce4bec630198"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public networkErrorCodeInd(I[I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1394

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolNetworkErrorCodeRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public networkRegStateInd(I[I)V
    .locals 8

    if-eqz p2, :cond_2

    array-length v0, p2

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    aget v0, p2, v0

    const/4 v1, 0x1

    aget v1, p2, v1

    const/4 v2, 0x2

    aget v2, p2, v2

    const/4 v3, 0x3

    aget v3, p2, v3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v5}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/ServiceStateTracker;->startUpdateState(IIII)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string v0, "ExtRadioNetworkIndication"

    const-string v1, "networkRegStateInd return when data is null."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public nrCfgInfoInd(I[I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a0

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolNrCfgInfoRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public nsaConnStatusInd(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolNsaConnStatusRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public pseudoStationInforReportInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a5

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolPseudoStationInforReportRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public rachFailInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a8

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v0, v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRachFailRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRachFailRegistrants()V

    :cond_1
    return-void
.end method

.method public reasonsForRegRejectedInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a4

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolReasonsForRegRejectedRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public sib24StatusInd(I[I)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a3

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    array-length v0, p2

    if-lez v0, :cond_1

    new-instance v0, Lcom/android/unisoc/telephony/Sib24StatusIndication;

    const/4 v1, 0x0

    aget v1, p2, v1

    const/4 v2, 0x1

    aget v2, p2, v2

    invoke-direct {v0, v1, v2}, Lcom/android/unisoc/telephony/Sib24StatusIndication;-><init>(II)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolSib24StatusRegistrants(Landroid/os/AsyncResult;)V

    :cond_1
    return-void
.end method

.method public smartNrChangedInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139f

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolSmartNrChangedRegistrants()V

    return-void
.end method

.method public updateNetworkList([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->getOperatorNameHandler()Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;->updateNetworkList(I[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v2, "NullPointerException updateNetworkList"

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v2, "RemoteException updateNetworkList"

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    nop

    :goto_1
    const/4 v0, 0x0

    aget-object v0, p1, v0

    return-object v0
.end method

.method public updatePlmn(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->getOperatorNameHandler()Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-interface {v0, v1, p1, p2}, Lcom/android/unisoc/telephony/aidl/IOperatorNameHandler;->getHighPriorityPlmn(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v2, "NullPointerException updatePlmn"

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_1

    :catch_1
    move-exception v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const-string v2, "RemoteException updatePlmn"

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    nop

    :goto_1
    const-string v0, ""

    return-object v0
.end method
