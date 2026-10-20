.class public Lcom/goodix/fingerprint/proxy/DaemonManager;
.super Ljava/lang/Object;
.source "DaemonManager.java"


# static fields
.field private static mInstance:Lcom/goodix/fingerprint/proxy/DaemonManager;


# instance fields
.field private mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    new-instance v0, Lcom/goodix/fingerprint/proxy/DaemonProxy;

    invoke-direct {v0}, Lcom/goodix/fingerprint/proxy/DaemonProxy;-><init>()V

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    return-void
.end method

.method public static getInstance()Lcom/goodix/fingerprint/proxy/DaemonManager;
    .locals 1

    const-string v0, "DaemonManager"

    invoke-static {v0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mInstance:Lcom/goodix/fingerprint/proxy/DaemonManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/goodix/fingerprint/proxy/DaemonManager;

    invoke-direct {v0}, Lcom/goodix/fingerprint/proxy/DaemonManager;-><init>()V

    sput-object v0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mInstance:Lcom/goodix/fingerprint/proxy/DaemonManager;

    :cond_0
    sget-object v0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mInstance:Lcom/goodix/fingerprint/proxy/DaemonManager;

    return-object v0
.end method


# virtual methods
.method public getGoodixFingerprintDaemon(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemon;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGoodixFingerprintDaemon(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemon;

    move-result-object p0

    return-object p0
.end method

.method public getGoodixFingerprintDaemonExt(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGoodixFingerprintDaemonExt(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object p0

    return-object p0
.end method

.method public getGoodixFingerprintDaemonFido(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonFido;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGoodixFingerprintDaemonFido(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    return-object p0
.end method

.method public getGoodixFingerprintDaemonHbd(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonManager;->mDaemonProxy:Lcom/goodix/fingerprint/proxy/DaemonProxyBase;

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGoodixFingerprintDaemonHbd(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    move-result-object p0

    return-object p0
.end method
