.class public abstract Lcom/goodix/fingerprint/proxy/DaemonProxyBase;
.super Ljava/lang/Object;
.source "DaemonProxyBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
    }
.end annotation


# instance fields
.field protected mGFDaemon:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

.field protected mGFDaemonExt:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

.field protected mGFDaemonFido:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

.field protected mGFDaemonHbd:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemon:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonExt:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonFido:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    iput-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonHbd:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    return-void
.end method


# virtual methods
.method abstract getGFDaemonExtImp(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
.end method

.method abstract getGFDaemonFidoImp(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
.end method

.method abstract getGFDaemonHbdImp(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
.end method

.method abstract getGFDaemonImp(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
.end method

.method public getGoodixFingerprintDaemon(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemon;
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemon:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGFDaemonImp(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemon:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemon:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;->getService()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemon:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemon;

    return-object p0
.end method

.method public getGoodixFingerprintDaemonExt(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonExt:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGFDaemonExtImp(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonExt:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonExt:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;->getService()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonExt:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    return-object p0
.end method

.method public getGoodixFingerprintDaemonFido(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonFido;
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonFido:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGFDaemonFidoImp(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonFido:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonFido:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;->getService()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonFido:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    return-object p0
.end method

.method public getGoodixFingerprintDaemonHbd(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonHbd:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->getGFDaemonHbdImp(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonHbd:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonHbd:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;->getService()Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;->mGFDaemonHbd:Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;

    check-cast p0, Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    return-object p0
.end method
