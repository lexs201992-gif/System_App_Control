.class public Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
.super Ljava/lang/Object;
.source "GoodixFingerprintManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$AuthenticateFidoCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$DumpCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$HbdCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;,
        Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedEnrollCancelListener;
    }
.end annotation


# static fields
.field private static mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

.field private static mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

.field private static mServiceConnection:Landroid/content/ServiceConnection;

.field private static mTestCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

.field private mGoodixFingerprintDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub;

.field private mHandler:Landroid/os/Handler;

.field private mOpPackageName:Ljava/lang/String;

.field private mUntrustedAuthenticationCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

.field private mUntrustedEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

.field private mUntrustedRemovalCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;

    invoke-direct {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;-><init>()V

    sput-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mServiceConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mOpPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedAuthenticationCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedRemovalCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;

    invoke-direct {v1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$2;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)V

    iput-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$3;

    invoke-direct {v1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$3;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)V

    iput-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintDumpCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintDumpCallback$Stub;

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;

    invoke-direct {v1, p0, p1, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$MyHandler;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Landroid/content/Context;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;)V

    iput-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mOpPackageName:Ljava/lang/String;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->initService()V

    return-void
.end method

.method static synthetic access$000(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->cancelUntrustedEnrollment()V

    return-void
.end method

.method static synthetic access$1000(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAcquiredString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedAuthenticationCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getErrorString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedRemovalCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$DumpCallback;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$HbdCallback;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$200(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$AuthenticateFidoCallback;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic access$402(Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;)Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;
    .locals 0

    sput-object p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    return-object p0
.end method

.method static synthetic access$500()Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;
    .locals 1

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mTestCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    return-object v0
.end method

.method static synthetic access$900(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;
    .locals 0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    return-object p0
.end method

.method private cancelUntrustedEnrollment()V
    .locals 3

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-virtual {v1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->cancelUntrustedEnrollment(Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GoodixFingerprintManager"

    const-string v0, "Remote exception while canceling enrollment"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private getAcquiredString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_4

    const/4 v1, 0x3

    if-eq p1, v1, :cond_3

    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    const/4 v1, 0x5

    if-eq p1, v1, :cond_1

    const/16 v1, 0x3e8

    if-lt p1, v1, :cond_0

    sub-int/2addr p1, v1

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/goodix/fingerprint/lib/R$array;->fingerprint_acquired_vendor:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    if-ge p1, v1, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    return-object v0

    :cond_1
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_acquired_too_fast:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_acquired_too_slow:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_acquired_imager_dirty:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_acquired_insufficient:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_acquired_partial:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    return-object v0
.end method

.method private getAppOpPackageName()Ljava/lang/String;
    .locals 6

    const-string v0, "GoodixFingerprintManager"

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

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

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    new-array v3, v4, [Ljava/lang/Object;

    invoke-virtual {v1, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, p0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "getAppOpPackageName IllegalArgumentException: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception p0

    const-string v1, "getAppOpPackageName InvocationTargetException: "

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

.method private getErrorString(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_6

    const/4 v0, 0x2

    if-eq p1, v0, :cond_5

    const/4 v0, 0x3

    if-eq p1, v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_3

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x7

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-lt p1, v0, :cond_0

    sub-int/2addr p1, v0

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/goodix/fingerprint/lib/R$array;->fingerprint_error_vendor:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-object p0, p0, p1

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_error_lockout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_error_canceled:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_error_no_space:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_error_timeout:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_error_unable_to_process:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_6
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget p1, Lcom/goodix/fingerprint/lib/R$string;->fingerprint_error_hw_not_available:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFingerprintManager(Landroid/content/Context;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
    .locals 1

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-direct {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    :cond_0
    sget-object p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    return-object p0
.end method

.method private getMyUserId()I
    .locals 4

    const-string p0, "GoodixFingerprintManager"

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

.method private initService()V
    .locals 9

    const-string v0, "GoodixFingerprintManager"

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.os.ServiceManager"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "success to get ServiceManager"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "getService"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-string v3, "success to get method:getService"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "com.goodix.FingerprintService"

    aput-object v4, v3, v7

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    const-string v1, "success to getService: com.goodix.FingerprintService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_0
    const-string v3, "initService IllegalArgumentException: "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_6
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_1
    const-string v3, "initService InvocationTargetException: "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_7
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_2
    const-string v3, "initService IllegalAccessException: "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_8
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_3
    const-string v3, "initService NoSuchMethodException: "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    :catch_9
    move-exception v2

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_4
    const-string v3, "initService ClassNotFoundException: "

    invoke-static {v0, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    if-nez v2, :cond_0

    const-string v1, "failed to getService: com.goodix.FingerprintService"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "try to use local service"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->startLocalService()V

    return-void

    :cond_0
    invoke-static {v2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface$Stub;->asInterface(Landroid/os/IBinder;)Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    move-result-object p0

    sput-object p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    return-void
.end method

.method private startLocalService()V
    .locals 3

    const-string v0, "GoodixFingerprintManager"

    const-string v1, "startLocalService"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/goodix/fingerprint/service/GoodixFingerprintLocalService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method


# virtual methods
.method public cancelUntrustedAuthentication()V
    .locals 3

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-virtual {v1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->cancelUntrustedAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedAuthenticationCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "GoodixFingerprintManager"

    const-string v0, "Remote exception while canceling enrollment"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public getConfig()Lcom/goodix/fingerprint/GFConfig;
    .locals 3

    const-string v0, "getConfig"

    const-string v1, "GoodixFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "getConfig null interface com.goodix.FingerprintService"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mOpPackageName:Ljava/lang/String;

    invoke-interface {v0, p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->getConfig(Ljava/lang/String;)Lcom/goodix/fingerprint/GFConfig;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v2
.end method

.method public hasEnrolledUntrustedFingerprint()Z
    .locals 2

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->hasEnrolledUntrustedFingerprint(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "GoodixFingerprintManager"

    const-string v1, "Remote exception in hasEnrolledUntrustedFingerprint: "

    invoke-static {v0, v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registerTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V
    .locals 1

    const-string p0, "registerTestCmdCallback"

    const-string v0, "GoodixFingerprintManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput-object p1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mTestCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    sget-object p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-nez p0, :cond_0

    const-string p0, "reg callback no com.goodix.FingerprintService"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_1

    const/16 p0, 0x7d0

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;->onTestCmd(ILjava/util/HashMap;)V

    :cond_1
    return-void
.end method

.method public testCmd(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    return-void
.end method

.method public testCmd(I[B)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "testCmd "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/goodix/fingerprint/Constants;->testCmdIdToString(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GoodixFingerprintManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-nez v2, :cond_0

    const-string p0, "testCmd no com.goodix.FingerprintService"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getMyUserId()I

    move-result v6

    iget-object v7, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    iget-object v8, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mOpPackageName:Ljava/lang/String;

    move v4, p1

    move-object v5, p2

    invoke-interface/range {v2 .. v8}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->testCmd(Landroid/os/IBinder;I[BILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unregisterTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V
    .locals 1

    const-string p1, "GoodixFingerprintManager"

    const-string v0, "unregisterTestCmdCallback"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mContext:Landroid/content/Context;

    sget-object p1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, p1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    sput-object p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mTestCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    return-void
.end method

.method public untrustedAuthenticate(Landroid/os/CancellationSignal;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;)V
    .locals 3

    if-eqz p2, :cond_3

    const-string v0, "GoodixFingerprintManager"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "untrusted authentication already canceled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedAuthenticationCancelListener;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;)V

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    sget-object p1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-eqz p1, :cond_2

    :try_start_0
    iput-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedAuthenticationCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-virtual {p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getMyUserId()I

    move-result v1

    iget-object v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v1, v2, p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->untrustedAuthenticate(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Remote exception while untrusted authenticating: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an untrusted authentication callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public untrustedEnroll(Landroid/os/CancellationSignal;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;)V
    .locals 3

    if-eqz p2, :cond_3

    const-string v0, "GoodixFingerprintManager"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "untrusted enrollment already canceled"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedEnrollCancelListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager$OnUntrustedEnrollCancelListener;-><init>(Lcom/goodix/fingerprint/service/GoodixFingerprintManager;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$1;)V

    invoke-virtual {p1, v1}, Landroid/os/CancellationSignal;->setOnCancelListener(Landroid/os/CancellationSignal$OnCancelListener;)V

    :cond_1
    sget-object p1, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-eqz p1, :cond_2

    :try_start_0
    iput-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    iget-object p2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-virtual {p2}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getMyUserId()I

    move-result v1

    iget-object v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p2, v1, v2, p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->untrustedEnroll(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "Remote exception in enroll: "

    invoke-static {v0, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must supply an untrusted enrollment callback"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public untrustedRemove(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;)V
    .locals 3

    sget-object v0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mIGoodixFingerprintInterface:Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;

    if-eqz v0, :cond_0

    :try_start_0
    iput-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mUntrustedRemovalCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;

    iget-object p1, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-virtual {p1}, Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getMyUserId()I

    move-result v1

    iget-object v2, p0, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->mGoodixFingerprintCallback:Lcom/goodix/fingerprint/service/IGoodixFingerprintCallback$Stub;

    invoke-direct {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getAppOpPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p1, v1, v2, p0}, Lcom/goodix/fingerprint/service/IGoodixFingerprintInterface;->untrustedRemove(Landroid/os/IBinder;ILcom/goodix/fingerprint/service/IGoodixFingerprintCallback;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GoodixFingerprintManager"

    const-string v0, "Remote exception in remove: "

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
