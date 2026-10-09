.class public Lcom/unisoc/phone/UniTputController;
.super Ljava/lang/Object;
.source "UniTputController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;
    }
.end annotation


# static fields
.field protected static mInstance:Lcom/unisoc/phone/UniTputController;


# instance fields
.field private final PERFERMANCE_ENHANCEMENT:Ljava/lang/String;

.field private final PERMISSION_PACKAGENAME:Ljava/lang/String;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;

.field private mLastTopActivity:Ljava/lang/String;

.field private mNeedTurnOn:Z

.field private mPerformEngObserver:Landroid/database/ContentObserver;

.field private mPid:I

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mRadiointeractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mTputPackages:[Ljava/lang/String;

.field private mUpdateThread:Landroid/os/HandlerThread;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/unisoc/phone/UniTputController;)Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/UniTputController;->mHandler:Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNeedTurnOn(Lcom/unisoc/phone/UniTputController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/unisoc/phone/UniTputController;->mNeedTurnOn:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmPid(Lcom/unisoc/phone/UniTputController;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/UniTputController;->mPid:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmNeedTurnOn(Lcom/unisoc/phone/UniTputController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/unisoc/phone/UniTputController;->mNeedTurnOn:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmPid(Lcom/unisoc/phone/UniTputController;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/UniTputController;->mPid:I

    return-void
.end method

.method static bridge synthetic -$$Nest$misPerformEngOn(Lcom/unisoc/phone/UniTputController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->isPerformEngOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misTputWhiteList(Lcom/unisoc/phone/UniTputController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->isTputWhiteList()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/unisoc/phone/UniTputController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mregisterProcessObserver(Lcom/unisoc/phone/UniTputController;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->registerProcessObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOffStatus(Lcom/unisoc/phone/UniTputController;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->turnOffStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mturnOnStatus(Lcom/unisoc/phone/UniTputController;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->turnOnStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterProcessObserver(Lcom/unisoc/phone/UniTputController;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->unregisterProcessObserver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;

    const-string v0, ""

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mLastTopActivity:Ljava/lang/String;

    const-string v0, "com.google.android.permissioncontroller"

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->PERMISSION_PACKAGENAME:Ljava/lang/String;

    const-string v0, "perfermance_enhancement"

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->PERFERMANCE_ENHANCEMENT:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/unisoc/phone/UniTputController;->mNeedTurnOn:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/unisoc/phone/UniTputController;->mPid:I

    new-instance v1, Lcom/unisoc/phone/UniTputController$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/unisoc/phone/UniTputController$1;-><init>(Lcom/unisoc/phone/UniTputController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/unisoc/phone/UniTputController;->mPerformEngObserver:Landroid/database/ContentObserver;

    iput-object p1, p0, Lcom/unisoc/phone/UniTputController;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {v1, p1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/unisoc/phone/UniTputController;->mRadiointeractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/unisoc/phone/UniTputController;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    iput-object v1, p0, Lcom/unisoc/phone/UniTputController;->mActivityManager:Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/unisoc/phone/UniTputController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x801003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/phone/UniTputController;->mTputPackages:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->createUpdateThread()V

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->isPerformEngOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/unisoc/phone/UniTputController;->registerProcessObserver()V

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/unisoc/phone/UniTputController;->mPerformEngObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private createUpdateThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RunningState:Background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;

    iget-object v1, p0, Lcom/unisoc/phone/UniTputController;->mUpdateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;-><init>(Lcom/unisoc/phone/UniTputController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mHandler:Lcom/unisoc/phone/UniTputController$UpdateThreadHandler;

    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/unisoc/phone/UniTputController;
    .locals 3

    const-string v0, "UniTputController"

    const-string v1, "--- init ---"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/unisoc/phone/UniTputController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/phone/UniTputController;->mInstance:Lcom/unisoc/phone/UniTputController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/phone/UniTputController;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/UniTputController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unisoc/phone/UniTputController;->mInstance:Lcom/unisoc/phone/UniTputController;

    goto :goto_0

    :cond_0
    const-string p0, "UniTputController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  mInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unisoc/phone/UniTputController;->mInstance:Lcom/unisoc/phone/UniTputController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/unisoc/phone/UniTputController;->mInstance:Lcom/unisoc/phone/UniTputController;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private isPerformEngOn()Z
    .locals 2

    iget-object p0, p0, Lcom/unisoc/phone/UniTputController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "perfermance_enhancement"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isTputWhiteList()Z
    .locals 9

    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mTputPackages:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    array-length v0, v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mContext:Landroid/content/Context;

    const-string v2, "activity"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    const-string v3, "UniTputController"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "topActivity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    :cond_2
    move v5, v1

    :goto_1
    iget-object v6, p0, Lcom/unisoc/phone/UniTputController;->mTputPackages:[Ljava/lang/String;

    array-length v6, v6

    const-string v7, "com.google.android.permissioncontroller"

    if-ge v1, v6, :cond_6

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "packages = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/unisoc/phone/UniTputController;->mTputPackages:[Ljava/lang/String;

    aget-object v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    :cond_3
    iget-object v6, p0, Lcom/unisoc/phone/UniTputController;->mTputPackages:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/unisoc/phone/UniTputController;->mTputPackages:[Ljava/lang/String;

    aget-object v6, v6, v1

    iget-object v8, p0, Lcom/unisoc/phone/UniTputController;->mLastTopActivity:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    :cond_4
    move v5, v2

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_6
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "activated : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mLastTopActivity:Ljava/lang/String;

    :cond_8
    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mLastTopActivity : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/unisoc/phone/UniTputController;->mLastTopActivity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    :cond_9
    return v5

    :cond_a
    :goto_2
    return v1
.end method

.method private final logd(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UniTputController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final loge(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UniTputController"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private declared-synchronized registerProcessObserver()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    new-instance v0, Lcom/unisoc/phone/UniTputController$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniTputController$2;-><init>(Lcom/unisoc/phone/UniTputController;)V

    const-string v1, "Started to observe the foreground activity"

    invoke-direct {p0, v1}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    const-string v0, "Failed to register the process observer"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private turnOffStatus()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mRadiointeractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    const-string v0, "mRadiointeractor is null"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "AT+SPASENGMD =\"#las_set_speedtest_control\",0"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->setSupCardState(Ljava/lang/String;I)V

    return-void
.end method

.method private turnOnStatus()V
    .locals 2

    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mRadiointeractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    const-string v0, "mRadiointeractor is null"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "AT+SPASENGMD =\"#las_set_speedtest_control\",1"

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->setSupCardState(Ljava/lang/String;I)V

    return-void
.end method

.method private declared-synchronized unregisterProcessObserver()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "unregister the ProcessObserver"

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTputController;->logd(Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->unregisterProcessObserver(Landroid/app/IProcessObserver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/UniTputController;->mProcessObserver:Landroid/app/IProcessObserver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unregister process observer"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniTputController;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
