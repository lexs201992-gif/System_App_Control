.class public abstract Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;
.super Landroid/os/Binder;
.source "IUniSilentReboot.java"

# interfaces
.implements Landroid/unisoc/silent/reboot/IUniSilentReboot;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/unisoc/silent/reboot/IUniSilentReboot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub$Proxy;
    }
.end annotation


# static fields
.field static final blacklist TRANSACTION_isDeviceMoving:I = 0x1

.field static final blacklist TRANSACTION_isPreparedForUnattendedReboot:I = 0x3

.field static final blacklist TRANSACTION_silentRebootForApply:I = 0x2


# direct methods
.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "android.unisoc.silent.reboot.IUniSilentReboot"

    invoke-virtual {p0, p0, v0}, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist asInterface(Landroid/os/IBinder;)Landroid/unisoc/silent/reboot/IUniSilentReboot;
    .locals 2

    if-nez p0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const-string v0, "android.unisoc.silent.reboot.IUniSilentReboot"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/unisoc/silent/reboot/IUniSilentReboot;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Landroid/unisoc/silent/reboot/IUniSilentReboot;

    return-object v1

    :cond_1
    new-instance v1, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public whitelist asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public whitelist onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.unisoc.silent.reboot.IUniSilentReboot"

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    const v2, 0xffffff

    if-gt p1, v2, :cond_0

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    :cond_0
    packed-switch p1, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    :pswitch_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_1
    invoke-virtual {p0}, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;->isPreparedForUnattendedReboot()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;->silentRebootForApply()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Landroid/unisoc/silent/reboot/IUniSilentReboot$Stub;->isDeviceMoving()Z

    move-result v2

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeBoolean(Z)V

    nop

    :goto_0
    return v1

    :pswitch_data_0
    .packed-switch 0x5f4e5446
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
