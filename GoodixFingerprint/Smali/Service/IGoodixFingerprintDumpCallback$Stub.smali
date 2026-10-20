.class public abstract Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub;
.super Landroid/os/Binder;
.source "IGoodixFingerprintDumpCallback.java"

# interfaces
.implements Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.goodix.fingerprint.service.IGoodixFingerprintDumpCallback"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.goodix.fingerprint.service.IGoodixFingerprintDumpCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "com.goodix.fingerprint.service.IGoodixFingerprintDumpCallback"

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object p2

    invoke-interface {p0, p1, p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;->onDump(I[B)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1
.end method
