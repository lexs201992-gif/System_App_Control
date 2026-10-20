.class public interface abstract Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback;
.super Ljava/lang/Object;
.source "IGoodixFingerprintDaemonHbdCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract onHbdData(JIILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
