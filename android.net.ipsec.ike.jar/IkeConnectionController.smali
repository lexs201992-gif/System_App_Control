.class public Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;
.super Ljava/lang/Object;
.source "IkeConnectionController.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;
.implements Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;,
        Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$NatStatus;
    }
.end annotation


# static fields
.field public static final blacklist AUTO_KEEPALIVE_DELAY_SEC_CELL:I = 0x96

.field public static final blacklist AUTO_KEEPALIVE_DELAY_SEC_WIFI:I = 0xf

.field private static final blacklist MAX_DNS_RESOLUTION_ATTEMPTS:I = 0x3

.field public static final blacklist NAT_DETECTED:I = 0x3

.field public static final blacklist NAT_NOT_DETECTED:I = 0x2

.field private static final blacklist NAT_STATUS_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist NAT_TRAVERSAL_SUPPORT_NOT_CHECKED:I = 0x0

.field public static final blacklist NAT_TRAVERSAL_UNSUPPORTED:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

.field private final blacklist mConfig:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

.field private final blacklist mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final blacklist mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

.field private final blacklist mDscp:I

.field private blacklist mEncapType:I

.field private final blacklist mForcePort4500:Z

.field private final blacklist mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

.field private final blacklist mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

.field private blacklist mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

.field private final blacklist mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

.field private final blacklist mIkeSaRecords:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

.field private final blacklist mIpSecManager:Landroid/net/IpSecManager;

.field private blacklist mIpVersion:I

.field private blacklist mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

.field private blacklist mKeepaliveDelaySeconds:I

.field private blacklist mLocalAddress:Ljava/net/InetAddress;

.field private blacklist mMobilityEnabled:Z

.field private blacklist mNatStatus:I

.field private blacklist mNc:Landroid/net/NetworkCapabilities;

.field private blacklist mNetwork:Landroid/net/Network;

.field private blacklist mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

.field private blacklist mRemoteAddress:Ljava/net/InetAddress;

.field private final blacklist mRemoteAddressesV4:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteAddressesV6:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mRemoteHostname:Ljava/lang/String;

.field private blacklist mUnderpinnedNetwork:Landroid/net/Network;

.field private final blacklist mUseCallerConfiguredNetwork:Z


