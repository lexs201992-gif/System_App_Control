.class public interface abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback;
.super Ljava/lang/Object;
.source "IGoodixFingerprintDaemonCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract onAcquired(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onAuthenticated(JIILjava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
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

.method public abstract onEnrollResult(JIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onError(JI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onRemoved(JII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onTestCmd(JILjava/util/ArrayList;)V
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
