.class public Lcom/unisoc/internal/app/ShutdownCountdownActivity;
.super Landroid/app/Activity;
.source "ShutdownCountdownActivity.java"


# static fields
.field private static final blacklist PROCESS_STATUS_IDLE:I = 0x0

.field private static final blacklist PROCESS_STATUS_RUNNING:I = 0x1

.field private static final blacklist SHUTDOWN_FOR_OVERHEAT_FLAG:I = 0x1

.field private static final blacklist TAG:Ljava/lang/String; = "ShutdownCountdownActivity"

.field static blacklist sSingleInstance:Z


# instance fields
.field private blacklist mDialog:Landroid/app/AlertDialog;

.field private blacklist mHandler:Landroid/os/Handler;

.field private blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mPm:Landroid/os/IPowerManager;

.field private blacklist mSeconds:I

.field private blacklist mSecondsForOverheat:I

.field private blacklist mShutdownAction:Ljava/lang/Runnable;

.field private blacklist mShutdownForOverheat:Ljava/lang/Runnable;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private blacklist mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPm(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Landroid/os/IPowerManager;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mPm:Landroid/os/IPowerManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSeconds:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSecondsForOverheat(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)I
    .locals 0

    iget p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShutdownAction(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmShutdownForOverheat(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSeconds(Lcom/unisoc/internal/app/ShutdownCountdownActivity;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSeconds:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmSecondsForOverheat(Lcom/unisoc/internal/app/ShutdownCountdownActivity;I)V
    .locals 0

    iput p1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mgetImportVariables(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getImportVariables()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetSecondsForDialog(Lcom/unisoc/internal/app/ShutdownCountdownActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->setSecondsForDialog(II)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/16 v0, 0xf

    iput v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSeconds:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    new-instance v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;

    invoke-direct {v0, p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity$1;-><init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)V

    iput-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;

    invoke-direct {v0, p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity$2;-><init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)V

    iput-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    new-instance v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity$3;

    invoke-direct {v0, p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity$3;-><init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)V

    iput-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    return-void
.end method

.method private blacklist getImportVariables()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sSingleInstance = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mDialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHandler = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mShutdownAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setSecondsForDialog(II)V
    .locals 3

    if-lez p1, :cond_0

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p2, p1, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    const v1, 0x10408b0

    invoke-virtual {p0, v1}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private blacklist setSelfProtectStatus(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setSelfProtectStatus to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCountdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-interface {v0, v2, p1}, Landroid/app/IActivityManager;->setProcessProtectStatusByPid(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Failed to setSelfProtectStatus"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method protected whitelist onCreate(Landroid/os/Bundle;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getImportVariables()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCountdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "already has ShutdownCountdownActivity, exit onCreate!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    invoke-virtual {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): Action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "phone"

    invoke-virtual {p0, v4}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v6, 0x20

    invoke-virtual {v4, v5, v6}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    const-string v4, "power"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v5

    iput-object v5, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mPm:Landroid/os/IPowerManager;

    invoke-virtual {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x680080

    invoke-virtual {v5, v6}, Landroid/view/Window;->addFlags(I)V

    invoke-virtual {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {p0, v4}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    const-string v5, "ShutdownActivity"

    invoke-virtual {v4, v0, v5}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-string v5, "Countdown dialog need power wake lock to show countdown normally ,acquire mWakeLock"

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    const/16 v5, 0x10

    if-ne v1, v5, :cond_1

    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v5, 0x103023b

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    const v5, 0x1030227

    invoke-direct {v1, p0, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    :goto_0
    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    const v5, 0x1040807

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setTitle(I)V

    const-string v1, "ShutdownDueToOverheat"

    const/4 v5, 0x0

    invoke-virtual {v2, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-wide/16 v6, 0x3e8

    const/16 v8, 0x7d9

    const-string v9, "ShutdownTiming"

    if-ne v1, v0, :cond_2

    iget v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSecondsForOverheat:I

    const/high16 v10, 0x80b0000

    invoke-direct {p0, v1, v10}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->setSecondsForDialog(II)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mSeconds:I

    const v10, 0x80b0001

    invoke-direct {p0, v1, v10}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->setSecondsForDialog(II)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    const/high16 v10, 0x1040000

    invoke-virtual {p0, v10}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    new-instance v11, Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;

    invoke-direct {v11, p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity$4;-><init>(Lcom/unisoc/internal/app/ShutdownCountdownActivity;)V

    const/4 v12, -0x3

    invoke-virtual {v1, v12, v10, v11}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v8}, Landroid/view/Window;->setType(I)V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    invoke-virtual {v1, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    invoke-direct {p0, v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->setSelfProtectStatus(I)V

    return-void
.end method

.method protected whitelist onDestroy()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy \uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->getImportVariables()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShutdownCountdownActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mShutdownForOverheat:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "already has ShutdownCountdownActivity, exit onDestroy!"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->sSingleInstance:Z

    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mDialog:Landroid/app/AlertDialog;

    :cond_2
    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v0}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_3
    iget-object v2, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_4

    const-string v2, "Countdown dialog dismiss - release mWakeLock."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_4
    invoke-direct {p0, v0}, Lcom/unisoc/internal/app/ShutdownCountdownActivity;->setSelfProtectStatus(I)V

    return-void
.end method
