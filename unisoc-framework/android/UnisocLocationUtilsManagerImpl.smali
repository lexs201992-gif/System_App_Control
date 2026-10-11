.class public Landroid/location/UnisocLocationUtilsManagerImpl;
.super Landroid/location/UnisocLocationUtilsManager;
.source "UnisocLocationUtilsManagerImpl.java"

# interfaces
.implements Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;,
        Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;
    }
.end annotation


# static fields
.field private static final blacklist ASSISTED_GPS_DISABLED:I = 0x2

.field private static final blacklist EMERGENCE_NUMBER:Ljava/lang/String; = "emergency_number_for_location"

.field private static final blacklist EVENT_GPS_TIME_SYNC_CHANGED:I = 0x1

.field private static final blacklist EVENT_GPS_TOAST:I = 0x2

.field private static final blacklist GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final blacklist GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final blacklist GPS_TIME_MIN_DISTANCE:F = 0.0f

.field private static final blacklist GPS_TIME_MIN_TIME:J = 0x3e8L

.field private static final blacklist GPS_TIME_OUT_DURATION:I = 0x493e0

.field private static final blacklist SETTINGS_SECURE_KEY_ASSISTED_GPS_ENABLE_OPTION:Ljava/lang/String; = "assisted_gps_enable_option"

.field private static final blacklist TAG:Ljava/lang/String;

.field private static blacklist mNIHandler:Landroid/location/UnisocGpsNetInitiatedHandler;


