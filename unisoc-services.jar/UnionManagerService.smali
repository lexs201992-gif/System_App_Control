.class public Lcom/unipnp/server/UnionManagerService;
.super Landroid/app/unipnp/IUnionManager$Stub;
.source "UnionManagerService.java"


# static fields
.field private static final CPU_UTILISATION_MONITOR_DISABLE:Z

.field private static final MSG_BEGIN:I = 0x0

.field private static final MSG_COMPONENT_INIT:I = 0x1

.field private static final MSG_END:I = 0x63

.field private static final MSG_REPORT_EVENT:I = 0x2

.field private static final MSG_SERVICE_DUMP:I = 0x5

.field private static final PERMISSION_APPUSAGE_GET:Ljava/lang/String; = "unisoc.permission.UNIPNP_APPUSAGE_GET"

.field private static final PERMISSION_MANAGER_UNIONPNP:Ljava/lang/String; = "unisoc.permission.MANAGER_UNIONPNP"

.field private static final SCREENOFF_HIGH_CURRENT_MONITOR_ENABLE:Z

.field private static final TAG:Ljava/lang/String;

.field private static final USAGESTATS_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private static final WATERMARK_SCALE_FACTOR_PATH:Ljava/lang/String; = "/proc/sys/vm/watermark_scale_factor"

.field private static volatile sInstance:Lcom/unipnp/server/UnionManagerService;


# instance fields
.field private mActionManager:Lcom/unipnp/server/ActionManager;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private final mContext:Landroid/content/Context;

.field private mCpuUtilisationMonitor:Lcom/unipnp/server/monitor/CpuUtilisationMonitor;

.field private final mDumpManager:Lcom/unipnp/server/DumpManager;

.field private final mEventManager:Lcom/unipnp/server/EventManager;

.field private final mFeatureManager:Lcom/unipnp/server/FeatureManager;

.field private mHandler:Landroid/os/Handler;

.field private final mHandlerCallback:Landroid/os/Handler$Callback;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mPms:Lcom/android/server/pm/PackageManagerService;

.field private mScreenOffHighCurrentMonitor:Lcom/unipnp/server/monitor/ScreenOffHighCurrentMonitor;

.field private mServiceReady:Z

.field private mSystemReady:Z

.field public final mUmsInternal:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mWms:Lcom/android/server/wm/WindowManagerService;

.field private originalWatermark:Ljava/lang/String;

