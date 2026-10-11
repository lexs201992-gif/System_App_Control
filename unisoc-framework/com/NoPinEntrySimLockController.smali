.class public Lcom/android/internal/telephony/simlock/NoPinEntrySimLockController;
.super Lcom/android/internal/telephony/simlock/OpSimLockController;
.source "NoPinEntrySimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "NoPinEntrySimLockController"


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/NoPinEntrySimLockController;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/android/internal/telephony/simlock/NoPinEntrySimLockController;->mPhoneCount:I

    new-array v0, v0, [Lcom/android/unisoc/telephony/RadioInteractorListener;

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/NoPinEntrySimLockController;->mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-super {p0, p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V

    invoke-super {p0, p0}, Lcom/android/internal/telephony/simlock/OpSimLockController;->addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V

    return-void
.end method


# virtual methods
.method public blacklist onAllSimsDetectedEvent(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllonAllSimsDetectedEvent: isIccChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NoPinEntrySimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "NoPinEntrySimLockController"

    const-string v1, "onRiServiceConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "NoPinEntrySimLockController"

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

    const-string v1, "NoPinEntrySimLockController"

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

    const-string v1, "NoPinEntrySimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
