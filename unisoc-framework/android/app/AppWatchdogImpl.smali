.class public Landroid/app/AppWatchdogImpl;
.super Landroid/app/AppWatchdog;
.source "AppWatchdogImpl.java"


# static fields
.field private static final blacklist CHECK_INTERVAL:I

.field private static final blacklist PROP_CHECK_INTERVAL:Ljava/lang/String; = "debug.appwatchdog.check_interval"

.field private static final blacklist PROP_RESET_INTERVAL:Ljava/lang/String; = "debug.appwatchdog.reset_interval"

.field private static final blacklist RESET_INTERVAL:I

.field private static final blacklist TAG:Ljava/lang/String; = "AppWatchdog"


# instance fields
.field private final blacklist mBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private blacklist mIsWorking:Z

.field private blacklist mMainHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic blacklist $r8$lambda$0CcW-WnQTBVI02SQqzaKL4O3wqw(Landroid/app/AppWatchdogImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/AppWatchdogImpl;->lambda$run$0()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 2

    const-string v0, "debug.appwatchdog.check_interval"

    const/16 v1, 0xfa0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/AppWatchdogImpl;->CHECK_INTERVAL:I

    const-string v0, "debug.appwatchdog.reset_interval"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Landroid/app/AppWatchdogImpl;->RESET_INTERVAL:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/app/ActivityThread;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/app/AppWatchdog;-><init>(Landroid/app/ActivityThread;)V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Landroid/app/AppWatchdogImpl;->mBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Landroid/app/ActivityThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Landroid/app/AppWatchdogImpl;->mMainHandler:Landroid/os/Handler;

    return-void
.end method

.method private synthetic blacklist lambda$run$0()V
    .locals 2

    iget-object v0, p0, Landroid/app/AppWatchdogImpl;->mBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 3

    const-string v0, "AppWatchdog"

    :goto_0
    iget-boolean v1, p0, Landroid/app/AppWatchdogImpl;->mIsWorking:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/app/AppWatchdogImpl;->mBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v1, p0, Landroid/app/AppWatchdogImpl;->mMainHandler:Landroid/os/Handler;

    new-instance v2, Landroid/app/AppWatchdogImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/app/AppWatchdogImpl$$ExternalSyntheticLambda0;-><init>(Landroid/app/AppWatchdogImpl;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    :try_start_0
    sget v1, Landroid/app/AppWatchdogImpl;->CHECK_INTERVAL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/app/AppWatchdogImpl;->sleep(J)V

    iget-object v1, p0, Landroid/app/AppWatchdogImpl;->mBlocked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    iget-object v2, p0, Landroid/app/AppWatchdogImpl;->mMainHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->setStackTrace([Ljava/lang/StackTraceElement;)V

    const-string v2, "main thread may be blocked"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    goto :goto_1

    :cond_0
    sget v1, Landroid/app/AppWatchdogImpl;->RESET_INTERVAL:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Landroid/app/AppWatchdogImpl;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ignored  Exception"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method blacklist startWorking(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/app/AppWatchdogImpl;->mIsWorking:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/app/AppWatchdogImpl;->start()V

    :cond_0
    return-void
.end method
