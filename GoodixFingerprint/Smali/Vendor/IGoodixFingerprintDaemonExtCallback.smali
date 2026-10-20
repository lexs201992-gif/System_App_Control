.class public interface abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback;
.super Ljava/lang/Object;
.source "IGoodixFingerprintDaemonExtCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract onDump(JILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
