.class public Lcom/unisoc/phone/UniPhoneStateTracker;
.super Ljava/lang/Object;
.source "UniPhoneStateTracker.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/unisoc/phone/UniPhoneStateTracker;


# instance fields
.field private mAirplaneModeObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mHasRegister:Z

.field private mHasRegisterSensor:Z

.field private mOnStateChangedListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static bridge synthetic -$$Nest$mlog(Lcom/unisoc/phone/UniPhoneStateTracker;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniPhoneStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyAirplaneModeChanged(Lcom/unisoc/phone/UniPhoneStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/unisoc/phone/UniPhoneStateTracker;->notifyAirplaneModeChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mnotifyScreenStateChanged(Lcom/unisoc/phone/UniPhoneStateTracker;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniPhoneStateTracker;->notifyScreenStateChanged(Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/unisoc/phone/UniFastReturnServiceTracker$FastReturnServiceHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    iput-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/unisoc/phone/UniPhoneStateTracker$2;

    invoke-direct {v0, p0}, Lcom/unisoc/phone/UniPhoneStateTracker$2;-><init>(Lcom/unisoc/phone/UniPhoneStateTracker;)V

    iput-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mContext:Landroid/content/Context;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    iget-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/SensorManager;

    iput-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz p1, :cond_0

    const v0, 0x1002f

    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensor:Landroid/hardware/Sensor;

    :cond_0
    iget-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    if-nez p1, :cond_1

    new-instance p1, Lcom/unisoc/phone/UniPhoneStateTracker$1;

    invoke-direct {p1, p0, p2}, Lcom/unisoc/phone/UniPhoneStateTracker$1;-><init>(Lcom/unisoc/phone/UniPhoneStateTracker;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    :cond_1
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/unisoc/phone/UniFastReturnServiceTracker$FastReturnServiceHandler;)Lcom/unisoc/phone/UniPhoneStateTracker;
    .locals 2

    const-class v0, Lcom/unisoc/phone/UniPhoneStateTracker;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/unisoc/phone/UniPhoneStateTracker;->sInstance:Lcom/unisoc/phone/UniPhoneStateTracker;

    if-eqz v1, :cond_0

    const-string p0, "UniPhoneStateTracker"

    const-string p1, "UniPhoneStateTracker should only be init once"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/unisoc/phone/UniPhoneStateTracker;->sInstance:Lcom/unisoc/phone/UniPhoneStateTracker;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    new-instance v1, Lcom/unisoc/phone/UniPhoneStateTracker;

    invoke-direct {v1, p0, p1}, Lcom/unisoc/phone/UniPhoneStateTracker;-><init>(Landroid/content/Context;Lcom/unisoc/phone/UniFastReturnServiceTracker$FastReturnServiceHandler;)V

    sput-object v1, Lcom/unisoc/phone/UniPhoneStateTracker;->sInstance:Lcom/unisoc/phone/UniPhoneStateTracker;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private final log(Ljava/lang/String;)V
    .locals 0

    const-string p0, "UniPhoneStateTracker"

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private notifyAirplaneModeChanged()V
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;

    invoke-interface {v0}, Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;->onAirplaneModeChanged()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifyScreenStateChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;->onScreenStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private notifySensorChanged(F)V
    .locals 1

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;

    invoke-interface {v0, p1}, Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;->onSensorChanged(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private registerAirplaneChanged()V
    .locals 3

    iget-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private registerScreenChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method private unRegisterAirplaneChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mAirplaneModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method private unRegisterScreenChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addOnStateChangedListener(Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniPhoneStateTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/unisoc/phone/UniPhoneStateTracker;->notifySensorChanged(F)V

    return-void
.end method

.method public registerForStateChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/unisoc/phone/UniPhoneStateTracker;->registerAirplaneChanged()V

    invoke-direct {p0}, Lcom/unisoc/phone/UniPhoneStateTracker;->registerScreenChanged()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    return-void
.end method

.method public registerSensorListener()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerSensorListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniPhoneStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v2, 0x3

    invoke-virtual {v1, p0, v0, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    :cond_0
    return-void
.end method

.method public removeOnStateChangedListener(Lcom/unisoc/phone/UniPhoneStateTracker$OnStateChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mOnStateChangedListeners:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unRegisterForStateChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/unisoc/phone/UniPhoneStateTracker;->unRegisterSensorListener()V

    invoke-direct {p0}, Lcom/unisoc/phone/UniPhoneStateTracker;->unRegisterAirplaneChanged()V

    invoke-direct {p0}, Lcom/unisoc/phone/UniPhoneStateTracker;->unRegisterScreenChanged()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegister:Z

    return-void
.end method

.method public unRegisterSensorListener()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unRegisterSensorListener: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/unisoc/phone/UniPhoneStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, p0, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/unisoc/phone/UniPhoneStateTracker;->mHasRegisterSensor:Z

    :cond_0
    return-void
.end method
