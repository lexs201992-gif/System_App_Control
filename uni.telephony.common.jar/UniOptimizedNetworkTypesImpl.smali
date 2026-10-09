.class public Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;
.super Ljava/lang/Object;
.source "UniOptimizedNetworkTypesImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final ENGTEST_MODE:Ljava/lang/String; = "persist.vendor.radio.engtest.enable"

.field private static final ENGTEST_SA_MODE:Ljava/lang/String; = "persist.vendor.radio.engtest.sa"

.field private static final FAILED_VALUE:I = 0x1

.field public static final MSG_CLOSE_SA_MODE_DONE:I = 0x68

.field public static final MSG_GET_NETWORK_TYPE_MODEM:I = 0x69

.field public static final MSG_OPEN_SA_MODE_DONE:I = 0x67

.field public static final MSG_SET_NETWORK_TYPE_MODEM:I = 0x6a

.field private static final NSA_STATE:I = 0x0

.field private static final SA_STATE:I = 0x1

.field private static final SUCCESS_VALUE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "UniOptimizedNetworkTypesImpl"

.field private static final UNINITIALIZED_VALUE:I = -0x1

.field private static final WAIT_SHORT_TIME:I = 0x64

.field private static final WAIT_TIME:I = 0x7530

.field private static sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mMessenger:Landroid/os/Messenger;

.field private mNrNetworkTypeState:I

.field private mPhoneId:I

.field private mSetEndcResult:I

.field private mSetOptimizedNetworkTypesResult:I

.field private mSetSaResult:I

.field private mTag:Ljava/lang/String;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUniFrameworkTelephonyManager:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mHandler:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetEndcResult(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetEndcResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetOptimizedNetworkTypesResult(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetOptimizedNetworkTypesResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetSaResult(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetSaResult:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTag(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmSetEndcResult(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetEndcResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetOptimizedNetworkTypesResult(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetOptimizedNetworkTypesResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetSaResult(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetSaResult:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcalculateBaseNetworkModem(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->calculateBaseNetworkModem()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misBaseNetworkModem(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->isBaseNetworkModem(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$msetSaAndEndcForNetworkModeOptimization(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->setSaAndEndcForNetworkModeOptimization(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->sInstance:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mMessenger:Landroid/os/Messenger;

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mPhoneId:I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UniOptimizedNetworkTypesImpl-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->createHandlerThread()V

    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mHandler:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mMessenger:Landroid/os/Messenger;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->initUtilsState()V

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mUniFrameworkTelephonyManager:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    return-void
.end method

.method private calculateBaseNetworkModem()I
    .locals 8

    const/16 v0, 0x1a

    const/16 v1, 0x1c

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v2

    const-wide/32 v4, 0x804b

    and-long/2addr v4, v2

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-nez v4, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private createHandlerThread()V
    .locals 2

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OptimizedNetworkTypesSwitch"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;-><init>(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mHandler:Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$UniOptimizedNetworkTypesHandler;

    return-void
.end method

.method private initState()V
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetSaResult:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetEndcResult:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mSetOptimizedNetworkTypesResult:I

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    aget v2, v0, v1

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create tm for subId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", phoneId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mPhoneId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    :cond_0
    return-void
.end method

.method private initUtilsState()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mNrNetworkTypeState:I

    return-void
.end method

.method private isBaseNetworkModem(I)Z
    .locals 1

    const/16 v0, 0x1a

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1c

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private setSA(ILandroid/os/Messenger;I)V
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NETWORK_TYPE_REASON set sa type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mNrNetworkTypeState:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mUniFrameworkTelephonyManager:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    if-eqz v2, :cond_0

    const/4 v4, 0x1

    iget v7, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mPhoneId:I

    move v3, p1

    move-object v5, p2

    move v6, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->setSa(IILandroid/os/Messenger;II)V

    :cond_0
    return-void
.end method

.method private setSaAndEndcForNetworkModeOptimization(I)V
    .locals 3

    const/high16 v0, 0x80000

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    const-string v1, "set 5/4/3/2 auto when isSupportNetworkModeOptimization."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mMessenger:Landroid/os/Messenger;

    const/16 v1, 0x67

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->setSA(ILandroid/os/Messenger;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    const-string v1, "set 4/3/2 auto when isSupportNetworkModeOptimization."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mMessenger:Landroid/os/Messenger;

    const/16 v1, 0x68

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->setSA(ILandroid/os/Messenger;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public isLteAutoSet()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mNrNetworkTypeState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setOptimizedNetworkTypesBitmap(ILandroid/os/Message;)V
    .locals 2

    const-string v0, "persist.vendor.radio.engtest.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "persist.vendor.radio.engtest.sa"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->initState()V

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$2;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$2;-><init>(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->waitForResult(Landroid/os/Message;)V

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;->mTag:Ljava/lang/String;

    const-string v1, " Engtest is true, set testmode or sa in EngineeringMode."

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public waitForResult(Landroid/os/Message;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl$1;-><init>(Lcom/android/internal/telephony/uicc/UniOptimizedNetworkTypesImpl;Landroid/os/Message;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method
