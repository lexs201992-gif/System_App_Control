.class public Lcom/goodix/fingerprint/service/GoodixFingerprintService;
.super Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface$Stub;
.source "GoodixFingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;
    }
.end annotation


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mConfig:Lcom/goodix/fingerprint/GFConfig;

.field private mContext:Landroid/content/Context;

.field private mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

.field private mDaemonCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

.field private mDaemonExtCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;

.field private mDaemonFidoCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;

.field private mDaemonHbdCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;

.field private mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

.field private mDevice:Lcom/goodix/fingerprint/GFDevice;

.field private mDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

.field mGetConfigRetryCount:I

.field private mHandler:Landroid/os/Handler;

.field private mOpPackageName:Ljava/lang/String;

.field private mOpUseFingerprint:I

.field private mUntrustedFingerprintId:I

.field mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    new-instance v1, Lcom/goodix/fingerprint/GFConfig;

    invoke-direct {v1}, Lcom/goodix/fingerprint/GFConfig;-><init>()V

    iput-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    new-instance v1, Lcom/goodix/fingerprint/GFDevice;

    invoke-direct {v1}, Lcom/goodix/fingerprint/GFDevice;-><init>()V

    iput-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDevice:Lcom/goodix/fingerprint/GFDevice;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mOpPackageName:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mOpUseFingerprint:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUntrustedFingerprintId:I

    iput v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mGetConfigRetryCount:I

    iput v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUserId:I

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$22;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$23;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonExtCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$24;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonHbdCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$25;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonFidoCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mAppOps:Landroid/app/AppOpsManager;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getMyUserId()I

    move-result p1

    iput p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUserId:I

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getAppOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getOpUseFingerprint()I

    move-result p1

    iput p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mOpUseFingerprint:I

    invoke-static {}, Lcom/goodix/fingerprint/proxy/DaemonManager;->getInstance()Lcom/goodix/fingerprint/proxy/DaemonManager;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startGetConfigTask()V

    return-void
.end method

