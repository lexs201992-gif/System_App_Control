.class public final Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;
.super Ljava/lang/Object;
.source "SoftwareKeepaliveImpl.java"

# interfaces
.implements Lcom/android/internal/net/ipsec/ike/keepalive/IkeNattKeepalive$NattKeepalive;


# static fields
.field private static final blacklist NATT_KEEPALIVE_PAYLOAD:[B

.field private static final blacklist TAG:Ljava/lang/String; = "SoftwareKeepaliveImpl"


# instance fields
.field private final blacklist mDestAddress:Ljava/net/Inet4Address;

.field private final blacklist mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

.field private final blacklist mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [B

    const/4 v1, -0x1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    sput-object v0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->NATT_KEEPALIVE_PAYLOAD:[B

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/net/Inet4Address;Landroid/net/IpSecManager$UdpEncapsulationSocket;Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    iput-object p2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    invoke-static {p4}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->newExactAndAllowWhileIdleAlarm(Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm$IkeAlarmConfig;)Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    return-void
.end method

.method private blacklist sendKeepaliveAndScheduleNext()V
    .locals 6

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Send keepalive to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    invoke-virtual {v2}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SoftwareKeepaliveImpl"

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/net/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mSocket:Landroid/net/IpSecManager$UdpEncapsulationSocket;

    invoke-virtual {v0}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    sget-object v1, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->NATT_KEEPALIVE_PAYLOAD:[B

    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    const/4 v4, 0x0

    const/16 v5, 0x1194

    invoke-static {v0, v1, v4, v3, v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;Ljava/nio/ByteBuffer;ILjava/net/InetAddress;I)I
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Landroid/net/ipsec/ike/IkeManager;->getIkeLog()Lcom/android/internal/net/utils/Log;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to keepalive packet to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mDestAddress:Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/net/Inet4Address;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/net/utils/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->schedule()V

    return-void
.end method


# virtual methods
.method public blacklist onAlarmFired()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->sendKeepaliveAndScheduleNext()V

    return-void
.end method

.method public blacklist start()V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->sendKeepaliveAndScheduleNext()V

    return-void
.end method

.method public blacklist stop()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/net/ipsec/ike/keepalive/SoftwareKeepaliveImpl;->mIkeAlarm:Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;

    invoke-virtual {v0}, Lcom/android/internal/net/ipsec/ike/utils/IkeAlarm;->cancel()V

    return-void
.end method
