.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;
.super Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;
.source "DaemonProxy.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GFDaemonHbdImp"
.end annotation


# instance fields
.field private mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

.field private mDaemonHbdCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback;

.field final synthetic this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;


# direct methods
.method public constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/DaemonProxy$1;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    new-instance p1, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp$1;

    invoke-direct {p1, p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp$1;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;)V

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemonHbdCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback;

    iput-object p2, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    return-void
.end method


# virtual methods
.method public getService()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;->getService()Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    move-result-object v0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;
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
    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    iget-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemonHbdCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback;

    invoke-interface {v0, v1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;->initCallback(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbdCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    return-object p0
.end method

.method handleServiceDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    return-void
.end method

.method public startHbd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;->startHbd()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopHbd()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonHbd;->stopHbd()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
