.class public abstract Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;
.super Lcom/android/internal/net/ipsec/ike/IkeSocket;
.source "IkeUdpSocket.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;
    }
.end annotation


# static fields
.field private static final blacklist TAG:Ljava/lang/String;

.field protected static blacklist sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;


# instance fields
.field protected final blacklist mSocket:Ljava/io/FileDescriptor;


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;

    invoke-direct {v0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket$PacketReceiver;-><init>()V

    sput-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/io/FileDescriptor;Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lcom/android/internal/net/ipsec/ike/IkeSocket;-><init>(Lcom/android/internal/net/ipsec/ike/IkeSocketConfig;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    return-void
.end method

.method static blacklist setPacketReceiver(Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;)V
    .locals 0

    sput-object p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    return-void
.end method


# virtual methods
.method public whitelist test-api close()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v0}, Llibcore/io/IoUtils;->close(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to close UDP Socket"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-super {p0}, Lcom/android/internal/net/ipsec/ike/IkeSocket;->close()V

    return-void
.end method

.method protected blacklist getFd()Ljava/io/FileDescriptor;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method public blacklist getIkeServerPort()I
    .locals 1

    const/16 v0, 0x1f4

    return v0
.end method

.method protected blacklist handlePacket([BI)V
    .locals 3

    sget-object v0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->sPacketReceiver:Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;

    const/4 v1, 0x0

    invoke-static {p1, v1, p2}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSpiToCallback:Landroid/util/LongSparseArray;

    invoke-interface {v0, v1, v2}, Lcom/android/internal/net/ipsec/ike/IkeSocket$IPacketReceiver;->handlePacket([BLandroid/util/LongSparseArray;)V

    return-void
.end method

.method public blacklist sendIkePacket([BLjava/net/InetAddress;)V
    .locals 4

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending packet to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "( "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->mSocket:Ljava/io/FileDescriptor;

    invoke-virtual {p0}, Lcom/android/internal/net/ipsec/ike/IkeUdpSocket;->getIkeServerPort()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v1, v0, v3, p2, v2}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Failed to send packet"

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