# instance fields
.field private volatile blacklist mCallEndElapsedRealtimeMillis:J

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEmergencyNum:[Ljava/lang/String;

.field private blacklist mGpsHandler:Landroid/os/Handler;

.field private blacklist mGpsThread:Landroid/os/HandlerThread;

.field private blacklist mGpsTimeSyncFlag:Z

.field private blacklist mGpsTimeSyncObserver:Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;

.field private blacklist mGpsTimerThread:Ljava/lang/Thread;

.field private blacklist mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private blacklist mIsGpsTimeSyncRunning:Z

.field private blacklist mIsInEmergencyCall:Z

.field private blacklist mLocationListener:Landroid/location/LocationListener;

.field private blacklist mLocationManager:Landroid/location/LocationManager;

.field private blacklist mPhoneCount:I

.field private blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGpsHandler(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmGpsTimerThread(Landroid/location/UnisocLocationUtilsManagerImpl;)Ljava/lang/Thread;
    .locals 0

    iget-object p0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimerThread:Ljava/lang/Thread;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsInEmergencyCall(Landroid/location/UnisocLocationUtilsManagerImpl;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsInEmergencyCall:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationListener(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/location/LocationListener;
    .locals 0

    iget-object p0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mLocationListener:Landroid/location/LocationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLocationManager(Landroid/location/UnisocLocationUtilsManagerImpl;)Landroid/location/LocationManager;
    .locals 0

    iget-object p0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mLocationManager:Landroid/location/LocationManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmCallEndElapsedRealtimeMillis(Landroid/location/UnisocLocationUtilsManagerImpl;J)V
    .locals 0

    iput-wide p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mCallEndElapsedRealtimeMillis:J

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsGpsTimeSyncRunning(Landroid/location/UnisocLocationUtilsManagerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsGpsTimeSyncRunning:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmIsInEmergencyCall(Landroid/location/UnisocLocationUtilsManagerImpl;Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsInEmergencyCall:Z

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mcarrierConfigChanged(Landroid/location/UnisocLocationUtilsManagerImpl;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/UnisocLocationUtilsManagerImpl;->carrierConfigChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$misCarrierMatched(Landroid/location/UnisocLocationUtilsManagerImpl;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Landroid/location/UnisocLocationUtilsManagerImpl;->isCarrierMatched(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$monGpsTimeChanged(Landroid/location/UnisocLocationUtilsManagerImpl;)V
    .locals 0

    invoke-direct {p0}, Landroid/location/UnisocLocationUtilsManagerImpl;->onGpsTimeChanged()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/location/UnisocLocationUtilsManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    :try_start_0
    const-string v0, "unisoc_gnss_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/location/UnisocLocationUtilsManager;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsGpsTimeSyncRunning:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimeSyncFlag:Z

    iput v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mPhoneCount:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mCallEndElapsedRealtimeMillis:J

    iput-boolean v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsInEmergencyCall:Z

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl$1;

    invoke-direct {v0, p0}, Landroid/location/UnisocLocationUtilsManagerImpl$1;-><init>(Landroid/location/UnisocLocationUtilsManagerImpl;)V

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl$4;

    invoke-direct {v0, p0}, Landroid/location/UnisocLocationUtilsManagerImpl$4;-><init>(Landroid/location/UnisocLocationUtilsManagerImpl;)V

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mLocationListener:Landroid/location/LocationListener;

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "UnisocLocationUtilsManagerImpl"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    return-void
.end method

.method private blacklist carrierConfigChanged(Landroid/content/Intent;)V
    .locals 8

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const-string v1, "android.telephony.extra.SUBSCRIPTION_INDEX"

    const/4 v2, -0x1

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "emergency_number_for_location"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v4

    sget-object v5, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "carrierConfigChanged, phoneId : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", emergency number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz v4, :cond_0

    iget v5, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mPhoneCount:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mEmergencyNum:[Ljava/lang/String;

    aput-object v3, v5, v4

    :cond_0
    return-void
.end method

.method private blacklist getGpsTimeSyncState()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time_gps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :catch_0
    move-exception v1

    return v0
.end method

.method private blacklist isCarrierMatched(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mPhoneCount:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mEmergencyNum:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v2, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v3, "unable to get SubId"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    iget-object v3, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    aget v2, v1, v2

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    sget-object v2, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCarrierMatched, phoneId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method private static native blacklist native_class_init()V
.end method

.method private static native blacklist native_gnss_ni_init()V
.end method

.method private static native blacklist native_inject_ni_supl_message_data([BII)V
.end method

.method private static native blacklist native_send_ni_response(II)Z
.end method

.method private static native blacklist native_set_supl_certifacate(ILjava/lang/String;Ljava/lang/String;)Z
.end method

.method private blacklist onGpsTimeChanged()V
    .locals 4

    invoke-direct {p0}, Landroid/location/UnisocLocationUtilsManagerImpl;->getGpsTimeSyncState()Z

    move-result v0

    sget-object v1, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GPS Time sync is changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    const v2, 0x80c004c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v2, 0x493e0

    invoke-direct {p0, v2, v1}, Landroid/location/UnisocLocationUtilsManagerImpl;->startUsingGpsWithTimeout(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimerThread:Ljava/lang/Thread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public static blacklist reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;II)V
    .locals 4

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notificationId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", niType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", notifyFlags: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", timeout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", defaultResponse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestorId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", text: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", requestorIdEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", textEncoding: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v0}, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    iput p0, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    iput p1, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->niType:I

    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iput-boolean v1, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    and-int/lit8 v1, p2, 0x2

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_2

    move v2, v3

    :cond_2
    iput-boolean v2, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    iput p3, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    iput p4, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    iput-object p5, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    iput-object p6, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    iput p7, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    iput p8, v0, Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    sget-object v1, Landroid/location/UnisocLocationUtilsManagerImpl;->mNIHandler:Landroid/location/UnisocGpsNetInitiatedHandler;

    invoke-virtual {v1, v0}, Landroid/location/UnisocGpsNetInitiatedHandler;->handleNiNotification(Landroid/location/UnisocGpsNetInitiatedHandler$GpsNiNotification;)V

    return-void
.end method

.method private blacklist startUsingGpsWithTimeout(ILjava/lang/String;)V
    .locals 7

    iget-boolean v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsGpsTimeSyncRunning:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "WARNING: Gps Time Sync is already run"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsGpsTimeSyncRunning:Z

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "start using GPS for GPS time sync timeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeoutMsg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/location/LocationManager;

    iput-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mLocationManager:Landroid/location/LocationManager;

    const-string v2, "gps"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    iget-object v6, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mLocationListener:Landroid/location/LocationListener;

    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl$3;

    invoke-direct {v0, p0, p1, p2}, Landroid/location/UnisocLocationUtilsManagerImpl$3;-><init>(Landroid/location/UnisocLocationUtilsManagerImpl;ILjava/lang/String;)V

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimerThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public blacklist getPositionMode()I
    .locals 5

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enable_option"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get the agps enable option is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public blacklist init()V
    .locals 3

    :try_start_0
    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->native_class_init()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mPhoneCount:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mEmergencyNum:[Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    new-instance v0, Landroid/location/UnisocGpsNetInitiatedHandler;

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/location/UnisocLocationUtilsManagerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Landroid/location/UnisocLocationUtilsManagerImpl$$ExternalSyntheticLambda0;-><init>(Landroid/location/UnisocLocationUtilsManagerImpl;)V

    invoke-direct {v0, v1, v2}, Landroid/location/UnisocGpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/UnisocGpsNetInitiatedHandler$INetInitiatedListener;)V

    sput-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->mNIHandler:Landroid/location/UnisocGpsNetInitiatedHandler;

    return-void
.end method

.method public blacklist initGnssNi()V
    .locals 1

    :try_start_0
    invoke-static {}, Landroid/location/UnisocLocationUtilsManagerImpl;->native_gnss_ni_init()V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist injectNiSuplMessageData([BII)V
    .locals 1

    :try_start_0
    invoke-static {p1, p2, p3}, Landroid/location/UnisocLocationUtilsManagerImpl;->native_inject_ni_supl_message_data([BII)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist isInEmergency(J)Z
    .locals 7

    iget-wide v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mCallEndElapsedRealtimeMillis:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mCallEndElapsedRealtimeMillis:J

    sub-long/2addr v3, v5

    cmp-long v0, v3, p1

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-boolean v3, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mIsInEmergencyCall:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    return v1
.end method

.method public blacklist isSupportAgpsSetting()Z
    .locals 2

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x8030000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportGnssNi()Z
    .locals 2

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x803002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist isSupportGpsTimeSync()Z
    .locals 2

    iget-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x803002b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public blacklist registerPhoneStateListener()V
    .locals 3

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "registerPhoneStateListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl$2;

    invoke-direct {v0, p0}, Landroid/location/UnisocLocationUtilsManagerImpl$2;-><init>(Landroid/location/UnisocLocationUtilsManagerImpl;)V

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_0

    const/16 v2, 0x20

    invoke-virtual {v1, v0, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method public blacklist sendNiResponse(II)V
    .locals 3

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendNiResponse: notifId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", userResponse = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {p1, p2}, Landroid/location/UnisocLocationUtilsManagerImpl;->native_send_ni_response(II)Z
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public blacklist sendNiResponseInternal(II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/location/UnisocLocationUtilsManagerImpl;->sendNiResponse(II)V

    return-void
.end method

.method public blacklist setGpsTimeSyncFlag(Z)V
    .locals 3

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setGpsTimeSyncFlag flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimeSyncFlag:Z

    return-void
.end method

.method public blacklist setGpsTimeSyncObserver()V
    .locals 3

    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "Add GPS time sync handler and looper."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/location/UnisocLocationUtilsManagerImpl$GpsHandler;-><init>(Landroid/location/UnisocLocationUtilsManagerImpl;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsHandler:Landroid/os/Handler;

    new-instance v0, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;-><init>(Landroid/os/Handler;I)V

    iput-object v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimeSyncObserver:Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;

    iget-object v1, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/location/UnisocLocationUtilsManagerImpl$GpsTimeSyncObserver;->observe(Landroid/content/Context;)V

    return-void
.end method

.method public blacklist setLocationUpdatesTime(ZLandroid/location/Location;)V
    .locals 9

    iget-boolean v0, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimeSyncFlag:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    invoke-direct {p0}, Landroid/location/UnisocLocationUtilsManagerImpl;->getGpsTimeSyncState()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long v5, v3, v5

    const-wide/32 v7, 0x7fffffff

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    invoke-static {v3, v4}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v5, :cond_0

    goto :goto_0

    :cond_0
    nop

    const/4 v3, 0x0

    iput-boolean v3, p0, Landroid/location/UnisocLocationUtilsManagerImpl;->mGpsTimeSyncFlag:Z

    sget-object v3, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GPS time sync successed, Auto-sync time with GPS: timestamp = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    :goto_0
    :try_start_1
    sget-object v5, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v6, "GPS time sync failed, set the current time fail."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v3

    sget-object v4, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GPS time sync failed, millis value out of the range of Calendar: timestamp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-object v0, Landroid/location/UnisocLocationUtilsManagerImpl;->TAG:Ljava/lang/String;

    const-string v1, "GPS time sync failed, Auto-sync time with GPS is disabled by user settings!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method public blacklist setSuplCertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "true"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-static {v0, p2, p3}, Landroid/location/UnisocLocationUtilsManagerImpl;->native_set_supl_certifacate(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/UnsatisfiedLinkError;->printStackTrace()V

    :cond_1
    return v1
.end method
