.class public Landroid/net/SprdSntpClientImpl;
.super Landroid/net/SprdSntpClient;
.source "SprdSntpClientImpl.java"


# annotations
.annotation runtime Landroid/annotation/UnisocHiddenApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z = true

.field private static final blacklist NTP_LEAP_NOSYNC:I = 0x3

.field private static final blacklist NTP_MODE_BROADCAST:I = 0x5

.field private static final blacklist NTP_MODE_CLIENT:I = 0x3

.field private static final blacklist NTP_MODE_SERVER:I = 0x4

.field private static final blacklist NTP_PACKET_SIZE:I = 0x30

.field private static final blacklist NTP_STRATUM_DEATH:I = 0x0

.field private static final blacklist NTP_STRATUM_MAX:I = 0xf

.field private static final blacklist NTP_VERSION:I = 0x3

.field private static final blacklist OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final blacklist ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final blacklist RECEIVE_TIME_OFFSET:I = 0x20

.field private static final blacklist REFERENCE_TIME_OFFSET:I = 0x10

.field public static final blacklist STANDARD_NTP_PORT:I = 0x7b

.field private static final blacklist TAG:Ljava/lang/String; = "SprdSntpClient"

.field private static final blacklist TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field private blacklist mNtpTime:J

.field private blacklist mNtpTimeReference:J

.field private blacklist mRoundTripTime:J

.field private blacklist mServerSocketAddress:Ljava/net/InetSocketAddress;


# direct methods
.method public constructor greylist <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/net/SprdSntpClient;-><init>()V

    return-void
.end method

