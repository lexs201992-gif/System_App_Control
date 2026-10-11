.class public Lcom/android/internal/telephony/simlock/AirtelSimLockController;
.super Lcom/android/internal/telephony/simlock/OpSimLockController;
.source "AirtelSimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "AirtelSimLockController"

.field private static blacklist mInstance:Lcom/android/internal/telephony/simlock/AirtelSimLockController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    const-string v0, "AirtelSimLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/AirtelSimLockController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    goto :goto_0

    :cond_0
    const-string v1, "AirtelSimLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/simlock/AirtelSimLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/AirtelSimLockController;

    return-object v0
.end method


# virtual methods
.method public blacklist getOpPreferredPrimaryCard()I
    .locals 6

    const-string v0, "getOpPreferredPrimaryCard"

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mSimLockConfigMatch:Z

    const/4 v2, -0x1

    if-nez v0, :cond_0

    const-string v0, "getOpPreferredPrimaryCard: simlock config not match!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    if-ne v0, v4, :cond_1

    goto :goto_0

    :cond_1
    move v5, v3

    :goto_0
    move v0, v5

    if-nez v0, :cond_2

    const-string v3, "getOpPreferredPrimaryCard: invalid. bothSimsReady = false "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_2
    const-string v2, "getOpPreferredPrimaryCard: 0"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public blacklist isDefaultDataCardSwitchAllowed()Z
    .locals 4

    const-string v0, "isDefaultDataCardSwitchAllowed"

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mSimLockConfigMatch:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "isDefaultDataCardSwitchAllowed: simlock config not match!"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->getOpPreferredPrimaryCard()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDefaultDataCardSwitchAllowed\uff1afalse. primaryCardId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_1
    const-string v3, "isDefaultDataCardSwitchAllowed: true"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public blacklist needShowOperatorSimLock()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->isWhiteListCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    return v0
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

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->needShowOperatorSimLock()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->showOperatorSimLock(Z)V

    return-void
.end method

.method public blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "onRiServiceConnected"

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->simLockConfigMatch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mSimLockConfigMatch:Z

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mSimLockConfigMatch:Z

    if-nez v0, :cond_0

    const-string v0, "simlock config not match"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "AirtelSimLockController"

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

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->needShowOperatorSimLock()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->showOperatorSimLock(Z)V

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

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist showOperatorSimLock(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showOperatorSimLock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AirtelSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "unisoc.simlockintent.action.ACTION_SHOW_OPERATOR_SIMLOCK"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "show_operator_simlock"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "hide_operator_dismiss_button"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->mContext:Landroid/content/Context;

    const-string v3, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method public blacklist simLockConfigMatch()Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->getSimLockStatus(II)I

    move-result v3

    const-string v4, "AirtelSimLockController"

    if-nez v3, :cond_0

    const/4 v0, 0x0

    const-string v3, "simLockConfigMatch: simlock is unlocked!"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/AirtelSimLockController;->getDummy2()I

    move-result v5

    if-eq v5, v1, :cond_1

    const/4 v3, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "simLockConfigMatch: wrong dummy2 "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "!"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    const/4 v2, 0x1

    :cond_2
    return v2
.end method
