.class public Lcom/android/internal/telephony/SimStateTracker;
.super Ljava/lang/Object;
.source "SimStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;,
        Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;,
        Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;
    }
.end annotation


# static fields
.field public static final blacklist ACTION_APN_SETTINGS:Ljava/lang/String; = "android.settings.APN_SETTINGS"

.field public static final blacklist ACTION_CONNECTIVITY_CHANGE:Ljava/lang/String; = "android.dmyk.net.conn.CONNECTIVITY_CHANGE"

.field public static final blacklist ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "com.dmyk.android.telephony.action.SIM_STATE_CHANGED"

.field private static blacklist DBG:Z = false

.field public static final blacklist DEFAULT_NOTIFICATION_ID_SIM:I = 0x3e8

.field public static final blacklist EXTRA_SHOW_FRAGMENT_AS_SUBSETTING:Ljava/lang/String; = ":settings:show_fragment_as_subsetting"

.field public static final blacklist EXTRA_SIM_PHONEID:Ljava/lang/String; = "com.dmyk.android.telephony.extra.SIM_PHONEID"

.field public static final blacklist EXTRA_SIM_STATE:Ljava/lang/String; = "com.dmyk.android.telephony.extra.SIM_STATE"

.field public static final blacklist ICC_ID:Ljava/lang/String; = "icc_id"

.field public static final blacklist ICC_ID_PREFS_NAME:Ljava/lang/String; = "msms.info.iccid"

.field private static final blacklist NO_SIM_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "no_sim_notification_channel_id"

.field public static final blacklist NO_SIM_NOTIFICATION_ID:I = 0x3f2

.field public static final blacklist PACKAGE_NAME:Ljava/lang/String; = "com.sprd.opm"

.field static final blacklist PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

.field private static final blacklist SIM_STATE_NULL:I = -0x1

.field private static final blacklist SIM_STATE_UICC_DIABLED:I = 0x12

.field public static final blacklist SUB_ID:Ljava/lang/String; = "sub_id"

.field private static blacklist TAG:Ljava/lang/String;

.field static final blacklist URL_RESTOREAPN_USING_SUBID:Landroid/net/Uri;

.field private static blacklist mInstance:Lcom/android/internal/telephony/SimStateTracker;


# instance fields
.field private blacklist mContext:Landroid/content/Context;

.field private final blacklist mHandler:Landroid/os/Handler;

.field private blacklist mIsNotify:Z

.field private blacklist mNotificationManager:Landroid/app/NotificationManager;

.field private blacklist mNotifyPhoneId:I

.field private blacklist mNotifySubId:I

.field private blacklist mOnSimStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPhoneCount:I

.field private blacklist mPreferApnObserver:Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;

.field private blacklist mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

.field private blacklist mReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mRestoreApnObserver:Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;

.field private blacklist mShuttingDown:Z

