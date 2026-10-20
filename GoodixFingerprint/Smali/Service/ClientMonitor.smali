.class public abstract Lcom/goodix/fingerprint/service/ClientMonitor;
.super Ljava/lang/Object;
.source "ClientMonitor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOwner:Ljava/lang/String;

.field private mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

.field private mRestricted:Z

.field private mToken:Landroid/os/IBinder;

.field private mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    iput-object p3, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    iput p4, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mUserId:I

    iput-boolean p5, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mRestricted:Z

    iput-object p6, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mOwner:Ljava/lang/String;

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p2, p0, p1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string p2, "caught remote exception in linkToDeath: "

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->onError(I)Z

    return-void
.end method

.method public destroy()V
    .locals 4

    iget-object v0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    :try_start_0
    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroy(): "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-string v3, "Client"

    invoke-static {v3, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v1, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    :cond_0
    iput-object v1, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    return-void
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    const-string v0, "Client"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removing leaked reference: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->onError(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getOwner()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mOwner:Ljava/lang/String;

    return-object p0
.end method

.method public getReceiver()Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    return-object p0
.end method

.method public getToken()Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mToken:Landroid/os/IBinder;

    return-object p0
.end method

.method public getUserId()I
    .locals 0

    iget p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mUserId:I

    return p0
.end method

.method public onAcquired(I)Z
    .locals 2

    iget-object p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onAcquired(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string v1, "Failed to invoke sendAcquired:"

    invoke-static {p1, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method public abstract onAuthenticateFido(I[B)Z
.end method

.method public abstract onAuthenticated(I)Z
.end method

.method public abstract onEnrollResult(II)Z
.end method

.method public onError(I)Z
    .locals 1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/ClientMonitor;->mReceiver:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;->onError(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Client"

    const-string v0, "Failed to invoke sendError:"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public abstract onHbdData(II[I[I)Z
.end method

.method public abstract onRemoved(I)Z
.end method

.method public abstract onTestCmdFinish(I[B)Z
.end method

.method public abstract start()I
.end method

.method public abstract stop(Z)I
.end method
