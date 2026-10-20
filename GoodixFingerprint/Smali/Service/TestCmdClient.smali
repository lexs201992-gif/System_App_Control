.class public abstract Lcom/goodix/fingerprint/service/TestCmdClient;
.super Lcom/goodix/fingerprint/service/ClientMonitor;
.source "TestCmdClient.java"


# instance fields
.field private mCmdId:I

.field private mInitiatedByClient:Z

.field private mParam:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/goodix/fingerprint/service/ClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V

    iput p7, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mCmdId:I

    iput-object p8, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mParam:[B

    iput-boolean p9, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mInitiatedByClient:Z

    return-void
.end method

.method private sendAuthenticated(I)Z
    .locals 4

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_4

    if-nez v3, :cond_2

    :try_start_0
    iget-boolean p1, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mInitiatedByClient:Z

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onAuthenticationFailed()V

    :cond_1
    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/goodix/fingerprint/utils/FingerprintUtils;->vibrateFingerprintError(Landroid/content/Context;)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mInitiatedByClient:Z

    if-eqz v1, :cond_3

    invoke-interface {v0, p1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onAuthenticationSucceeded(I)V

    :cond_3
    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/goodix/fingerprint/utils/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    :goto_1
    move v2, v1

    goto :goto_2

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string v0, "Failed to notify Authenticated:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_2
    return v2
.end method

.method private sendEnrollResult(II)Z
    .locals 3

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/goodix/fingerprint/utils/FingerprintUtils;->vibrateFingerprintSuccess(Landroid/content/Context;)V

    :try_start_0
    iget-boolean p0, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mInitiatedByClient:Z

    if-eqz p0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onEnrollResult(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string p2, "Failed to notify EnrollResult:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private sendRemoved(I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    iget-boolean p0, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mInitiatedByClient:Z

    if-eqz p0, :cond_1

    invoke-interface {v0, p1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onRemoved(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string v0, "Failed to notify Removed:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method private sendTestCmdFinish(I[B)Z
    .locals 2

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-boolean p0, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mInitiatedByClient:Z

    if-eqz p0, :cond_1

    invoke-interface {v0, p1, p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onTestCmd(I[B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return v1

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string p2, "Failed to notify TestCmdFinish:"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public abstract getGoodixFingerprintDaemon()Lcom/goodix/fingerprint/proxy/IGFDaemon;
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
    .locals 2

    const-string v0, "Client"

    const-string v1, "onAuthenticated() called for TestCmd!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/TestCmdClient;->sendAuthenticated(I)Z

    move-result p0

    return p0
.end method

.method public onEnrollResult(II)Z
    .locals 2

    const-string v0, "Client"

    const-string v1, "onEnrollResult() called for TestCmd!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/goodix/fingerprint/service/TestCmdClient;->sendEnrollResult(II)Z

    move-result p0

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
    .locals 2

    const-string v0, "Client"

    const-string v1, "onRemoved() called for TestCmd!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/TestCmdClient;->sendRemoved(I)Z

    move-result p0

    return p0
.end method

.method public onTestCmdFinish(I[B)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTestCmdFinish() called for TestCmd! cmdId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Client"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mCmdId:I

    const/4 v2, 0x0

    if-eq p1, v0, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Warning! Got different cmd callback! current client mCmdId = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mCmdId:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/goodix/fingerprint/service/TestCmdClient;->sendTestCmdFinish(I[B)Z

    move-result p0

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2e

    if-eq p1, p2, :cond_1

    const/16 p2, 0x30

    if-eq p1, p2, :cond_1

    const/16 p2, 0xd

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-eq p1, p2, :cond_1

    const/16 p2, 0x11

    if-eq p1, p2, :cond_1

    const/16 p2, 0x12

    if-eq p1, p2, :cond_1

    packed-switch p1, :pswitch_data_0

    move v2, p0

    :cond_1
    :pswitch_0
    return v2

    :pswitch_data_0
    .packed-switch 0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public start()I
    .locals 5

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/TestCmdClient;->getGoodixFingerprintDaemon()Lcom/goodix/fingerprint/proxy/IGFDaemon;

    move-result-object v0

    const-string v1, "Client"

    if-nez v0, :cond_0

    const-string p0, "startTestCmd: no goodixfingeprintd!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    iget v2, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mCmdId:I

    const v3, 0x98967f

    if-ne v2, v3, :cond_1

    const-string p0, "startTestCmd: invalid cmdId!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x6f

    return p0

    :cond_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v2, v3, :cond_2

    const/16 v2, 0x19

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {v0, v2, v3}, Lcom/goodix/fingerprint/proxy/IGFDaemon;->testCmd(I[B)I

    :cond_2
    iget v2, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mCmdId:I

    iget-object v3, p0, Lcom/goodix/fingerprint/service/TestCmdClient;->mParam:[B

    invoke-interface {v0, v2, v3}, Lcom/goodix/fingerprint/proxy/IGFDaemon;->testCmd(I[B)I

    move-result v0

    if-eqz v0, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startTestCmd failed, result="

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

    :cond_3
    return v4

    :catch_0
    move-exception p0

    const-string v0, "startTestCmd failed"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v4
.end method

.method public stop(Z)I
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/goodix/fingerprint/service/TestCmdClient;->getGoodixFingerprintDaemon()Lcom/goodix/fingerprint/proxy/IGFDaemon;

    move-result-object p1

    const-string v1, "Client"

    if-nez p1, :cond_0

    const-string p0, "stopTestCmd: no goodixfingeprintd!"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/16 v2, 0x19

    const/4 v3, 0x0

    :try_start_0
    invoke-interface {p1, v2, v3}, Lcom/goodix/fingerprint/proxy/IGFDaemon;->testCmd(I[B)I

    move-result p1

    if-eqz p1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stopTestCmd failed, result="

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
