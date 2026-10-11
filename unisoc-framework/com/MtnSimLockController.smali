.class public Lcom/android/internal/telephony/simlock/MtnSimLockController;
.super Lcom/android/internal/telephony/simlock/OpSimLockController;
.source "MtnSimLockController.java"

# interfaces
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;
.implements Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MtnSimLockController"

.field private static final blacklist UNLOCK_NETWORK:I = 0x2

.field private static blacklist mInstance:Lcom/android/internal/telephony/simlock/MtnSimLockController;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEccPhoneId:I

.field private blacklist mEmergencyOnly:[Z

.field private blacklist mExpiredSim:[Z

.field private blacklist mHandled:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPlmnWhiteList:[Ljava/lang/String;

.field private blacklist mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private blacklist mSimLockVersion:I

.field private blacklist mSimNumeric:[Ljava/lang/String;

.field private blacklist mSimNumericEmpty:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSimNumericObserver:Landroid/database/ContentObserver;

.field private blacklist mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/simlock/MtnSimLockController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExpiredSim(Lcom/android/internal/telephony/simlock/MtnSimLockController;)[Z
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mExpiredSim:[Z

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimNumeric(Lcom/android/internal/telephony/simlock/MtnSimLockController;)[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumeric:[Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimNumericEmpty(Lcom/android/internal/telephony/simlock/MtnSimLockController;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericEmpty:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmEccPhoneId(Lcom/android/internal/telephony/simlock/MtnSimLockController;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEccMode(Lcom/android/internal/telephony/simlock/MtnSimLockController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->setEccMode(Z)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;-><init>(Landroid/content/Context;)V

    const-string v0, "65510"

    const-string v1, "65512"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPlmnWhiteList:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericEmpty:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mHandled:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    new-instance v0, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/internal/telephony/simlock/MtnSimLockController$1;-><init>(Lcom/android/internal/telephony/simlock/MtnSimLockController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericObserver:Landroid/database/ContentObserver;

    const-string v0, "MtnSimLockController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getInstance()Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumeric:[Ljava/lang/String;

    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mExpiredSim:[Z

    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEmergencyOnly:[Z

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->getSimLockVersion()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    new-array v0, v0, [Lcom/android/unisoc/telephony/RadioInteractorListener;

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->addSimStateChangedListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnSimStateChangedListener;)V

    invoke-virtual {p0, p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->addRiServiceBindListener(Lcom/android/internal/telephony/simlock/OpSimLockController$OnRiServiceBindListener;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_icc_operator_numeric"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static blacklist create(Landroid/content/Context;)Lcom/android/internal/telephony/simlock/MtnSimLockController;
    .locals 4

    const-class v0, Lcom/android/internal/telephony/simlock/MtnSimLockController;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    goto :goto_0

    :cond_0
    const-string v1, "MtnSimLockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/simlock/MtnSimLockController;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mInstance:Lcom/android/internal/telephony/simlock/MtnSimLockController;

    return-object v0
.end method

.method private blacklist getPresentCardCount()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private blacklist getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;

    invoke-direct {v0, p0, p1, p1}, Lcom/android/internal/telephony/simlock/MtnSimLockController$2;-><init>(Lcom/android/internal/telephony/simlock/MtnSimLockController;II)V

    return-object v0
.end method

.method private blacklist isWhiteListCard(IZ)Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const-string v2, "MtnSimLockController"

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mUniTeleMgr:Lcom/android/internal/telephony/UniFrameworkTelephonyManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isSubscriptionPersoEnabled(I)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    :cond_2
    const/4 v0, 0x0

    return v0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumeric:[Ljava/lang/String;

    aget-object v0, v0, p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isWhiteListCard: simOperatorNumeric = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    const-string v0, "isWhiteListCard: no white list"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private blacklist notifyDismissBtnUpdate(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDismissBtnUpdate: DISMISS button invisible "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "unisoc.simlockintent.action.ACTION_UPDATE_SIMLOCK_DISMISS_BUTTON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "hide_dismiss_button"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist setEccMode(Z)V
    .locals 8

    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const-string v1, "MtnSimLockController"

    if-nez v0, :cond_0

    const-string v0, "setEccMode: invalid phoneId"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    const/4 v4, 0x1

    if-eq v0, v2, :cond_1

    if-ne v0, v3, :cond_2

    :cond_1
    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    if-eq v0, v4, :cond_2

    return-void

    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->isWhiteListCard(I)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setEccMode "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " for sim "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v5, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    add-int/2addr v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    const/4 v2, 0x0

    if-nez v1, :cond_3

    move v5, v4

    goto :goto_0

    :cond_3
    move v5, v2

    :goto_0
    iget-object v6, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEmergencyOnly:[Z

    aget-boolean v1, v6, v1

    if-nez v1, :cond_4

    if-eqz p1, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mExpiredSim:[Z

    aget-boolean v6, v6, v5

    if-nez v6, :cond_5

    :cond_4
    if-eqz v1, :cond_7

    if-nez p1, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const/4 v6, 0x0

    iget v7, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    invoke-virtual {v1, p1, v6, v2, v7}, Lcom/android/unisoc/telephony/RadioInteractor;->setEmergencyOnly(ZLandroid/os/Messenger;II)V

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEmergencyOnly:[Z

    iget v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    aput-boolean p1, v1, v2

    iget v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    if-eq v1, v3, :cond_6

    const/4 v2, 0x5

    if-ne v1, v2, :cond_7

    :cond_6
    if-eqz p1, :cond_7

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->showSimLockView(Z)V

    :cond_7
    return-void
.end method

.method private blacklist showSimLockView(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showSimLockView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "unisoc.simlockintent.action.UPDATE_SIMLOCK_VISIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "show_simlock"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hide_dismiss_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const-string v1, "simlock_status"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    const-string v2, "unisoc.permission.SIMLOCK_UPDATE"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public blacklist addWhiteList(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/simlock/OpSimLockController;->addWhiteList(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist getOpPreferredPrimaryCard()I
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOpPreferredPrimaryCard: current primary card "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MtnSimLockController"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->isWhiteListCard(I)Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v2, v4, :cond_3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->isWhiteListCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOpPreferredPrimaryCard: return "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public blacklist getRestrictedNetworkType(I)I
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    return v0
.end method

.method public blacklist isDefaultDataCardSwitchAllowed()Z
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    const/4 v2, 0x4

    if-eq v0, v2, :cond_5

    const/4 v2, 0x5

    if-ne v0, v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget v4, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->isWhiteListCard(I)Z

    move-result v4

    if-eqz v4, :cond_2

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ne v2, v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    move v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDefaultDataCardSwitchAllowed: whiteListCount = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", return "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "MtnSimLockController"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_5
    :goto_2
    return v1
.end method

.method public blacklist isWhiteListCard(I)Z
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWhiteListCard for phoneId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->getSimLockStatus(II)I

    move-result v0

    if-ne v0, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    nop

    :goto_0
    move v0, v2

    if-nez v0, :cond_1

    const-string v2, "isWhiteListCard: not simlock state, return true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->isWhiteListCard(IZ)Z

    move-result v1

    return v1
.end method

.method public blacklist onAllSimsDetectedEvent(Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAllSimsDetectedEvent: isIccChanged"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/SimStateTracker;->isAnySimNetworkLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    iget v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_4

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->getPresentCardCount()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v3}, Lcom/android/internal/telephony/SimStateTracker;->isAllSimNetworkLocked()Z

    move-result v3

    :cond_3
    move v0, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cardCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", hideDismissBtn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->notifyDismissBtnUpdate(Z)V

    :cond_5
    return-void
.end method

.method public blacklist onRiServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    const-string v0, "onRiServiceConnected"

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->getSimlockWhitelist(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->addWhiteList(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->simLockConfigMatch()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simlock config match: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v4

    aput-object v4, v2, v1

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v4, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v4, v4, v1

    const v5, 0x8000

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public blacklist onRiServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    const-string v0, "MtnSimLockController"

    const-string v1, "onRiServiceDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPhoneCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mRadioInteractorCallbackListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public blacklist onSimHotSwapedEvent(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimHotSwapedEvent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public blacklist onSimStateChangedForSlotEvent(ILjava/lang/String;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSimStateChangedForSlotEvent: phoneId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", simState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MtnSimLockController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "READY"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericEmpty:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobile_icc_operator_numeric"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumeric:[Ljava/lang/String;

    aput-object v4, v5, p1

    iget-object v5, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericEmpty:Landroid/util/SparseArray;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, p1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sim ready, sim numeric in database:  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumeric:[Ljava/lang/String;

    aget-object v6, v6, p1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSimNumericEmpty put <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", false>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    move v3, v2

    :cond_1
    move v1, v3

    iget-object v3, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mExpiredSim:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    iput p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->setEccMode(Z)V

    goto :goto_0

    :cond_3
    if-eqz v0, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericEmpty:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    :goto_0
    goto :goto_3

    :cond_5
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim ready, wait for sim numeric int database, mSimNumericEmpty put <"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", true>"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimNumericEmpty:Landroid/util/SparseArray;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iput p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    goto :goto_3

    :cond_6
    const-string v0, "ABSENT"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEmergencyOnly:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_7

    iput p1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->setEccMode(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEmergencyOnly:[Z

    aput-boolean v3, v0, p1

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mExpiredSim:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_9

    if-nez p1, :cond_8

    goto :goto_2

    :cond_8
    move v2, v3

    :goto_2
    iput v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mEccPhoneId:I

    :cond_9
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->setEccMode(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mExpiredSim:[Z

    aput-boolean v3, v0, p1

    goto :goto_4

    :cond_a
    :goto_3
    nop

    :goto_4
    return-void
.end method

.method public blacklist restrictedNetworkTypeNeeded(I)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockConfigMatch:Z

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    if-ne p1, v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->isWhiteListCard(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimStateTracker:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/SimStateTracker;->isAllSimLoaded()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "MtnSimLockController"

    const-string v2, "restrictedNetworkTypeNeeded: return true"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    return v0

    :cond_3
    :goto_0
    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public blacklist simLockConfigMatch()Z
    .locals 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mPlmnWhiteList:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-string v5, "MtnSimLockController"

    if-ge v4, v2, :cond_1

    aget-object v6, v1, v4

    iget-object v7, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockWhiteLists:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v0, 0x0

    const-string v1, "simLockConfigMatch: whitelist plmn not match!"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->getSimLockStatus(II)I

    move-result v4

    if-nez v4, :cond_2

    const/4 v1, 0x0

    const-string v4, "simLockConfigMatch: simlock is unlocked!"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/android/internal/telephony/simlock/MtnSimLockController;->getDummy2()I

    move-result v6

    iget v7, p0, Lcom/android/internal/telephony/simlock/MtnSimLockController;->mSimLockVersion:I

    if-eq v7, v2, :cond_3

    const/4 v2, 0x4

    if-ne v7, v2, :cond_4

    :cond_3
    const/4 v2, 0x7

    if-eq v6, v2, :cond_6

    :cond_4
    const/4 v2, 0x5

    if-ne v7, v2, :cond_5

    if-ne v6, v2, :cond_5

    goto :goto_2

    :cond_5
    const/4 v2, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simLockConfigMatch: wrong dummy2 "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " !"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v2, 0x1

    :goto_3
    if-eqz v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v2, :cond_7

    const/4 v3, 0x1

    :cond_7
    return v3
.end method
