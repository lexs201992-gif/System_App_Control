.class public interface abstract Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.super Ljava/lang/Object;
.source "OpSimLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/simlock/OpSimLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnSimStateChangedListener"
.end annotation


# virtual methods
.method public abstract blacklist onAllSimsDetectedEvent(Z)V
.end method

.method public abstract blacklist onSimHotSwapedEvent(I)V
.end method

.method public abstract blacklist onSimStateChangedForSlotEvent(ILjava/lang/String;)V
.end method
