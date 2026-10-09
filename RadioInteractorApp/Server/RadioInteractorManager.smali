.class public Lcom/android/unisoc/telephony/server/RadioInteractorManager;
.super Lcom/android/unisoc/telephony/aidl/IRadioInteractor$Stub;
.source "RadioInteractorManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RadioInteractorManager"

.field private static final UNISOC_RADIOINTERACTOR_SERVICE_COMMON_PERMISSION:Ljava/lang/String; = "com.android.unisoc.telephony.server.permission.RADIO_INTERACTOR_COMMON"

.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorManager;


# instance fields
.field private mPhoneCount:I

.field private mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

.field private mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;-><init>(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)V
    .locals 1

    invoke-direct {p0}, Lcom/android/unisoc/telephony/aidl/IRadioInteractor$Stub;-><init>()V

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iput-object p3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    const-string v0, "irit"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mPhoneCount:I

    return-void
.end method

.method public static getInstance()Lcom/android/unisoc/telephony/server/RadioInteractorManager;
    .locals 1

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;)Lcom/android/unisoc/telephony/server/RadioInteractorManager;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->init(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    move-result-object v0

    return-object v0
.end method

.method public static init(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)Lcom/android/unisoc/telephony/server/RadioInteractorManager;
    .locals 3

    sput-object p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    if-nez v1, :cond_1

    const-class v1, Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    if-nez v2, :cond_0

    new-instance v2, Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;-><init>(Landroid/content/Context;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)V

    sput-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->sInstance:Lcom/android/unisoc/telephony/server/RadioInteractorManager;

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method


# virtual methods
.method public attachDataConn(ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->attachDataConn(Z)V

    :cond_0
    return-void
.end method

.method public enableNrSwitch(III)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enableNrSwitch(II)V

    :cond_0
    return-void
.end method

.method public enableRadioPowerFallback(ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enableRadioPowerFallback(Z)V

    :cond_0
    return-void
.end method

.method public enableRadioPowerFallbackWithScenarioId(ZII)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enableRadioPowerFallbackWithScenarioId(ZI)V

    :cond_0
    return-void
.end method

.method public enableRauNotify(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enableRauNotify()V

    :cond_0
    return-void
.end method

.method public enableSmartNrSwitch(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enableSmartNrSwitch(I)V

    :cond_0
    return-void
.end method

.method public explicitCallTransfer(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->explicitCallTransfer()V

    :cond_0
    return-void
.end method

.method public forceDetachDataConn(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->forceDetachDataConn(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getActivePdpCount(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getActivePdpCount()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getBigDataOfNetAndCall(IIZLandroid/os/Messenger;II)V
    .locals 7

    invoke-virtual {p0, p6}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getBigDataOfNetAndCall(IIZLandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getCNAP(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getCNAP(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getCpComLogVersion(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getCpComLogVersion()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getExceptionEvents(IIIII)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p5}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getExceptionEvents(IIII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getIccAppType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getIccAppType()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getIccIdFromIccStatus(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getIccIdFromIccStatus()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getIdentityState(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getIdentityState(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getLteSpeedAndSignalStrength(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getLteSpeedAndSignalStrength(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getNrSpeedAndSignalStrength(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getNrSpeedAndSignalStrength(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getNsaConnStatus(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getNsaConnStatus(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getNumberControl(ILjava/lang/String;I)Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;
    .locals 2

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getNumberControl(ILjava/lang/String;)Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPcba(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getPcba()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreferredNetworkType(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getPreferredNetworkType()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;
    .locals 2

    if-ltz p1, :cond_1

    iget v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mPhoneCount:I

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mRadioInteractorHandler:[Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    aget-object v0, v0, p1

    return-object v0

    :cond_1
    :goto_0
    const-string v0, "RadioInteractorManager"

    const-string v1, "getRadioInteractorHandler, Invalid phoneId, return null."

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRadioPreference(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getRadioPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRealSimSatus(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getRealSimStatus()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSA(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSA(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getSimCapacity(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSimCapacity()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSimLockRemainTimes(II)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSimLockRemainTimes(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSimLockStatus(II)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSimLockStatus(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSimlockDummys(I)[I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSimlockDummys()[I

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSimlockWhitelist(II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSimlockWhitelist(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSmsBearer(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSmsBearer()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getSpecialRatcap(Landroid/os/Messenger;III)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSpecialRatcap(Landroid/os/Messenger;II)V

    :cond_0
    return-void
.end method

.method public getSubsidyLockStatus(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSubsidyLockStatus()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getTPMRState(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getTPMRState(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public getVoLTEAllowedPLMN(I)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getVoLTEAllowedPLMN()I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public iccGetAtr(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->iccGetAtr()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public iccIOForAllFile(ILandroid/os/Message;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->iccIOForAllFile(Landroid/os/Message;)V

    :cond_0
    return-void
.end method

.method public iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 15

    move-object v0, p0

    move/from16 v1, p11

    invoke-virtual {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v14

    if-eqz v14, :cond_0

    move-object v2, v14

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move/from16 v13, p12

    invoke-virtual/range {v2 .. v13}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public listenForSlot(ILcom/android/unisoc/telephony/aidl/IRadioInteractorListener;IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->listenForSlot(ILcom/android/unisoc/telephony/aidl/IRadioInteractorListener;IZ)V

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->mContext:Landroid/content/Context;

    const-string v1, "com.android.unisoc.telephony.server.permission.RADIO_INTERACTOR_COMMON"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, "RadioInteractorManager"

    const-string v2, "IRadiointeractor-> permission denied !"

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/aidl/IRadioInteractor$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1
.end method

.method public queryCOLP(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->queryCOLP(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public queryCOLR(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->queryCOLR(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Messenger;II)V
    .locals 7

    invoke-virtual {p0, p6}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public queryHdVoiceState(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->queryHdVoiceState()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public queryPlmn(II)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->queryPlmn(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public queryRootNode(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->queryRootNode()V

    :cond_0
    return-void
.end method

.method public querySmsStorageMode(I)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->querySmsStorageMode()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readNvcodeFromMiscdata(Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->readNvcodeFromMiscdata(Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public requestDCTrafficClass(II)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->requestDCTrafficClass(I)V

    :cond_0
    return-void
.end method

.method public requestReattach(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->requestReattach()V

    :cond_0
    return-void
.end method

.method public requestSetSinglePDNByNetwork(ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->requestSetSinglePDNByNetwork(Z)V

    :cond_0
    return-void
.end method

.method public requestShutdown(I)Z
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->requestShutdown()Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public resetModem(I)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->resetModem()V

    :cond_0
    return-void
.end method

.method public sendAsynchAtCmd(Ljava/lang/String;Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->sendAsynchAtCmd(Ljava/lang/String;Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public sendAtCmd(Ljava/lang/String;[Ljava/lang/String;I)I
    .locals 2

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->invokeOemRILRequestStrings(Ljava/lang/String;[Ljava/lang/String;)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public sendScreenInteractionExtras(IIIILjava/lang/String;II)V
    .locals 8

    invoke-virtual {p0, p7}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->sendScreenInteractionExtras(IIIILjava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public setEmergencyOnly(ZLandroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setEmergencyOnly(ZLandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Messenger;II)V
    .locals 11

    move-object v0, p0

    move/from16 v1, p8

    invoke-virtual {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v10

    if-eqz v10, :cond_0

    move-object v2, v10

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setFacilityLockByUser(Ljava/lang/String;ZLandroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p5}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setFacilityLockByUser(Ljava/lang/String;ZLandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setFastReturnNetwork(Ljava/lang/String;IIIII)V
    .locals 7

    invoke-virtual {p0, p6}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setFastReturnNetwork(Ljava/lang/String;IIII)V

    :cond_0
    return-void
.end method

.method public setFdnList(ILjava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setFdnList(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setImsUserAgent(Ljava/lang/String;Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setImsUserAgent(Ljava/lang/String;Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setLocationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p5}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setLteEnabled(ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setLteEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setMNOParam(ILjava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setMNOParam(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setNvcodeToMiscdata(Ljava/lang/String;Landroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setNvcodeToMiscdata(Ljava/lang/String;Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setPreferredNetworkType(II)I
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setPreferredNetworkType(I)I

    move-result v1

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public setPsDataOff(IZI)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setPsDataOff(ZI)V

    :cond_0
    return-void
.end method

.method public setRadioPowerFallbackWithType(ZIII)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setRadioPowerFallbackWithType(ZII)V

    :cond_0
    return-void
.end method

.method public setRadioPreference(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setRadioPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSA(ILandroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setSA(ILandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setSCGAllow(ZLandroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setSCGAllow(ZLandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setSimPower(Ljava/lang/String;ZI)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setSimPower(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setSimPowerReal(Ljava/lang/String;ZI)V
    .locals 1

    invoke-virtual {p0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setSimPowerReal(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public setSupCardState(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setSupCardState(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSuppServiceFlag(IIII)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setSuppServiceFlag(III)V

    :cond_0
    return-void
.end method

.method public setTPMRState(ILandroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setTPMRState(ILandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public setUsbShareStateSwitch(ZI)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setUsbShareStateSwitch(Z)V

    :cond_0
    return-void
.end method

.method public setXcapIPAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;II)V
    .locals 7

    invoke-virtual {p0, p6}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v6

    if-eqz v6, :cond_0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->setXcapIPAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public storeSmsToSim(ZI)Z
    .locals 2

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->storeSmsToSim(Z)Z

    move-result v1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public updateCLIP(ILandroid/os/Messenger;II)V
    .locals 1

    invoke-virtual {p0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->updateCLIP(ILandroid/os/Messenger;I)V

    :cond_0
    return-void
.end method

.method public updateOperatorName(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->updateOperatorName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public updatePlmn(IILjava/lang/String;IIII)I
    .locals 8

    invoke-virtual {p0, p7}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v0, v7

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->updatePlmn(IILjava/lang/String;III)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public updateRealEccList(Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorManager;->getRadioInteractorHandler(I)Lcom/android/unisoc/telephony/server/RadioInteractorHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->updateRealEccList(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
