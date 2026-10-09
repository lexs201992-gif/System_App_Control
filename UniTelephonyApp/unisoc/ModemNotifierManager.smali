.class public Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;
.super Ljava/lang/Object;
.source "ModemNotifierManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;,
        Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;
    }
.end annotation


# static fields
.field private static final IS_DEBUGGABLE:Z

.field private static SERVICE_NAME:Ljava/lang/String; = "ISysLogControl"

.field private static sInstance:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mRemainingTimes:I

.field private mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

.field private mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

.field private resetState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmProgressDialog(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemainingTimes(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mRemainingTimes:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmProgressDialog(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;Landroid/app/ProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mProgressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemainingTimes(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mRemainingTimes:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputresetState(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mCPLogControlThroughAidl(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->CPLogControlThroughAidl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mCPLogControlThroughHidl(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->CPLogControlThroughHidl()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetResetState(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->getResetState(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideNotification(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->hideNotification(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendModemStatBroadcast(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->sendModemStatBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowNotification(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->showNotification(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->IS_DEBUGGABLE:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mRemainingTimes:I

    new-instance v0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$4;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$4;-><init>(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)V

    iput-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mHandler:Landroid/os/Handler;

    const-string v0, "ModemNotifierManager"

    const-string v1, "ModemNotifierManager init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->CPLogControlThroughAidl()V

    return-void
.end method

.method private CPLogControlThroughAidl()V
    .locals 4

    const-string v0, "ModemNotifierManager"

    :try_start_0
    const-string v1, "vendor.sprd.hardware.cplog_svc.ISysLogControl/default"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lvendor/sprd/hardware/cplog_svc/ISysLogControl$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    if-nez v1, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v1, "get aidl service ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->subscribeSubsystemDumpStateThrougthAidl()V

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->setNotificationThrougthAidl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception get service "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private CPLogControlThroughHidl()V
    .locals 2

    const-string v0, "ModemNotifierManager"

    :try_start_0
    invoke-static {}, Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;->getService()Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    if-nez v1, :cond_0

    const-string p0, "get hidl service error"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v1, "get hidl service ok"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->subscribeSubsystemDumpStateThrougthHidl()V

    invoke-direct {p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->setNotificationThrougthHidl()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "Exception get hidl service error"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getResetState(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->getResetStateThrougthAidl(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->getResetStateThrougthHidl(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private getResetStateThrougthAidl(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I
    .locals 2

    const-string v0, "ModemNotifierManager"

    :try_start_0
    iget-object v1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-interface {v1, p1}, Lvendor/sprd/hardware/cplog_svc/ISysLogControl;->getSubsystemAutoReboot(I)I

    move-result p1

    iput p1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get reset state from aidl service "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get reset state from aidl service = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I

    return p0
.end method

.method private getResetStateThrougthHidl(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$RebootSubsystem;)I
    .locals 3

    const-string v0, "ModemNotifierManager"

    :try_start_0
    iget-object v1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    new-instance v2, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$3;

    invoke-direct {v2, p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$3;-><init>(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)V

    invoke-interface {v1, p1, v2}, Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;->getSubsystemAutoReboot(ILvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl$getSubsystemAutoRebootCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Reset state from hidl service "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->SERVICE_NAME:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " error"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get reset state from hidl service = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->resetState:I

    return p0
.end method

.method private hideNotification(I)V
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    return-void
.end method

.method public static init(Landroid/content/Context;)Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;
    .locals 3

    const-class v0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->sInstance:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->sInstance:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    goto :goto_0

    :cond_0
    const-string p0, "ModemNotifierManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init() called multiple times!  sInstance = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->sInstance:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->sInstance:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private sendModemStatBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendModemStatBroadcast : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ModemNotifierManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.modemassert.MODEM_STAT_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "modem_stat"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "modem_info"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    const-string p1, "com.unisoc.permission.MSSV"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private setNotificationThrougthAidl()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    new-instance v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$1;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$1;-><init>(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)V

    invoke-interface {v0, v1}, Lvendor/sprd/hardware/cplog_svc/ISysLogControl;->setNotificationCallback(Lvendor/sprd/hardware/cplog_svc/ISysLogControlCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured in setNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ModemNotifierManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setNotificationThrougthHidl()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    new-instance v1, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$2;

    invoke-direct {v1, p0}, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$2;-><init>(Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;)V

    invoke-interface {v0, v1}, Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;->setNotificationCallback(Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControlCallback;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception occured in setNotification "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ModemNotifierManager"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private showNotification(ILjava/lang/String;Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "Modem State Change"

    const-string v3, "modem_notifier"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v2, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 v4, 0x2

    new-array v4, v4, [J

    fill-array-data v4, :array_0

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    sget-object v4, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    sget-object v5, Landroid/app/Notification;->AUDIO_ATTRIBUTES_DEFAULT:Landroid/media/AudioAttributes;

    invoke-virtual {v1, v4, v5}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    const v2, 0x7f08005d

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance p2, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {p2, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v2, 0x10008000

    invoke-virtual {p2, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v2, Landroid/content/ComponentName;

    const-string v4, "com.unisoc.phone"

    const-string v5, "com.unisoc.phone.modemnotifier.ModemInfoActivity"

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v2, "notifierInfo"

    invoke-virtual {p2, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mContext:Landroid/content/Context;

    const/4 p3, 0x0

    const/high16 v2, 0x14000000

    invoke-static {p0, p3, p2, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    iget p2, p0, Landroid/app/Notification;->flags:I

    or-int/lit8 p2, p2, 0x20

    iput p2, p0, Landroid/app/Notification;->flags:I

    invoke-virtual {v0, p1, p0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x2710
    .end array-data
.end method

.method private subscribeSubsystemDumpStateThrougthAidl()V
    .locals 3

    const-string v0, "subscribeSubsystemDumpState start"

    const-string v1, "ModemNotifierManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    sget-object v2, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;->DSS_CELLULAR_MODEM:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lvendor/sprd/hardware/cplog_svc/ISysLogControl;->subscribeSubsystemDumpState(I)I

    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    sget-object v2, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;->DSS_WIFI_BT:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lvendor/sprd/hardware/cplog_svc/ISysLogControl;->subscribeSubsystemDumpState(I)I

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthAidl:Lvendor/sprd/hardware/cplog_svc/ISysLogControl;

    invoke-interface {p0}, Lvendor/sprd/hardware/cplog_svc/ISysLogControl;->subscribeSubsystemStateChanged()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured in subscribeSubsystemDumpState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private subscribeSubsystemDumpStateThrougthHidl()V
    .locals 3

    const-string v0, "subscribeSubsystemDumpState start"

    const-string v1, "ModemNotifierManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    sget-object v2, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;->DSS_CELLULAR_MODEM:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    invoke-interface {v0, v2}, Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;->subscribeSubsystemDumpState(I)I

    iget-object p0, p0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager;->mSysLogServiceThrougthHidl:Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;

    sget-object v0, Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;->DSS_WIFI_BT:Lcom/unisoc/phone/modemnotifier/ModemNotifierManager$DumpSubsystem;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    invoke-interface {p0, v0}, Lvendor/sprd/hardware/cplog_svc/V1_0/ISysLogControl;->subscribeSubsystemDumpState(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occured in subscribeSubsystemDumpState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
