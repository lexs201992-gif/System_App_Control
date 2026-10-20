.class public abstract Lcom/goodix/fingerprint/service/AuthenticateFidoClient;
.super Lcom/goodix/fingerprint/service/ClientMonitor;
.source "AuthenticateFidoClient.java"


# instance fields
.field private mAaid:[B

.field private mFinalChallenge:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;[B[B)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/goodix/fingerprint/service/ClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V

    iput-object p7, p0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->mAaid:[B

    iput-object p8, p0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->mFinalChallenge:[B

    return-void
.end method


# virtual methods
.method public abstract getGoodixFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;
.end method

.method public onAuthenticateFido(I[B)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAuthenticateFido() called for TestCmd! fingerId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onAuthenticateFido(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string p1, "Failed to send HbdData:"

    invoke-static {v1, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
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
    .locals 0

    const-string p0, "Client"

    const-string p1, "onHbdData() called for TestCmd!"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

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

.method public start()I
    .locals 5

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->getGoodixFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object v0

    const-string v1, "Client"

    if-nez v0, :cond_0

    const-string p0, "startAuthenticateFido: no goodixfingeprintd!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    iget-object v2, p0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->mAaid:[B

    if-nez v2, :cond_1

    const-string p0, "startAuthenticateFido: invalid aaid!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x79

    return p0

    :cond_1
    iget-object v2, p0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->mFinalChallenge:[B

    if-nez v2, :cond_2

    const-string p0, "startAuthenticateFido: invalid finalChallenge!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x7a

    return p0

    :cond_2
    :try_start_0
    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getUserId()I

    move-result v2

    iget-object v3, p0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->mAaid:[B

    iget-object v4, p0, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->mFinalChallenge:[B

    invoke-interface {v0, v2, v3, v4}, Lcom/goodix/fingerprint/proxy/IGFDaemonFido;->authenticateFido(I[B[B)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "authenticateFido failed, result="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/goodix/fingerprint/service/ClientMonitor;->onError(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception p0

    const-string v0, "authenticateFido failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method public stop(Z)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/AuthenticateFidoClient;->getGoodixFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p1

    const-string v1, "Client"

    if-nez p1, :cond_0

    const-string p0, "stopAuthenticateFido: no goodixfingeprintd!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/goodix/fingerprint/proxy/IGFDaemonFido;->stopAuthenticateFido()I

    move-result v0

    if-eqz v0, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stopAuthenticateFido failed, result="

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v2, "stopAuthenticateFido failed"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->onError(I)Z

    :cond_2
    return v0
.end method
