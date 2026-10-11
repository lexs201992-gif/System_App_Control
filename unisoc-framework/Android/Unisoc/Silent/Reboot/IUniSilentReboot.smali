.class public interface abstract Landroid/unisoc/silent/reboot/IUniSilentReboot;
.super Ljava/lang/Object;
.source "IUniSilentReboot.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;,
        Landroid/unisoc/silent/reboot/IUniSilentReboot$Default;
    }
.end annotation


# static fields
.field public static final blacklist DESCRIPTOR:Ljava/lang/String; = "android.unisoc.silent.reboot.IUniSilentReboot"


# virtual methods
.method public abstract blacklist isDeviceMoving()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist isPreparedForUnattendedReboot()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract blacklist silentRebootForApply()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
