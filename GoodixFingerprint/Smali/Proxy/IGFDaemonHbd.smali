.class public interface abstract Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
.super Ljava/lang/Object;
.source "IGFDaemonHbd.java"


# virtual methods
.method public abstract startHbd()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract stopHbd()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
