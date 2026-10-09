.class Lcom/android/unisoc/telephony/server/RIRequest;
.super Ljava/lang/Object;
.source "RadioInteractorCore.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RIRequest"

.field private static final MAX_POOL_SIZE:I = 0x4

.field static sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static sPool:Lcom/android/unisoc/telephony/server/RIRequest;

.field private static sPoolSize:I

.field private static sPoolSync:Ljava/lang/Object;

.field static sRandom:Ljava/util/Random;


# instance fields
.field mClientId:Ljava/lang/String;

.field mNext:Lcom/android/unisoc/telephony/server/RIRequest;

.field mRequest:I

.field mResult:Landroid/os/Message;

.field mSerial:I

.field mStartTimeMs:J

.field mWakeLockType:I

.field mWorkSource:Landroid/os/WorkSource;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/unisoc/telephony/server/RIRequest;->sRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/android/unisoc/telephony/server/RIRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSync:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/unisoc/telephony/server/RIRequest;->sPool:Lcom/android/unisoc/telephony/server/RIRequest;

    sput v1, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSize:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static obtain(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 4

    const/4 v0, 0x0

    sget-object v1, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/unisoc/telephony/server/RIRequest;->sPool:Lcom/android/unisoc/telephony/server/RIRequest;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v0, v2

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mNext:Lcom/android/unisoc/telephony/server/RIRequest;

    sput-object v2, Lcom/android/unisoc/telephony/server/RIRequest;->sPool:Lcom/android/unisoc/telephony/server/RIRequest;

    iput-object v3, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mNext:Lcom/android/unisoc/telephony/server/RIRequest;

    sget v2, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSize:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    new-instance v1, Lcom/android/unisoc/telephony/server/RIRequest;

    invoke-direct {v1}, Lcom/android/unisoc/telephony/server/RIRequest;-><init>()V

    move-object v0, v1

    :cond_1
    sget-object v1, Lcom/android/unisoc/telephony/server/RIRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v1

    iput v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    iput p0, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    iput-object p1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    iput-object v3, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mWorkSource:Landroid/os/WorkSource;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mStartTimeMs:J

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/os/Message;->getTarget()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Message target must not be null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method static obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 4

    const/4 v0, 0x0

    invoke-static {p0, p1}, Lcom/android/unisoc/telephony/server/RIRequest;->obtain(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-eqz p2, :cond_0

    iput-object p2, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mWorkSource:Landroid/os/WorkSource;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->get(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2, v2}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mClientId:Ljava/lang/String;

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null workSource "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIRequest"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method static resetSerial()V
    .locals 2

    sget-object v0, Lcom/android/unisoc/telephony/server/RIRequest;->sNextSerial:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v1, Lcom/android/unisoc/telephony/server/RIRequest;->sRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method


# virtual methods
.method onError(ILjava/lang/Object;)V
    .locals 3

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "< "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RIRequest"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    if-eqz v1, :cond_0

    invoke-static {v1, p2, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method release()V
    .locals 4

    sget-object v0, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSize:I

    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/android/unisoc/telephony/server/RIRequest;->sPool:Lcom/android/unisoc/telephony/server/RIRequest;

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mNext:Lcom/android/unisoc/telephony/server/RIRequest;

    sput-object p0, Lcom/android/unisoc/telephony/server/RIRequest;->sPool:Lcom/android/unisoc/telephony/server/RIRequest;

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/android/unisoc/telephony/server/RIRequest;->sPoolSize:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mResult:Landroid/os/Message;

    iget v1, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v1, :cond_0

    const-string v1, "RIRequest"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RIRequest releasing with held wake lock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method serialString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    int-to-long v1, v1

    const-wide/32 v3, -0x80000000

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x2710

    rem-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    :goto_0
    rsub-int/lit8 v6, v5, 0x4

    if-ge v4, v6, :cond_0

    const/16 v6, 0x30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