.field private blacklist mSimState:[I

.field private blacklist mSimStateAbsentFlag:I

.field private blacklist mSimStateLoadedFlag:[I

.field private blacklist mSubMgr:Landroid/telephony/SubscriptionManager;

.field private blacklist mTeleMgr:Landroid/telephony/TelephonyManager;

.field private blacklist sPreviousLanguage:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/SimStateTracker;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHandler(Lcom/android/internal/telephony/SimStateTracker;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsNotify(Lcom/android/internal/telephony/SimStateTracker;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mIsNotify:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotificationManager(Lcom/android/internal/telephony/SimStateTracker;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifyPhoneId(Lcom/android/internal/telephony/SimStateTracker;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifyPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifySubId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSimState(Lcom/android/internal/telephony/SimStateTracker;)[I
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTeleMgr(Lcom/android/internal/telephony/SimStateTracker;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetsPreviousLanguage(Lcom/android/internal/telephony/SimStateTracker;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/SimStateTracker;->sPreviousLanguage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsNotify(Lcom/android/internal/telephony/SimStateTracker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/SimStateTracker;->mIsNotify:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotifyPhoneId(Lcom/android/internal/telephony/SimStateTracker;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifyPhoneId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmNotifySubId(Lcom/android/internal/telephony/SimStateTracker;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifySubId:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmPhoneCount(Lcom/android/internal/telephony/SimStateTracker;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmShuttingDown(Lcom/android/internal/telephony/SimStateTracker;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/SimStateTracker;->mShuttingDown:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputsPreviousLanguage(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/SimStateTracker;->sPreviousLanguage:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcreateNoSimNotification(Lcom/android/internal/telephony/SimStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/SimStateTracker;->createNoSimNotification()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlogd(Lcom/android/internal/telephony/SimStateTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$monSimStateChanged(Lcom/android/internal/telephony/SimStateTracker;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimStateTracker;->onSimStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mupdateNotification(Lcom/android/internal/telephony/SimStateTracker;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/SimStateTracker;->updateNotification(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/telephony/SimStateTracker;->DBG:Z

    const-string v0, "SimStateTracker"

    sput-object v0, Lcom/android/internal/telephony/SimStateTracker;->TAG:Ljava/lang/String;

    nop

    const-string v0, "content://telephony/carriers/preferapn_no_update/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SimStateTracker;->PREFERAPN_NO_UPDATE_URI_USING_SUBID:Landroid/net/Uri;

    nop

    const-string v0, "content://telephony/carriers/restore/subId/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/SimStateTracker;->URL_RESTOREAPN_USING_SUBID:Landroid/net/Uri;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mIsNotify:Z

    new-instance v1, Lcom/android/internal/telephony/SimStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimStateTracker$1;-><init>(Lcom/android/internal/telephony/SimStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {p1}, Lcom/android/internal/telephony/PrimarySubConfig;->init(Landroid/content/Context;)Lcom/android/internal/telephony/PrimarySubConfig;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

    iput-object p1, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mSubMgr:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;-><init>(Lcom/android/internal/telephony/SimStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPreferApnObserver:Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;

    new-instance v1, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;-><init>(Lcom/android/internal/telephony/SimStateTracker;)V

    iput-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mRestoreApnObserver:Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mPreferApnObserver:Lcom/android/internal/telephony/SimStateTracker$PreferApnChangeObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mRestoreApnObserver:Lcom/android/internal/telephony/SimStateTracker$RestoreApnChangeObserver;

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    const/4 v1, -0x1

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    iget v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateLoadedFlag:[I

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateAbsentFlag:I

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SIM_CARD_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.SIM_APPLICATION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.MULTI_SIM_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private blacklist broadcastSimStateChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.dmyk.android.telephony.action.SIM_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.sprd.opm"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "com.dmyk.android.telephony.extra.SIM_PHONEID"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "com.dmyk.android.telephony.extra.SIM_STATE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist createNoSimNotification()V
    .locals 8

    const-string v0, "createNoSimNotification "

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    const v0, 0x108008a

    new-instance v1, Landroid/app/NotificationChannel;

    const/4 v2, 0x5

    const-string v3, "no_sim_notification_channel_id"

    invoke-direct {v1, v3, v3, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    const v4, 0x10404fd

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    const v5, 0x10404fb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v6, 0x2

    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    const/16 v7, 0x3f2

    invoke-virtual {v6, v7, v5}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist getIccId(I)Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getIccId()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private blacklist getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/SimStateTracker;->TAG:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionInfo;->getPrintableId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/SimStateTracker;
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/SimStateTracker;->mInstance:Lcom/android/internal/telephony/SimStateTracker;

    return-object v0
.end method

.method private blacklist handleIccCardChanged()Z
    .locals 8

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mShuttingDown:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    const-string v2, "msms.info.iccid"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v2, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "icc_id"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimStateTracker;->getIccId(I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleIccCardChanged] lastIccId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " newIccId = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SimStateTracker;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    invoke-static {v3, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimStateTracker;->isSimLocked(I)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[handleIccCardChanged] SIM "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " changed, save new iccid: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/SimStateTracker;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_2
    return v0
.end method

.method public static blacklist init(Landroid/content/Context;)Lcom/android/internal/telephony/SimStateTracker;
    .locals 4

    sget-object v0, Lcom/android/internal/telephony/SimStateTracker;->TAG:Ljava/lang/String;

    const-string v1, "-- init --"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/internal/telephony/SimStateTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/SimStateTracker;->mInstance:Lcom/android/internal/telephony/SimStateTracker;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/internal/telephony/SimStateTracker;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/SimStateTracker;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/internal/telephony/SimStateTracker;->mInstance:Lcom/android/internal/telephony/SimStateTracker;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/SimStateTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  mInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/SimStateTracker;->mInstance:Lcom/android/internal/telephony/SimStateTracker;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/android/internal/telephony/SimStateTracker;->mInstance:Lcom/android/internal/telephony/SimStateTracker;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private blacklist isSimDetected(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v0, v0, p1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x7

    if-eq v0, v2, :cond_1

    const/16 v2, 0x12

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private blacklist isSimLocked(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v0, v0, p1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

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

.method private blacklist isUiccEnable(I)Z
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getUiccCardsInfo()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const-string v2, "uiccCardInfoList is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/SimStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v3, p1}, Lcom/android/internal/telephony/SimStateTracker$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/UiccCardInfo;

    invoke-virtual {v3}, Landroid/telephony/UiccCardInfo;->getIccId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, p1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    return v1

    :cond_2
    const-string v3, "UiccCardInfo is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    return v1
.end method

.method static synthetic blacklist lambda$isUiccEnable$0(ILandroid/telephony/UiccCardInfo;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/UiccCardInfo;->getPhysicalSlotIndex()I

    move-result v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/SimStateTracker;->DBG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/SimStateTracker;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private blacklist notifyAllSimDetected(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyAllSimDetected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PrimarySubConfig;->update()V

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;->onAllSimDetected(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist notifySimHotSwaped(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifySimHotSwaped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mPrimarySubConfig:Lcom/android/internal/telephony/PrimarySubConfig;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PrimarySubConfig;->update()V

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;

    invoke-interface {v1, p1}, Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;->onSimHotSwaped(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist onSimStateChanged(Landroid/content/Intent;)V
    .locals 11

    const-string v0, "phone"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x0

    const-string v3, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, " "

    const-string v5, "handleSimStateChanged: "

    const/4 v6, 0x0

    if-eqz v3, :cond_3

    const-string v3, "ss"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    const-string v7, "NOT_READY"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x6

    goto :goto_0

    :cond_0
    const-string v7, "READY"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x5

    goto :goto_0

    :cond_1
    const-string v7, "ABSENT"

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "simstate = ABSENT, Cancel the notification"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    iget v7, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifyPhoneId:I

    if-ne v0, v7, :cond_2

    iget-object v8, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v8, :cond_2

    add-int/lit16 v7, v7, 0x3e8

    invoke-virtual {v8, v7}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    const-string v3, "android.telephony.extra.SIM_STATE"

    invoke-virtual {p1, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    :goto_1
    if-nez v2, :cond_4

    return-void

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    if-nez v3, :cond_5

    iget v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    new-array v3, v3, [I

    iput-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    :cond_5
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v3

    if-nez v3, :cond_6

    return-void

    :cond_6
    const/4 v3, 0x6

    if-ne v2, v3, :cond_7

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->isUiccEnable(I)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "uicc is not enable"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    const/16 v2, 0x12

    :cond_7
    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v4, v3, v0

    if-ne v4, v2, :cond_8

    const-string v1, "SIM state isn\'t changed actually."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    return-void

    :cond_8
    aput v2, v3, v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimStateTracker;->isAllSimDetected()Z

    move-result v3

    const/16 v5, 0xa

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v3, :cond_c

    invoke-direct {p0}, Lcom/android/internal/telephony/SimStateTracker;->handleIccCardChanged()Z

    move-result v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "All SIM detected, ICC changed: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    if-eq v4, v1, :cond_b

    if-eq v4, v2, :cond_b

    if-eq v8, v4, :cond_9

    if-ne v8, v2, :cond_b

    :cond_9
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SIM hot swaped: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->notifySimHotSwaped(I)V

    iget v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ne v9, v7, :cond_c

    iget-object v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateLoadedFlag:[I

    aget v10, v9, v0

    if-ne v10, v1, :cond_a

    iget-object v10, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v10, v10, v0

    if-ne v5, v10, :cond_a

    aput v0, v9, v0

    :cond_a
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->broadcastSimStateChanged(I)V

    goto :goto_2

    :cond_b
    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->notifyAllSimDetected(Z)V

    :cond_c
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isAllSimAbsent: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimStateTracker;->isAllSimAbsent()Z

    move-result v9

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/SimStateTracker;->isAllSimAbsent()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSubMgr:Landroid/telephony/SubscriptionManager;

    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v3

    if-gtz v3, :cond_d

    invoke-direct {p0}, Lcom/android/internal/telephony/SimStateTracker;->createNoSimNotification()V

    goto :goto_3

    :cond_d
    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v3, :cond_e

    const/16 v9, 0x3f2

    invoke-virtual {v3, v9}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_e
    :goto_3
    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v3, v3, v0

    if-ne v8, v3, :cond_f

    iget v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateAbsentFlag:I

    shl-int v9, v8, v0

    or-int/2addr v3, v9

    iput v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateAbsentFlag:I

    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mSimStateAbsentFlag: "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateAbsentFlag:I

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    iget v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateAbsentFlag:I

    iget v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    shl-int v9, v8, v9

    sub-int/2addr v9, v8

    if-ne v3, v9, :cond_10

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->broadcastSimStateChanged(I)V

    iput v6, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateAbsentFlag:I

    :cond_10
    iget v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ne v3, v7, :cond_11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mSimStateLoadedFlag :"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateLoadedFlag:[I

    aget v6, v6, v0

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/SimStateTracker;->logd(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimStateLoadedFlag:[I

    aget v6, v3, v0

    if-ne v6, v1, :cond_11

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v1, v1, v0

    if-ne v5, v1, :cond_11

    aput v0, v3, v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->broadcastSimStateChanged(I)V

    :cond_11
    return-void
.end method

.method private blacklist updateNotification(I)V
    .locals 11

    const v0, 0x108008a

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.settings.APN_SETTINGS"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, ":settings:show_fragment_as_subsetting"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "sub_id"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    const/high16 v4, 0xc000000

    invoke-static {v2, p1, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/SimStateTracker;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "channelid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/app/NotificationChannel;

    const/4 v6, 0x5

    invoke-direct {v5, v4, v4, v6}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v6, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object v6, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v6, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x80c0058

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-static {v7, p1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x80c0057

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Builder;

    iget-object v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    const-wide/16 v9, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    iget v10, v8, Landroid/app/Notification;->flags:I

    or-int/2addr v9, v10

    iput v9, v8, Landroid/app/Notification;->flags:I

    iget v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifyPhoneId:I

    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotificationManager:Landroid/app/NotificationManager;

    iget v10, p0, Lcom/android/internal/telephony/SimStateTracker;->mNotifyPhoneId:I

    add-int/lit16 v10, v10, 0x3e8

    invoke-virtual {v9, v10, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public blacklist addOnSimStateChangedListener(Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    return-void
.end method

.method public blacklist getSimState(I)I
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v0, v0, p1

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public blacklist hasIccCard(I)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v0, v0, p1

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public blacklist hasSimLocked()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v1, v1, v0

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist isAllSimAbsent()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isAllSimDetected()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/SimStateTracker;->isSimDetected(I)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isAllSimLoaded()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v1, v1, v0

    const/16 v2, 0xa

    if-eq v2, v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isAllSimNetworkLocked()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist isAnySimNetworkLocked()Z
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    aget v1, v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist removeOnSimStateChangedListener(Lcom/android/internal/telephony/SimStateTracker$OnSimStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mOnSimStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public blacklist reset()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/SimStateTracker;->mSimState:[I

    return-void
.end method
