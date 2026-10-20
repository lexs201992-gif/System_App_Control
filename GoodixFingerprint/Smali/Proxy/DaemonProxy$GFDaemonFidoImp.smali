.class Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;
.super Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;
.source "DaemonProxy.java"

# interfaces
.implements Lcom/goodix/fingerprint/proxy/IGFDaemonFido;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/fingerprint/proxy/DaemonProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GFDaemonFidoImp"
.end annotation


# instance fields
.field private mCmdOutBuf:[B

.field private mCmdRet:I

.field private mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

.field private mDaemonFidoCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFidoCallback;

.field private mIdList:[I

.field final synthetic this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;


# direct methods
.method public constructor <init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)V
    .locals 1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->this$0:Lcom/goodix/fingerprint/proxy/DaemonProxy;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/DaemonProxy$1;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mIdList:[I

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdOutBuf:[B

    const/4 p1, 0x0

    iput p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I

    new-instance p1, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$3;

    invoke-direct {p1, p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$3;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;)V

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemonFidoCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFidoCallback;

    iput-object p2, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IDaemonDiedCallback;

    return-void
.end method

.method static synthetic access$102(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mIdList:[I

    return-object p1
.end method

.method static synthetic access$200(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;)I
    .locals 0

    iget p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I

    return p0
.end method

.method static synthetic access$202(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;I)I
    .locals 0

    iput p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I

    return p1
.end method

.method static synthetic access$302(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;[B)[B
    .locals 0

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdOutBuf:[B

    return-object p1
.end method


# virtual methods
.method public authenticateFido(I[B[B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iget-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArrayList([B)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p0, p3}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArrayList([B)Ljava/util/ArrayList;

    move-result-object p0

    invoke-interface {v0, p1, p2, p0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->authenticateFido(ILjava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public declared-synchronized getIdList(I)[I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mIdList:[I

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->getService()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iget-object v2, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-eqz v2, :cond_0

    new-instance v2, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$1;

    invoke-direct {v2, p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$1;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;)V

    invoke-interface {v1, p1, v2}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->getIdList(ILvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido$getIdListCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mIdList:[I

    if-eqz p1, :cond_1

    array-length v1, p1

    if-lez v1, :cond_1

    array-length p1, p1

    new-array p1, p1, [I

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mIdList:[I

    array-length v3, v2

    if-ge v1, v3, :cond_2

    aget v2, v2, v1

    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mIdList:[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getService()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->getService()Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    move-result-object v0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;
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
    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->asBinder()Landroid/os/IHwBinder;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0, p0, v1, v2}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iget-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemonFidoCallback:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFidoCallback;

    invoke-interface {v0, v1}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->initCallback(Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFidoCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    :cond_0
    :goto_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    return-object p0
.end method

.method handleServiceDied()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    return-void
.end method

.method public declared-synchronized invokeFidoCommand([B[B)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdOutBuf:[B

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->getService()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iget-object v3, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-eqz v3, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;->toArrayList([B)Ljava/util/ArrayList;

    move-result-object p1

    new-instance v3, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;

    invoke-direct {v3, p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp$2;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;)V

    invoke-interface {v2, p1, v3}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->invokeFidoCommand(Ljava/util/ArrayList;Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido$invokeFidoCommandCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdOutBuf:[B

    if-eqz p1, :cond_2

    array-length v2, p1

    if-lez v2, :cond_2

    array-length p1, p1

    array-length v2, p2

    if-gt p1, v2, :cond_2

    :goto_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdOutBuf:[B

    array-length v2, p1

    if-ge v0, v2, :cond_1

    array-length v2, p2

    if-ge v0, v2, :cond_1

    aget-byte p1, p1, v0

    aput-byte p1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    array-length p1, p1

    iput p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I

    goto :goto_1

    :cond_2
    iput v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I

    :goto_1
    iput-object v1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdOutBuf:[B

    iget p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mCmdRet:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isIdValid(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->isIdValid(II)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public stopAuthenticateFido()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->getService()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;->mDaemon:Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;

    if-eqz p0, :cond_0

    invoke-interface {v0}, Lvendor/goodix/hardware/biometrics/fingerprint/V2_1/IGoodixFingerprintDaemonFido;->stopAuthenticateFido()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
