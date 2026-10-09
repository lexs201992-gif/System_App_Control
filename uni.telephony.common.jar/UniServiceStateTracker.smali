.class public Lcom/android/internal/telephony/UniServiceStateTracker;
.super Lcom/android/internal/telephony/ServiceStateTracker;
.source "UniServiceStateTracker.java"


# static fields
.field private static final CONFIG_A:Ljava/lang/String; = "1"

.field private static final CONFIG_D:Ljava/lang/String; = "2"

.field private static final CONNECTED_STATE:I = 0x1

.field protected static final EVENT_GET_NSA_STATE:I = 0x68

.field protected static final EVENT_NR_CFG_INFO_EVENT:I = 0x65

.field protected static final EVENT_NSA_CONNECTION_STATUS:I = 0x66

.field protected static final EVENT_SIB24_STATUS_EVENT:I = 0x67

.field protected static final EVENT_SMART_NR_CHANGED_EVENT:I = 0x64

.field private static final GT_WIFI:Ljava/lang/String; = "GT WiFi"

.field private static final IDLE_STATE:I = 0x0

.field static final LOG_TAG:Ljava/lang/String; = "USST"

.field private static final MAX_DATA_CALLS:I = 0x10

.field private static final NR_DISPLAY_RULE_PROP:Ljava/lang/String; = "persist.vendor.radio.nr_display_rule"

.field private static final ORING_WIFI_NAME:Ljava/lang/String; = "WiFi Calling"

.field private static final PLAY_HOME_NAME:Ljava/lang/String; = "Play"

.field private static final PLAY_ORANGE_NAME:Ljava/lang/String; = "Play (Orange)"

.field private static final PLAY_PLUS_NAME:Ljava/lang/String; = "Play (Plus)"

.field private static final PLAY_TMOBILE_NAME:Ljava/lang/String; = "Play (T-Mobile)"

.field private static final POWER_OFF_ALL_DATA_NETWORKS_DISCONNECTED_TIMEOUT:J

.field private static final PS_REGSTATE_PROP:Ljava/lang/String; = "persist.radio.psregstate"

.field private static final READY_TO_QUERY_STATE:Ljava/lang/String; = "1"

.field private static final REG_HOME:I = 0x1

.field private static final REG_OUT_OF_SERVICE:I = 0x0

.field private static final REG_RAT_UNKNOWN:I = 0x0

.field private static final REG_ROAMING:I = 0x5

