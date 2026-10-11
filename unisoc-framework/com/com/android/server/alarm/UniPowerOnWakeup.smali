.class public Lcom/android/server/alarm/UniPowerOnWakeup;
.super Ljava/lang/Object;
.source "UniPowerOnWakeup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;
    }
.end annotation


# static fields
.field static final blacklist DEBUG_POWERON:Z

.field static final blacklist TAG:Ljava/lang/String; = "UnisocAlarmManagerService"


# instance fields
.field final blacklist mLock:Ljava/lang/Object;

.field private blacklist mNextPowerOnWakeup:J

.field private blacklist mPowerOnWakeups:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "persist.sys.alarm.debug"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    :try_start_0
    const-string v0, "unipoweron_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    return-void
.end method

.method private static native blacklist setPower(J)I
.end method


# virtual methods
.method public blacklist setPowerOnToRtc(JLandroid/app/PendingIntent;)V
    .locals 2

    if-eqz p3, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/UniPowerOnWakeup;->setPowerOnToRtcLocked(JLandroid/app/PendingIntent;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    const-string v0, "UnisocAlarmManagerService"

    const-string v1, "setPowerOnToRtc failed !"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist setPowerOnToRtcLocked(JLandroid/app/PendingIntent;)V
    .locals 12

    const/4 v0, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    cmp-long v3, p1, v1

    const-string v4, "UnisocAlarmManagerService"

    const-wide/16 v5, 0x0

    if-gtz v3, :cond_0

    cmp-long v3, p1, v5

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPowerOnToRtcLocked ignore: currentTime ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " , time is in the past !"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v3, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;

    invoke-direct {v3, p0, p1, p2, p3}, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;-><init>(Lcom/android/server/alarm/UniPowerOnWakeup;JLandroid/app/PendingIntent;)V

    iget-object v7, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    :goto_0
    if-ltz v7, :cond_6

    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;

    iget-wide v8, v8, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->triggerAtTime:J

    cmp-long v8, v8, v1

    if-gtz v8, :cond_1

    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    if-eqz v8, :cond_5

    const-string v8, "setPowerOnToRtcLocked clear: time is in the past !"

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;

    invoke-virtual {v3, v8}, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->equals(Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPowerOnToRtcLocked remove same operation:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    cmp-long v8, p1, v5

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;

    invoke-virtual {v3, v8}, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->shouldRemove(Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    sget-boolean v8, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setPowerOnToRtcLocked cancel:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-wide v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    iget-object v10, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;

    iget-wide v10, v10, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->triggerAtTime:J

    cmp-long v8, v8, v10

    if-gtz v8, :cond_4

    iget-wide v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    cmp-long v8, v8, v5

    if-nez v8, :cond_5

    :cond_4
    iget-object v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;

    iget-wide v8, v8, Lcom/android/server/alarm/UniPowerOnWakeup$PowerOnWakeup;->triggerAtTime:J

    iput-wide v8, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    const/4 v0, 0x1

    :cond_5
    :goto_1
    add-int/lit8 v7, v7, -0x1

    goto/16 :goto_0

    :cond_6
    cmp-long v7, p1, v5

    if-eqz v7, :cond_9

    sget-boolean v7, Lcom/android/server/alarm/UniPowerOnWakeup;->DEBUG_POWERON:Z

    if-eqz v7, :cond_7

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setPowerOnToRtcLocked: add "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v7, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v7, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    cmp-long v9, v7, p1

    if-gtz v9, :cond_8

    cmp-long v7, v7, v5

    if-nez v7, :cond_9

    :cond_8
    iput-wide p1, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    const/4 v0, 0x1

    :cond_9
    iget-object v7, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_a

    iput-wide v5, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    const/4 v0, 0x1

    :cond_a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPowerOnToRtcLocked millis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", operation="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,shouldUpdate ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mNextPowerOnWakeup ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ,mPowerOnWakeups="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mPowerOnWakeups:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_b

    :try_start_0
    iget-wide v4, p0, Lcom/android/server/alarm/UniPowerOnWakeup;->mNextPowerOnWakeup:J

    invoke-static {v4, v5}, Lcom/android/server/alarm/UniPowerOnWakeup;->setPower(J)I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NullPointerException;->printStackTrace()V

    :cond_b
    :goto_2
    return-void
.end method
