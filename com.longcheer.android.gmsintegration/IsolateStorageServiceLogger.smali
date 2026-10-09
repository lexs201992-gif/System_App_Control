.class public final Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;
.super Ljava/lang/Object;
.source "go/retraceme 2b895002459ef04c5ca21485e857614f26f7eb5e0720e46b34a28e45d63a00ac"


# static fields
.field public static final sRng:Ljava/util/Random;


# instance fields
.field public final mConfig:Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;

.field public mLastPushTimeMillisLocked:J

.field public final mLock:Ljava/lang/Object;

.field final mSkippedSampleCountLocked:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->sRng:Ljava/util/Random;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mLastPushTimeMillisLocked:J

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mSkippedSampleCountLocked:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mLock:Ljava/lang/Object;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mConfig:Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mSkippedSampleCountLocked:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public final logStats(Lcom/android/server/appsearch/stats/VMPayloadStats;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mCallbackType:I

    invoke-virtual {p0, v1}, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->shouldLogForTypeLocked(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mLastPushTimeMillisLocked:J

    iget-object v1, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mSkippedSampleCountLocked:Ljava/util/List;

    iget v2, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mCallbackType:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mSkippedSampleCountLocked:Ljava/util/List;

    iget v3, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mCallbackType:I

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mConfig:Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;

    iget p0, p0, Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;->pCachedSamplingInterval:I

    iget v2, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mCallbackType:I

    iget v3, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mErrorCode:I

    iget v4, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mExitCode:I

    iget p1, p1, Lcom/android/server/appsearch/stats/VMPayloadStats;->mStopReason:I

    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v5

    const/16 v6, 0x417

    invoke-virtual {v5, v6}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, p0}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v2}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, v4}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->usePooledBuffer()Landroid/util/StatsEvent$Builder;

    invoke-virtual {v5}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p0

    invoke-static {p0}, Landroid/util/StatsLog;->write(Landroid/util/StatsEvent;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public shouldLogForTypeLocked(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mConfig:Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;

    iget v1, v0, Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;->pCachedSamplingInterval:I

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->sRng:Ljava/util/Random;

    invoke-virtual {v3, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mLastPushTimeMillisLocked:J

    iget-wide v0, v0, Lcom/android/server/appsearch/isolated_storage_service/ServiceConfig;->pCachedMinTimeIntervalBetweenSamplesMillis:J

    sub-long/2addr v3, v0

    cmp-long v0, v5, v3

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mSkippedSampleCountLocked:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v1

    iget-object p0, p0, Lcom/android/server/appsearch/stats/IsolateStorageServiceLogger;->mSkippedSampleCountLocked:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return v2

    :cond_1
    return v1

    :cond_2
    :goto_0
    return v2
.end method
