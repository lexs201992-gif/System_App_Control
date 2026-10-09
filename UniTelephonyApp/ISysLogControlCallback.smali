.class public interface abstract Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControlCallback;
.super Ljava/lang/Object;
.source "ISysLogControlCallback.java"

# interfaces
.implements Landroid/os/IHwInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControlCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract asBinder()Landroid/os/IHwBinder;
.end method

.method public abstract notifyEvent(II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
