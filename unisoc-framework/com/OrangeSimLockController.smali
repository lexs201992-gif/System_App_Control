.class public Lcom/android/internal/telephony/simlock/OrangeSimLockController;
.super Lcom/android/internal/telephony/simlock/OpSimLockController;
.source "OrangeSimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "OrangeSimLockController"

.field private static final blacklist UNLOCK_NETWORK:I = 0x2

.field private static blacklist mInstance:Lcom/android/internal/telephony/simlock/OrangeSimLockController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    const-string v0, "OrangeSimLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/OrangeSimLockController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    goto :goto_0

    :cond_0
    const-string v1, "OrangeSimLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/simlock/OrangeSimLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/OrangeSimLockController;

    return-object v0
.end method


# virtual methods
.method public blacklist addWhiteList(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->addWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getRestrictedNetTypePhoneId()I
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockConfigMatch:Z

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v3, 0x5

    const/4 v4, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v4}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    nop

    :goto_0
    move v0, v2

    if-eqz v0, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v5, 0x0

    :goto_1
    iget v6, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mPhoneCount:I

    if-ge v5, v6, :cond_4

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->isWhiteListCard(I)Z

    move-result v6

    if-nez v6, :cond_3

    move v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-ne v2, v4, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRestrictedNetTypePhoneId: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "OrangeSimLockController"

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_5
    return v1

    :cond_6
    :goto_3
    return v1
.end method

.method public blacklist getRestrictedNetworkType(I)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockConfigMatch:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public blacklist isWhiteListCard(I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWhiteListCard for phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OrangeSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->getSimLockStatus(II)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_1

    const-string v2, "isWhiteListCard: not simlock state"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move v2, v3

    :cond_2
    return v2
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

    const-string v1, "OrangeSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4

    const-string v0, "onRiServiceConnected"

    const-string v1, "OrangeSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->getSimlockWhitelist(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->addWhiteList(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->simLockConfigMatch()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockConfigMatch:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simlock config match: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockConfigMatch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "OrangeSimLockController"

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

    const-string v1, "OrangeSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    const-string v1, "OrangeSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist restrictedNetworkTypeNeeded(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->mSimLockConfigMatch:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->getRestrictedNetTypePhoneId()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public blacklist simLockConfigMatch()Z
    .locals 8

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->getSimLockStatus(II)I

    move-result v1

    const-string v3, "OrangeSimLockController"

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "simLockConfigMatch: simlock is unlocked!"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/OrangeSimLockController;->getDummy2()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    const/4 v1, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simLockConfigMatch: wrong dummy2 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    move v2, v5

    :cond_2
    return v2
.end method
