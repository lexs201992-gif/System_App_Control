.class public Lcom/goodix/fingerprint/proxy/DaemonProxy;
.super Lcom/goodix/fingerprint/proxy/DaemonProxyBase;
.source "DaemonProxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;,
        Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;,
        Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;,
        Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;,
        Lcom/goodix/fingerprint/proxy/DaemonProxy$HwBinderDaemon;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/proxy/DaemonProxyBase;-><init>()V

    return-void
.end method


# virtual methods
.method getGFDaemonExtImp(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonExtImp;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)V

    return-object v0
.end method

.method getGFDaemonFidoImp(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonFidoImp;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)V

    return-object v0
.end method

.method getGFDaemonHbdImp(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonHbdImp;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)V

    return-object v0
.end method

.method getGFDaemonImp(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/DaemonProxyBase$Daemon;
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/proxy/DaemonProxy$GFDaemonImp;-><init>(Lcom/goodix/fingerprint/proxy/DaemonProxy;Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)V

    return-object v0
.end method
