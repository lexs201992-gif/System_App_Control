.class public final Lcom/android/internal/os/UnisocBgThread;
.super Landroid/os/HandlerThread;
.source "UnisocBgThread.java"


# static fields
.field private static final blacklist SLOW_DELIVERY_THRESHOLD_MS:J = 0x7530L

.field private static final blacklist SLOW_DISPATCH_THRESHOLD_MS:J = 0x2710L

.field private static blacklist sHandler:Landroid/os/Handler;

.field private static blacklist sHandlerExecutor:Landroid/os/HandlerExecutor;

.field private static blacklist sInstance:Lcom/android/internal/os/UnisocBgThread;


# direct methods
.method private constructor blacklist <init>()V
    .locals 2

    const-string v0, "unisoc.bg"

    const/16 v1, 0xa

    invoke-direct {p0, v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static blacklist ensureThreadLocked()V
    .locals 5

    sget-object v0, Lcom/android/internal/os/UnisocBgThread;->sInstance:Lcom/android/internal/os/UnisocBgThread;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/UnisocBgThread;

    invoke-direct {v0}, Lcom/android/internal/os/UnisocBgThread;-><init>()V

    sput-object v0, Lcom/android/internal/os/UnisocBgThread;->sInstance:Lcom/android/internal/os/UnisocBgThread;

    invoke-virtual {v0}, Lcom/android/internal/os/UnisocBgThread;->start()V

    sget-object v0, Lcom/android/internal/os/UnisocBgThread;->sInstance:Lcom/android/internal/os/UnisocBgThread;

    invoke-virtual {v0}, Lcom/android/internal/os/UnisocBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/32 v1, 0x80000

    invoke-virtual {v0, v1, v2}, Landroid/os/Looper;->setTraceTag(J)V

    const-wide/16 v1, 0x2710

    const-wide/16 v3, 0x7530

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/android/internal/os/UnisocBgThread;->sInstance:Lcom/android/internal/os/UnisocBgThread;

    invoke-virtual {v2}, Lcom/android/internal/os/UnisocBgThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/android/internal/os/UnisocBgThread;->sHandler:Landroid/os/Handler;

    new-instance v1, Landroid/os/HandlerExecutor;

    sget-object v2, Lcom/android/internal/os/UnisocBgThread;->sHandler:Landroid/os/Handler;

    invoke-direct {v1, v2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    sput-object v1, Lcom/android/internal/os/UnisocBgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    :cond_0
    return-void
.end method

.method public static blacklist get()Lcom/android/internal/os/UnisocBgThread;
    .locals 2

    const-class v0, Lcom/android/internal/os/UnisocBgThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/UnisocBgThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/internal/os/UnisocBgThread;->sInstance:Lcom/android/internal/os/UnisocBgThread;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getExecutor()Ljava/util/concurrent/Executor;
    .locals 2

    const-class v0, Lcom/android/internal/os/UnisocBgThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/UnisocBgThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/internal/os/UnisocBgThread;->sHandlerExecutor:Landroid/os/HandlerExecutor;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static blacklist getHandler()Landroid/os/Handler;
    .locals 2

    const-class v0, Lcom/android/internal/os/UnisocBgThread;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/internal/os/UnisocBgThread;->ensureThreadLocked()V

    sget-object v1, Lcom/android/internal/os/UnisocBgThread;->sHandler:Landroid/os/Handler;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