.method static synthetic access$100(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Lcom/goodix/fingerprint/service/ClientMonitor;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->stopClient(Lcom/goodix/fingerprint/service/ClientMonitor;Z)V

    return-void
.end method

.method static synthetic access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonFido;
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1202(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I)I
    .locals 0

    iput p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUntrustedFingerprintId:I

    return p1
.end method

.method static synthetic access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFConfig;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->isRestricted()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mOpPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemon;
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemon()Lcom/goodix/fingerprint/proxy/IGFDaemon;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemonExt()Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/GFDevice;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDevice:Lcom/goodix/fingerprint/GFDevice;

    return-object p0
.end method

.method static synthetic access$700(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemonHbd()Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Lcom/goodix/fingerprint/service/ClientMonitor;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startClient(Lcom/goodix/fingerprint/service/ClientMonitor;)I

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)Lcom/goodix/fingerprint/service/ClientMonitor;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    return-object p0
.end method

.method private canUseFingerprint(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private getAppOpPackageName()Ljava/lang/String;
    .locals 6

    const-string v0, "GoodixFingerprintService"

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getOpPackageName"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getAppOpPackageName InvocationTargetException: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "getAppOpPackageName IllegalArgumentException: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception p0

    const-string v1, "getAppOpPackageName IllegalAccessException: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception p0

    const-string v1, "getAppOpPackageName NoSuchMethodException: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object v2
.end method

.method private getFingerprintDaemon()Lcom/goodix/fingerprint/proxy/IGFDaemon;
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "getFingerprintDaemon()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/proxy/DaemonManager;->getGoodixFingerprintDaemon(Lcom/goodix/fingerprint/proxy/IGFDaemonCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemon;

    move-result-object p0

    return-object p0
.end method

.method private getFingerprintDaemonExt()Lcom/goodix/fingerprint/proxy/IGFDaemonExt;
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "getFingerprintDaemonExt()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonExtCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/proxy/DaemonManager;->getGoodixFingerprintDaemonExt(Lcom/goodix/fingerprint/proxy/IGFDaemonExtCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonExt;

    move-result-object p0

    return-object p0
.end method

.method private getFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "getFingerprintDaemonFido()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonFidoCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/proxy/DaemonManager;->getGoodixFingerprintDaemonFido(Lcom/goodix/fingerprint/proxy/IGFDaemonFidoCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    return-object p0
.end method

.method private getFingerprintDaemonHbd()Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "getFingerprintDaemonHbd()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonMgr:Lcom/goodix/fingerprint/proxy/DaemonManager;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDaemonHbdCallback:Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/proxy/DaemonManager;->getGoodixFingerprintDaemonHbd(Lcom/goodix/fingerprint/proxy/IGFDaemonHbdCallback;)Lcom/goodix/fingerprint/proxy/IGFDaemonHbd;

    move-result-object p0

    return-object p0
.end method

.method private getMyUserId()I
    .locals 4

    const-string p0, "GoodixFingerprintService"

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.UserHandle"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "myUserId"

    new-array v3, v0, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v1

    const-string v2, "getMyUserId IllegalArgumentException: "

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v2, "getMyUserId InvocationTargetException: "

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v1

    const-string v2, "getMyUserId IllegalAccessException: "

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_3
    move-exception v1

    const-string v2, "getMyUserId NoSuchMethodException: "

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_4
    move-exception v1

    const-string v2, "getMyUserId ClassNotFoundException: "

    invoke-static {p0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private getOpUseFingerprint()I
    .locals 2

    const-string p0, "GoodixFingerprintService"

    :try_start_0
    const-class v0, Landroid/app/AppOpsManager;

    const-string v1, "OP_USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception v0

    const-string v1, "getOpUseFingerprint IllegalArgumentException: "

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "getOpUseFingerprint IllegalAccessException: "

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_2
    move-exception v0

    const-string v1, "getOpUseFingerprint NoSuchFieldException: "

    invoke-static {p0, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 p0, -0x1

    return p0
.end method

.method private isRestricted()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V
    .locals 3

    const-string v0, "GoodixFingerprintService"

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->destroy()V

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eq p1, v1, :cond_0

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "expected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    invoke-virtual {v2}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Done with client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p1, "client is null!"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    :cond_2
    return-void
.end method

.method private startClient(Lcom/goodix/fingerprint/service/ClientMonitor;)I
    .locals 5

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    const/4 v1, 0x0

    const-string v2, "GoodixFingerprintService"

    if-eqz v0, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "request stop current client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->stopClient(Lcom/goodix/fingerprint/service/ClientMonitor;Z)V

    :cond_0
    if-eqz p1, :cond_1

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "starting client "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->start()I

    move-result p0

    return p0

    :cond_1
    return v1
.end method

.method private startGetConfigTask()V
    .locals 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$GetConfigCmdTask;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private stopClient(Lcom/goodix/fingerprint/service/ClientMonitor;Z)V
    .locals 3

    if-eqz p1, :cond_1

    const-string v0, "GoodixFingerprintService"

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request remove client with stop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "request remove client without stop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->stop(Z)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public authenticateFido(Landroid/os/IBinder;[B[BLcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;)I
    .locals 10

    move-object v1, p0

    const-string v0, "authenticateFido"

    const-string v2, "GoodixFingerprintService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p6

    invoke-direct {p0, v5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Calling not granted permission to use fingerprint"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-object v8, v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p4

    move v4, p5

    move-object/from16 v5, p6

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$18;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;[B[B)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    return v0
.end method

.method public cameraCapture(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "cameraCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$8;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$8;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancelDump(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "GoodixFingerprintService"

    const-string v1, "cancelDump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    const/16 v1, 0x3e9

    invoke-virtual {p0, v1, v0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->dumpCmd(I[BLjava/lang/String;)V

    return-void
.end method

.method public cancelTestCmd(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    const-string v0, "testCmd2"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "testCmd8"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "Calling not granted permission to use fingerprint"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string p2, "testCmd5"

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-nez p2, :cond_1

    const-string p0, "testCmd6"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "current client is null, can\'t cancel"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "testCmd7"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    instance-of v0, p2, Lcom/goodix/fingerprint/service/TestCmdClient;

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->getToken()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_2

    const/4 p1, 0x1

    invoke-direct {p0, p2, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->stopClient(Lcom/goodix/fingerprint/service/ClientMonitor;Z)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can\'t stop client "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " since tokens don\'t match"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "can\'t cancel non-testcmd client "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public cancelUntrustedAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->cancelTestCmd(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public cancelUntrustedEnrollment(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->cancelTestCmd(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method public dump(Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "GoodixFingerprintService"

    const-string v1, "dump"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback;

    const/16 p1, 0x3e8

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->dumpCmd(I[BLjava/lang/String;)V

    return-void
.end method

.method public dumpCmd(I[BLjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object p3, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;

    invoke-direct {v0, p0, p1, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$17;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I[B)V

    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableFfFeature(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "enableFfFeature"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$10;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$10;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableFingerprintModule(ZLjava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "enableFingerprintModule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$7;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getConfig(Ljava/lang/String;)Lcom/goodix/fingerprint/GFConfig;
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/goodix/fingerprint/GFConfig;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    invoke-direct {p1, p0}, Lcom/goodix/fingerprint/GFConfig;-><init>(Lcom/goodix/fingerprint/GFConfig;)V

    return-object p1
.end method

.method public getDevice(Ljava/lang/String;)Lcom/goodix/fingerprint/GFDevice;
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lcom/goodix/fingerprint/GFDevice;

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mDevice:Lcom/goodix/fingerprint/GFDevice;

    invoke-direct {p1, p0}, Lcom/goodix/fingerprint/GFDevice;-><init>(Lcom/goodix/fingerprint/GFDevice;)V

    return-object p1
.end method

.method public getEnrolledUntrustedFingerprint(Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p0, "GoodixFingerprintService"

    const-string p1, "Calling not granted permission to use fingerprint"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUntrustedFingerprintId:I

    return p0
.end method

.method public getIdList(Ljava/lang/String;)[I
    .locals 2

    const-string v0, "getIdList"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getIdList:no goodixfingerprintd"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const/4 p1, 0x0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/goodix/fingerprint/proxy/IGFDaemonFido;->getIdList(I)[I

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return-object v0
.end method

.method protected handleAcquired(I)V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->onAcquired(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method protected handleAuthenticated(I)V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->onAuthenticated(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method protected handleAuthenticatedFido(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->onAuthenticateFido(I[B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method protected handleEnrollResult(II)V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    iput p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUntrustedFingerprintId:I

    invoke-virtual {v0, p1, p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->onEnrollResult(II)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method protected handleError(I)V
    .locals 2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->onError(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleError(client="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/ClientMonitor;->getOwner()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "null"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", error = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GoodixFingerprintService"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected handleHbdData(II[I[I)V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/goodix/fingerprint/service/ClientMonitor;->onHbdData(II[I[I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method protected handleRemoved(I)V
    .locals 2

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUntrustedFingerprintId:I

    invoke-virtual {v0, p1}, Lcom/goodix/fingerprint/service/ClientMonitor;->onRemoved(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method protected handleTestCmd(I[B)V
    .locals 1

    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mCurrentClient:Lcom/goodix/fingerprint/service/ClientMonitor;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lcom/goodix/fingerprint/service/ClientMonitor;->onTestCmdFinish(I[B)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->removeClient(Lcom/goodix/fingerprint/service/ClientMonitor;)V

    :cond_0
    return-void
.end method

.method public hasEnrolledUntrustedFingerprint(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "GoodixFingerprintService"

    const-string p1, "Calling not granted permission to use fingerprint"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mUntrustedFingerprintId:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public invokeFidoCommand([B[B)I
    .locals 2

    const-string v0, "invokeFidoCommand"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, "invokeFidoCommand:no goodixfingerprintd"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    :try_start_0
    invoke-interface {p0, p1, p2}, Lcom/goodix/fingerprint/proxy/IGFDaemonFido;->invokeFidoCommand([B[B)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public isIdValid(ILjava/lang/String;)I
    .locals 2

    const-string v0, "isIdInvalid"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    const/4 v0, -0x1

    if-nez p2, :cond_0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->getFingerprintDaemonFido()Lcom/goodix/fingerprint/proxy/IGFDaemonFido;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "isIdInvalid:no goodixfingerprintd"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 p2, 0x0

    :try_start_0
    invoke-interface {p0, p2, p1}, Lcom/goodix/fingerprint/proxy/IGFDaemonFido;->isIdValid(II)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    return v0
.end method

.method public lockout(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$13;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$13;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public navigate(ILjava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "navigate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$5;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public pauseEnroll(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "pauseEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$20;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$20;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reset_lockout(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "reset_lockout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$14;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$14;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resumeEnroll(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "resumeEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$21;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$21;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public screenOff(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "screenOff"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$12;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$12;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public screenOn(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "screenOn"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$11;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$11;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setSafeClass(ILjava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "setSafeClass"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$4;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public startHbd(Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;)V
    .locals 8

    const-string v0, "startHbd"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p4}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "Calling not granted permission to use fingerprint"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$15;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method startTestCmd(Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)I
    .locals 13

    move-object v11, p0

    new-instance v12, Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;

    iget-object v2, v11, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->isRestricted()Z

    move-result v6

    move-object v0, v12

    move-object v1, p0

    move-object v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$1;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/content/Context;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;IZLjava/lang/String;I[BZ)V

    invoke-direct {p0, v12}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->startClient(Lcom/goodix/fingerprint/service/ClientMonitor;)I

    move-result v0

    return v0
.end method

.method public stopAuthenticateFido(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 2

    const-string v0, "cancelAuthenticateFido"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "Calling not granted permission to use fingerprint"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$19;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public stopCameraCapture(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "stopCameraCapture"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$9;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$9;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopHbd(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 2

    const-string v0, "stopHbd"

    const-string v1, "GoodixFingerprintService"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p2}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p0, "Calling not granted permission to use fingerprint"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$16;

    invoke-direct {v0, p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$16;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public stopNavigation(Ljava/lang/String;)V
    .locals 2

    const-string v0, "GoodixFingerprintService"

    const-string v1, "stopNavigation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintService$6;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$6;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    .locals 10

    move-object v1, p0

    move-object/from16 v5, p6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "testCmd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/goodix/fingerprint/Constants;->testCmdIdToString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "GoodixFingerprintService"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Calling not granted permission to use fingerprint"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, 0x19

    move v6, p2

    if-ne v0, v6, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "testCmd1"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Lcom/goodix/fingerprint/Constants;->testCmdIdToString(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v2, p1

    invoke-virtual {p0, p1, v5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->cancelTestCmd(Landroid/os/IBinder;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v2, p1

    iget-object v8, v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v9, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;

    move-object v0, v9

    move-object v1, p0

    move-object v3, p5

    move v4, p4

    move-object/from16 v5, p6

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$2;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;I[B)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public testSync(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)I
    .locals 11

    move-object v1, p0

    const-string v0, "GoodixFingerprintService"

    const-string v2, "testSync"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v5, p6

    invoke-direct {p0, v5}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->canUseFingerprint(Ljava/lang/String;)Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    return v8

    :cond_0
    iget-object v9, v1, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->mHandler:Landroid/os/Handler;

    new-instance v10, Lcom/goodix/fingerprint/service/GoodixFingerprintService$3;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p5

    move v4, p4

    move-object/from16 v5, p6

    move v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintService$3;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintService;Landroid/os/IBinder;Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback;ILjava/lang/String;I[B)V

    invoke-virtual {v9, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v8
.end method

.method public untrustedAuthenticate(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    .locals 7

    const/16 v2, 0x23

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V

    return-void
.end method

.method public untrustedEnroll(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    .locals 7

    const/16 v2, 0x22

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V

    return-void
.end method

.method public untrustedPauseEnroll(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    .locals 9

    const-string v0, "GoodixFingerprintService"

    const-string v1, "untrustedPauseEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x35

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V

    return-void
.end method

.method public untrustedRemove(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    .locals 7

    const/16 v2, 0x24

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V

    return-void
.end method

.method public untrustedResumeEnroll(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    .locals 9

    const-string v0, "GoodixFingerprintService"

    const-string v1, "untrustedResumeEnroll"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x36

    const/4 v5, 0x0

    move-object v2, p0

    move-object v3, p1

    move v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/goodix/fingerprint/service/GoodixFingerprintService;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V

    return-void
.end method
