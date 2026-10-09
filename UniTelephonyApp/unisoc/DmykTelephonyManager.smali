.class public Lcom/android/telephony/DmykTelephonyManager;
.super Lcom/dmyk/android/telephony/IDmykTelephony$Stub;
.source "DmykTelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;,
        Lcom/android/telephony/DmykTelephonyManager$DmykHandler;,
        Lcom/android/telephony/DmykTelephonyManager$ApnChangeObserver;,
        Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/telephony/DmykTelephonyManager;


# instance fields
.field private mApnObserver:Lcom/android/telephony/DmykTelephonyManager$ApnChangeObserver;

.field private mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

.field private mBluetoothConnector:Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;

.field private final mBluetoothHandler:Landroid/os/Handler;

.field private mCameraId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEnhancedLTEObserver0:Landroid/database/ContentObserver;

.field private mEnhancedLTEObserver1:Landroid/database/ContentObserver;

.field private mFlashlightState:I

.field private mHandler:Landroid/os/Handler;

.field private mPhoneCount:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterVolteSwitchChanged0:Z

.field private mRegisterVolteSwitchChanged1:Z

.field private mTemperature:I

.field private final mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mTorchHandler:Landroid/os/Handler;

.field private mVoLTESettingObserver0:Landroid/database/ContentObserver;

