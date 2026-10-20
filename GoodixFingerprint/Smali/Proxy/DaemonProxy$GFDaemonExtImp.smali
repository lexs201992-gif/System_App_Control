.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;
.super Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;
.source "DaemonProxy.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonExt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GFDaemonExtImp"
.end annotation


# instance fields
.field private mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

.field private mDaemonExtCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback;

.field final synthetic this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;


# direct methods
.method public constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/DaemonProxy$1;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    new-instance p1, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp$1;

    invoke-direct {p1, p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp$1;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;)V

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemonExtCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback;

    iput-object p2, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    return-void
.end method


# virtual methods
.method public cameraCapture()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->cameraCapture()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public dumpCmd(I[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->dumpCmd(ILjava/util/ArrayList;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public enableFfFeature(B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->enableFfFeature(B)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public enableFingerprintModule(B)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->enableFingerprintModule(B)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getService()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->getService()Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    move-result-object v0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "HwBinderDaemonProxy"

    const-string v1, "Failed to get IGoodixFingerprintDaemon"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    :goto_0
    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemonExtCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback;

    invoke-interface {v0, v1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->initCallback(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExtCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    return-object p0
.end method

.method handleServiceDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    return-void
.end method

.method public lockout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->lockout()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public navigate(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->navigate(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pauseEnroll()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->pauseEnroll()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resetLockout()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->reset_lockout()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public resumeEnroll()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->resumeEnroll()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public screenOff()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->screenOff()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public screenOn()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->screenOn()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setSafeClass(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->setSafeClass(I)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopCameraCapture()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->stopCameraCapture()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopNavigation()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonExt;->stopNavigation()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
