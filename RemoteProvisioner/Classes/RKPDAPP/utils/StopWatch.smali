.class public Lcom/android/rkpdapp/utils/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private mElapsedTime:J

.field private mStartTime:J

.field private final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mStartTime:J

    iput-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mElapsedTime:J

    iput-object p1, p0, Lcom/android/rkpdapp/utils/StopWatch;->mTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->stop()V

    :cond_0
    return-void
.end method

.method public getElapsedMillis()I
    .locals 4

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/rkpdapp/utils/StopWatch;->mStartTime:J

    sub-long/2addr v0, v2

    :goto_0
    long-to-int p0, v0

    return p0

    :cond_0
    iget-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mElapsedTime:J

    goto :goto_0
.end method

.method public isRunning()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mStartTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public start()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting a timer that\'s already been running for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->getElapsedMillis()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mStartTime:J

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/rkpdapp/utils/StopWatch;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mTag:Ljava/lang/String;

    const-string v0, "Attempting to stop a timer that hasn\'t been started."

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mElapsedTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/rkpdapp/utils/StopWatch;->mStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mElapsedTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/rkpdapp/utils/StopWatch;->mStartTime:J

    :goto_0
    return-void
.end method