.field private mVoLTESettingObserver1:Landroid/database/ContentObserver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothConnector(Lcom/android/telephony/DmykTelephonyManager;)Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;
    .locals 0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mBluetoothConnector:Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothHandler(Lcom/android/telephony/DmykTelephonyManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mBluetoothHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCameraId(Lcom/android/telephony/DmykTelephonyManager;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mCameraId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/telephony/DmykTelephonyManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFlashlightState(Lcom/android/telephony/DmykTelephonyManager;)I
    .locals 0

    iget p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mFlashlightState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/telephony/DmykTelephonyManager;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneCount(Lcom/android/telephony/DmykTelephonyManager;)I
    .locals 0

    iget p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mPhoneCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTemperature(Lcom/android/telephony/DmykTelephonyManager;)I
    .locals 0

    iget p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mTemperature:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmFlashlightState(Lcom/android/telephony/DmykTelephonyManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mFlashlightState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetMasterPhoneId(Lcom/android/telephony/DmykTelephonyManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getMasterPhoneId()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEnhanced4gLteModeSettingEnabledByUser(Lcom/android/telephony/DmykTelephonyManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->isEnhanced4gLteModeSettingEnabledByUser(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monVoLTESettingChange(Lcom/android/telephony/DmykTelephonyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->onVoLTESettingChange(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mputVoLteState(Lcom/android/telephony/DmykTelephonyManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->putVoLteState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrigisterVolteSwitchChanged(Lcom/android/telephony/DmykTelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->rigisterVolteSwitchChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendBTConnChangeBroadcastToSdk(Lcom/android/telephony/DmykTelephonyManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->sendBTConnChangeBroadcastToSdk()V

    return-void
.end method

.method private constructor <init>(Lcom/unisoc/phone/UniTelephonyGlobals;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/dmyk/android/telephony/IDmykTelephony$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mTemperature:I

    iput-boolean v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mRegisterVolteSwitchChanged0:Z

    iput-boolean v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mRegisterVolteSwitchChanged1:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mCameraId:Ljava/lang/String;

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mFlashlightState:I

    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$3;

    invoke-direct {v0, p0}, Lcom/android/telephony/DmykTelephonyManager$3;-><init>(Lcom/android/telephony/DmykTelephonyManager;)V

    iput-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/telephony/DmykTelephonyManager$4;-><init>(Lcom/android/telephony/DmykTelephonyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mEnhancedLTEObserver0:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/telephony/DmykTelephonyManager$5;-><init>(Lcom/android/telephony/DmykTelephonyManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mEnhancedLTEObserver1:Landroid/database/ContentObserver;

    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$6;

    invoke-direct {v0, p0}, Lcom/android/telephony/DmykTelephonyManager$6;-><init>(Lcom/android/telephony/DmykTelephonyManager;)V

    iput-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/telephony/DmykTelephonyManager$7;

    invoke-direct {v1, p0}, Lcom/android/telephony/DmykTelephonyManager$7;-><init>(Lcom/android/telephony/DmykTelephonyManager;)V

    iput-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mBluetoothHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

    iput-object p2, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;

    invoke-direct {p1, p0, p2}, Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;-><init>(Lcom/android/telephony/DmykTelephonyManager;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mBluetoothConnector:Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;

    invoke-virtual {p1}, Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;->setupBluetoothConnectionProxy()V

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getPhoneCount()I

    move-result p1

    iput p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mPhoneCount:I

    iget-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "battery_temperature"

    const/16 v2, 0x104

    invoke-static {p1, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mTemperature:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init mTemperature ="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mTemperature:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DmykMgr"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.dmyk.android.telephony.action.VOLTE_STATE_SETTING"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.dmyk.android.telephony.action.5G_STATE_SETTING"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/4 v2, 0x4

    invoke-virtual {p2, v0, p1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.avrcp-controller.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.sap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance p1, Lcom/android/telephony/DmykTelephonyManager$DmykHandler;

    iget-object p2, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/telephony/DmykTelephonyManager$DmykHandler;-><init>(Lcom/android/telephony/DmykTelephonyManager;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/telephony/DmykTelephonyManager$ApnChangeObserver;

    invoke-direct {p1, p0}, Lcom/android/telephony/DmykTelephonyManager$ApnChangeObserver;-><init>(Lcom/android/telephony/DmykTelephonyManager;)V

    iput-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mApnObserver:Lcom/android/telephony/DmykTelephonyManager$ApnChangeObserver;

    new-instance p1, Lcom/android/telephony/DmykTelephonyManager$1;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/telephony/DmykTelephonyManager$1;-><init>(Lcom/android/telephony/DmykTelephonyManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mVoLTESettingObserver0:Landroid/database/ContentObserver;

    new-instance p1, Lcom/android/telephony/DmykTelephonyManager$2;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, p2}, Lcom/android/telephony/DmykTelephonyManager$2;-><init>(Lcom/android/telephony/DmykTelephonyManager;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mVoLTESettingObserver1:Landroid/database/ContentObserver;

    iget-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object p2, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mApnObserver:Lcom/android/telephony/DmykTelephonyManager$ApnChangeObserver;

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "volte_dmyk_state_0"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mVoLTESettingObserver0:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "volte_dmyk_state_1"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mVoLTESettingObserver1:Landroid/database/ContentObserver;

    invoke-virtual {p1, p2, v2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->publish()V

    const-string p0, "register receiver and contentResolver"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private enforceAccessBluetoothPermission(Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "android.permission.BLUETOOTH"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private enforceAccessPhonePermission(Landroid/content/Context;)Z
    .locals 0

    if-eqz p1, :cond_1

    const-string p0, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, p0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private ensureHandler()V
    .locals 3

    const-string v0, "ensureHandler Enter"

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mTorchHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const-string v0, "ensureHandler mTorchHandler null"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/os/HandlerThread;

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mTorchHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method private getAutoBrightState()I
    .locals 2

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "screen_brightness_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private getBlueToothState()I
    .locals 0

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private getCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p0, v1

    invoke-virtual {p1, v2}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v3

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v4}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v3, v5}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private getCellIdForDM(I)I
    .locals 9

    const-string v0, "DmykMgr"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/telephony/DmykTelephonyManager;->getWorkSource(I)Landroid/os/WorkSource;

    move-result-object v7

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v6

    invoke-virtual {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getSubId(I)I

    move-result v1

    const/4 v8, -0x1

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCellIdForDM phoneId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/telephony/DmykTelephonyManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Lcom/android/internal/telephony/Phone;Landroid/os/WorkSource;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentity;

    invoke-static {p0}, Lcom/android/telephony/DmykTelephonyManager;->getCellIdFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v8

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result p1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    invoke-virtual {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p1

    const/16 v2, 0xd

    if-ne p1, v2, :cond_2

    const/16 v3, 0x3eb

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/telephony/DmykTelephonyManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Lcom/android/internal/telephony/Phone;Landroid/os/WorkSource;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v1

    if-eqz v1, :cond_1

    instance-of v1, p1, Landroid/telephony/CellInfoLte;

    if-eqz v1, :cond_1

    check-cast p1, Landroid/telephony/CellInfoLte;

    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    return p0

    :cond_2
    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/telephony/DmykTelephonyManager;->sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Lcom/android/internal/telephony/Phone;Landroid/os/WorkSource;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CellIdentity;

    invoke-static {p0}, Lcom/android/telephony/DmykTelephonyManager;->getCellIdFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v8
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NPE getCellIdForDM."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v8
.end method

.method private static getCellIdFromCellIdentity(Landroid/telephony/CellIdentity;)I
    .locals 3

    const/4 v0, -0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CellIdentity;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const/4 v2, 0x5

    if-eq v1, v2, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    check-cast p0, Landroid/telephony/CellIdentityTdscdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityTdscdma;->getCid()I

    move-result p0

    goto :goto_0

    :cond_2
    check-cast p0, Landroid/telephony/CellIdentityWcdma;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p0

    goto :goto_0

    :cond_3
    check-cast p0, Landroid/telephony/CellIdentityLte;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p0

    goto :goto_0

    :cond_4
    check-cast p0, Landroid/telephony/CellIdentityGsm;

    invoke-virtual {p0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p0

    :goto_0
    const v1, 0x7fffffff

    if-ne p0, v1, :cond_5

    goto :goto_1

    :cond_5
    move v0, p0

    :goto_1
    return v0
.end method

.method private getFlashlightState()I
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mFlashlightState:I

    const-string v1, "getFlashlightState Enter"

    const-string v2, "DmykMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v3, "camera"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/camera2/CameraManager;

    if-nez v1, :cond_0

    const-string p0, "getFlashlightState null == cameraManager"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-direct {p0, v1}, Lcom/android/telephony/DmykTelephonyManager;->tryInitCamera(Landroid/hardware/camera2/CameraManager;)V

    const-string v0, "getFlashlightState Before sleep 50ms"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v3, 0x32

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFlashlightState mFlashlightState: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/telephony/DmykTelephonyManager;->mFlashlightState:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    invoke-virtual {v1, v0}, Landroid/hardware/camera2/CameraManager;->unregisterTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;)V

    iget p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mFlashlightState:I

    return p0
.end method

.method private getFlyingState()I
    .locals 2

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private getGprsState()I
    .locals 2

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getMasterPhoneId()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->isUserDataEnabled()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getGprsState retVal : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private getGpsState()I
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "location"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getHotspotState()I
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result p0

    return p0
.end method

.method private getImsManager()Lcom/android/ims/ImsManager;
    .locals 1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getMasterPhoneId()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0
.end method

.method private getImsManagerByPhoneId(I)Lcom/android/ims/ImsManager;
    .locals 1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

    invoke-static {p0, p1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLteState()I
    .locals 2

    invoke-static {}, Lcom/android/internal/telephony/ProxyController;->getInstance()Lcom/android/internal/telephony/ProxyController;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getMasterPhoneId()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/ProxyController;->getRadioAccessFamily(I)I

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getLTEState raf = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 p0, p0, 0x1000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getMasterPhoneId()I
    .locals 0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    return p0
.end method

.method private getNotifyContentUri(Landroid/net/Uri;ZI)Landroid/net/Uri;
    .locals 0

    if-eqz p2, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, ""

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 0

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private getPhoneCount()I
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result p0

    return p0
.end method

.method private getScreenRotateState()I
    .locals 2

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "accelerometer_rotation"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private getScreenState()I
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result p0

    return p0
.end method

.method private getShockState()I
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getSilentState()I
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    if-nez p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getWifiState()I
    .locals 2

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const/4 v0, 0x2

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p0

    const/4 v1, 0x3

    if-ne v1, p0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x4

    if-eq v1, p0, :cond_2

    const/4 v0, 0x0

    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getWifiState wifiState = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "DmykMgr"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getWorkSource(I)Landroid/os/WorkSource;
    .locals 1

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0, p1, p0}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    return-object v0
.end method

.method public static init(Lcom/unisoc/phone/UniTelephonyGlobals;Landroid/content/Context;)Lcom/android/telephony/DmykTelephonyManager;
    .locals 2

    const-class v0, Lcom/android/telephony/DmykTelephonyManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/telephony/DmykTelephonyManager;->sInstance:Lcom/android/telephony/DmykTelephonyManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/telephony/DmykTelephonyManager;

    invoke-direct {v1, p0, p1}, Lcom/android/telephony/DmykTelephonyManager;-><init>(Lcom/unisoc/phone/UniTelephonyGlobals;Landroid/content/Context;)V

    sput-object v1, Lcom/android/telephony/DmykTelephonyManager;->sInstance:Lcom/android/telephony/DmykTelephonyManager;

    goto :goto_0

    :cond_0
    const-string p0, "DmykMgr"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "init() called multiple times!  sInstance: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/telephony/DmykTelephonyManager;->sInstance:Lcom/android/telephony/DmykTelephonyManager;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object p0, Lcom/android/telephony/DmykTelephonyManager;->sInstance:Lcom/android/telephony/DmykTelephonyManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isEnhanced4gLteModeSettingEnabledByUser(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getImsManagerByPhoneId(I)Lcom/android/ims/ImsManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isVolteEnabledByPlatform()Z
    .locals 0

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getImsManager()Lcom/android/ims/ImsManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform()Z

    move-result p0

    return p0
.end method

.method private onVoLTESettingChange(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVoLTESettingChange phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.dmyk.android.telephony.action.VOLTE_STATE_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.dmyk.android.telephony.extra.SIM_PHONEID"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.sprd.opm"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x1000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string p1, "com.dm.permission.OP_MANAGER_COMMON"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    const-string p0, "sendBroadcast VOLTE_STATE_CHANGE"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private publish()V
    .locals 1

    const-string v0, "phone_dmyk"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private putVoLteState(I)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->isEnhanced4gLteModeSettingEnabledByUser(I)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "putVoLTEState: enhanced4gLteMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DmykMgr"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "volte_dmyk_state_0"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "volte_dmyk_state_1"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    return-void
.end method

.method private rigisterVolteSwitchChanged()V
    .locals 6

    iget-boolean v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mRegisterVolteSwitchChanged0:Z

    const-string v1, "DmykMgr"

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->getSubId(I)I

    move-result v0

    if-eq v0, v2, :cond_0

    const-string v4, "rigisterVolteSwitchChanged0"

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v5, v3, v0}, Lcom/android/telephony/DmykTelephonyManager;->getNotifyContentUri(Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v0

    iget-object v5, p0, Lcom/android/telephony/DmykTelephonyManager;->mEnhancedLTEObserver0:Landroid/database/ContentObserver;

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/telephony/DmykTelephonyManager;->mRegisterVolteSwitchChanged0:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mRegisterVolteSwitchChanged1:Z

    if-nez v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/telephony/DmykTelephonyManager;->getSubId(I)I

    move-result v0

    if-eq v0, v2, :cond_1

    const-string v2, "rigisterVolteSwitchChanged1"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/telephony/SubscriptionManager;->ADVANCED_CALLING_ENABLED_CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v2, v3, v0}, Lcom/android/telephony/DmykTelephonyManager;->getNotifyContentUri(Landroid/net/Uri;ZI)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/android/telephony/DmykTelephonyManager;->mEnhancedLTEObserver1:Landroid/database/ContentObserver;

    invoke-virtual {v1, v0, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-boolean v3, p0, Lcom/android/telephony/DmykTelephonyManager;->mRegisterVolteSwitchChanged1:Z

    :cond_1
    return-void
.end method

.method private sendBTConnChangeBroadcastToSdk()V
    .locals 2

    const-string v0, "DmykMgr"

    const-string v1, "sendBTConnChangeBroadcastToSdk"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.dmyk.action.BLUETOOTH_CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.sprd.opm"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-string v1, "com.dm.permission.OP_MANAGER_COMMON"

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void
.end method

.method private sendRequest(ILjava/lang/Object;Ljava/lang/Integer;Lcom/android/internal/telephony/Phone;Landroid/os/WorkSource;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    if-eqz p4, :cond_0

    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;

    invoke-direct {v0, p2, p4, p3, p5}, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;Ljava/lang/Integer;Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_1

    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;

    invoke-direct {v0, p2, p4, p5}, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;-><init>(Ljava/lang/Object;Lcom/android/internal/telephony/Phone;Landroid/os/WorkSource;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;

    invoke-direct {v0, p2, p3, p5}, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;-><init>(Ljava/lang/Object;Ljava/lang/Integer;Landroid/os/WorkSource;)V

    :goto_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    monitor-enter v0

    :catch_0
    :goto_1
    :try_start_0
    iget-object p0, v0, Lcom/android/telephony/DmykTelephonyManager$MainThreadRequest;->result:Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_2
    :try_start_2
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "This method will deadlock if called from the main thread."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setEnhanced4gLteModeSetting(ZI)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/telephony/DmykTelephonyManager;->getImsManagerByPhoneId(I)Lcom/android/ims/ImsManager;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Z)V

    :cond_0
    return-void
.end method

.method private tryInitCamera(Landroid/hardware/camera2/CameraManager;)V
    .locals 3

    const-string v0, "DmykMgr"

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getCameraId(Landroid/hardware/camera2/CameraManager;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mCameraId:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tryInitCamera mCameraId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/telephony/DmykTelephonyManager;->mCameraId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mCameraId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->ensureHandler()V

    const-string v1, "registerTorchCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/telephony/DmykTelephonyManager;->mTorchCallback:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mTorchHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    const-string p0, "registerTorchCallback after"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    const-string p1, "Couldn\'t initialize."

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method


# virtual methods
.method public getAPNContentUri(I)Landroid/net/Uri;
    .locals 12
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAPNContentUri phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "gsm.sim.operator.numeric"

    const-string v2, ""

    invoke-static {p1, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mccmnc: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 p0, 0x0

    return-object p0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getSubId(I)I

    move-result p1

    const-string v2, "content://telephony/carriers/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, -0x1

    if-eq p1, v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "numeric=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\" AND NOT (type=\'ia\' AND (apn=\"\" OR apn IS NULL))"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "content://telephony/carriers/preferapn/subId/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const-string p0, "_id"

    filled-new-array {p0}, [Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    const-string v11, "_id"

    invoke-virtual/range {v6 .. v11}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    if-eqz p0, :cond_4

    :try_start_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferedId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", sub id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v4, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, p1

    :cond_3
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception p1

    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    throw p1

    :cond_4
    :goto_1
    return-object v3
.end method

.method public getCdmaImsi(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

    const-string v1, "android.permission.READ_PRIVILEGED_PHONE_STATE"

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, "DmykMgr"

    const-string p1, "NPE getCdmaImsi."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCellId(I)I
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCellId phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->getSimStateForSlotIndex(I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getCellIdForDM(I)I

    move-result p0

    goto :goto_1

    :cond_2
    const/4 p0, -0x1

    :goto_1
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " getCellId cellId: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return p0
.end method

.method public getDataState(I)I
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDataState phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    const/4 v2, -0x1

    if-nez v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getSubId(I)I

    move-result p1

    if-ne p1, v2, :cond_3

    return v2

    :cond_3
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getDataState, dataState = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result p0

    return p0
.end method

.method public getSubId(I)I
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_2

    return v0

    :cond_2
    const/4 v1, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSubId subId = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DmykMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    return v0
.end method

.method public getSwitchState(I)I
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x2

    goto :goto_1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getAutoBrightState()I

    move-result p0

    goto :goto_1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getLteState()I

    move-result p0

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getScreenRotateState()I

    move-result p0

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getScreenState()I

    move-result p0

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getFlashlightState()I

    move-result p0

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getFlyingState()I

    move-result p0

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getHotspotState()I

    move-result p0

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getSilentState()I

    move-result p0

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getShockState()I

    move-result p0

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getGpsState()I

    move-result p0

    goto :goto_1

    :pswitch_a
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getBlueToothState()I

    move-result p0

    goto :goto_1

    :pswitch_b
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getGprsState()I

    move-result p0

    goto :goto_1

    :pswitch_c
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->getWifiState()I

    move-result p0

    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSwitchState switchState: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DmykMgr"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getVolteState(I)I
    .locals 3
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/telephony/DmykTelephonyManager;->isVolteEnabledByPlatform()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVoLTEState() - volteEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " phoneId: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "volte_dmyk_state_0"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    if-ne p1, v0, :cond_4

    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "volte_dmyk_state_1"

    invoke-static {p0, p1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_4
    const/4 v0, -0x1

    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getVoLTEState() - volteState: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isBluetoothConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.BLUETOOTH"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessBluetoothPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mBluetoothConnector:Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Lcom/android/telephony/DmykTelephonyManager$BluetoothConnector;->isBluetoothDeviceConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method public isInternationalNetworkRoaming(I)Z
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isInternationalNetworkRoaming phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getSubId(I)I

    move-result p1

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/telephony/DmykTelephonyManager;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRoamingType()I

    move-result p0

    const/4 p1, 0x3

    if-ne p0, p1, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public isServiceStateInService(I)Z
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    return p1

    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object p0

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p0

    if-nez p0, :cond_4

    :cond_3
    const-string p0, "DmykMgr"

    const-string p1, " isServiceStateInService: true"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_4
    return p1
.end method

.method public queryLteCtccSimType(I)I
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 p1, -0x1

    if-nez p0, :cond_2

    return p1

    :cond_2
    sget-object v0, Lcom/android/telephony/DmykTelephonyManager$8;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCurrentUiccAppType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v1, 0x2

    if-eq p0, v1, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_3

    const/4 v0, 0x5

    if-eq p0, v0, :cond_3

    return p1

    :cond_3
    return v1

    :cond_4
    return v0
.end method

.method public readMeidFromCsim(I)Ljava/lang/String;
    .locals 3

    const-string v0, "DmykMgr"

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getIccRecords(II)Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object p0

    instance-of p1, p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;

    if-eqz p1, :cond_0

    check-cast p0, Lcom/android/internal/telephony/uicc/UniRuimRecords;

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniRuimRecords;->getMeid()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "Error in readMeidFromCsim."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "RuntimeException in readMeidFromCsim."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v1
.end method

.method public setTemperature(I)V
    .locals 4
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTemperature getCallingUid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", PHONE_UID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", SYSTEM_UID = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DmykMgr"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, v2, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTemperature temp = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "battery_temperature"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iput p1, p0, Lcom/android/telephony/DmykTelephonyManager;->mTemperature:I

    return-void
.end method

.method public setVolteState(ZI)V
    .locals 2
    .annotation build Landroid/annotation/RequiresPermission;
        value = "android.permission.READ_PHONE_STATE"
    .end annotation

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/telephony/DmykTelephonyManager;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/telephony/DmykTelephonyManager;->enforceAccessPhonePermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only system can call this service"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolteState phoneId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " enabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DmykMgr"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/telephony/DmykTelephonyManager;->setEnhanced4gLteModeSetting(ZI)V

    return-void
.end method

.method public writeMeidToCsim(ILjava/lang/String;)V
    .locals 12

    const-string v0, "DmykMgr"

    :try_start_0
    iget-object p0, p0, Lcom/android/telephony/DmykTelephonyManager;->mApp:Lcom/unisoc/phone/UniTelephonyGlobals;

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/ContextWrapper;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v1, 0xe

    if-ne p0, v1, :cond_1

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object p0

    const/4 v1, 0x2

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(II)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p0, ""

    const/16 v1, 0xd

    move-object v8, p0

    :goto_0
    if-lez v1, :cond_0

    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    add-int/lit8 v1, v1, -0x2

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    iget-object v1, p0, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v2, 0xde

    const/4 v3, 0x0

    const-string v4, "3F007FFF"

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x7

    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-interface/range {v1 .. v11}, Lcom/android/internal/telephony/CommandsInterface;->iccIOForApp(IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Invalid MEID: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "RuntimeException in writeMeidToCsim."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