.field private reader:Ljava/io/BufferedReader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/unipnp/server/UnionManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    nop

    const-string v0, "persist.unipnp.cpu_utilisation_monitor.disabled"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unipnp/server/UnionManagerService;->CPU_UTILISATION_MONITOR_DISABLE:Z

    nop

    const-string v0, "persist.unipnp.screen_off_high_current_detect.enabled"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/unipnp/server/UnionManagerService;->SCREENOFF_HIGH_CURRENT_MONITOR_ENABLE:Z

    new-instance v0, Lcom/unipnp/server/UnionManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/unipnp/server/UnionManagerService$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/unipnp/server/UnionManagerService;->USAGESTATS_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/app/unipnp/IUnionManager$Stub;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->originalWatermark:Ljava/lang/String;

    new-instance v0, Lcom/unipnp/server/UnionManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/unipnp/server/UnionManagerService$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    sget-object v0, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    const-string v1, "Constructor UnionManagerService."

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/unipnp/server/FeatureManager;

    invoke-direct {v0, p1, p0}, Lcom/unipnp/server/FeatureManager;-><init>(Landroid/content/Context;Lcom/unipnp/server/UnionManagerService;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    new-instance v0, Lcom/unipnp/server/EventManager;

    invoke-direct {v0, p1, p0}, Lcom/unipnp/server/EventManager;-><init>(Landroid/content/Context;Lcom/unipnp/server/UnionManagerService;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mEventManager:Lcom/unipnp/server/EventManager;

    new-instance v0, Lcom/unipnp/server/ActionManager;

    invoke-direct {v0, p1, p0}, Lcom/unipnp/server/ActionManager;-><init>(Landroid/content/Context;Lcom/unipnp/server/UnionManagerService;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mActionManager:Lcom/unipnp/server/ActionManager;

    new-instance v0, Lcom/unipnp/server/DumpManager;

    invoke-direct {v0, p0}, Lcom/unipnp/server/DumpManager;-><init>(Lcom/unipnp/server/UnionManagerService;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mDumpManager:Lcom/unipnp/server/DumpManager;

    sput-object p0, Lcom/unipnp/server/UnionManagerService;->sInstance:Lcom/unipnp/server/UnionManagerService;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unipnp/server/UnionManagerService;->mServiceReady:Z

    new-instance v0, Lcom/unipnp/server/UmsLocalServiceImpl;

    invoke-direct {v0, p0}, Lcom/unipnp/server/UmsLocalServiceImpl;-><init>(Lcom/unipnp/server/UnionManagerService;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mUmsInternal:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    const-class v1, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    invoke-static {v1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/unipnp/server/UnionManagerService;->setupHanler()V

    return-void
.end method

.method private closeSource()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->reader:Ljava/io/BufferedReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->reader:Ljava/io/BufferedReader;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private createAppUsageInfo(Landroid/app/usage/UsageStats;)Landroid/app/unipnp/parcel/UnionAppUsageInfo;
    .locals 3

    new-instance v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;

    invoke-direct {v0}, Landroid/app/unipnp/parcel/UnionAppUsageInfo;-><init>()V

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getFirstTimeStamp()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mBeginTimeStamp:J

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeStamp()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mEndTimeStamp:J

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mLastTimeUsed:J

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mLastTimeVisible:J

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mTotalTimeInForeground:J

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getTotalTimeVisible()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mTotalTimeVisible:J

    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iput v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mLaunchCount:I

    invoke-virtual {p1}, Landroid/app/usage/UsageStats;->getAppLaunchCount()I

    move-result v1

    iput v1, v0, Landroid/app/unipnp/parcel/UnionAppUsageInfo;->mAppLaunchCount:I

    return-object v0
.end method

.method private enforceManagerPermission(I)V
    .locals 4

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.MANAGER_UNIONPNP"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private enforceUsageInfoPermission(I)V
    .locals 4

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x7d0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.UNIPNP_APPUSAGE_GET"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/unipnp/server/UnionManagerService;
    .locals 2

    sget-object v0, Lcom/unipnp/server/UnionManagerService;->sInstance:Lcom/unipnp/server/UnionManagerService;

    if-nez v0, :cond_1

    const-class v0, Lcom/unipnp/server/UnionManagerService;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unipnp/server/UnionManagerService;->sInstance:Lcom/unipnp/server/UnionManagerService;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unipnp/server/UnionManagerService;

    invoke-direct {v1, p0}, Lcom/unipnp/server/UnionManagerService;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unipnp/server/UnionManagerService;->sInstance:Lcom/unipnp/server/UnionManagerService;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/unipnp/server/UnionManagerService;->sInstance:Lcom/unipnp/server/UnionManagerService;

    return-object v0
.end method

.method static synthetic lambda$new$1(Landroid/os/Message;)Z
    .locals 3

    sget-object v0, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    return v1

    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$static$0(Landroid/app/usage/UsageStats;Landroid/app/usage/UsageStats;)I
    .locals 2

    iget v0, p0, Landroid/app/usage/UsageStats;->mLaunchCount:I

    iget v1, p1, Landroid/app/usage/UsageStats;->mLaunchCount:I

    sub-int/2addr v0, v1

    return v0
.end method

.method private queryUsageStats(II)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide v2, 0x7528ad000L

    sub-long v2, v0, v2

    iget-object v4, p0, Lcom/unipnp/server/UnionManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    const/4 v11, 0x0

    move v5, p1

    move v6, p2

    move-wide v7, v2

    invoke-virtual/range {v4 .. v11}, Landroid/app/usage/UsageStatsManagerInternal;->queryUsageStatsForUser(IIJJZ)Ljava/util/List;

    move-result-object v4

    return-object v4
.end method

.method private readOriginalWatermark(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    :try_start_0
    const-string v0, ""

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/unipnp/server/UnionManagerService;->reader:Ljava/io/BufferedReader;

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v1

    if-eqz v1, :cond_0

    nop

    invoke-direct {p0}, Lcom/unipnp/server/UnionManagerService;->closeSource()V

    return-object v0

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-direct {p0}, Lcom/unipnp/server/UnionManagerService;->closeSource()V

    nop

    sget-object v0, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    const-string v1, "obtainOriginalWatermark error."

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :goto_1
    invoke-direct {p0}, Lcom/unipnp/server/UnionManagerService;->closeSource()V

    throw v0
.end method

.method private setupHanler()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    sget-object v1, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iget-object v2, p0, Lcom/unipnp/server/UnionManagerService;->mHandlerCallback:Landroid/os/Handler$Callback;

    invoke-direct {v0, v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public attachPreforkApplication(ILandroid/os/IBinder;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mUmsInternal:Lcom/unipnp/app/absclass/UmsLocalServiceInternal;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1, p2, p3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "PreforkProcessScene"

    const-string v3, "attachPreforkApplication"

    invoke-virtual {v0, v2, v3, v1}, Lcom/unipnp/app/absclass/UmsLocalServiceInternal;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public disableFeature(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/FeatureManager;->disableFeature(Ljava/lang/String;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mDumpManager:Lcom/unipnp/server/DumpManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/unipnp/server/DumpManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public enableFeature(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/FeatureManager;->enableFeature(Ljava/lang/String;)V

    return-void
.end method

.method public getActionManager()Lcom/unipnp/server/ActionManager;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mActionManager:Lcom/unipnp/server/ActionManager;

    return-object v0
.end method

.method public getActivityManagerService()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDumpManager()Lcom/unipnp/server/DumpManager;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mDumpManager:Lcom/unipnp/server/DumpManager;

    return-object v0
.end method

.method public getEventManager()Lcom/unipnp/server/EventManager;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mEventManager:Lcom/unipnp/server/EventManager;

    return-object v0
.end method

.method public getFavoriteAppUsageList(III)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List<",
            "Landroid/app/unipnp/parcel/UnionAppUsageInfo;",
            ">;"
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceUsageInfoPermission(I)V

    invoke-direct {p0, p3, p2}, Lcom/unipnp/server/UnionManagerService;->queryUsageStats(II)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-lez p1, :cond_2

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v2, p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/unipnp/server/UnionManagerService;->USAGESTATS_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, v2}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/usage/UsageStats;

    invoke-direct {p0, v3}, Lcom/unipnp/server/UnionManagerService;->createAppUsageInfo(Landroid/app/usage/UsageStats;)Landroid/app/unipnp/parcel/UnionAppUsageInfo;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method public getFeatureInfo(Ljava/lang/String;)Lcom/unipnp/app/info/FeatureInfo;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unipnp/server/FeatureManager;->getFeatureInfo(Ljava/lang/String;)Lcom/unipnp/app/info/FeatureInfo;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFeatureManager()Lcom/unipnp/server/FeatureManager;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    return-object v0
.end method

.method public getLatestUsedTime(Ljava/lang/String;II)J
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceUsageInfoPermission(I)V

    invoke-direct {p0, p3, p2}, Lcom/unipnp/server/UnionManagerService;->queryUsageStats(II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    iget-object v5, v4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    return-wide v1

    :cond_2
    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public getOrinigalWatermark()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->originalWatermark:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideEnterAnimation(Ljava/lang/String;Z)Landroid/os/Bundle;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "AppAnimFeature"

    const-string v3, "getOverrideEnterAnimation"

    invoke-virtual {v0, v2, v3, v1}, Lcom/unipnp/server/FeatureManager;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/os/Bundle;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    :goto_0
    return-object v1
.end method

.method public getPackageManagerService()Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method public getTaskThumbnail(Landroid/content/Intent;)Landroid/app/unipnp/parcel/TaskThumbnail;
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    const-string v1, "getTaskThumbnail"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "SnapShotFeature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/unipnp/server/FeatureManager;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/app/unipnp/parcel/TaskThumbnail;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/app/unipnp/parcel/TaskThumbnail;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTotalFgDuration(Ljava/lang/String;II)J
    .locals 6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    return-wide v1

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceUsageInfoPermission(I)V

    invoke-direct {p0, p3, p2}, Lcom/unipnp/server/UnionManagerService;->queryUsageStats(II)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    return-wide v1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/usage/UsageStats;

    iget-object v5, v4, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v1

    return-wide v1

    :cond_2
    goto :goto_0

    :cond_3
    return-wide v1
.end method

.method public getUmsHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getUmsHandlerThread()Landroid/os/HandlerThread;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method public getWindowManagerService()Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method public ifNeedDelayedStart(Ljava/lang/String;)I
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    const-string v1, "ifNeedDelayedStart"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "ChildProcessDelayedStartFeature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/unipnp/server/FeatureManager;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isFeatureExist(I)Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/FeatureManager;->getFeatureById(I)Lcom/unipnp/app/AbsBaseFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSystemReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipnp/server/UnionManagerService;->mSystemReady:Z

    return v0
.end method

.method public isUmsReady()Z
    .locals 1

    iget-boolean v0, p0, Lcom/unipnp/server/UnionManagerService;->mServiceReady:Z

    return v0
.end method

.method public notifyFeatureXmllLoaded(Z)V
    .locals 1

    const-class v0, Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0, p1}, Lcom/unipnp/app/absclass/UnisocProxyManagerInternal;->notifyFeatureXmllLoaded(Z)V

    return-void
.end method

.method public onSystemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 3

    iput-object p1, p0, Lcom/unipnp/server/UnionManagerService;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/unipnp/server/UnionManagerService;->mPms:Lcom/android/server/pm/PackageManagerService;

    iput-object p3, p0, Lcom/unipnp/server/UnionManagerService;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    invoke-virtual {v0}, Lcom/unipnp/server/FeatureManager;->onSystemReady()V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {v0}, Lcom/unipnp/server/EventManager;->onSystemReady()V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mActionManager:Lcom/unipnp/server/ActionManager;

    invoke-virtual {v0}, Lcom/unipnp/server/ActionManager;->onSystemReady()V

    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unipnp/server/UnionManagerService;->mSystemReady:Z

    sget-object v0, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cpu utilisation monitor disabled ? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/unipnp/server/UnionManagerService;->CPU_UTILISATION_MONITOR_DISABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    new-instance v1, Lcom/unipnp/server/monitor/CpuUtilisationMonitor;

    iget-object v2, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/unipnp/server/monitor/CpuUtilisationMonitor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mCpuUtilisationMonitor:Lcom/unipnp/server/monitor/CpuUtilisationMonitor;

    :cond_0
    sget-boolean v1, Lcom/unipnp/server/UnionManagerService;->SCREENOFF_HIGH_CURRENT_MONITOR_ENABLE:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mScreenOffHighCurrentMonitor:Lcom/unipnp/server/monitor/ScreenOffHighCurrentMonitor;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/unipnp/server/UnionManagerService;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-static {v1, v2}, Lcom/unipnp/server/monitor/ScreenOffHighCurrentMonitor;->getInstance(Landroid/content/Context;Lcom/unipnp/server/EventManager;)Lcom/unipnp/server/monitor/ScreenOffHighCurrentMonitor;

    move-result-object v1

    iput-object v1, p0, Lcom/unipnp/server/UnionManagerService;->mScreenOffHighCurrentMonitor:Lcom/unipnp/server/monitor/ScreenOffHighCurrentMonitor;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new ScreenOffHighCurrentMonitor, : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unipnp/server/UnionManagerService;->mScreenOffHighCurrentMonitor:Lcom/unipnp/server/monitor/ScreenOffHighCurrentMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "/proc/sys/vm/watermark_scale_factor"

    invoke-direct {p0, v1}, Lcom/unipnp/server/UnionManagerService;->readOriginalWatermark(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unipnp/server/UnionManagerService;->originalWatermark:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnipnpManagerService readOriginalWatermark: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/unipnp/server/UnionManagerService;->originalWatermark:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public registerCpuUtilisationListener(Landroid/app/unipnp/parcel/CpuUtilisationListener;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mCpuUtilisationMonitor:Lcom/unipnp/server/monitor/CpuUtilisationMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unipnp/server/monitor/CpuUtilisationMonitor;->registerListener(Landroid/app/unipnp/parcel/CpuUtilisationListener;)V

    :cond_0
    return-void
.end method

.method public reportEvent(Landroid/app/unipnp/parcel/UniEventData;)V
    .locals 1

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mEventManager:Lcom/unipnp/server/EventManager;

    invoke-virtual {v0, p1}, Lcom/unipnp/server/EventManager;->onReportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    return-void
.end method

.method public reportNavEvent(Ljava/lang/String;IIII)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data2"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data3"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "data4"

    invoke-virtual {v0, v1, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/app/unipnp/parcel/UniEventData;->obtain(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/unipnp/parcel/UniEventData;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/unipnp/server/UnionManagerService;->reportEvent(Landroid/app/unipnp/parcel/UniEventData;)V

    return-void
.end method

.method public scheduleBoostRRForApp(Z)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    :try_start_0
    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mActionManager:Lcom/unipnp/server/ActionManager;

    invoke-virtual {v0}, Lcom/unipnp/server/ActionManager;->getProcessSched()Lcom/unipnp/server/action/ProcessSched;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/unipnp/server/action/ProcessSched;->scheduleBoostRRForApp(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    const-string v2, "scheduleBoostRRForApp error"

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public scheduleBoostRRForAppName(ZLjava/lang/String;I)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    :try_start_0
    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mActionManager:Lcom/unipnp/server/ActionManager;

    invoke-virtual {v0}, Lcom/unipnp/server/ActionManager;->getProcessSched()Lcom/unipnp/server/action/ProcessSched;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/unipnp/server/action/ProcessSched;->scheduleBoostRRForAppName(ZLjava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    const-string v2, "scheduleBoostRRForApp error"

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public scheduleBoostRRForThread(ILjava/lang/String;Z)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    :try_start_0
    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mActionManager:Lcom/unipnp/server/ActionManager;

    invoke-virtual {v0}, Lcom/unipnp/server/ActionManager;->getProcessSched()Lcom/unipnp/server/action/ProcessSched;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/unipnp/server/action/ProcessSched;->scheduleBoostRRForThread(ILjava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    const-string v2, "scheduleBoostRRForApp error"

    invoke-static {v1, v2}, Lcom/unipnp/app/Ulog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public testHello()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    sget-object v0, Lcom/unipnp/server/UnionManagerService;->TAG:Ljava/lang/String;

    const-string v1, "UnionManagerService say Hello World !"

    invoke-static {v0, v1}, Lcom/unipnp/app/Ulog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterCpuUtilisationListener(Landroid/app/unipnp/parcel/CpuUtilisationListener;)V
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mCpuUtilisationMonitor:Lcom/unipnp/server/monitor/CpuUtilisationMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/unipnp/server/monitor/CpuUtilisationMonitor;->unregisterListener(Landroid/app/unipnp/parcel/CpuUtilisationListener;)V

    :cond_0
    return-void
.end method

.method public useUnionAnim(Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/unipnp/server/UnionManagerService;->enforceManagerPermission(I)V

    iget-object v0, p0, Lcom/unipnp/server/UnionManagerService;->mFeatureManager:Lcom/unipnp/server/FeatureManager;

    const-string v1, "useUnionAnim"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "AppAnimFeature"

    invoke-virtual {v0, v3, v1, v2}, Lcom/unipnp/server/FeatureManager;->exec(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
