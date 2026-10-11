.class public Lcom/android/internal/telephony/simlock/TrueExSimLockController;
.super Lcom/android/internal/telephony/simlock/OpSimLockController;
.source "TrueExSimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;


# static fields
.field private static final blacklist SIMLOCK_STATUS_UNLOCKED:I = 0x0

.field private static final blacklist TAG:Ljava/lang/String; = "TrueExSimLockController"

.field private static blacklist THAILAND_ICCID_PREFIX:Ljava/lang/String;

.field private static blacklist TRUE_ICCID_CODES:[Ljava/lang/String;

.field private static blacklist TRUE_MCCMNC_CODES:[Ljava/lang/String;

.field private static blacklist mInstance:Lcom/android/internal/telephony/simlock/TrueExSimLockController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mSim2EmergencyOnly:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const-string v0, "52004"

    const-string v1, "52099"

    const-string v2, "52000"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->TRUE_MCCMNC_CODES:[Ljava/lang/String;

    const-string v0, "8966"

    sput-object v0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->THAILAND_ICCID_PREFIX:Ljava/lang/String;

    const-string v0, "896600"

    const-string v1, "896605"

    const-string v2, "896604"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->TRUE_ICCID_CODES:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    const-string v0, "TrueExSimLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/TrueExSimLockController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    goto :goto_0

    :cond_0
    const-string v1, "TrueExSimLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/simlock/TrueExSimLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueExSimLockController;

    return-object v0
.end method

.method private blacklist isThaOtherSimByIccId(I)Z
    .locals 10

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->TRUE_ICCID_CODES:[Ljava/lang/String;

    array-length v6, v5

    move v7, v1

    :goto_0
    if-ge v7, v6, :cond_2

    aget-object v8, v5, v7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    sget-object v9, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->THAILAND_ICCID_PREFIX:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v4, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    add-int/lit8 v3, v3, 0x1

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    sget-object v5, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->TRUE_ICCID_CODES:[Ljava/lang/String;

    array-length v5, v5

    if-ne v3, v5, :cond_3

    const/4 v1, 0x1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isThaOtherSimByIccId: sim "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " is Tha other sim? "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v5, "TrueExSimLockController"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist isThaTrueSim(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThaTrueSim: sim "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " operator numeric: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TrueExSimLockController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    sget-object v3, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->TRUE_MCCMNC_CODES:[Ljava/lang/String;

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_2

    aget-object v5, v3, v2

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v1
.end method

.method private blacklist setEccModForSim2()V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isThaOtherSimByIccId(I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isThaOtherSimByIccId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v5, "TrueExSimLockController"

    if-eqz v1, :cond_2

    iget-boolean v6, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSim2EmergencyOnly:Z

    if-nez v6, :cond_2

    const-string v0, "set ecc mode for sim2"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v0, v2, v4, v3, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->setEmergencyOnly(ZLandroid/os/Messenger;II)V

    iput-boolean v2, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSim2EmergencyOnly:Z

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    iget-boolean v6, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSim2EmergencyOnly:Z

    if-eqz v6, :cond_3

    const-string v6, "cancel ecc mode for sim2"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-virtual {v5, v0, v4, v3, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->setEmergencyOnly(ZLandroid/os/Messenger;II)V

    iput-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSim2EmergencyOnly:Z

    :cond_3
    :goto_1
    return-void
.end method

.method private blacklist shouldShowLockView()Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isThaOtherSimByIccId(I)Z

    move-result v0

    return v0
.end method

.method private blacklist showSimLockView(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSimLockView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrueExSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "unisoc.simlockintent.action.UPDATE_SIMLOCK_VISIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_simlock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist isCallAllowedForSlot(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSimLockConfigMatch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isDataAllowedForSlot(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist isDataAllowedForSlot(I)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSimLockConfigMatch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq p1, v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v2, 0x5

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isThaOtherSimByIccId(I)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isThaOtherSimByIccId(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isThaTrueSim(I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v3

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public blacklist isSmsAllowedForSlot(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSimLockConfigMatch:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->isDataAllowedForSlot(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public blacklist onAllSimsDetectedEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllSimsDetectedEvent: isIccChanged = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrueExSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->setEccModForSim2()V

    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->shouldShowLockView()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->showSimLockView(Z)V

    return-void
.end method

.method public blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "onRiServiceConnected"

    const-string v1, "TrueExSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->simLockConfigMatch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSimLockConfigMatch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simlock config match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->mSimLockConfigMatch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "TrueExSimLockController"

    const-string v1, "onRiServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onSimHotSwapedEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimHotSwapedEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrueExSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->setEccModForSim2()V

    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->shouldShowLockView()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->showSimLockView(Z)V

    return-void
.end method

.method public blacklist onSimStateChangedForSlotEvent(ILjava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChangedForSlotEvent: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrueExSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist simLockConfigMatch()Z
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->getSimLockStatus(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "TrueExSimLockController"

    const-string v3, "simLockConfigMatch: simlock is unlocked!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/TrueExSimLockController;->getDummy3()I

    move-result v3

    const/16 v4, 0x10

    if-eq v3, v4, :cond_1

    const/4 v1, 0x0

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