.field private static mCustomMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mCustomPlmn:[Ljava/lang/String;


# instance fields
.field private mAddLacInCarrierText:Z

.field private mCustomCarrierRegularName:Ljava/lang/String;

.field private mCustomLastLac:Ljava/lang/String;

.field private mCustomLocalNetwork:Ljava/lang/String;

.field private mFirstStartUpdate:Z

.field private final mLock:Ljava/lang/Object;

.field private mMessenger:Landroid/os/Messenger;

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private mRegState:I

.field private mServiceStateChangedFromRil:Z

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/UniServiceStateTracker;)Lcom/android/unisoc/telephony/RadioInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioInteractorListener(Lcom/android/internal/telephony/UniServiceStateTracker;)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateNrState(Lcom/android/internal/telephony/UniServiceStateTracker;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomMap:Ljava/util/HashMap;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/internal/telephony/UniServiceStateTracker;->POWER_OFF_ALL_DATA_NETWORKS_DISCONNECTED_TIMEOUT:J

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 10

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/ServiceStateTracker;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/CommandsInterface;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedFromRil:Z

    iput v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRegState:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mFirstStartUpdate:Z

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x80c0036

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomCarrierRegularName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x8030001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mAddLacInCarrierText:Z

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x801001f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    sget-object v7, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomMap:Ljava/util/HashMap;

    aget-object v8, v6, v0

    aget-object v9, v6, v1

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8010020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomPlmn:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getPhoneId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->setForRadiointeractorListener()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getInstance()Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/internal/telephony/UniServiceStateTracker$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/UniServiceStateTracker$1;-><init>(Lcom/android/internal/telephony/UniServiceStateTracker;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method private convertRegState(I)I
    .locals 0

    sparse-switch p1, :sswitch_data_0

    const/4 p1, 0x0

    goto :goto_0

    :sswitch_0
    const/4 p1, 0x1

    nop

    :goto_0
    return p1

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private static getBandwidthsFromConfigs(Ljava/util/List;)[I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)[I"
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/UniServiceStateTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/internal/telephony/UniServiceStateTracker$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/internal/telephony/UniServiceStateTracker$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/internal/telephony/UniServiceStateTracker$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    return-object v0
.end method

.method private getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/UniServiceStateTracker$3;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/UniServiceStateTracker$3;-><init>(Lcom/android/internal/telephony/UniServiceStateTracker;I)V

    return-object v0
.end method

.method private getSmartNrStatus()Z
    .locals 2

    const-string v0, "persist.radio.engtest.nr.enable"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private hangupImsCall()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "hang up ims call"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isInCall(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->isWifiCallingEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangupIfAlive()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangupIfAlive()V

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangupIfAlive()V

    :cond_2
    return-void
.end method

.method private is2GNetworkType(I)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "is2GNetworkType registerType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/16 v1, 0xb

    if-eq p1, v1, :cond_1

    const/16 v1, 0x10

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private isCustomNetwork(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomPlmn:[Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isGprsConsistent(II)Z
    .locals 1

    if-nez p2, :cond_1

    if-nez p1, :cond_0

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

.method private isInCall(Lcom/android/internal/telephony/imsphone/ImsPhone;)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    return v3
.end method

.method private isInvalidOperatorNumeric(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    const-string v0, "000"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

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

.method private isRegisterInBr(I)Z
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRegisterInBr registerPlmn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v1, "724"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isWifiStateAvailable(Landroid/content/Context;)Z
    .locals 4

    nop

    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    const-string v2, "isWifiStateAvailable: true"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    return v3

    :cond_0
    const-string v2, "isWifiStateAvailable: false"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    return v2
.end method

.method private final logd(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "USST"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private needUpdateNrStatus(Landroid/telephony/DataSpecificRegistrationInfo;)I
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/internal/telephony/UniTeleUtils;->getTeleOptimizationProperty()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/UniTeleUtils;->isEngTest()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->networkTypeChangedNotNr()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-eqz p1, :cond_2

    iget-boolean v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isEnDcAvailable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isDcNrRestricted:Z

    if-nez v1, :cond_1

    iget-boolean v1, p1, Landroid/telephony/DataSpecificRegistrationInfo;->isNrAvailable:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :cond_2
    :goto_0
    return v0
.end method

.method private networkTypeChangedNotNr()Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSubscriptionManagerService:Lcom/android/internal/telephony/subscription/SubscriptionManagerService;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "allowed_network_types_for_reasons"

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/internal/telephony/subscription/SubscriptionManagerService;->getSubscriptionProperty(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    const-string v4, "user"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, v1, v2

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    const/4 v4, 0x1

    aget-object v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/high16 v6, 0x80000

    and-int/2addr v6, v5

    if-nez v6, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private pollRegState(IIII)V
    .locals 47

    move-object/from16 v0, p0

    move/from16 v15, p3

    const/16 v16, 0x1

    const/16 v17, 0x0

    new-instance v1, Landroid/telephony/ServiceState;

    invoke-direct {v1}, Landroid/telephony/ServiceState;-><init>()V

    move-object v14, v1

    const/4 v1, 0x0

    invoke-virtual {v14, v1}, Landroid/telephony/ServiceState;->setOutOfService(Z)V

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/UniTeleUtils;->isEmergencyOnly(I)Z

    move-result v13

    invoke-static/range {p3 .. p3}, Lcom/android/internal/telephony/UniTeleUtils;->isEmergencyOnly(I)Z

    move-result v12

    const/4 v2, 0x1

    if-nez v13, :cond_0

    if-eqz v12, :cond_1

    :cond_0
    move v1, v2

    :cond_1
    iput-boolean v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEmergencyOnly:Z

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, 0x0

    move/from16 v11, p1

    invoke-static {v11, v2, v13}, Lcom/android/internal/telephony/UniTeleUtils;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v43

    const/4 v1, 0x2

    invoke-static {v15, v1, v12}, Lcom/android/internal/telephony/UniTeleUtils;->getAvailableServices(IIZ)Ljava/util/List;

    move-result-object v44

    new-instance v1, Landroid/telephony/NetworkRegistrationInfo;

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v23, 0x0

    move-object/from16 v18, v1

    move/from16 v21, p1

    move/from16 v22, p2

    move/from16 v24, v13

    move-object/from16 v25, v43

    move-object/from16 v26, v32

    move-object/from16 v27, v34

    move/from16 v28, v35

    move/from16 v29, v36

    move/from16 v30, v37

    move/from16 v31, v38

    invoke-direct/range {v18 .. v31}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;ZIII)V

    move-object v10, v1

    new-instance v18, Landroid/telephony/NetworkRegistrationInfo;

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/16 v19, 0x10

    move-object/from16 v1, v18

    move/from16 v4, p3

    move/from16 v5, p4

    move v7, v12

    move-object/from16 v8, v44

    move-object/from16 v9, v33

    move-object/from16 v45, v10

    move-object/from16 v10, v34

    move/from16 v11, v19

    move/from16 v19, v12

    move/from16 v12, v41

    move/from16 v20, v13

    move/from16 v13, v40

    move-object/from16 v46, v14

    move/from16 v14, v39

    move-object/from16 v15, v42

    invoke-direct/range {v1 .. v15}, Landroid/telephony/NetworkRegistrationInfo;-><init>(IIIIIZLjava/util/List;Landroid/telephony/CellIdentity;Ljava/lang/String;IZZZLandroid/telephony/VopsSupportInfo;)V

    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->regCodeToServiceState(I)I

    move-result v2

    move-object/from16 v3, v46

    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    move-object/from16 v2, v45

    invoke-virtual {v3, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-virtual {v3, v1}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    iget-object v4, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_2

    move/from16 v4, p3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mGsmDataRoaming:Z

    iget-boolean v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mGsmDataRoaming:Z

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    goto :goto_0

    :cond_2
    move/from16 v4, p3

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdma()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v5

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    invoke-virtual {v3, v5}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    goto :goto_0

    :cond_3
    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v5

    if-nez v5, :cond_4

    if-nez p4, :cond_6

    :cond_4
    invoke-static {v5}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-static/range {p4 .. p4}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v6

    if-nez v6, :cond_6

    :cond_5
    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-static/range {p4 .. p4}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getSignalStrengthFromCi()V

    :cond_7
    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->regCodeIsRoaming(I)Z

    move-result v6

    invoke-virtual {v3, v6}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    invoke-virtual {v3, v6}, Landroid/telephony/ServiceState;->setDataRoamingFromRegistration(Z)V

    :goto_0
    invoke-direct {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->pollStateExternal(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private pollStateExternal(Landroid/telephony/ServiceState;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->combinePsRegistrationStates(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateRoamingState()V

    goto/16 :goto_3

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isSidsAllZeros()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->isHomeSid(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v1, :cond_2

    nop

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eq v1, v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRoamingBetweenOperators="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". Override CDMA voice roaming to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    :cond_2
    invoke-static {p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-nez v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eq v5, v4, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    :cond_4
    iget v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    iget v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    const/4 v2, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x0

    :cond_5
    if-eqz v2, :cond_c

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isSidsAllZeros()Z

    move-result v4

    if-nez v4, :cond_d

    if-nez v0, :cond_7

    iget-boolean v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    if-nez v4, :cond_7

    iget v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_7
    const/4 v4, 0x2

    if-eqz v0, :cond_9

    iget-boolean v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_9

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v4, "Turn off roaming indicator as voice is LTE or NR"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_9
    if-nez v0, :cond_a

    iget-boolean v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_a

    iget v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_a
    iget v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    if-gt v5, v4, :cond_b

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_b
    iget v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_c
    :goto_1
    const-string v4, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    :cond_d
    :goto_2
    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz v3, :cond_e

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v4, v3, v5}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    :cond_e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". voiceRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". dataRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isPrlLoaded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". namMatch = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mIsInPrl = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mRoamingIndicator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mDefaultRoamingIndicator= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->pollStateDoneforUnsol(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private regCodeToServiceState(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    return v0

    :sswitch_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_0
    .end sparse-switch
.end method

.method private setDataNetworkTypeForPhone(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getUnitTestMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    return-void
.end method

.method private setForRadiointeractorListener()V
    .locals 5

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.unisoc.telephony.server"

    const-string v2, "com.android.unisoc.telephony.server.RadioInteractorService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    new-instance v3, Lcom/android/internal/telephony/UniServiceStateTracker$2;

    invoke-direct {v3, p0}, Lcom/android/internal/telephony/UniServiceStateTracker$2;-><init>(Lcom/android/internal/telephony/UniServiceStateTracker;)V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method private updateLacInfo(I)V
    .locals 3

    const v0, 0x7fffffff

    if-eq p1, v0, :cond_1

    rem-int/lit8 v0, p1, 0x64

    sget-object v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomLastLac "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mCustomLocalNetwork "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private updateNrState()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/4 v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrFrequencyRangeFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/4 v0, 0x1

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->getBandwidthsFromConfigs(Ljava/util/List;)[I

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v1, v2}, Lcom/android/internal/telephony/RatRatcheter;->updateBandwidths([ILandroid/telephony/ServiceState;)Z

    move-result v1

    or-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyPhysicalChannelConfig(Ljava/util/List;)V

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getImsStats()Lcom/android/internal/telephony/metrics/ImsStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/ImsStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    :cond_4
    return-void
.end method

.method private updateNrStateFromRat(ZLandroid/telephony/NetworkRegistrationInfo;)Z
    .locals 9

    const-string v0, "persist.radio.psregstate"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNrStateFromRat queryPsState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    if-ne v2, v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNrStateFromRat queryPsStateArray: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    aget-object v4, v1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    array-length v5, v4

    const/4 v6, 0x2

    if-ne v5, v6, :cond_1

    const/4 v5, 0x0

    aget-object v6, v4, v5

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateNrStateFromRat rat: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/16 v7, 0x13

    if-ne v6, v7, :cond_0

    const/16 v6, 0xd

    :cond_0
    invoke-virtual {p2}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v7

    if-eq v6, v7, :cond_1

    return v5

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return p1
.end method

.method private updateSpnDisplayLegacy()V
    .locals 30

    move-object/from16 v0, p0

    const-string v1, "updateSpnDisplayLegacy+"

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v9}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCombinedRegState(Landroid/telephony/ServiceState;)I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v10

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "phone"

    invoke-virtual {v12, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/telephony/TelephonyManager;

    iget-object v13, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v13}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v13

    invoke-virtual {v12, v13}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    const-string v15, "wfc_spn_use_root_locale"

    if-eqz v14, :cond_8

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    if-nez v9, :cond_8

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isNeedUpdateOperatorForWifi()Z

    move-result v14

    if-eqz v14, :cond_1

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->isWifiStateAvailable(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    goto :goto_0

    :cond_0
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v21, v5

    goto/16 :goto_3

    :cond_1
    :goto_0
    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, -0x1

    const/16 v18, 0x0

    move-object/from16 v19, v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v1

    move-object/from16 v20, v2

    const-string v2, "wfc_spn_format_idx_int"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v14, "wfc_data_spn_format_idx_int"

    invoke-virtual {v1, v14}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v14

    move/from16 v16, v3

    const-string v3, "wfc_flight_mode_spn_format_idx_int"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    nop

    move-object/from16 v17, v4

    invoke-virtual {v1, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    move/from16 v21, v5

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v5

    invoke-static {v1, v5, v4}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1070117

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const-string v5, "carrier_wfc_spn_override_string"

    invoke-virtual {v10, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    if-ltz v2, :cond_3

    array-length v5, v1

    if-lt v2, v5, :cond_2

    goto :goto_1

    :cond_2
    move/from16 v22, v4

    goto :goto_2

    :cond_3
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v22, v4

    const-string v4, "updateSpnDisplay: KEY_WFC_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_2
    if-ltz v14, :cond_4

    array-length v4, v1

    if-lt v14, v4, :cond_5

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSpnDisplay: KEY_WFC_DATA_SPN_FORMAT_IDX_INT out of bounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->loge(Ljava/lang/String;)V

    const/4 v14, 0x0

    :cond_5
    if-ltz v3, :cond_6

    array-length v4, v1

    if-lt v3, v4, :cond_7

    :cond_6
    move v3, v2

    :cond_7
    aget-object v6, v1, v2

    aget-object v7, v1, v14

    aget-object v8, v1, v3

    goto :goto_3

    :cond_8
    move-object/from16 v19, v1

    move-object/from16 v20, v2

    move/from16 v16, v3

    move-object/from16 v17, v4

    move/from16 v21, v5

    :goto_3
    iget-object v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/UniTeleUtils;->translateOperatorName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v2

    invoke-virtual {v12, v2, v1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    const/4 v4, 0x2

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getImsRegistrationTech()I

    move-result v3

    if-ne v3, v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v3

    nop

    const-string v5, "cross_sim_spn_format_int"

    invoke-virtual {v3, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v5

    nop

    invoke-virtual {v3, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v14

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v15

    iget-object v4, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v4

    invoke-static {v15, v4, v14}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;IZ)Landroid/content/res/Resources;

    move-result-object v4

    const v15, 0x10700da

    invoke-virtual {v4, v15}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-ltz v5, :cond_a

    array-length v15, v4

    if-lt v5, v15, :cond_9

    goto :goto_4

    :cond_9
    move-object/from16 v22, v1

    goto :goto_5

    :cond_a
    :goto_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v22, v1

    const-string v1, "updateSpnDisplay: KEY_CROSS_SIM_SPN_FORMAT_INT out of bounds: "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->loge(Ljava/lang/String;)V

    const/4 v5, 0x0

    :goto_5
    aget-object v2, v4, v5

    goto :goto_6

    :cond_b
    move-object/from16 v22, v1

    goto :goto_6

    :cond_c
    move-object/from16 v22, v1

    goto :goto_6

    :cond_d
    move-object/from16 v22, v1

    :goto_6
    iget-object v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    const-string v3, "72405"

    const-string v4, "\'"

    const/4 v15, 0x1

    if-eqz v1, :cond_2e

    iget-object v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierNameDisplayBitmask(Landroid/telephony/ServiceState;)I

    move-result v14

    const/16 v24, 0x0

    if-eq v9, v15, :cond_13

    const/4 v5, 0x2

    if-ne v9, v5, :cond_e

    move-object/from16 v26, v1

    goto/16 :goto_8

    :cond_e
    if-nez v9, :cond_12

    iget-object v4, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v26, v1

    iget-object v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v15, v1}, Lcom/android/internal/telephony/UniTeleUtils;->translateOperatorName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v4

    if-eqz v1, :cond_f

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_10

    :cond_f
    if-eqz v4, :cond_10

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v5

    const/16 v15, 0x12

    if-ne v5, v15, :cond_10

    invoke-virtual {v4}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v5

    const/4 v15, 0x1

    if-ne v5, v15, :cond_10

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-virtual {v12, v5}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    goto :goto_7

    :cond_10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    and-int/lit8 v5, v14, 0x2

    const/4 v15, 0x2

    if-ne v5, v15, :cond_11

    const/4 v5, 0x1

    goto :goto_7

    :cond_11
    const/4 v5, 0x0

    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    const-string v4, "updateSpnDisplay: rawPlmn = "

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_12
    move-object/from16 v26, v1

    const/4 v5, 0x1

    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpnDisplay: radio is off w/ showPlmn="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " plmn="

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_c

    :cond_13
    move-object/from16 v26, v1

    :goto_8
    const/4 v5, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->shouldForceDisplayNoService()Z

    move-result v1

    if-eqz v1, :cond_14

    iget-boolean v1, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsSimReady:Z

    if-nez v1, :cond_14

    const/4 v1, 0x1

    goto :goto_9

    :cond_14
    const/4 v1, 0x0

    :goto_9
    const/4 v15, 0x0

    move/from16 v21, v5

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v5, :cond_15

    invoke-virtual {v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v5

    if-lez v5, :cond_15

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v5

    invoke-static {v5}, Lcom/android/internal/telephony/Phone;->isEmergencyCallOnlyPhone(I)Z

    move-result v5

    goto :goto_a

    :cond_15
    invoke-static {}, Lcom/android/internal/telephony/Phone;->isEmergencyCallOnly()Z

    move-result v5

    :goto_a
    if-nez v1, :cond_16

    if-eqz v5, :cond_16

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v15

    move/from16 v27, v1

    const v1, 0x104034a

    invoke-virtual {v15, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_b

    :cond_16
    move/from16 v27, v1

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v15, 0x10404e9

    invoke-virtual {v1, v15}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v24, 0x1

    :goto_b
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v25, v5

    const-string v5, "updateSpnDisplay: radio is on but out of service, set plmn=\'"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    move/from16 v5, v21

    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getServiceProviderName()Ljava/lang/String;

    move-result-object v4

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const-string v17, ""

    if-eqz v15, :cond_17

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v15}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v15

    goto :goto_d

    :cond_17
    move-object/from16 v15, v17

    :goto_d
    move-object v13, v15

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v15}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v13, v4}, Lcom/android/internal/telephony/UniTeleUtils;->translateOperatorName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    if-nez v24, :cond_18

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_18

    move-object/from16 v19, v15

    and-int/lit8 v15, v14, 0x1

    move/from16 v25, v14

    const/4 v14, 0x1

    if-ne v15, v14, :cond_19

    const/4 v14, 0x1

    goto :goto_e

    :cond_18
    move/from16 v25, v14

    move-object/from16 v19, v15

    :cond_19
    const/4 v14, 0x0

    :goto_e
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v14

    const-string v14, "updateSpnDisplay: rawSpn = "

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    const-string v15, "wfc_carrier_name_override_by_pnn_bool"

    if-nez v14, :cond_1d

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1a

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    filled-new-array {v14}, [Ljava/lang/Object;

    move-result-object v15

    invoke-static {v2, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v15, v4

    const/16 v16, 0x1

    const/4 v5, 0x0

    move-object/from16 v28, v2

    move-object/from16 v27, v12

    move-object v2, v15

    move/from16 v14, v16

    goto/16 :goto_11

    :cond_1a
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1c

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v20, v14

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v14

    move-object/from16 v27, v12

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v12, :cond_1b

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v20, v12

    :cond_1b
    filled-new-array/range {v20 .. v20}, [Ljava/lang/Object;

    move-result-object v12

    invoke-static {v2, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v28, v2

    move/from16 v14, v16

    move-object/from16 v2, v19

    goto/16 :goto_11

    :cond_1c
    move-object/from16 v27, v12

    move-object/from16 v28, v2

    goto/16 :goto_f

    :cond_1d
    move-object/from16 v27, v12

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_1e

    move-object v4, v11

    const/4 v14, 0x1

    const/4 v5, 0x0

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "updateSpnDisplay: wfc name override :"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v28, v2

    move-object/from16 v2, v19

    goto/16 :goto_11

    :cond_1e
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    const/4 v14, 0x3

    if-nez v12, :cond_20

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_20

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_20

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getState()I

    move-result v12

    if-ne v12, v14, :cond_1f

    move-object v6, v8

    :cond_1f
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v7, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x1

    const/4 v5, 0x0

    move-object/from16 v28, v2

    move-object v2, v14

    move v14, v15

    goto :goto_11

    :cond_20
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_22

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_22

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v14

    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_21

    invoke-virtual {v14, v15}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v12

    :cond_21
    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v6, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move/from16 v14, v16

    move-object/from16 v2, v19

    goto :goto_11

    :cond_22
    move-object/from16 v28, v2

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getState()I

    move-result v2

    if-eq v2, v14, :cond_24

    if-eqz v5, :cond_23

    invoke-static {v4, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_23

    goto :goto_10

    :cond_23
    :goto_f
    move/from16 v14, v16

    move-object/from16 v2, v19

    goto :goto_11

    :cond_24
    :goto_10
    const/4 v4, 0x0

    const/4 v14, 0x0

    move-object/from16 v2, v19

    :goto_11
    iget-boolean v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mAddLacInCarrierText:Z

    if-eqz v12, :cond_2d

    if-nez v9, :cond_2d

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getPhoneId()I

    move-result v15

    invoke-virtual {v12, v15}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/UniServiceStateTracker;->isCustomNetwork(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_2c

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getPhoneId()I

    move-result v12

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/UniServiceStateTracker;->isRegisterInBr(I)Z

    move-result v12

    if-eqz v12, :cond_2b

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add carriertext and lac : "

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getPhoneId()I

    move-result v15

    invoke-direct {v0, v15}, Lcom/android/internal/telephony/UniServiceStateTracker;->isRegisterInBr(I)Z

    move-result v15

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v12, 0x1

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_25

    move-object v4, v1

    :cond_25
    const-string v14, "operator_name_show_in_lac"

    invoke-virtual {v10, v14}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomCarrierRegularName:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mCustomCarrierRegularName: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomCarrierRegularName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_26

    move-object/from16 v14, v17

    goto :goto_12

    :cond_26
    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    :goto_12
    iput-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_27

    move-object/from16 v14, v17

    goto :goto_13

    :cond_27
    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    :goto_13
    iput-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    const-string v15, "|"

    move-object/from16 v16, v2

    const-string v2, " "

    if-nez v14, :cond_29

    const-string v14, "72402"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_29

    const-string v14, "72403"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_29

    const-string v14, "72404"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_28

    goto :goto_14

    :cond_28
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomCarrierRegularName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move/from16 v17, v5

    goto :goto_16

    :cond_29
    :goto_14
    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v14

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->is2GNetworkType(I)Z

    move-result v17

    if-eqz v17, :cond_2a

    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomCarrierRegularName:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLocalNetwork:Ljava/lang/String;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCustomLastLac:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_15

    :cond_2a
    move/from16 v17, v5

    :goto_15
    move-object v2, v4

    :goto_16
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "plmn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " spn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " showSpn "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    move/from16 v5, v17

    goto :goto_18

    :cond_2b
    move-object/from16 v16, v2

    goto :goto_17

    :cond_2c
    move-object/from16 v16, v2

    goto :goto_17

    :cond_2d
    move-object/from16 v16, v2

    :goto_17
    move-object v2, v4

    move v12, v14

    :goto_18
    move-object/from16 v4, v16

    move/from16 v16, v12

    move-object/from16 v29, v2

    move-object v2, v1

    move-object/from16 v1, v29

    goto/16 :goto_1c

    :cond_2e
    move-object/from16 v28, v2

    move-object/from16 v27, v12

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getOperatorNameFromEri()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2f

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v1}, Landroid/telephony/ServiceState;->setOperatorAlphaLong(Ljava/lang/String;)V

    :cond_2f
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateOperatorNameFromCarrierConfig()V

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v2

    iget-object v5, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v5

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object v14

    invoke-static {v5, v12, v14}, Lcom/android/internal/telephony/UniTeleUtils;->translateOperatorName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSpnDisplay: cdma rawPlmn = "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_30

    const/4 v14, 0x1

    goto :goto_19

    :cond_30
    const/4 v14, 0x0

    :goto_19
    move v5, v14

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_31

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_31

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v14

    invoke-static {v6, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1a

    :cond_31
    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v12}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v12

    if-nez v12, :cond_32

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: overwriting plmn from "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v14, " to null as radio state is off"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_1b

    :cond_32
    :goto_1a
    nop

    :goto_1b
    const/4 v12, 0x1

    if-ne v9, v12, :cond_33

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v14, 0x10404e9

    invoke-virtual {v12, v14}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "updateSpnDisplay: radio is on but out of svc, set plmn=\'"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    move-object/from16 v1, v19

    move-object/from16 v4, v20

    goto :goto_1c

    :cond_33
    move-object/from16 v1, v19

    move-object/from16 v4, v20

    :goto_1c
    iget-boolean v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCountryRequest:Z

    if-eqz v12, :cond_34

    const-string v12, "71606"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_34

    const/16 v16, 0x0

    const/4 v5, 0x1

    :cond_34
    const-string v12, "carrier_name_override_in_5g_roaming_state"

    invoke-virtual {v10, v12}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_37

    iget-object v12, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v12

    const-string v14, "plmn_list_in_5g_roaming_state"

    invoke-virtual {v10, v14}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v14

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_36

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_36

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-interface {v15, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_35

    const/16 v16, 0x1

    const/4 v5, 0x1

    move-object v15, v1

    move-object v1, v2

    move-object v2, v15

    move/from16 v17, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v6

    const-string v6, "5G roaming state, show carrierName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    move/from16 v5, v17

    goto :goto_1d

    :cond_35
    move-object/from16 v19, v6

    goto :goto_1d

    :cond_36
    move-object/from16 v19, v6

    goto :goto_1d

    :cond_37
    move-object/from16 v19, v6

    :goto_1d
    const-string v6, "key_suppress_spn_display_with_plmn_bool"

    invoke-virtual {v10, v6}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_38

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_38

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_38

    const/16 v16, 0x0

    const/4 v5, 0x1

    :cond_38
    iget-object v6, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v6

    move-object/from16 v12, v27

    invoke-virtual {v12, v6}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v6

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "simNumeric:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " register:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    const-string v15, "26003"

    if-eqz v14, :cond_3a

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v14

    if-nez v14, :cond_39

    goto :goto_1e

    :cond_39
    move-object/from16 v20, v1

    goto :goto_1f

    :cond_3a
    :goto_1e
    const-string v14, "26006"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    move-object/from16 v20, v1

    const-string v1, "26098"

    if-nez v17, :cond_3b

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3f

    :cond_3b
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_40

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3c

    goto :goto_20

    :cond_3c
    const-string v1, "26001"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3d

    const-string v1, "Play (Plus)"

    const/16 v16, 0x1

    const-string v2, ""

    const/4 v5, 0x0

    goto :goto_21

    :cond_3d
    const-string v1, "26002"

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    const-string v1, "Play (T-Mobile)"

    const/16 v16, 0x1

    const-string v2, ""

    const/4 v5, 0x0

    goto :goto_21

    :cond_3e
    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3f

    const-string v1, "Play (Orange)"

    const/16 v16, 0x1

    const-string v2, ""

    const/4 v5, 0x0

    goto :goto_21

    :cond_3f
    :goto_1f
    move-object/from16 v1, v20

    goto :goto_21

    :cond_40
    :goto_20
    const-string v1, "Play"

    const/16 v16, 0x1

    const-string v2, ""

    const/4 v5, 0x0

    :goto_21
    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    if-eqz v14, :cond_42

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v14}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v14

    if-eqz v14, :cond_42

    const-string v14, "46605"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_41

    move-object/from16 v17, v1

    const-string v1, "52505"

    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    goto :goto_22

    :cond_41
    move-object/from16 v17, v1

    :goto_22
    invoke-virtual {v14, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_43

    const-string v1, "GT WiFi"

    const/16 v16, 0x1

    const-string v2, ""

    const/4 v5, 0x0

    goto :goto_23

    :cond_42
    move-object/from16 v17, v1

    :cond_43
    move-object/from16 v1, v17

    :goto_23
    const-string v14, "73002"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_44

    const-string v14, "73003"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_44

    const-string v14, "73023"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_46

    :cond_44
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_45

    const/16 v16, 0x1

    const/4 v5, 0x0

    goto :goto_24

    :cond_45
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_46

    const/16 v16, 0x0

    const/4 v5, 0x1

    :cond_46
    :goto_24
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_47

    const/16 v16, 0x1

    const/4 v5, 0x1

    :cond_47
    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_4a

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4a

    invoke-virtual {v15, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v14, " register network state, show carrierName = WiFi Calling | "

    if-eqz v3, :cond_48

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "   plmn = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_25

    :cond_48
    if-eqz v6, :cond_49

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v15, 0x1

    if-le v3, v15, :cond_49

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_49

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "WiFi Calling | "

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v16, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v14, "   spn = "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_25

    :cond_49
    const-string v1, "WiFi Calling"

    const/16 v16, 0x1

    const/4 v5, 0x0

    const-string v3, " register network state, show carrierName = WiFi Calling"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_4a
    :goto_25
    if-eqz v5, :cond_4b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4b

    const-string v3, "key_nonroaming_should_show_spn_bool"

    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "nonroaming:showPlmn= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " spn= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isNonRoamingshouldshowspn= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isNonRoaming= "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v15}, Lcom/android/internal/telephony/UniServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v3, :cond_4b

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->isOperatorConsideredNonRoaming(Landroid/telephony/ServiceState;)Z

    move-result v14

    if-eqz v14, :cond_4b

    const/4 v5, 0x0

    const/16 v16, 0x1

    :cond_4b
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "rplmn: "

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v14, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v14}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v3

    const-string v14, "50503"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4d

    if-nez v16, :cond_4d

    if-eqz v5, :cond_4d

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v3

    if-nez v3, :cond_4d

    if-nez v9, :cond_4d

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_4d

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->isWifiCallingEnabled()Z

    move-result v3

    if-nez v3, :cond_4d

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4c

    const-string v3, "mccMnc - 50503, simNumeric is empty"

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    return-void

    :cond_4c
    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mccMnc - 50503, originalPlmn: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4d

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_4d

    move-object v2, v3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mccMnc - 50503, plmn: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_4d
    const-string v3, "carrier_show_homepnn_in_wfc_mode_bool"

    invoke-virtual {v10, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v14, "; spn: "

    const-string v15, "plmn: "

    if-eqz v3, :cond_53

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v17, v2

    const/4 v2, 0x2

    invoke-virtual {v3, v2, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v3

    iget-object v2, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move/from16 v20, v5

    const/4 v5, 0x1

    invoke-virtual {v2, v5, v5}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    const/4 v5, 0x0

    const/16 v21, 0x1

    if-eqz v3, :cond_4e

    move/from16 v23, v5

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v5

    move-object/from16 v24, v7

    const/4 v7, 0x2

    if-ne v5, v7, :cond_4f

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v5

    const/4 v7, 0x1

    if-ne v5, v7, :cond_4f

    const/4 v5, 0x1

    goto :goto_26

    :cond_4e
    move/from16 v23, v5

    move-object/from16 v24, v7

    :cond_4f
    move/from16 v5, v23

    :goto_26
    if-eqz v2, :cond_50

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v7

    move-object/from16 v23, v8

    const/16 v18, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_51

    const/16 v21, 0x0

    goto :goto_27

    :cond_50
    move-object/from16 v23, v8

    :cond_51
    :goto_27
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmergencyOnly: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v3}, Landroid/telephony/NetworkRegistrationInfo;->getTransportType()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", availableService: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getAvailableServices()Ljava/util/List;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    if-eqz v5, :cond_52

    if-eqz v21, :cond_52

    iget-object v7, v0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/IccRecords;->getPnnHomeName()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v2

    const-string v2, "PnnHomeName: "

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/16 v16, 0x0

    move v5, v2

    move-object v2, v7

    goto :goto_29

    :cond_52
    move-object/from16 v18, v2

    goto :goto_28

    :cond_53
    move-object/from16 v17, v2

    move/from16 v20, v5

    move-object/from16 v24, v7

    move-object/from16 v23, v8

    :goto_28
    move-object/from16 v2, v17

    move/from16 v5, v20

    :goto_29
    const-string v3, "72406"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "72411"

    move/from16 v17, v5

    const-string v5, "72410"

    if-nez v7, :cond_54

    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_54

    const-string v7, "72423"

    invoke-virtual {v7, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_55

    :cond_54
    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_56

    const-string v3, "72423"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_55

    goto :goto_2a

    :cond_55
    move/from16 v3, v16

    move/from16 v5, v17

    goto :goto_2b

    :cond_56
    :goto_2a
    const/16 v16, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    move/from16 v3, v16

    :goto_2b
    new-instance v7, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;-><init>()V

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setDataSpn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowSpn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setPlmn(Ljava/lang/String;)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->setShowPlmn(Z)Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData$Builder;->build()Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->notifySpnDisplayUpdate(Lcom/android/internal/telephony/cdnr/CarrierDisplayNameData;)V

    const-string v7, "updateSpnDisplayLegacy-"

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method private useDataRegStateForDataOnlyDevices(Landroid/telephony/ServiceState;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mVoiceCapable:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " DataRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected combinePsRegistrationStates(Landroid/telephony/ServiceState;)V
    .locals 5

    const/4 v0, 0x2

    invoke-virtual {p1, v0, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v2}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v3

    const/16 v4, 0x12

    if-ne v3, v4, :cond_0

    invoke-virtual {v1}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v3

    if-ne v3, v2, :cond_0

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->regCodeToServiceState(I)I

    move-result v3

    invoke-virtual {p1, v3}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    :cond_1
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "combinePsRegistrationStates: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    return-void
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->dispose()V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "received event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_SIB24_STATUS_EVENT statusValue = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iput v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrCfgValue:I

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "EVENT_NSA_CONNECTION_STATUS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mConnectedStatus:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_NSA_CONNECTION_STATUS mConnectedStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mConnectedStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v2}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_0
    goto/16 :goto_1

    :sswitch_2
    const-string v0, "EVENT_NR_CFG_INFO_EVENT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_NR_CFG_INFO_EVENT type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " value = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iput v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrCfgValue:I

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v4, v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v6, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v5}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_1
    goto :goto_1

    :sswitch_3
    const-string v0, "EVENT_SMART_NR_CHANGED_EVENT"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_1

    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    if-eqz v0, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    sget-boolean v2, Lcom/android/internal/telephony/PhoneLogController;->SIM_DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_PHYSICAL_CHANNEL_CONFIG: size="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " list="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_2
    iput-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLastPhysicalChannelConfigList:Ljava/util/List;

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isDeviceSupportNr()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mMessenger:Landroid/os/Messenger;

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getPhoneId()I

    move-result v4

    const/16 v5, 0x68

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/unisoc/telephony/RadioInteractor;->getNsaConnStatus(Landroid/os/Messenger;II)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrState()V

    :goto_0
    nop

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_4
        0x64 -> :sswitch_3
        0x65 -> :sswitch_2
        0x66 -> :sswitch_1
        0x67 -> :sswitch_0
    .end sparse-switch
.end method

.method protected handlePollStateResult(ILandroid/os/AsyncResult;)V
    .locals 7

    iget-object v0, p2, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPollingContext:[I

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Ljava/lang/IllegalStateException;

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResult exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v3, v3, Lcom/android/internal/telephony/CommandException;

    if-eqz v3, :cond_2

    iget-object v3, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v3, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-eq v3, v2, :cond_3

    const-string v2, "handlePollStateResult: Invalid response due to radio off or unavailable. Set ServiceState to out of service."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->pollStateInternal(Z)V

    return-void

    :cond_3
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v3, :cond_4

    const-string v1, "handlePollStateResult: RIL returned RADIO_NOT_AVAILABLE when radio is on."

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->loge(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->cancelPollState()V

    return-void

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->OP_NOT_ALLOWED_BEFORE_REG_NW:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v3, :cond_5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handlePollStateResult: RIL returned an error where it must succeed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->loge(Ljava/lang/String;)V

    :cond_5
    goto :goto_0

    :cond_6
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/UniServiceStateTracker;->handlePollStateResultMessage(ILandroid/os/AsyncResult;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception while polling service state. Probably malformed RIL response."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->loge(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPollingContext:[I

    aget v3, v0, v1

    sub-int/2addr v3, v2

    aput v3, v0, v1

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPollingContext:[I

    aget v0, v0, v1

    if-nez v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-boolean v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEmergencyOnly:Z

    invoke-virtual {v0, v3}, Landroid/telephony/ServiceState;->setEmergencyOnly(Z)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->combinePsRegistrationStates(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateOperatorNameForServiceState(Landroid/telephony/ServiceState;)V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateRoamingState()V

    goto/16 :goto_3

    :cond_7
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isSidsAllZeros()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->isHomeSid(I)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v0, 0x1

    :cond_8
    iget-boolean v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsSubscriptionFromRuim:Z

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->isRoamingBetweenOperators(ZLandroid/telephony/ServiceState;)Z

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-eq v3, v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRoamingBetweenOperators="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Override CDMA voice roaming to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v3}, Landroid/telephony/ServiceState;->setVoiceRoaming(Z)V

    :cond_9
    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-static {v3}, Lcom/android/internal/telephony/UniServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v3

    invoke-static {v3}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    if-nez v4, :cond_a

    move v1, v2

    :cond_a
    if-eqz v1, :cond_b

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v5

    if-eq v5, v4, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data roaming != Voice roaming. Override data roaming to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Landroid/telephony/ServiceState;->setDataRoaming(Z)V

    :cond_b
    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setCdmaDefaultRoamingIndicator(I)V

    iget-object v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v1, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    const/4 v1, 0x1

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPrlVersion:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_c

    const/4 v1, 0x0

    :cond_c
    if-eqz v1, :cond_13

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    if-nez v4, :cond_d

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isSidsAllZeros()Z

    move-result v4

    if-nez v4, :cond_14

    if-nez v0, :cond_e

    iget-boolean v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    if-nez v4, :cond_e

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_e
    const/4 v4, 0x2

    if-eqz v0, :cond_10

    iget-boolean v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    if-nez v5, :cond_10

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v5

    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v4, "Turn off roaming indicator as voice is LTE or NR"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_f
    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_10
    if-nez v0, :cond_11

    iget-boolean v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    if-eqz v5, :cond_11

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_11
    iget v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    if-gt v5, v4, :cond_12

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_12
    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v2, v4}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    goto :goto_2

    :cond_13
    :goto_1
    const-string v4, "Turn off roaming indicator if !isPrlLoaded or voice RAT is unknown"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4, v2}, Landroid/telephony/ServiceState;->setCdmaRoamingIndicator(I)V

    :cond_14
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    if-eqz v2, :cond_15

    iget-object v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v2

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v6, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconIndex(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaEriIconIndex(I)V

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriManager:Lcom/android/internal/telephony/cdma/EriManager;

    iget v6, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/telephony/cdma/EriManager;->getCdmaEriIconMode(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/ServiceState;->setCdmaEriIconMode(I)V

    :cond_15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set CDMA Roaming Indicator to: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getCdmaRoamingIndicator()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". voiceRoaming = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". dataRoaming = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", isPrlLoaded = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ". namMatch = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , mIsInPrl = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mIsInPrl:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mRoamingIndicator = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRoamingIndicator:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ", mDefaultRoamingIndicator= "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDefaultRoamingIndicator:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->pollStateDone()V

    :cond_16
    return-void
.end method

.method protected hangupAndPowerOff()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->hangupImsCall()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x36

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setRadioPower(ZLandroid/os/Message;)V

    return-void
.end method

.method protected pollStateDone()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateServiceStateNecessary()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedFromRil:Z

    if-eqz v1, :cond_0

    const-string v1, "[pollStateDone] poll servicestate will be incorrect, return"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedFromRil:Z

    invoke-super {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->pollStateDone()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected pollStateDoneforUnsol(Landroid/telephony/ServiceState;)V
    .locals 47

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v3, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateRoamingState()V

    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->useDataRegStateForDataOnlyDevices(Landroid/telephony/ServiceState;)V

    const/4 v0, 0x2

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v4}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/NetworkRegistrationInfo;->getCellIdentity()Landroid/telephony/CellIdentity;

    move-result-object v6

    invoke-virtual {v1, v2, v6}, Lcom/android/internal/telephony/UniServiceStateTracker;->setPhyCellInfoFromCellIdentity(Landroid/telephony/ServiceState;Landroid/telephony/CellIdentity;)V

    sget-boolean v6, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Poll ServiceState done:  oldSS=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] newSS=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] oldMaxDataCalls="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mMaxDataCalls:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mNewMaxDataCalls="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewMaxDataCalls:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " oldReasonDataDenied="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mReasonDataDenied:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " mNewReasonDataDenied="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewReasonDataDenied:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    :cond_1
    iget-object v6, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v6

    if-nez v6, :cond_2

    move v6, v4

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    iget-object v8, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v8

    if-eqz v8, :cond_3

    move v8, v4

    goto :goto_1

    :cond_3
    const/4 v8, 0x0

    :goto_1
    iget-object v9, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v9}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v9

    if-ne v9, v10, :cond_4

    move v9, v4

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    iget-object v11, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-ne v11, v10, :cond_5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v11

    if-eq v11, v10, :cond_5

    move v11, v4

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    new-instance v12, Landroid/util/SparseBooleanArray;

    iget-object v13, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v13}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v13

    array-length v13, v13

    invoke-direct {v12, v13}, Landroid/util/SparseBooleanArray;-><init>(I)V

    new-instance v13, Landroid/util/SparseBooleanArray;

    iget-object v14, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v14}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v14

    array-length v14, v14

    invoke-direct {v13, v14}, Landroid/util/SparseBooleanArray;-><init>(I)V

    new-instance v14, Landroid/util/SparseBooleanArray;

    iget-object v15, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v15}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v15

    array-length v15, v15

    invoke-direct {v14, v15}, Landroid/util/SparseBooleanArray;-><init>(I)V

    new-instance v15, Landroid/util/SparseBooleanArray;

    iget-object v10, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v10}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v10

    array-length v10, v10

    invoke-direct {v15, v10}, Landroid/util/SparseBooleanArray;-><init>(I)V

    move-object v10, v15

    const/4 v15, 0x0

    const/16 v17, 0x0

    iget-object v4, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLongRaw()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_7

    iget-object v4, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getOperatorAlphaShortRaw()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v4, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 v4, 0x1

    :goto_5
    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v7

    array-length v0, v7

    move-object/from16 v21, v5

    const/4 v5, 0x0

    :goto_6
    move/from16 v22, v11

    if-ge v5, v0, :cond_18

    aget v23, v7, v5

    move/from16 v24, v23

    iget-object v11, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move/from16 v25, v0

    move/from16 v0, v24

    move-object/from16 v24, v7

    const/4 v7, 0x2

    invoke-virtual {v11, v7, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v11

    nop

    invoke-virtual {v2, v7, v0}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v26

    move-object/from16 v7, v26

    if-eqz v11, :cond_8

    invoke-virtual {v11}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v26

    if-eqz v26, :cond_8

    if-eqz v9, :cond_9

    :cond_8
    if-eqz v7, :cond_9

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v26

    if-eqz v26, :cond_9

    const/16 v26, 0x1

    goto :goto_7

    :cond_9
    const/16 v26, 0x0

    :goto_7
    move/from16 v27, v26

    move/from16 v26, v15

    move/from16 v15, v27

    invoke-virtual {v12, v0, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v11, :cond_b

    invoke-virtual {v11}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v27

    if-eqz v27, :cond_b

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v27

    if-nez v27, :cond_b

    :cond_a
    const/16 v27, 0x1

    goto :goto_8

    :cond_b
    const/16 v27, 0x0

    :goto_8
    move/from16 v15, v27

    invoke-virtual {v13, v0, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eqz v11, :cond_c

    invoke-virtual {v11}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v27

    goto :goto_9

    :cond_c
    const/16 v27, 0x0

    :goto_9
    move/from16 v28, v27

    if-eqz v7, :cond_d

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getAccessNetworkTechnology()I

    move-result v27

    goto :goto_a

    :cond_d
    const/16 v27, 0x0

    :goto_a
    move/from16 v29, v27

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v27

    goto :goto_b

    :cond_e
    const/16 v27, 0x0

    :goto_b
    move/from16 v30, v27

    if-eqz v7, :cond_f

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->isUsingCarrierAggregation()Z

    move-result v27

    goto :goto_c

    :cond_f
    const/16 v27, 0x0

    :goto_c
    move/from16 v31, v27

    move/from16 v27, v15

    move/from16 v15, v28

    move/from16 v28, v9

    move/from16 v9, v29

    if-ne v15, v9, :cond_11

    move-object/from16 v29, v13

    move/from16 v13, v30

    move-object/from16 v30, v12

    move/from16 v12, v31

    if-ne v13, v12, :cond_12

    if-eqz v4, :cond_10

    goto :goto_d

    :cond_10
    move/from16 v31, v4

    const/4 v4, 0x0

    goto :goto_e

    :cond_11
    move-object/from16 v29, v13

    move/from16 v13, v30

    move-object/from16 v30, v12

    move/from16 v12, v31

    :cond_12
    :goto_d
    move/from16 v31, v4

    const/4 v4, 0x1

    :goto_e
    invoke-virtual {v14, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v15, v9, :cond_13

    const/4 v4, 0x1

    move/from16 v17, v4

    :cond_13
    if-eqz v11, :cond_14

    invoke-virtual {v11}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v4

    goto :goto_f

    :cond_14
    const/4 v4, 0x4

    :goto_f
    nop

    if-eqz v7, :cond_15

    invoke-virtual {v7}, Landroid/telephony/NetworkRegistrationInfo;->getRegistrationState()I

    move-result v23

    goto :goto_10

    :cond_15
    const/16 v23, 0x4

    :goto_10
    move/from16 v32, v23

    move-object/from16 v33, v7

    move/from16 v7, v32

    if-eq v4, v7, :cond_16

    move/from16 v32, v9

    const/4 v9, 0x1

    goto :goto_11

    :cond_16
    move/from16 v32, v9

    const/4 v9, 0x0

    :goto_11
    invoke-virtual {v10, v0, v9}, Landroid/util/SparseBooleanArray;->put(IZ)V

    if-eq v4, v7, :cond_17

    const/4 v9, 0x1

    move v15, v9

    goto :goto_12

    :cond_17
    move/from16 v15, v26

    :goto_12
    add-int/lit8 v5, v5, 0x1

    move/from16 v11, v22

    move-object/from16 v7, v24

    move/from16 v0, v25

    move/from16 v9, v28

    move-object/from16 v13, v29

    move-object/from16 v12, v30

    move/from16 v4, v31

    goto/16 :goto_6

    :cond_18
    move/from16 v31, v4

    move/from16 v28, v9

    move-object/from16 v30, v12

    move-object/from16 v29, v13

    move/from16 v26, v15

    if-nez v17, :cond_19

    iget-object v0, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v4

    if-eq v0, v4, :cond_19

    const/4 v0, 0x1

    goto :goto_13

    :cond_19
    const/4 v0, 0x0

    :goto_13
    iget-object v4, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-eq v4, v5, :cond_1a

    const/4 v4, 0x1

    goto :goto_14

    :cond_1a
    const/4 v4, 0x0

    :goto_14
    iget-object v5, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrFrequencyRange()I

    move-result v7

    if-eq v5, v7, :cond_1b

    const/4 v5, 0x1

    goto :goto_15

    :cond_1b
    const/4 v5, 0x0

    :goto_15
    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v9

    if-eq v7, v9, :cond_1c

    const/4 v7, 0x1

    goto :goto_16

    :cond_1c
    const/4 v7, 0x0

    :goto_16
    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->getPrioritizedCellIdentities(Landroid/telephony/ServiceState;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_1d

    const/4 v11, 0x0

    goto :goto_17

    :cond_1d
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    move-object v11, v12

    check-cast v11, Landroid/telephony/CellIdentity;

    :goto_17
    iget-object v12, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    if-nez v12, :cond_1f

    if-eqz v11, :cond_1e

    const/4 v12, 0x1

    goto :goto_18

    :cond_1e
    const/4 v12, 0x0

    goto :goto_18

    :cond_1f
    iget-object v12, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mCellIdentity:Landroid/telephony/CellIdentity;

    invoke-virtual {v12, v11}, Landroid/telephony/CellIdentity;->isSameCell(Landroid/telephony/CellIdentity;)Z

    move-result v12

    if-nez v12, :cond_20

    const/4 v12, 0x1

    goto :goto_18

    :cond_20
    const/4 v12, 0x0

    :goto_18
    nop

    const/4 v13, 0x0

    const/4 v15, 0x1

    invoke-virtual {v2, v15}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfoListForTransportType(I)Ljava/util/List;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_19
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_21

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Landroid/telephony/NetworkRegistrationInfo;

    invoke-virtual/range {v24 .. v24}, Landroid/telephony/NetworkRegistrationInfo;->isRegistered()Z

    move-result v25

    or-int v13, v13, v25

    goto :goto_19

    :cond_21
    iget-object v15, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v15}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v15

    move-object/from16 v24, v9

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v9

    if-eq v15, v9, :cond_22

    const/4 v9, 0x1

    goto :goto_1a

    :cond_22
    const/4 v9, 0x0

    :goto_1a
    iget-object v15, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2, v15}, Landroid/telephony/ServiceState;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_23

    const/4 v15, 0x1

    goto :goto_1b

    :cond_23
    const/4 v15, 0x0

    :goto_1b
    move/from16 v25, v13

    iget-object v13, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v13}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v13

    if-nez v13, :cond_24

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v13

    if-eqz v13, :cond_24

    const/4 v13, 0x1

    goto :goto_1c

    :cond_24
    const/4 v13, 0x0

    :goto_1c
    iget-object v2, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v2

    if-nez v2, :cond_25

    const/4 v2, 0x1

    goto :goto_1d

    :cond_25
    const/4 v2, 0x0

    :goto_1d
    move-object/from16 v27, v11

    iget-object v11, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v11

    if-nez v11, :cond_26

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v11

    if-eqz v11, :cond_26

    const/4 v11, 0x1

    goto :goto_1e

    :cond_26
    const/4 v11, 0x0

    :goto_1e
    move/from16 v32, v4

    iget-object v4, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_27

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-nez v4, :cond_27

    const/4 v4, 0x1

    goto :goto_1f

    :cond_27
    const/4 v4, 0x0

    :goto_1f
    move/from16 v33, v7

    iget v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mRejectCode:I

    move/from16 v34, v5

    iget v5, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewRejectCode:I

    if-eq v7, v5, :cond_28

    const/4 v5, 0x1

    goto :goto_20

    :cond_28
    const/4 v5, 0x0

    :goto_20
    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v7

    move/from16 v35, v5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getCssIndicator()I

    move-result v5

    if-eq v7, v5, :cond_29

    const/4 v5, 0x1

    goto :goto_21

    :cond_29
    const/4 v5, 0x0

    :goto_21
    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v7}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v7

    move/from16 v36, v5

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getCellBandwidths()[I

    move-result-object v5

    if-eq v7, v5, :cond_2a

    const/4 v5, 0x1

    goto :goto_22

    :cond_2a
    const/4 v5, 0x0

    :goto_22
    const/4 v7, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move/from16 v39, v7

    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeCdmaLte()Z

    move-result v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v7, :cond_32

    :try_start_1
    iget-object v7, v1, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-static {v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v7

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->getRilDataRadioTechnologyForWwan(Landroid/telephony/ServiceState;)I

    move-result v40

    move/from16 v41, v40

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v40

    const/16 v1, 0xd

    if-nez v40, :cond_2d

    invoke-static {v7}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v40

    if-eqz v40, :cond_2b

    move/from16 v40, v5

    move/from16 v5, v41

    if-eq v5, v1, :cond_2c

    goto :goto_23

    :cond_2b
    move/from16 v40, v5

    move/from16 v5, v41

    :goto_23
    if-ne v7, v1, :cond_2e

    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v41

    if-eqz v41, :cond_2e

    :cond_2c
    const/16 v41, 0x1

    goto :goto_24

    :cond_2d
    move/from16 v40, v5

    move/from16 v5, v41

    :cond_2e
    const/16 v41, 0x0

    :goto_24
    move/from16 v39, v41

    invoke-static {v5}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v41

    if-nez v41, :cond_2f

    if-ne v5, v1, :cond_30

    :cond_2f
    invoke-static {v7}, Landroid/telephony/ServiceState;->isPsOnlyTech(I)Z

    move-result v41

    if-nez v41, :cond_30

    if-eq v7, v1, :cond_30

    const/4 v1, 0x1

    goto :goto_25

    :cond_30
    const/4 v1, 0x0

    :goto_25
    move/from16 v37, v1

    const/4 v1, 0x4

    if-lt v5, v1, :cond_31

    const/16 v1, 0x8

    if-gt v5, v1, :cond_31

    const/4 v1, 0x1

    goto :goto_26

    :cond_31
    const/4 v1, 0x0

    :goto_26
    move/from16 v38, v1

    move/from16 v1, v37

    move/from16 v5, v38

    move/from16 v7, v39

    goto :goto_27

    :cond_32
    move/from16 v40, v5

    move/from16 v1, v37

    move/from16 v5, v38

    move/from16 v7, v39

    :goto_27
    move/from16 v37, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v38, v1

    const-string v1, "pollStateDone: hasRegistered = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasDeregistered = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasDataAttached = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v30

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v30, v5

    const-string v5, " hasDataDetached = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v5, v29

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v29, v5

    const-string v5, " hasDataRegStateChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasRilVoiceRadioTechnologyChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasRilDataRadioTechnologyChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasDataTransportPreferenceChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasVoiceRoamingOn = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasVoiceRoamingOff = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasDataRoamingOn ="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasDataRoamingOff = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasLocationChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " has4gHandoff = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " hasMultiApnSupport = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v38

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v38, v5

    const-string v5, " hasLostMultiApnSupport = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v37

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v37, v5

    const-string v5, " hasCssIndicatorChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v36

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v36, v5

    const-string v5, " hasNrFrequencyRangeChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v34

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v34, v12

    const-string v12, " hasNrStateChanged = "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v12, v33

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v33, v5

    const-string v5, " hasBandwidthChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v40

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v40, v5

    const-string v5, " hasAirplaneModeOnlChanged = "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v5, v28

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v28, v5

    move-object/from16 v5, p0

    :try_start_2
    invoke-direct {v5, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    if-nez v32, :cond_34

    if-eqz v26, :cond_33

    goto :goto_28

    :cond_33
    move/from16 v23, v4

    move/from16 v39, v12

    goto :goto_2a

    :cond_34
    :goto_28
    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_35

    const v1, 0xc3c2

    goto :goto_29

    :cond_35
    const v1, 0xc3c4

    :goto_29
    move/from16 v39, v12

    const/4 v12, 0x4

    new-array v12, v12, [Ljava/lang/Object;

    move/from16 v23, v4

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v19, 0x0

    aput-object v4, v12, v19

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v18, 0x1

    aput-object v4, v12, v18

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v20, 0x2

    aput-object v4, v12, v20

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v16, 0x3

    aput-object v4, v12, v16

    invoke-static {v1, v12}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    :goto_2a
    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_37

    if-eqz v9, :cond_36

    invoke-static/range {v27 .. v27}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCidFromCellIdentity(Landroid/telephony/CellIdentity;)J

    move-result-wide v41

    move-wide/from16 v43, v41

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static/range {v43 .. v44}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v1, v12

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v1, v12

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v1, v12

    const v4, 0xc3cb

    invoke-static {v4, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RAT switched "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " -> "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v4

    invoke-static {v4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " at cell "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move v4, v11

    move-wide/from16 v11, v43

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    goto :goto_2b

    :cond_36
    move v4, v11

    goto :goto_2b

    :cond_37
    move v4, v11

    :goto_2b
    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v11, p1

    invoke-static {v1, v11}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_38

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_38
    iput-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    iput-boolean v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateChangedFromRil:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Broadcasting ServiceState : "

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->notifyServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v12

    invoke-static {v12}, Landroid/provider/Telephony$ServiceStateTable;->getUriForSubscriptionId(I)Landroid/net/Uri;

    move-result-object v12

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v11}, Lcom/android/internal/telephony/UniServiceStateTracker;->getContentValuesForServiceState(Landroid/telephony/ServiceState;)Landroid/content/ContentValues;

    move-result-object v11

    invoke-virtual {v1, v12, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v1

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v11, v12}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeServiceStateChanged(ILandroid/telephony/ServiceState;)V

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getVoiceCallSessionStats()Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;

    move-result-object v1

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/metrics/VoiceCallSessionStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mServiceStateStats:Lcom/android/internal/telephony/metrics/ServiceStateStats;

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/metrics/ServiceStateStats;->onServiceStateChanged(Landroid/telephony/ServiceState;)V

    if-eqz v9, :cond_39

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updatePhoneObject()V

    :cond_39
    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v11, "phone"

    invoke-virtual {v1, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v17, :cond_3a

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v11}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v11

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v12}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v12

    invoke-virtual {v1, v11, v12}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v11}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v11

    invoke-static {v11}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result v11

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    move/from16 v16, v4

    const/16 v4, 0x4c

    invoke-static {v4, v11, v12}, Lcom/android/internal/telephony/TelephonyStatsLog;->write(III)V

    goto :goto_2c

    :cond_3a
    move/from16 v16, v4

    :goto_2c
    if-eqz v6, :cond_3b

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mNetworkAttachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkAvailable()V

    :cond_3b
    if-eqz v8, :cond_3c

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mNetworkDetachedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v4}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mNitzState:Lcom/android/internal/telephony/NitzStateMachine;

    invoke-interface {v4}, Lcom/android/internal/telephony/NitzStateMachine;->handleNetworkUnavailable()V

    :cond_3c
    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v4

    iget-object v11, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriText:Ljava/lang/String;

    invoke-static {v11, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_3d

    const/4 v11, 0x1

    goto :goto_2d

    :cond_3d
    const/4 v11, 0x0

    :goto_2d
    iput-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mEriText:Ljava/lang/String;

    if-nez v15, :cond_3e

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v12

    if-nez v12, :cond_3f

    if-eqz v11, :cond_3f

    :cond_3e
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateSpnDisplay()V

    :cond_3f
    if-eqz v15, :cond_43

    iget-object v12, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v12}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v12

    move-object/from16 v20, v4

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v4

    if-eqz v4, :cond_40

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    goto :goto_2f

    :cond_40
    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v4

    if-nez v4, :cond_42

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v4

    if-eqz v4, :cond_41

    goto :goto_2e

    :cond_41
    const/4 v4, 0x0

    goto :goto_2f

    :cond_42
    :goto_2e
    const/4 v4, 0x1

    :goto_2f
    invoke-virtual {v1, v12, v4}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    iget-object v4, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v5, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->setRoamingType(Landroid/telephony/ServiceState;)V

    goto :goto_30

    :cond_43
    move-object/from16 v20, v4

    :goto_30
    const/4 v4, 0x0

    const/4 v12, 0x0

    if-nez v6, :cond_44

    if-eqz v8, :cond_45

    :cond_44
    const/4 v4, 0x1

    :cond_45
    if-eqz v7, :cond_46

    move-object/from16 v41, v1

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    move/from16 v42, v4

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    const/4 v4, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->notifySignalStrength()V

    goto :goto_31

    :cond_46
    move-object/from16 v41, v1

    move/from16 v42, v4

    :goto_31
    if-eqz v9, :cond_47

    const/4 v12, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->notifySignalStrength()V

    :cond_47
    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mAccessNetworksManager:Lcom/android/internal/telephony/data/AccessNetworksManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/data/AccessNetworksManager;->getAvailableTransports()[I

    move-result-object v1

    move/from16 v42, v4

    array-length v4, v1

    move/from16 v43, v12

    const/4 v12, 0x0

    :goto_32
    if-ge v12, v4, :cond_4f

    aget v44, v1, v12

    move/from16 v45, v44

    move-object/from16 v44, v1

    move/from16 v1, v45

    invoke-virtual {v14, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v45

    if-eqz v45, :cond_48

    const/16 v43, 0x1

    :cond_48
    invoke-virtual {v10, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v45

    if-nez v45, :cond_4a

    invoke-virtual {v14, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v45

    if-nez v45, :cond_4a

    if-eqz v0, :cond_49

    goto :goto_33

    :cond_49
    move/from16 v45, v0

    goto :goto_34

    :cond_4a
    :goto_33
    move/from16 v45, v0

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v0

    invoke-direct {v5, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->setDataNetworkTypeForPhone(I)V

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged(I)V

    :goto_34
    move-object/from16 v0, v30

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v30

    if-eqz v30, :cond_4b

    const/16 v42, 0x1

    move-object/from16 v30, v0

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4c

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mAttachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    goto :goto_35

    :cond_4b
    move-object/from16 v30, v0

    :cond_4c
    :goto_35
    move-object/from16 v0, v29

    invoke-virtual {v0, v1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v29

    if-eqz v29, :cond_4e

    const/16 v29, 0x1

    move-object/from16 v46, v0

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mDetachedRegistrants:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_4d
    move/from16 v42, v29

    goto :goto_36

    :cond_4e
    move-object/from16 v46, v0

    :goto_36
    add-int/lit8 v12, v12, 0x1

    move-object/from16 v1, v44

    move/from16 v0, v45

    move-object/from16 v29, v46

    goto/16 :goto_32

    :cond_4f
    move/from16 v45, v0

    move-object/from16 v46, v29

    if-eqz v22, :cond_50

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getSignalStrengthFromCi()V

    :cond_50
    if-eqz v42, :cond_51

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->logAttachChange()V

    :cond_51
    if-eqz v43, :cond_52

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->logRatChange()V

    :cond_52
    if-nez v32, :cond_53

    if-eqz v9, :cond_54

    :cond_53
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->notifyVoiceRegStateRilRadioTechnologyChanged()V

    :cond_54
    if-nez v13, :cond_55

    if-nez v2, :cond_55

    if-nez v16, :cond_55

    if-eqz v23, :cond_56

    :cond_55
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->logRoamingChange()V

    :cond_56
    if-eqz v13, :cond_57

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mVoiceRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_57
    if-eqz v2, :cond_58

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mVoiceRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_58
    if-eqz v16, :cond_59

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mDataRoamingOnRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_59
    if-eqz v23, :cond_5a

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mDataRoamingOffRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_5a
    if-eqz v39, :cond_5b

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrStateChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_5b
    if-eqz v33, :cond_5c

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrFrequencyChangedRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v0}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_5c
    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_5f

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegistrationState()I

    move-result v0

    iget-object v1, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    invoke-direct {v5, v0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->isGprsConsistent(II)Z

    move-result v0

    if-nez v0, :cond_5e

    iget-boolean v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mStartedGprsRegCheck:Z

    if-nez v0, :cond_5d

    iget-boolean v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mReportedGprsNoReg:Z

    if-nez v0, :cond_5d

    const/4 v0, 0x1

    iput-boolean v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mStartedGprsRegCheck:Z

    iget-object v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "gprs_register_check_period_ms"

    const v4, 0xea60

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0x16

    invoke-virtual {v5, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    move v4, v6

    move v12, v7

    int-to-long v6, v0

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    goto :goto_37

    :cond_5d
    move v4, v6

    move v12, v7

    goto :goto_37

    :cond_5e
    move v4, v6

    move v12, v7

    const/4 v0, 0x0

    iput-boolean v0, v5, Lcom/android/internal/telephony/UniServiceStateTracker;->mReportedGprsNoReg:Z

    goto :goto_37

    :cond_5f
    move v4, v6

    move v12, v7

    :goto_37
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v5, p0

    goto :goto_38

    :catchall_1
    move-exception v0

    move-object v5, v1

    :goto_38
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_38
.end method

.method public powerOffRadioSafely()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->hangupImsCall()V

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getPhones()[Lcom/android/internal/telephony/Phone;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/data/DataNetworkController;->areAllDataDisconnected()Z

    move-result v4

    if-nez v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "powerOffRadioSafely: Data is active on phone "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Wait for all data disconnect."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mDataDisconnectedCallback:Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;

    invoke-virtual {v4, v5}, Lcom/android/internal/telephony/data/DataNetworkController;->registerDataNetworkControllerCallback(Lcom/android/internal/telephony/data/DataNetworkController$DataNetworkControllerCallback;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/data/DataNetworkController;->tearDownAllDataNetworks(I)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_3

    sget-wide v0, Lcom/android/internal/telephony/UniServiceStateTracker;->POWER_OFF_ALL_DATA_NETWORKS_DISCONNECTED_TIMEOUT:J

    const/16 v2, 0x26

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/telephony/UniServiceStateTracker;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_3
    const-string v0, "powerOffRadioSafely: No data is connected, turn off radio now."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->hangupAndPowerOff()V

    :cond_4
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public startUpdateState(IIII)V
    .locals 3

    invoke-static {p1}, Lcom/android/internal/telephony/UniTeleUtils;->getRegStateFromAidlRegState(I)I

    move-result p1

    invoke-static {p3}, Lcom/android/internal/telephony/UniTeleUtils;->getRegStateFromAidlRegState(I)I

    move-result p3

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/UniServiceStateTracker;->convertRegState(I)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->convertRegState(I)I

    move-result v1

    or-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRegState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mFirstStartUpdate:Z

    if-eqz v2, :cond_0

    if-eqz p4, :cond_0

    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p2

    invoke-static {p4}, Landroid/telephony/ServiceState;->rilRadioTechnologyToNetworkType(I)I

    move-result p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[startUpdateState] csRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", csRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psRegState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", psRat = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mFirstStartUpdate:Z

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/UniServiceStateTracker;->pollRegState(IIII)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mFirstStartUpdate:Z

    if-nez v0, :cond_1

    const-string v0, "[startUpdateState] ServiceState is out of service"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    iput-boolean v1, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mFirstStartUpdate:Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected updateNrStateFromPhysicalChannelConfigs(Ljava/util/List;Landroid/telephony/ServiceState;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;",
            "Landroid/telephony/ServiceState;",
            ")Z"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    return v3

    :cond_0
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getDataSpecificInfo()Landroid/telephony/DataSpecificRegistrationInfo;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/PhysicalChannelConfig;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->isNrPhysicalChannelConfig(Landroid/telephony/PhysicalChannelConfig;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Landroid/telephony/PhysicalChannelConfig;->getConnectionStatus()I

    move-result v8

    if-ne v8, v0, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v6

    move v7, v6

    const-string v8, "persist.vendor.radio.nr_display_rule"

    const-string v9, "0"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "NR_DISPLAY_RULE_PROP =  "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    const-string v9, "1"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v5, :cond_3

    const/4 v0, 0x3

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    :cond_4
    const-string v9, "2"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    if-eqz v5, :cond_5

    const/4 v0, 0x3

    goto :goto_3

    :cond_5
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->needUpdateNrStatus(Landroid/telephony/DataSpecificRegistrationInfo;)I

    move-result v0

    goto :goto_3

    :cond_6
    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getSmartNrStatus()Z

    move-result v9

    if-eqz v5, :cond_8

    iget v10, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mConnectedStatus:I

    if-eq v10, v1, :cond_7

    if-eqz v9, :cond_8

    :cond_7
    const/4 v0, 0x3

    goto :goto_3

    :cond_8
    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->updateNrState()V

    invoke-virtual {v2}, Landroid/telephony/NetworkRegistrationInfo;->getNrState()I

    move-result v7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateNrStateFromPhysicalChannelConfigs: mNrCfgValue =  "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrCfgValue:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    iget v10, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mConnectedStatus:I

    if-nez v10, :cond_9

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->needUpdateNrStatus(Landroid/telephony/DataSpecificRegistrationInfo;)I

    move-result v7

    goto :goto_2

    :cond_9
    const/4 v7, 0x0

    :goto_2
    if-eqz v9, :cond_b

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/UniServiceStateTracker;->needUpdateNrStatus(Landroid/telephony/DataSpecificRegistrationInfo;)I

    move-result v7

    if-eq v7, v0, :cond_a

    iget v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNrCfgValue:I

    if-ne v0, v1, :cond_a

    const/4 v0, 0x2

    goto :goto_3

    :cond_a
    move v0, v7

    goto :goto_3

    :cond_b
    move v0, v7

    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateNrStateFromPhysicalChannelConfigs newNrStatus : "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/UniServiceStateTracker;->log(Ljava/lang/String;)V

    if-eq v0, v6, :cond_c

    goto :goto_4

    :cond_c
    move v1, v3

    :goto_4
    invoke-virtual {v2, v0}, Landroid/telephony/NetworkRegistrationInfo;->setNrState(I)V

    invoke-virtual {p2, v2}, Landroid/telephony/ServiceState;->addNetworkRegistrationInfo(Landroid/telephony/NetworkRegistrationInfo;)V

    invoke-direct {p0, v1, v2}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateNrStateFromRat(ZLandroid/telephony/NetworkRegistrationInfo;)Z

    move-result v1

    return v1
.end method

.method protected updateOperatorNameForCellIdentity(Landroid/telephony/CellIdentity;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->updateOperatorNameForCellIdentity(Landroid/telephony/CellIdentity;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mAddLacInCarrierText:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/telephony/CellIdentity;->getPlmn()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->isCustomNetwork(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/internal/telephony/UniServiceStateTracker;->getAreaCodeFromCellIdentity(Landroid/telephony/CellIdentity;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateLacInfo(I)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateSpnDisplay()V

    :cond_0
    return-void
.end method

.method protected updateServiceStateNecessary()Z
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/telephony/ServiceState;->getNetworkRegistrationInfo(II)Landroid/telephony/NetworkRegistrationInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/telephony/NetworkRegistrationInfo;->isInService()Z

    move-result v2

    iget-object v3, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_2

    move v3, v1

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "newDataRegStateInService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newVoiceRegStateInService = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/UniServiceStateTracker;->logd(Ljava/lang/String;)V

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget v5, p0, Lcom/android/internal/telephony/UniServiceStateTracker;->mRegState:I

    if-ne v5, v1, :cond_3

    return v4

    :cond_3
    return v1
.end method

.method public updateSpnDisplay()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "enable_carrier_display_name_resolver_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateSpnDisplayCdnr()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/UniServiceStateTracker;->updateSpnDisplayLegacy()V

    :goto_0
    return-void
.end method
