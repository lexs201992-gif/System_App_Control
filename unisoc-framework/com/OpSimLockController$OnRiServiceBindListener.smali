.class public interface abstract Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;
.super Ljava/lang/Object;
.source "OpSimLockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/simlock/OpSimLockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnRiServiceBindListener"
.end annotation


# virtual methods
.method public abstract blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end method

.method public abstract blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
.end method
