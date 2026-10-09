.class public Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;
.super Lvendor/unisoc/hardware/radio/modem/IExtRadioModemIndication$Stub;
.source "ExtRadioModemIndication.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ExtRadioModemIndication"


# instance fields
.field private final mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;


# direct methods
.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V
    .locals 0

    invoke-direct {p0}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModemIndication$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-void
.end method


# virtual methods
.method public MNOPResetModemInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x139e

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolMNOPResetModemRegistrants()V

    return-void
.end method

.method public exceptionEventsInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a1

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolExceptionEventsRegistrants(Landroid/os/AsyncResult;)V

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

.method public modemStateChangedInd(ILvendor/unisoc/hardware/radio/modem/ModemStatusInfo;)V
    .locals 4

    if-nez p2, :cond_0

    const-string v0, "ExtRadioModemIndication"

    const-string v1, "modemStateChangedInd return when statusInfo is null."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    new-instance v0, Lcom/android/unisoc/telephony/ModemStatusIndication;

    iget v1, p2, Lvendor/unisoc/hardware/radio/modem/ModemStatusInfo;->status:I

    iget-object v2, p2, Lvendor/unisoc/hardware/radio/modem/ModemStatusInfo;->assertInfo:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/android/unisoc/telephony/ModemStatusIndication;-><init>(ILjava/lang/String;)V

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget v2, p2, Lvendor/unisoc/hardware/radio/modem/ModemStatusInfo;->status:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v3, 0x139d

    invoke-virtual {v1, v3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_1
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v2, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolModemStateChangedRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public rilConnectedInd(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x1392

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLog(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolRIConnectedRegistrants()V

    return-void
.end method

.method public unsolAtCmdInd(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processIndication(II)V

    sget-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/16 v1, 0x13a9

    invoke-virtual {v0, v1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unsljLogRet(ILjava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;->mRil:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    new-instance v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->notifyUnsolAtCmdRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method
