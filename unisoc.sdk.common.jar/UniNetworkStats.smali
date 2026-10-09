.class public Lcom/dmyk/android/telephony/UniNetworkStats;
.super Landroid/os/Handler;
.source "UniNetworkStats.java"


# static fields
.field public static final METERED_YES:I = 0x1

.field private static final TAG:Ljava/lang/String; = "UniNetworkStats"

.field private static sInstance:Lcom/dmyk/android/telephony/UniNetworkStats;

.field private static sLooper:Landroid/os/Looper;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/dmyk/android/telephony/UniNetworkStats;->sLooper:Landroid/os/Looper;

    sput-object v0, Lcom/dmyk/android/telephony/UniNetworkStats;->sInstance:Lcom/dmyk/android/telephony/UniNetworkStats;

    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/dmyk/android/telephony/UniNetworkStats;
    .locals 3

    const-class v0, Lcom/dmyk/android/telephony/UniNetworkStats;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/dmyk/android/telephony/UniNetworkStats;->sInstance:Lcom/dmyk/android/telephony/UniNetworkStats;

    if-nez v1, :cond_1

    sget-object v1, Lcom/dmyk/android/telephony/UniNetworkStats;->sLooper:Landroid/os/Looper;

    if-nez v1, :cond_0

    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "UniNetworkStats"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sput-object v2, Lcom/dmyk/android/telephony/UniNetworkStats;->sLooper:Landroid/os/Looper;

    :cond_0
    new-instance v1, Lcom/dmyk/android/telephony/UniNetworkStats;

    sget-object v2, Lcom/dmyk/android/telephony/UniNetworkStats;->sLooper:Landroid/os/Looper;

    invoke-direct {v1, v2}, Lcom/dmyk/android/telephony/UniNetworkStats;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/dmyk/android/telephony/UniNetworkStats;->sInstance:Lcom/dmyk/android/telephony/UniNetworkStats;

    :cond_1
    sget-object v1, Lcom/dmyk/android/telephony/UniNetworkStats;->sInstance:Lcom/dmyk/android/telephony/UniNetworkStats;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private getSubscriberId(I)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    move v1, p1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dmyk/android/telephony/UniNetworkStats;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/TelephonyManager;

    const/4 v4, 0x0

    const-string v5, "UniNetworkStats"

    if-nez v3, :cond_0

    const-string v6, "get mTelephonyManager is null !"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_0
    iget-object v6, p0, Lcom/dmyk/android/telephony/UniNetworkStats;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    if-nez v6, :cond_1

    const-string v6, "get subscriberId is null !"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    iget-object v4, p0, Lcom/dmyk/android/telephony/UniNetworkStats;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getMobileTotalBytes(IJJ)J
    .locals 12

    const-wide/16 v1, 0x0

    invoke-direct {p0, p1}, Lcom/dmyk/android/telephony/UniNetworkStats;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v10

    const-string v0, "UniNetworkStats"

    if-nez v10, :cond_0

    :try_start_0
    const-string v3, " not insert sim card !!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x0

    return-wide v3

    :cond_0
    const-string v3, " test  mobile start do!! "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v11, p0

    :try_start_1
    iget-object v3, v11, Lcom/dmyk/android/telephony/UniNetworkStats;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/NetworkStatsManager;

    const/4 v4, 0x0

    move-object v5, v10

    move-wide v6, p2

    move-wide/from16 v8, p4

    invoke-virtual/range {v3 .. v9}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v7

    add-long v1, v5, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTimStamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getStartTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endTimeStamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Landroid/app/usage/NetworkStats$Bucket;->getEndTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " phoneId =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move v4, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", get mobileBytes = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " , startTime =  "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide v5, p2

    invoke-virtual {v3, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, ",  endTime = "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v7, p4

    invoke-virtual {v3, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v11, p0

    :goto_0
    move v4, p1

    move-wide v5, p2

    move-wide/from16 v7, p4

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public getWiFiTotalBytes(JJ)J
    .locals 11

    const-string v0, "UniNetworkStats"

    const-wide/16 v1, 0x0

    :try_start_0
    const-string v3, " getWiFiTotalBytes start do!! "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/dmyk/android/telephony/UniNetworkStats;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/app/usage/NetworkStatsManager;

    const/4 v5, 0x1

    const-string v6, ""

    move-wide v7, p1

    move-wide v9, p3

    invoke-virtual/range {v4 .. v10}, Landroid/app/usage/NetworkStatsManager;->querySummaryForDevice(ILjava/lang/String;JJ)Landroid/app/usage/NetworkStats$Bucket;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getRxBytes()J

    move-result-wide v5

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getTxBytes()J

    move-result-wide v7

    add-long v1, v5, v7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTimStamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getStartTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", endTimeStamp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Landroid/app/usage/NetworkStats$Bucket;->getEndTimeStamp()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " get wifi Bytes = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , startTime =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",  endTime = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/dmyk/android/telephony/UniNetworkStats;->mContext:Landroid/content/Context;

    return-void
.end method
