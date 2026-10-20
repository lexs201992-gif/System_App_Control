.class public abstract Lcom/goodix/fingerprint/service/HbdClient;
.super Lcom/goodix/fingerprint/service/ClientMonitor;
.source "HbdClient.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/goodix/fingerprint/service/ClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abstract getGoodixFingerprintDaemonHbd()Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
.end method

.method public onAuthenticateFido(I[B)Z
    .locals 0

    const-string p0, "Client"

    const-string p1, "onAuthenticateFido() called for TestCmd!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onAuthenticated(I)Z
    .locals 0

    const-string p0, "Client"

    const-string p1, "onAuthenticated() called for TestCmd!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onEnrollResult(II)Z
    .locals 0

    const-string p0, "Client"

    const-string p1, "onEnrollResult() called for TestCmd!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onHbdData(II[I[I)Z
    .locals 2

    const-string v0, "Client"

    const-string v1, "onHbdData() called for TestCmd!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/goodix/fingerprint/service/HbdClient;->sendHbdData(II[I[I)Z

    move-result p0

    return p0
.end method

.method public onRemoved(I)Z
    .locals 0

    const-string p0, "Client"

    const-string p1, "onRemoved() called for TestCmd!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public onTestCmdFinish(I[B)Z
    .locals 0

    const-string p0, "Client"

    const-string p1, "onTestCmdFinish() called for TestCmd!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public sendHbdData(II[I[I)Z
    .locals 2

    const-string v0, "sendHbdData"

    const-string v1, "Client"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2, p3, p4}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onHbdData(II[I[I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed to send HbdData:"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public start()I
    .locals 3

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/HbdClient;->getGoodixFingerprintDaemonHbd()Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    move-result-object p0

    const-string v0, "Client"

    if-nez p0, :cond_0

    const-string p0, "startHbd: no goodixfingeprintd!"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p0}, Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;->startHbd()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception p0

    const-string v2, "startTestCmd failed"

    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public stop(Z)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/HbdClient;->getGoodixFingerprintDaemonHbd()Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    move-result-object p1

    const-string v1, "Client"

    if-nez p1, :cond_0

    const-string p0, "startHbd: no goodixfingeprintd!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;->stopHbd()I

    move-result p1

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopHbd failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    move v0, p1

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "stopTestCmd failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->onError(I)Z

    :cond_2
    return v0
.end method