.method private static blacklist checkValidServerReply(BBIJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;
        }
    .end annotation

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "untrusted mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-eqz p2, :cond_3

    const/16 v0, 0xf

    if-gt p2, v0, :cond_3

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    new-instance v0, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;

    const-string v1, "zero transmitTime"

    invoke-direct {v0, v1}, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "untrusted stratum: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;

    const-string v1, "unsynchronized server"

    invoke-direct {v0, v1}, Landroid/net/SprdSntpClientImpl$InvalidServerReplyException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist read32([BI)J
    .locals 13

    aget-byte v0, p1, p2

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    add-int/lit8 v2, p2, 0x2

    aget-byte v2, p1, v2

    add-int/lit8 v3, p2, 0x3

    aget-byte v3, p1, v3

    and-int/lit16 v4, v0, 0x80

    const/16 v5, 0x80

    if-ne v4, v5, :cond_0

    and-int/lit8 v4, v0, 0x7f

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    and-int/lit16 v6, v1, 0x80

    if-ne v6, v5, :cond_1

    and-int/lit8 v6, v1, 0x7f

    add-int/2addr v6, v5

    goto :goto_1

    :cond_1
    move v6, v1

    :goto_1
    and-int/lit16 v7, v2, 0x80

    if-ne v7, v5, :cond_2

    and-int/lit8 v7, v2, 0x7f

    add-int/2addr v7, v5

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v5, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/2addr v8, v5

    goto :goto_3

    :cond_3
    move v8, v3

    :goto_3
    move v5, v8

    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v5

    add-long/2addr v8, v10

    return-wide v8
.end method

.method private blacklist readTimeStamp([BI)J
    .locals 11

    invoke-direct {p0, p1, p2}, Landroid/net/SprdSntpClientImpl;->read32([BI)J

    move-result-wide v0

    add-int/lit8 v2, p2, 0x4

    invoke-direct {p0, p1, v2}, Landroid/net/SprdSntpClientImpl;->read32([BI)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    return-wide v4

    :cond_0
    const/16 v4, 0x18

    const-wide v5, 0x100000000L

    const-wide v7, 0x83aa7e80L

    if-ne p2, v4, :cond_1

    cmp-long v4, v0, v7

    if-gez v4, :cond_1

    add-long/2addr v0, v5

    :cond_1
    sub-long v7, v0, v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    mul-long/2addr v9, v2

    div-long/2addr v9, v5

    add-long/2addr v7, v9

    return-wide v7
.end method

.method private blacklist writeTimeStamp([BIJ)V
    .locals 15

    move-object/from16 v0, p1

    move/from16 v1, p2

    const-wide/16 v2, 0x0

    cmp-long v2, p3, v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    add-int/lit8 v2, v1, 0x8

    invoke-static {v0, v1, v2, v3}, Ljava/util/Arrays;->fill([BIIB)V

    return-void

    :cond_0
    const-wide/16 v4, 0x3e8

    div-long v6, p3, v4

    mul-long v8, v6, v4

    sub-long v8, p3, v8

    const-wide v10, 0x83aa7e80L

    add-long/2addr v6, v10

    add-int/lit8 v2, v1, 0x1

    const/16 v10, 0x18

    shr-long v11, v6, v10

    long-to-int v11, v11

    int-to-byte v11, v11

    aput-byte v11, v0, v1

    add-int/lit8 v1, v2, 0x1

    const/16 v11, 0x10

    shr-long v12, v6, v11

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v0, v2

    add-int/lit8 v2, v1, 0x1

    const/16 v12, 0x8

    shr-long v13, v6, v12

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v0, v1

    add-int/lit8 v1, v2, 0x1

    shr-long v13, v6, v3

    long-to-int v3, v13

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    const-wide v2, 0x100000000L

    mul-long/2addr v2, v8

    div-long/2addr v2, v4

    add-int/lit8 v4, v1, 0x1

    shr-long v13, v2, v10

    long-to-int v5, v13

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    shr-long v10, v2, v11

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    add-int/lit8 v4, v1, 0x1

    shr-long v10, v2, v12

    long-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    add-int/lit8 v1, v4, 0x1

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v10

    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double/2addr v10, v12

    double-to-int v5, v10

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    return-void
.end method


# virtual methods
.method public greylist getNtpTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SprdSntpClientImpl;->mNtpTime:J

    return-wide v0
.end method

.method public greylist getNtpTimeReference()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SprdSntpClientImpl;->mNtpTimeReference:J

    return-wide v0
.end method

.method public greylist getRoundTripTime()J
    .locals 2

    iget-wide v0, p0, Landroid/net/SprdSntpClientImpl;->mRoundTripTime:J

    return-wide v0
.end method

.method public blacklist getServerSocketAddress()Ljava/net/InetSocketAddress;
    .locals 1

    iget-object v0, p0, Landroid/net/SprdSntpClientImpl;->mServerSocketAddress:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method public greylist requestTime(Ljava/lang/String;I)Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "SprdSntpClient"

    const-string v1, "Shame on you for calling the hidden API requestTime()!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist requestTime(Ljava/lang/String;IILandroid/net/Network;)Z
    .locals 9

    const-string v0, ",request time failed"

    const-string v1, "address="

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start requestTime host:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",port:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",timeout:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SprdSntpClient"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p4}, Landroid/net/Network;->getPrivateDnsBypassingCopy()Landroid/net/Network;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p4, p1}, Landroid/net/Network;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v4, v6

    if-eqz v4, :cond_1

    if-eqz v4, :cond_0

    array-length v6, v4

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v4, p2, p3, v2}, Landroid/net/SprdSntpClientImpl;->requestTime([Ljava/net/InetAddress;IILandroid/net/Network;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :catchall_0
    move-exception v6

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_1
    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p1, v7}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "request ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")time failed: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-eqz v4, :cond_3

    if-eqz v4, :cond_2

    array-length v7, v4

    if-nez v7, :cond_2

    goto :goto_1

    :cond_2
    return v5

    :cond_3
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :goto_2
    if-eqz v4, :cond_5

    if-eqz v4, :cond_4

    array-length v7, v4

    if-nez v7, :cond_4

    goto :goto_3

    :cond_4
    throw v6

    :cond_5
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v5
.end method

.method public blacklist requestTime(Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "SprdSntpClient"

    const/4 v5, 0x0

    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v6

    const/4 v7, 0x0

    :try_start_0
    new-instance v0, Ljava/net/DatagramSocket;

    invoke-direct {v0}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    move-object v5, v0

    move-object/from16 v8, p4

    :try_start_1
    invoke-virtual {v8, v5}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V

    move/from16 v9, p3

    invoke-virtual {v5, v9}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    const/16 v0, 0x30

    new-array v0, v0, [B

    new-instance v10, Ljava/net/DatagramPacket;

    array-length v11, v0

    invoke-direct {v10, v0, v11, v2, v3}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    const/16 v11, 0x1b

    aput-byte v11, v0, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v13

    const/16 v15, 0x28

    invoke-direct {v1, v0, v15, v11, v12}, Landroid/net/SprdSntpClientImpl;->writeTimeStamp([BIJ)V

    invoke-virtual {v5, v10}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    new-instance v15, Ljava/net/DatagramPacket;

    array-length v7, v0

    invoke-direct {v15, v0, v7}, Ljava/net/DatagramPacket;-><init>([BI)V

    move-object v7, v15

    invoke-virtual {v5, v7}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-wide/from16 v20, v18

    move-object v15, v7

    move-wide/from16 v7, v20

    sub-long v20, v7, v13

    move-object/from16 v18, v10

    add-long v9, v11, v20

    const/16 v17, 0x0

    aget-byte v19, v0, v17

    shr-int/lit8 v19, v19, 0x6

    move-wide/from16 v20, v11

    and-int/lit8 v11, v19, 0x3

    int-to-byte v11, v11

    aget-byte v12, v0, v17

    and-int/lit8 v12, v12, 0x7

    int-to-byte v12, v12

    const/16 v19, 0x1

    move-object/from16 v22, v15

    aget-byte v15, v0, v19
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    and-int/lit16 v15, v15, 0xff

    move/from16 v23, v6

    const/16 v6, 0x18

    :try_start_2
    invoke-direct {v1, v0, v6}, Landroid/net/SprdSntpClientImpl;->readTimeStamp([BI)J

    move-result-wide v24

    move-wide/from16 v26, v24

    const/16 v6, 0x20

    invoke-direct {v1, v0, v6}, Landroid/net/SprdSntpClientImpl;->readTimeStamp([BI)J

    move-result-wide v24

    move-wide/from16 v28, v24

    const/16 v6, 0x28

    invoke-direct {v1, v0, v6}, Landroid/net/SprdSntpClientImpl;->readTimeStamp([BI)J

    move-result-wide v24
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-wide/from16 v30, v24

    move-object/from16 v16, v5

    move-wide/from16 v5, v30

    :try_start_3
    invoke-static {v11, v12, v15, v5, v6}, Landroid/net/SprdSntpClientImpl;->checkValidServerReply(BBIJ)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    sub-long v24, v7, v13

    move/from16 v30, v11

    move/from16 v31, v12

    move-wide/from16 v11, v28

    sub-long v28, v5, v11

    move-wide/from16 v32, v13

    sub-long v13, v24, v28

    move-wide/from16 v2, v26

    sub-long v28, v11, v2

    sub-long v24, v5, v9

    add-long v28, v28, v24

    const-wide/16 v24, 0x2

    :try_start_4
    div-long v28, v28, v24

    move-wide/from16 v24, v28

    move-object/from16 v26, v0

    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    move-wide/from16 v27, v7

    move-wide/from16 v7, v24

    invoke-static {v0, v13, v14, v7, v8}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v15

    const-string v15, "round trip: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "ms, clock offset: "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, "ms"

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v34, v13

    add-long v13, v9, v7

    iput-wide v13, v1, Landroid/net/SprdSntpClientImpl;->mNtpTime:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "request mNtpTime: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v13, v1, Landroid/net/SprdSntpClientImpl;->mNtpTime:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " ,clockOffset: "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " ,transmitTime:"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " ,originateTime "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, ",receiveTime"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v13, " ,responseTime"

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-wide/from16 v13, v27

    iput-wide v13, v1, Landroid/net/SprdSntpClientImpl;->mNtpTimeReference:J

    move-wide/from16 v27, v2

    move-wide/from16 v2, v34

    iput-wide v2, v1, Landroid/net/SprdSntpClientImpl;->mRoundTripTime:J

    new-instance v0, Ljava/net/InetSocketAddress;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object/from16 v15, p1

    move-wide/from16 v34, v2

    move/from16 v2, p2

    :try_start_5
    invoke-direct {v0, v15, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, v1, Landroid/net/SprdSntpClientImpl;->mServerSocketAddress:Ljava/net/InetSocketAddress;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    invoke-virtual/range {v16 .. v16}, Ljava/net/DatagramSocket;->close()V

    invoke-static/range {v23 .. v23}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    nop

    return v19

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v2, p2

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v15, p1

    move/from16 v2, p2

    goto :goto_1

    :catchall_2
    move-exception v0

    move-object v15, v2

    move v2, v3

    :goto_0
    move-object/from16 v5, v16

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object v15, v2

    move v2, v3

    :goto_1
    move-object/from16 v5, v16

    goto :goto_2

    :catchall_3
    move-exception v0

    move-object v15, v2

    move v2, v3

    move-object/from16 v16, v5

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v15, v2

    move v2, v3

    move-object/from16 v16, v5

    goto :goto_2

    :catchall_4
    move-exception v0

    move-object v15, v2

    move v2, v3

    move-object/from16 v16, v5

    move/from16 v23, v6

    goto :goto_3

    :catch_4
    move-exception v0

    move-object v15, v2

    move v2, v3

    move-object/from16 v16, v5

    move/from16 v23, v6

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v15, v2

    move v2, v3

    move/from16 v23, v6

    goto :goto_3

    :catch_5
    move-exception v0

    move-object v15, v2

    move v2, v3

    move/from16 v23, v6

    :goto_2
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "request time failed: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    nop

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_0
    invoke-static/range {v23 .. v23}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const/4 v3, 0x0

    return v3

    :catchall_6
    move-exception v0

    :goto_3
    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/net/DatagramSocket;->close()V

    :cond_1
    invoke-static/range {v23 .. v23}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    throw v0
.end method

.method public blacklist requestTime([Ljava/net/InetAddress;IILandroid/net/Network;)Z
    .locals 38

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    const-string v4, "close select failed: "

    const-string v5, "SprdSntpClient"

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    filled-new-array/range {v6 .. v13}, [Ljava/nio/channels/DatagramChannel;

    move-result-object v0

    move-object v6, v0

    const/4 v14, 0x0

    filled-new-array/range {v7 .. v14}, [Ljava/nio/channels/SelectionKey;

    move-result-object v0

    move-object v7, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v0, -0xbf

    invoke-static {v0}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v10

    const/4 v11, 0x0

    :try_start_0
    array-length v0, v2

    const/16 v12, 0x8

    if-le v0, v12, :cond_0

    const/16 v0, 0x8

    move v8, v0

    goto :goto_0

    :cond_0
    array-length v0, v2

    move v8, v0

    :goto_0
    const/16 v0, 0x30

    new-array v12, v0, [B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    const/4 v13, 0x0

    :goto_1
    if-ge v13, v8, :cond_1

    :try_start_1
    invoke-static {}, Ljava/nio/channels/DatagramChannel;->open()Ljava/nio/channels/DatagramChannel;

    move-result-object v14

    aput-object v14, v6, v13

    aget-object v14, v6, v13

    invoke-virtual {v14, v11}, Ljava/nio/channels/DatagramChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v21, v10

    move-object v10, v1

    move-object v1, v0

    goto/16 :goto_11

    :catch_0
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v21, v10

    move-object v10, v1

    goto/16 :goto_c

    :cond_1
    const/16 v13, 0x1b

    :try_start_2
    aput-byte v13, v12, v11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v15

    const/16 v0, 0x28

    invoke-direct {v1, v12, v0, v13, v14}, Landroid/net/SprdSntpClientImpl;->writeTimeStamp([BIJ)V

    invoke-static {v12}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v18

    move-object/from16 v19, v18

    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object v18
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_9
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    move-object/from16 v9, v18

    const/16 v18, 0x0

    move/from16 v0, v18

    :goto_2
    if-ge v0, v8, :cond_2

    :try_start_3
    new-instance v11, Ljava/net/InetSocketAddress;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move/from16 v21, v10

    :try_start_4
    aget-object v10, v2, v0

    invoke-direct {v11, v10, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v11, v1, Landroid/net/SprdSntpClientImpl;->mServerSocketAddress:Ljava/net/InetSocketAddress;

    new-instance v10, Ljava/net/InetSocketAddress;

    aget-object v11, v2, v0

    invoke-direct {v10, v11, v3}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    aget-object v11, v6, v0

    invoke-virtual {v11, v10}, Ljava/nio/channels/DatagramChannel;->connect(Ljava/net/SocketAddress;)Ljava/nio/channels/DatagramChannel;

    aget-object v11, v6, v0

    move-object/from16 v3, v19

    invoke-virtual {v11, v3}, Ljava/nio/channels/DatagramChannel;->write(Ljava/nio/ByteBuffer;)I

    const/4 v11, 0x0

    invoke-virtual {v3, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    aget-object v11, v6, v0

    move-object/from16 v19, v10

    const/4 v10, 0x1

    invoke-virtual {v11, v9, v10}, Ljava/nio/channels/DatagramChannel;->register(Ljava/nio/channels/Selector;I)Ljava/nio/channels/SelectionKey;

    move-result-object v10

    aput-object v10, v7, v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v19, v3

    move/from16 v10, v21

    const/4 v11, 0x0

    move/from16 v3, p2

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v10, v1

    move-object/from16 v19, v7

    move-object v1, v0

    goto/16 :goto_11

    :catch_1
    move-exception v0

    move-object v10, v1

    move-object/from16 v19, v7

    goto/16 :goto_c

    :catchall_2
    move-exception v0

    move/from16 v21, v10

    move-object v10, v1

    move-object/from16 v19, v7

    move-object v1, v0

    goto/16 :goto_11

    :catch_2
    move-exception v0

    move/from16 v21, v10

    move-object v10, v1

    move-object/from16 v19, v7

    goto/16 :goto_c

    :cond_2
    move/from16 v21, v10

    move-object/from16 v3, v19

    const/4 v0, 0x0

    move/from16 v10, p3

    move v11, v0

    int-to-long v0, v10

    :try_start_5
    invoke-virtual {v9, v0, v1}, Ljava/nio/channels/Selector;->select(J)I

    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    if-lez v0, :cond_6

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v8, :cond_5

    :try_start_6
    aget-object v1, v7, v0

    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->readyOps()I

    move-result v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move-object/from16 v19, v7

    const/4 v7, 0x1

    if-ne v1, v7, :cond_3

    :try_start_7
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "received Data"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v7, v2, v0

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v1, v6, v0

    invoke-virtual {v1, v3}, Ljava/nio/channels/DatagramChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    const/16 v7, 0x30

    if-ne v1, v7, :cond_4

    const/4 v1, 0x1

    move v0, v1

    goto :goto_5

    :cond_3
    const/16 v7, 0x30

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v7, v19

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v10, p0

    goto/16 :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v19, v7

    move-object/from16 v10, p0

    goto/16 :goto_b

    :cond_5
    move-object/from16 v19, v7

    goto :goto_4

    :cond_6
    move-object/from16 v19, v7

    :goto_4
    move v0, v11

    :goto_5
    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v22

    move-wide/from16 v24, v22

    move v7, v0

    move-wide/from16 v0, v24

    sub-long v24, v0, v15

    add-long v24, v13, v24

    const/4 v11, 0x0

    aget-byte v17, v12, v11

    shr-int/lit8 v17, v17, 0x6

    and-int/lit8 v11, v17, 0x3

    int-to-byte v11, v11

    const/16 v17, 0x0

    aget-byte v22, v12, v17

    and-int/lit8 v2, v22, 0x7

    int-to-byte v2, v2

    move-object/from16 v22, v3

    const/16 v17, 0x1

    aget-byte v3, v12, v17
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_6
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    and-int/lit16 v3, v3, 0xff

    move/from16 v17, v7

    const/16 v7, 0x18

    move-object/from16 v10, p0

    :try_start_8
    invoke-direct {v10, v12, v7}, Landroid/net/SprdSntpClientImpl;->readTimeStamp([BI)J

    move-result-wide v26

    const/16 v7, 0x20

    invoke-direct {v10, v12, v7}, Landroid/net/SprdSntpClientImpl;->readTimeStamp([BI)J

    move-result-wide v28

    const/16 v7, 0x28

    invoke-direct {v10, v12, v7}, Landroid/net/SprdSntpClientImpl;->readTimeStamp([BI)J

    move-result-wide v30

    move-wide/from16 v32, v30

    move-object v7, v12

    move-wide/from16 v30, v13

    move-wide/from16 v12, v32

    invoke-static {v11, v2, v3, v12, v13}, Landroid/net/SprdSntpClientImpl;->checkValidServerReply(BBIJ)V

    sub-long v32, v0, v15

    sub-long v34, v12, v28

    move v14, v2

    move/from16 v20, v3

    sub-long v2, v32, v34

    sub-long v32, v28, v26

    sub-long v34, v12, v24

    add-long v32, v32, v34

    const-wide/16 v34, 0x2

    div-long v32, v32, v34

    move-wide/from16 v34, v32

    move-object/from16 v23, v7

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move/from16 v32, v11

    move-wide/from16 v36, v12

    move-wide/from16 v11, v34

    invoke-static {v7, v2, v3, v11, v12}, Landroid/net/EventLogTags;->writeNtpSuccess(Ljava/lang/String;JJ)V

    move v7, v14

    add-long v13, v24, v11

    iput-wide v13, v10, Landroid/net/SprdSntpClientImpl;->mNtpTime:J

    iput-wide v0, v10, Landroid/net/SprdSntpClientImpl;->mNtpTimeReference:J

    iput-wide v2, v10, Landroid/net/SprdSntpClientImpl;->mRoundTripTime:J
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    if-eqz v9, :cond_7

    :try_start_9
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_6

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_7
    :goto_6
    nop

    :goto_7
    if-lez v8, :cond_9

    const/4 v0, 0x0

    move v1, v0

    :goto_8
    if-ge v1, v8, :cond_9

    :try_start_a
    aget-object v0, v6, v1

    if-eqz v0, :cond_8

    aget-object v0, v6, v1

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5

    :cond_8
    goto :goto_9

    :catch_5
    move-exception v0

    :goto_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_9
    invoke-static/range {v21 .. v21}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    const-string v0, "request time Sucess: "

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    return v1

    :catchall_4
    move-exception v0

    move-object/from16 v10, p0

    move-object v1, v0

    goto/16 :goto_11

    :catch_6
    move-exception v0

    move-object/from16 v10, p0

    goto :goto_c

    :cond_a
    move-object/from16 v10, p0

    move/from16 v17, v0

    move-object/from16 v22, v3

    move-object/from16 v23, v12

    move-wide/from16 v30, v13

    :try_start_b
    const-string v0, "not Sucesss"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/IOException;

    const-string v1, "Received ntp response"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    :catch_7
    move-exception v0

    goto :goto_c

    :catchall_5
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v19, v7

    :goto_a
    move-object v1, v0

    goto/16 :goto_11

    :catch_8
    move-exception v0

    move-object/from16 v10, p0

    move-object/from16 v19, v7

    :goto_b
    goto :goto_c

    :catchall_6
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v21, v10

    move-object v10, v1

    move-object v1, v0

    goto :goto_11

    :catch_9
    move-exception v0

    move-object/from16 v19, v7

    move/from16 v21, v10

    move-object v10, v1

    :goto_c
    move-object v1, v0

    :try_start_c
    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/EventLogTags;->writeNtpFailure(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request time failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    nop

    if-eqz v9, :cond_b

    :try_start_d
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_a

    goto :goto_d

    :catch_a
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e

    :cond_b
    :goto_d
    nop

    :goto_e
    if-lez v8, :cond_d

    const/4 v0, 0x0

    move v2, v0

    :goto_f
    if-ge v2, v8, :cond_d

    :try_start_e
    aget-object v0, v6, v2

    if-eqz v0, :cond_c

    aget-object v0, v6, v2

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_b

    :cond_c
    goto :goto_10

    :catch_b
    move-exception v0

    :goto_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_f

    :cond_d
    const/4 v2, 0x0

    return v2

    :catchall_7
    move-exception v0

    move-object v1, v0

    :goto_11
    if-eqz v9, :cond_e

    :try_start_f
    invoke-virtual {v9}, Ljava/nio/channels/Selector;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {v9}, Ljava/nio/channels/Selector;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_12

    :catch_c
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_e
    :goto_12
    nop

    :goto_13
    if-lez v8, :cond_10

    const/4 v0, 0x0

    move v2, v0

    :goto_14
    if-ge v2, v8, :cond_10

    :try_start_10
    aget-object v0, v6, v2

    if-eqz v0, :cond_f

    aget-object v0, v6, v2

    invoke-virtual {v0}, Ljava/nio/channels/DatagramChannel;->close()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_d

    :cond_f
    goto :goto_15

    :catch_d
    move-exception v0

    :goto_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_10
    throw v1
.end method