# direct methods
.method public static synthetic blacklist $r8$lambda$CWahsPKzng0vIOyEP3AaSxwjT78(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onCapabilitiesUpdated$1(Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$ScLi5gOOqXv2eVDFpVFtFhhdNfs(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onUnderlyingNetworkUpdated$0(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$aA_iIC2FQH2v3VEK85d5XXE9poU(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onIkePacketReceived$3(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    return-void
.end method

.method public static synthetic blacklist $r8$lambda$fCuy_2LOXLbNXedLia_ZOv5llT0(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->lambda$onUnderlyingNetworkDied$2()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 3

    const-class v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "NAT_TRAVERSAL_SUPPORT_NOT_CHECKED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x1

    const-string v2, "NAT_TRAVERSAL_UNSUPPORTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x2

    const-string v2, "NAT_NOT_DETECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    sget-object v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x3

    const-string v2, "NAT_DETECTED"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;)V
    .locals 1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;-><init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;)V

    return-void
.end method

.method public constructor blacklist <init>(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConfig:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/net/IpSecManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecManager;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpSecManager:Landroid/net/IpSecManager;

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    invoke-virtual {p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeLocalAddressGenerator()Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->callback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getServerHostname()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUseCallerConfiguredNetwork:Z

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getIpVersion()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getEncapType()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getDscp()I

    move-result v1

    iput v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDscp:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    iget-boolean v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUseCallerConfiguredNetwork:Z

    if-eqz v1, :cond_1

    iget-object v1, p2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-virtual {v1}, Landroid/net/ipsec/ike/IkeSessionParams;->getConfiguredNetwork()Landroid/net/Network;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    if-eqz v1, :cond_2

    :goto_1
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set up on Network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No active default network found"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist adjustIpVersionPreference()V
    .locals 5

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    const/16 v2, 0x11

    if-ne v1, v2, :cond_1

    const/4 v0, 0x4

    :cond_1
    :goto_0
    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-eq v0, v1, :cond_2

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP version preference is overridden from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    :cond_2
    return-void
.end method

.method private static blacklist buildInitialKeepaliveAlarmConfig(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .locals 11

    iget-object v0, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeHandler:Landroid/os/Handler;

    iget v1, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->alarmCmd:I

    iget v2, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeSessionId:I

    iget v3, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->sendKeepaliveCmd:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;->ikeSessionId:I

    invoke-static {v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIntentIdentifier(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "IkeAlarmReceiver.ACTION_KEEPALIVE"

    invoke-static {v0, v2, v1, v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->buildIkeAlarmIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)Landroid/app/PendingIntent;

    move-result-object v9

    new-instance v4, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {p0, p2, p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getKeepaliveDelaySec(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

    const-string v6, "IkeAlarmReceiver.ACTION_KEEPALIVE"

    invoke-direct/range {v4 .. v10}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;-><init>(Landroid/content/Context;Ljava/lang/String;JLandroid/app/PendingIntent;Landroid/os/Message;)V

    return-object v4
.end method

.method private blacklist executeOrSendFatalError(Ljava/lang/Runnable;)V
    .locals 2

    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->executeOrSendFatalError(Ljava/lang/Runnable;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;)V

    return-void
.end method

.method private blacklist getAndSwitchToIkeSocket(ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, v3, v4, v5, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->migrateSpiToIkeSocket(JLcom/android/internal/net/ipsec/ike/IkeSocket;Lcom/android/internal/net/ipsec/ike/IkeSocket;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    throw v2
.end method

.method private blacklist getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    iget v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDscp:I

    invoke-direct {v0, p0, v1}, Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;I)V

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    nop

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpSecManager:Landroid/net/IpSecManager;

    new-instance v4, Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v5}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v0, v3, p0, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdpEncapSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/net/IpSecManager;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v0, p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdp6WithEncapPortSocket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6WithEncapPortSocket;

    move-result-object v2
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    goto :goto_0

    :cond_1
    nop

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    if-eqz p1, :cond_2

    :try_start_1
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v0, p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdp4Socket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp4Socket;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    :cond_2
    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v2, v0, p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeUdp6Socket(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    move-result-object v2

    move-object v1, v2

    :goto_0
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->bindToNetwork(Landroid/net/Network;)V

    return-object v1

    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "No socket created"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/net/IpSecManager$ResourceUnavailableException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v2

    invoke-static {v2}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v3

    throw v3
.end method

.method private static blacklist getIntentIdentifier(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getKeepaliveDelaySec(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)I
    .locals 5

    invoke-virtual {p1}, Landroid/net/ipsec/ike/IkeSessionParams;->getNattKeepAliveDelaySeconds()I

    move-result v0

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0xf

    const/16 v2, 0xf

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    nop

    const-string v1, "config_auto_natt_keepalives_cellular_timeout_override_seconds"

    const/16 v2, 0xa

    const/16 v3, 0xe10

    const/16 v4, 0x96

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getDeviceConfigPropertyInt(Ljava/lang/String;III)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    :cond_2
    :goto_0
    return v0
.end method

.method private static blacklist getSupportedVersions(ZZ)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p0, :cond_0

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    if-eqz p1, :cond_1

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private blacklist handleUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "onUnderlyingNetworkUpdated: Unable to handle network update"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onUnderlyingNetworkDied(Landroid/net/Network;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    :try_start_0
    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    invoke-static {v3, v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getKeepaliveDelaySec(Lcom/android/internal/net/ipsec/ike/IkeContext;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)I

    move-result v3

    iput v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    :cond_1
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-wide v5, v5, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->delayMs:J

    cmp-long v5, v3, v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    invoke-virtual {v5, v3, v4}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;->buildCopyWithDelayMs(J)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->restartKeepaliveIfRunning()V
    :try_end_0
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_0 .. :try_end_0} :catch_3

    :cond_2
    nop

    invoke-static {p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->hasLocalIpV4Address(Landroid/net/LinkProperties;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p2}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No local address on the Network "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void

    :cond_3
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    iget-boolean v5, v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->isNat64Addr:Z

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_4
    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {p0, v0, v3, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isDnsLookupRequiredWithGlobalRemoteAddress(Landroid/net/Network;Landroid/net/Network;Landroid/net/LinkProperties;)Z

    move-result v3

    if-eqz v3, :cond_6

    :try_start_1
    invoke-direct {p0, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->resolveAndSetAvailableRemoteAddresses(Landroid/net/LinkProperties;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void

    :cond_6
    :goto_1
    :try_start_2
    invoke-virtual {p0, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->selectAndSetRemoteAddress(Landroid/net/LinkProperties;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    nop

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v3, v3, Ljava/net/Inet4Address;

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isNattSupported()Z

    move-result v4

    if-eqz v4, :cond_7

    const/16 v4, 0x1194

    goto :goto_2

    :cond_7
    const/16 v4, 0x1f4

    :goto_2
    nop

    :try_start_3
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v6, v3, v7, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;->generateLocalAddress(Landroid/net/Network;ZLjava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v5

    invoke-virtual {v5, p4}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->shouldSkipIfSameNetwork(Z)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v5

    sget-object v6, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v7, "onUnderlyingNetworkUpdated: None of network, local or remote address has changed, and the update is skippable. No action needed here."

    invoke-virtual {v5, v6, v7}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    iget-boolean v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    if-nez v5, :cond_a

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isNattSupported()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_3

    :cond_9
    const/4 v5, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v5, 0x1

    :goto_4
    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    instance-of v6, v6, Ljava/net/Inet4Address;

    invoke-direct {p0, v6, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getAndSwitchToIkeSocket(ZZ)V

    :cond_b
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v6, v7, v8}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->migrate(Ljava/net/InetAddress;Ljava/net/InetAddress;)V
    :try_end_3
    .catch Landroid/net/ipsec/ike/exceptions/IkeException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :cond_c
    nop

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v5, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->setAddress(Ljava/net/InetAddress;)V

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-interface {v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onUnderlyingNetworkUpdated()V

    return-void

    :catch_1
    move-exception v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v5}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v7

    invoke-interface {v6, v7}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void

    :catch_2
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void

    :catch_3
    move-exception v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-static {v3}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onError(Landroid/net/ipsec/ike/exceptions/IkeException;)V

    return-void
.end method

.method private static blacklist hasLocalIpV4Address(Landroid/net/LinkProperties;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    instance-of v2, v2, Ljava/net/Inet4Address;

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isIpVersionRequired(I)Z
    .locals 1

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist isNattSupported()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic blacklist lambda$onCapabilitiesUpdated$1(Landroid/net/NetworkCapabilities;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    return-void
.end method

.method private synthetic blacklist lambda$onIkePacketReceived$3(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    invoke-interface {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnderlyingNetworkDied$2()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mCallback:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-interface {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Callback;->onUnderlyingNetworkDied(Landroid/net/Network;)V

    return-void
.end method

.method private synthetic blacklist lambda$onUnderlyingNetworkUpdated$0(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Z)V

    return-void
.end method

.method private blacklist migrateSpiToIkeSocket(JLcom/android/internal/net/ipsec/ike/IkeSocket;Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    .locals 0

    invoke-virtual {p4, p1, p2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    return-void
.end method

.method private blacklist printPortInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Local port: null socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote(server) port: null socket"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Local port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getLocalPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "Local port: failed to get port"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote(server) port: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getIkeServerPort()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private blacklist resolveAndSetAvailableRemoteAddresses(Landroid/net/LinkProperties;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ge v1, v3, :cond_2

    if-eqz v0, :cond_0

    array-length v5, v0

    if-nez v5, :cond_2

    :cond_0
    :try_start_0
    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    goto :goto_1

    :catch_0
    move-exception v5

    add-int/lit8 v6, v1, 0x1

    if-ge v6, v3, :cond_1

    move v2, v4

    :cond_1
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to look up host for attempt "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " retrying? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_6

    array-length v1, v0

    if-eqz v1, :cond_6

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    sget-object v3, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Resolved addresses for peer: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to replace old addresses: v4="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " v6="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_5

    aget-object v5, v0, v3

    instance-of v6, v5, Ljava/net/Inet4Address;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    move-object v7, v5

    check-cast v7, Ljava/net/Inet4Address;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    move-object v6, v5

    check-cast v6, Ljava/net/Inet6Address;

    invoke-virtual {p1}, Landroid/net/LinkProperties;->getNat64Prefix()Landroid/net/IpPrefix;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v9, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    if-eqz v7, :cond_4

    invoke-virtual {v7, v6}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v10

    if-eqz v10, :cond_4

    move v10, v4

    goto :goto_3

    :cond_4
    move v10, v2

    :goto_3
    invoke-direct {v9, v6, v10}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;-><init>(Ljava/net/Inet6Address;Z)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DNS resolution for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteHostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " failed after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " attempts"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2
.end method

.method private blacklist restartKeepaliveIfRunning()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    throw v1
.end method

.method private blacklist setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->stop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    :cond_0
    return-void

    :cond_1
    new-instance v1, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    move-object v2, v0

    check-cast v2, Ljava/net/Inet4Address;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    move-object v3, v0

    check-cast v3, Ljava/net/Inet4Address;

    move-object v0, p1

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;->getUdpEncapsulationSocket()Landroid/net/IpSecManager$UdpEncapsulationSocket;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v6, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    iget-object v8, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    invoke-direct/range {v1 .. v8}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;-><init>(Ljava/net/Inet4Address;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Landroid/net/Network;Landroid/net/Network;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;Landroid/net/ipsec/ike/IkeSessionParams;)V

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0, v1}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->restart(Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDependencies:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Dependencies;->newIkeNattKeepalive(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$KeepaliveConfig;)Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    :goto_0
    return-void
.end method

.method private blacklist unregisterResources()V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->stop()V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    :cond_1
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v2}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    :cond_3
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public blacklist addRemoteAddress(Ljava/net/InetAddress;)V
    .locals 4

    instance-of v0, p1, Ljava/net/Inet4Address;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    move-object v1, p1

    check-cast v1, Ljava/net/Inet4Address;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    move-object v2, p1

    check-cast v2, Ljava/net/Inet6Address;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;-><init>(Ljava/net/Inet6Address;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method public blacklist addRemoteAddressV6(Ljava/net/Inet6Address;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    new-instance v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    invoke-direct {v1, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;-><init>(Ljava/net/Inet6Address;Z)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public blacklist buildIkeSessionConnectionInfo()Landroid/net/ipsec/ike/IkeSessionConnectionInfo;
    .locals 4

    new-instance v0, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-direct {v0, v1, v2, v3}, Landroid/net/ipsec/ike/IkeSessionConnectionInfo;-><init>(Ljava/net/InetAddress;Ljava/net/InetAddress;Landroid/net/Network;)V

    return-object v0
.end method

.method public blacklist clearRemoteAddress()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 4

    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "IkeConnectionController:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Nat status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->NAT_STATUS_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Local address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote(Server) address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Mobility status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->printPortInfo(Ljava/io/PrintWriter;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Esp ip version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Esp encap type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public blacklist enableMobility()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isNattSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v1}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getIkeServerPort()I

    move-result v1

    const/16 v2, 0x1194

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getAndSwitchToIkeSocket(ZZ)V

    :cond_0
    return-void
.end method

.method public blacklist fireKeepAlive()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;->onAlarmFired()V

    :cond_0
    return-void
.end method

.method public blacklist getAllRemoteIpv4Addresses()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet4Address;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public blacklist getAllRemoteIpv6Addresses()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/Inet6Address;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    iget-object v3, v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public blacklist getDscp()I
    .locals 1

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mDscp:I

    return v0
.end method

.method public blacklist getIkeNattKeepalive()Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeNattKeepalive:Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive;

    return-object v0
.end method

.method public blacklist getIkeSaRecords()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIkeSocket()Lcom/android/internal/net/ipsec/ike/IkeSocket;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    return-object v0
.end method

.method public blacklist getKeepaliveAlarmConfig()Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    return-object v0
.end method

.method public blacklist getLocalAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getLocalPort()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getLocalPort()I

    move-result v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fail to get local port"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist getMetricsNetworkType()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    return v1
.end method

.method public blacklist getNatStatus()I
    .locals 1

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return v0
.end method

.method public blacklist getNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist getRemoteAddress()Ljava/net/InetAddress;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    return-object v0
.end method

.method public blacklist getRemotePort()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->getIkeServerPort()I

    move-result v0

    return v0
.end method

.method public blacklist getUnderpinnedNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public blacklist handleNatDetectionResultInIkeInit(ZJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_2

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Switching to send to remote port 4500 if it\'s not already"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, p2, p3, v1, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->migrateSpiToIkeSocket(JLcom/android/internal/net/ipsec/ike/IkeSocket;Lcom/android/internal/net/ipsec/ike/IkeSocket;)V

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v1, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->releaseReference(Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    :cond_1
    return-void

    :catch_0
    move-exception v1

    invoke-static {v1}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPv6 NAT-T not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist handleNatDetectionResultInMobike(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v0, v0, Ljava/net/Inet6Address;

    if-nez v0, :cond_1

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Switching to send to remote port 4500 if it\'s not already"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getAndSwitchToIkeSocket(ZZ)V

    return-void

    :cond_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "IPv6 NAT-T not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    throw v0
.end method

.method public blacklist isDnsLookupRequiredWithGlobalRemoteAddress(Landroid/net/Network;Landroid/net/Network;Landroid/net/LinkProperties;)Z
    .locals 7

    nop

    invoke-static {p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->hasLocalIpV4Address(Landroid/net/LinkProperties;)Z

    move-result v0

    invoke-virtual {p3}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getSupportedVersions(ZZ)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-static {v1, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getSupportedVersions(ZZ)Ljava/util/Set;

    move-result-object v1

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDnsLookupRequiredWithGlobalRemoteAddress localIpVersions "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " remoteIpVersionsCached "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v3

    sget-object v4, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v5, "isDnsLookupRequiredWithGlobalRemoteAddress no local address on the Network"

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v3

    if-eqz v3, :cond_1

    return v2

    :cond_1
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    return v4

    :cond_3
    return v2
.end method

.method public blacklist isIpV4Preferred(Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Z
    .locals 2

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isMobilityEnabled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    return v0
.end method

.method public blacklist markSeverNattUnsupported()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void
.end method

.method public blacklist onCapabilitiesUpdated(Landroid/net/NetworkCapabilities;)V
    .locals 1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onIkePacketReceived(Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V
    .locals 1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Lcom/android/internal/net/ipsec/ike/message/IkeHeader;[B)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onNetworkSetByUser(Landroid/net/Network;III)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mMobilityEnabled:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    const-string v2, "Attempt to update network when mobility is disabled"

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkSetByUser: network "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipVersion "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " encapType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " keepaliveDelaySeconds "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    iput p2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIpVersion:I

    iput p3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mEncapType:I

    iput p4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveDelaySeconds:I

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    invoke-virtual {v2, p1, v0, v1}, Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;->setNetwork(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->handleUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Z)V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempt migrating to network "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with null LinkProperties or null NetworkCapabilities"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v2

    throw v2
.end method

.method public blacklist onUnderlyingNetworkDied()V
    .locals 1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onUnderlyingNetworkUpdated(Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V
    .locals 1

    new-instance v0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;Landroid/net/Network;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    invoke-direct {p0, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->executeOrSendFatalError(Ljava/lang/Runnable;)V

    return-void
.end method

.method public blacklist onUnderpinnedNetworkSetByUser(Landroid/net/Network;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUnderpinnedNetwork:Landroid/net/Network;

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->restartKeepaliveIfRunning()V

    return-void
.end method

.method public blacklist registerIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    return-void
.end method

.method public blacklist registerIkeSpi(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->registerIke(JLcom/android/internal/net/ipsec/ike/IkeSocket$Callback;)V

    return-void
.end method

.method public blacklist resetSeverNattSupport()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void
.end method

.method public blacklist selectAndSetRemoteAddress(Landroid/net/LinkProperties;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->hasLocalIpV4Address(Landroid/net/LinkProperties;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/net/LinkProperties;->hasGlobalIpv6Address()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->adjustIpVersionPreference()V

    const/4 v3, 0x4

    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isIpVersionRequired(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_2

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_2

    :cond_2
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v2

    const-string v3, "IPv4 required but no IPv4 address available"

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_3
    const/4 v3, 0x6

    invoke-direct {p0, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isIpVersionRequired(I)Z

    move-result v3

    if-eqz v3, :cond_5

    if-eqz v1, :cond_4

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getInstance()Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;

    move-result-object v2

    const-string v3, "IPv6 required but no global IPv6 address available"

    invoke-virtual {v2, v3}, Lcom/android/internal/net/ipsec/ike/shim/ShimUtils;->getDnsFailedException(Ljava/lang/String;)Ljava/io/IOException;

    move-result-object v2

    throw v2

    :cond_5
    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->isIpV4Preferred(Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV6:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;

    iget-object v2, v2, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Ipv6AddrInfo;->address:Ljava/net/Inet6Address;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    goto :goto_2

    :cond_7
    if-eqz v0, :cond_8

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddressesV4:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    :goto_2
    return-void

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "No valid IPv4 or IPv6 addresses for peer"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public blacklist sendIkePacket([B)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->sendIkePacket([BLjava/net/InetAddress;)V

    return-void
.end method

.method public blacklist setLocalAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    return-void
.end method

.method public blacklist setNatDetected(Z)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void

    :cond_0
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNatStatus:I

    return-void
.end method

.method public blacklist setRemoteAddress(Ljava/net/InetAddress;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {p0, p1}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->addRemoteAddress(Ljava/net/InetAddress;)V

    return-void
.end method

.method public blacklist setUp()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/ipsec/ike/exceptions/IkeException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterResources()V

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v6

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConfig:Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeParams:Landroid/net/ipsec/ike/IkeSessionParams;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->buildInitialKeepaliveAlarmConfig(Lcom/android/internal/net/ipsec/ike/IkeContext;Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController$Config;Landroid/net/ipsec/ike/IkeSessionParams;Landroid/net/NetworkCapabilities;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mKeepaliveAlarmConfig:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;

    if-eqz v6, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    if-eqz v0, :cond_2

    invoke-direct {p0, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->resolveAndSetAvailableRemoteAddresses(Landroid/net/LinkProperties;)V

    invoke-virtual {p0, v6}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->selectAndSetRemoteAddress(Landroid/net/LinkProperties;)V

    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x1194

    goto :goto_0

    :cond_0
    const/16 v0, 0x1f4

    :goto_0
    nop

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    instance-of v1, v1, Ljava/net/Inet4Address;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeLocalAddressGenerator:Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mRemoteAddress:Ljava/net/InetAddress;

    invoke-virtual {v2, v3, v1, v4, v0}, Lcom/android/internal/net/ipsec/ike/net/IkeLocalAddressGenerator;->generateLocalAddress(Landroid/net/Network;ZLjava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-boolean v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mForcePort4500:Z

    invoke-direct {p0, v1, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->getIkeSocket(ZZ)Lcom/android/internal/net/ipsec/ike/IkeSocket;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-direct {p0, v2}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->setupOrUpdateNattKeeaplive(Lcom/android/internal/net/ipsec/ike/IkeSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mUseCallerConfiguredNetwork:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    new-instance v2, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/net/ipsec/ike/net/IkeSpecificNetworkCallback;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v4}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v1, v0, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    goto :goto_1

    :cond_1
    new-instance v2, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    iget-object v5, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mLocalAddress:Ljava/net/InetAddress;

    iget-object v7, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNc:Landroid/net/NetworkCapabilities;

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/internal/net/ipsec/ike/net/IkeDefaultNetworkCallback;-><init>(Lcom/android/internal/net/ipsec/ike/net/IkeNetworkUpdater;Landroid/net/Network;Ljava/net/InetAddress;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;)V

    iput-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    new-instance v2, Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeContext:Lcom/android/internal/net/ipsec/ike/IkeContext;

    invoke-virtual {v3}, Lcom/android/internal/net/ipsec/ike/IkeContext;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    nop

    return-void

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetworkCallback:Lcom/android/internal/net/ipsec/ike/net/IkeNetworkCallbackBase;

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    throw v1

    :cond_2
    :try_start_2
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempt setup on network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with null LinkProperties or null NetworkCapabilities"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    invoke-static {v0}, Landroid/net/ipsec/ike/exceptions/IkeException;->wrapAsIkeException(Ljava/lang/Exception;)Landroid/net/ipsec/ike/exceptions/IkeException;

    move-result-object v1

    throw v1
.end method

.method public blacklist tearDown()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->unregisterResources()V

    return-void
.end method

.method public blacklist unregisterIkeSaRecord(Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSaRecords:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {p1}, Lcom/android/internal/net/ipsec/ike/SaRecord$IkeSaRecord;->getLocalSpi()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    return-void
.end method

.method public blacklist unregisterIkeSpi(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->unregisterIke(J)V

    return-void
.end method

.method public blacklist useUdpEncapSocket()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/net/IkeConnectionController;->mIkeSocket:Lcom/android/internal/net/ipsec/ike/IkeSocket;

    instance-of v0, v0, Lcom/android/internal/net/ipsec/ike/IkeUdpEncapSocket;

    return v0
.end method
