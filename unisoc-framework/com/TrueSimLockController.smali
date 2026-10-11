.class public Lcom/android/internal/telephony/simlock/TrueSimLockController;
.super Lcom/android/internal/telephony/simlock/OpSimLockController;
.source "TrueSimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "TrueSimLockController"

.field private static blacklist mInstance:Lcom/android/internal/telephony/simlock/TrueSimLockController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    const-string v0, "TrueSimLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V

    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/TrueSimLockController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/simlock/TrueSimLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueSimLockController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/simlock/TrueSimLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueSimLockController;

    goto :goto_0

    :cond_0
    const-string v1, "TrueSimLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueSimLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueSimLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist dummysMatch()Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->getDummy1()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->getDummy3()I

    move-result v2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/16 v3, 0x18

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dummysMatch: wrong dummys: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TrueSimLockController"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/simlock/TrueSimLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/TrueSimLockController;

    return-object v0
.end method

.method private blacklist isTrueOperatorCard(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getGroupIdLevel1()Ljava/lang/String;

    move-result-object v2

    const-string v4, "52004"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "52000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "01FF"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "phoneId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", is TRUE operator card? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "TrueSimLockController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private blacklist showSimLockView(IZ)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mSimLockConfigMatch:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSimLockView: simlock status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", show simlock? "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TrueSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "unisoc.simlockintent.action.UPDATE_SIMLOCK_VISIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_simlock"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "simlock_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist isDataAllowedForSlot(I)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mSimLockConfigMatch:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->isTrueOperatorCard(I)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
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

    const-string v1, "TrueSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "onRiServiceConnected"

    const-string v1, "TrueSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->simLockConfigMatch()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mSimLockConfigMatch:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "simlock config match: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/simlock/TrueSimLockController;->mSimLockConfigMatch:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

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

    const-string v1, "TrueSimLockController"

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

    const-string v1, "TrueSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "LOADED"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->isTrueOperatorCard(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->showSimLockView(IZ)V

    :cond_0
    return-void
.end method

.method public blacklist simLockConfigMatch()Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->getSimLockStatus(II)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x0

    const-string v1, "TrueSimLockController"

    const-string v3, "simLockConfigMatch: simlock is unlocked!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/TrueSimLockController;->dummysMatch()Z

    move-result v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method
