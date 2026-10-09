.class public Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
.super Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.source "IkeUdp6Socket.java"


# static fields
.field private static final blacklist INADDR_ANY:Ljava/net/InetAddress;

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist sConfigToSocketMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;",
            "Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->TAG:Ljava/lang/String;

    const-string v0, "::"

    invoke-static {v0}, Landroid/net/InetAddresses;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->INADDR_ANY:Ljava/net/InetAddress;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .locals 1

    if-nez p3, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    goto :goto_0

    :cond_0
    move-object v0, p3

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    return-void
.end method

.method public static blacklist getInstance(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Lcom/android/internal/net/ipsec/ike/IkeSocket$Callback;Landroid/os/Handler;)Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;

    invoke-static {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->openUdp6Sock(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;)Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2, p0, p2}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;-><init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    move-object v0, v1

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->start()V

    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-interface {v1, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v1, v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->mRegisteredCallbacks:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected static blacklist openUdp6Sock(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;)Ljava/io/FileDescriptor;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/system/ErrnoException;,
            Ljava/io/IOException;
        }
    .end annotation

    sget v0, Landroid/system/OsConstants;->AF_INET6:I

    sget v1, Landroid/system/OsConstants;->SOCK_DGRAM:I

    sget v2, Landroid/system/OsConstants;->IPPROTO_UDP:I

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0}, Landroid/net/TrafficStats;->tagFileDescriptor(Ljava/io/FileDescriptor;)V

    sget-object v1, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->INADDR_ANY:Ljava/net/InetAddress;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->bind(Ljava/io/FileDescriptor;Ljava/net/InetAddress;I)V

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->applySocketConfig(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Ljava/io/FileDescriptor;Z)V

    return-object v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 2

    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->sConfigToSocketMap:Ljava/util/Map;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdp6Socket;->getIkeSocketConfig()Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->close()V

    return-void
.end method
