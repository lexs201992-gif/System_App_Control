.class public Lcom/android/unisoc/telephony/server/RadioInteractorCore;
.super Ljava/lang/Object;
.source "RadioInteractorCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;,
        Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;,
        Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;,
        Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioState;,
        Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;
    }
.end annotation


# static fields
.field static final DBG:Z

.field private static final DEFAULT_ACK_WAKE_LOCK_TIMEOUT_MS:I = 0xc8

.field private static final DEFAULT_WAKE_LOCK_TIMEOUT_MS:I = 0xea60

.field static final EVENT_ACK_WAKE_LOCK_TIMEOUT:I = 0x4

.field static final EVENT_AIDL_PROXY_DEAD:I = 0x7

.field static final EVENT_BLOCKING_RESPONSE_TIMEOUT:I = 0x5

.field static final EVENT_RADIO_PROXY_DEAD:I = 0x6

.field static final EVENT_WAKE_LOCK_TIMEOUT:I = 0x2

.field static final EXT_DATA_SERVICE:I = 0x1

.field static final EXT_MESSAGING_SERVICE:I = 0x2

.field static final EXT_MODEM_SERVICE:I = 0x3

.field static final EXT_NETWORK_SERVICE:I = 0x4

.field public static final EXT_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

.field public static final EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

.field public static final EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

.field public static final EXT_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

.field static final EXT_RADIO_SERVICE:I = 0x0

.field static final EXT_SIM_SERVICE:I = 0x5

.field static final EXT_VOICE_SERVICE:I = 0x6

.field public static final FOR_ACK_WAKELOCK:I = 0x1

.field public static final FOR_WAKELOCK:I = 0x0

.field static final HIDL_SERVICE_NAME:[Ljava/lang/String;

.field public static final INVALID_WAKELOCK:I = -0x1

.field static final IRADIO_GET_SERVICE_DELAY_MILLIS:I = 0xfa0

.field static final LOGV:Z = false

.field static final MAX_SERVICE_IDX:I = 0x6

.field static final MIN_SERVICE_IDX:I = 0x0

.field static final RI_ACK_WAKELOCK_NAME:Ljava/lang/String; = "RI_ACK_WL"

.field static final TAG:Ljava/lang/String; = "RadioInteractor"

.field static final VDBG:Z = true


# instance fields
.field final mAckWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mAckWakeLockTimeout:I

.field volatile mAckWlSequenceNum:I

.field private mActiveWakelockWorkSource:Landroid/os/WorkSource;

.field mDate:I

.field private final mDeathRecipients:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisabledRadioServices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mEccNetdata:Ljava/lang/String;

.field private mExtDataIndication:Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;

.field private mExtDataResponse:Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;

.field private mExtMessagingIndication:Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;

.field private mExtMessagingResponse:Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;

.field private mExtModemIndication:Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;

.field private mExtModemResponse:Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;

.field private mExtNetworkIndication:Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;

.field private mExtNetworkResponse:Lcom/android/unisoc/telephony/server/ExtRadioNetworkResponse;

.field volatile mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

.field private mExtSimIndication:Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;

.field private mExtSimResponse:Lcom/android/unisoc/telephony/server/ExtRadioSimResponse;

.field private mExtVoiceIndication:Lcom/android/unisoc/telephony/server/ExtRadioVoiceIndication;

.field private mExtVoiceResponse:Lcom/android/unisoc/telephony/server/ExtRadioVoiceResponse;

.field mHasEccNetChanged:Z

.field mHasRealSimStateChanged:Z

.field public mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

.field mIsMobileNetworkSupported:Z

.field final mPhoneId:Ljava/lang/Integer;

.field private mRILDefaultWorkSource:Landroid/os/WorkSource;

.field mRadioIndication:Lcom/android/unisoc/telephony/server/RadioIndication;

.field final mRadioProxyDeathRecipient:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;

.field mRadioResponse:Lcom/android/unisoc/telephony/server/RadioResponse;

.field private mRadioVersion:Lcom/android/internal/telephony/HalVersion;

.field mRequestList:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/unisoc/telephony/server/RIRequest;",
            ">;"
        }
    .end annotation
.end field

.field final mRilHandler:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

.field private mRilVersion:I

.field private final mServiceCookies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceProxies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field public mUnsolAbnormalPowerDetectionRegistrants:Landroid/os/RegistrantList;

.field public mUnsolAtCmdRegistrants:Landroid/os/RegistrantList;

.field public mUnsolAvailableNetworksRegistrants:Landroid/os/RegistrantList;

.field public mUnsolClearCodeFallbackRegistrants:Landroid/os/RegistrantList;

.field public mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

.field public mUnsolExceptionEventsRegistrants:Landroid/os/RegistrantList;

.field public mUnsolExpireSimdRegistrants:Landroid/os/RegistrantList;

.field public mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

.field public mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

.field public mUnsolMNOPResetModemRegistrants:Landroid/os/RegistrantList;

.field public mUnsolModemStateChangedRegistrants:Landroid/os/RegistrantList;

.field public mUnsolNetworkErrorCodeRegistrants:Landroid/os/RegistrantList;

.field public mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

.field public mUnsolNsaConnStatusRegistrants:Landroid/os/RegistrantList;

.field public mUnsolPostUrspRegistrants:Landroid/os/RegistrantList;

.field public mUnsolPseudoStationInforReportRegistrants:Landroid/os/RegistrantList;

.field public mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

.field public mUnsolRachFailRegistrants:Landroid/os/RegistrantList;

.field public mUnsolRadiointeractorRegistrants:Landroid/os/RegistrantList;

.field public mUnsolRauSuccessRegistrants:Landroid/os/RegistrantList;

.field public mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

.field public mUnsolReasonsForRegRejectedRegistrants:Landroid/os/RegistrantList;

.field public mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

.field public mUnsolSimRefreshRegistrants:Landroid/os/RegistrantList;

.field public mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

.field public mUnsolSubsidyLockStateRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPCodecRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPFailRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPFallBackRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPMMRingRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPMediaStartRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPRecordVideoRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPRemoteMediaRegistrants:Landroid/os/RegistrantList;

.field public mUnsolVPStrsRegistrants:Landroid/os/RegistrantList;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field mWakeLockCount:I

.field final mWakeLockTimeout:I

.field volatile mWlSequenceNum:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmServiceCookies(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)Landroid/util/SparseArray;
    .locals 0

    iget-object p0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceCookies:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mclearWakeLock(Lcom/android/unisoc/telephony/server/RadioInteractorCore;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->clearWakeLock(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mdecrementWakeLock(Lcom/android/unisoc/telephony/server/RadioInteractorCore;Lcom/android/unisoc/telephony/server/RIRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->decrementWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mfindAndRemoveRequestFromList(Lcom/android/unisoc/telephony/server/RadioInteractorCore;I)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->findAndRemoveRequestFromList(I)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetProxyAndRequestList(Lcom/android/unisoc/telephony/server/RadioInteractorCore;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->resetProxyAndRequestList(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetResponseForTimedOutRIRequest(Lcom/android/unisoc/telephony/server/RIRequest;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getResponseForTimedOutRIRequest(Lcom/android/unisoc/telephony/server/RIRequest;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    sget-object v0, Lcom/android/internal/telephony/HalVersion;->UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    sput-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    invoke-direct {v0, v2, v2}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    new-instance v0, Lcom/android/internal/telephony/HalVersion;

    const/4 v2, 0x2

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/HalVersion;-><init>(II)V

    sput-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    const-string v0, "slot2"

    const-string v1, "slot3"

    const-string v2, "slot1"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;-><init>(Landroid/content/Context;Ljava/lang/Integer;Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Integer;Landroid/util/SparseArray;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            "Landroid/util/SparseArray<",
            "Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;",
            ">;)V"
        }
    .end annotation

    const-string v0, "RadioInteractor"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_UNKNOWN:Lcom/android/internal/telephony/HalVersion;

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWlSequenceNum:I

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWlSequenceNum:I

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDisabledRadioServices:Landroid/util/SparseArray;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceCookies:Landroid/util/SparseArray;

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mEccNetdata:Ljava/lang/String;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilVersion:I

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRadiointeractorRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPCodecRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFailRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFallBackRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPStrsRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRemoteMediaRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMMRingRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRecordVideoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMediaStartRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRauSuccessRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolClearCodeFallbackRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExpireSimdRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNetworkErrorCodeRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAvailableNetworksRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mImsNetworkStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSubsidyLockStateRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSimRefreshRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolModemStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolMNOPResetModemRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExceptionEventsRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNsaConnStatusRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolReasonsForRegRejectedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPseudoStationInforReportRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPostUrspRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAbnormalPowerDetectionRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRachFailRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/RegistrantList;

    invoke-direct {v3}, Landroid/os/RegistrantList;-><init>()V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAtCmdRegistrants:Landroid/os/RegistrantList;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    :try_start_0
    invoke-direct {p0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->isExtRadioVersion2_0()Z

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v3

    if-eqz p3, :cond_6

    const-string v4, "AIDL radio service proxy is null."

    invoke-static {v0, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->isMobileDataCapable(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mIsMobileNetworkSupported:Z

    new-instance v3, Lcom/android/unisoc/telephony/server/RadioResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/RadioResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioResponse:Lcom/android/unisoc/telephony/server/RadioResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/RadioIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/RadioIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioIndication:Lcom/android/unisoc/telephony/server/RadioIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtDataResponse:Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtDataIndication:Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtMessagingResponse:Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtMessagingIndication:Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtModemResponse:Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtModemIndication:Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioNetworkResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtNetworkResponse:Lcom/android/unisoc/telephony/server/ExtRadioNetworkResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtNetworkIndication:Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioSimResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtSimResponse:Lcom/android/unisoc/telephony/server/ExtRadioSimResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtSimIndication:Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioVoiceResponse;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceResponse;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtVoiceResponse:Lcom/android/unisoc/telephony/server/ExtRadioVoiceResponse;

    new-instance v3, Lcom/android/unisoc/telephony/server/ExtRadioVoiceIndication;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceIndication;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtVoiceIndication:Lcom/android/unisoc/telephony/server/ExtRadioVoiceIndication;

    new-instance v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilHandler:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

    new-instance v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;

    invoke-direct {v3, p0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;)V

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioProxyDeathRecipient:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;

    const/4 v3, 0x0

    :goto_1
    const/4 v4, 0x6

    if-gt v3, v4, :cond_2

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    invoke-direct {v5, p0, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;I)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDisabledRadioServices:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceCookies:Landroid/util/SparseArray;

    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v6, 0x0

    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    if-nez p3, :cond_3

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-direct {v6}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;-><init>()V

    invoke-virtual {v5, v3, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-direct {v6}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;-><init>()V

    const/4 v7, 0x2

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-direct {v6}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;-><init>()V

    const/4 v7, 0x3

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-direct {v6}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;-><init>()V

    const/4 v7, 0x4

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-direct {v6}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;-><init>()V

    const/4 v7, 0x5

    invoke-virtual {v5, v7, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    new-instance v6, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-direct {v6}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    :cond_3
    iput-object p3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    :goto_2
    const-string v5, "power"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    invoke-virtual {v5, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const-string v0, "RI_ACK_WL"

    invoke-virtual {v5, v3, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const v0, 0xea60

    const-string v3, "ro.ril.wake_lock_timeout"

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockTimeout:I

    const/16 v0, 0xc8

    invoke-static {v3, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLockTimeout:I

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    new-instance v0, Landroid/os/WorkSource;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Landroid/os/WorkSource;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/4 v0, 0x0

    :goto_3
    if-gt v0, v4, :cond_5

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    goto :goto_4

    :cond_4
    invoke-virtual {p0, v0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_5
    return-void

    :cond_6
    throw v3
.end method

.method private acquireWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;I)V
    .locals 5

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "RadioInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to aquire wakelock for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :cond_0
    packed-switch p2, :pswitch_data_0

    const-string v0, "RadioInteractor"

    goto :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWlSequenceNum:I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilHandler:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilHandler:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

    iget v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    iget v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWlSequenceNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWlSequenceNum:I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilHandler:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWlSequenceNum:I

    iput v2, v1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilHandler:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;

    iget v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockTimeout:I

    int-to-long v3, v3

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RilHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    nop

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    nop

    :goto_0
    :try_start_4
    iput p2, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Acquiring Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1

    return-void

    :catchall_2
    move-exception v0

    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private addRequest(Lcom/android/unisoc/telephony/server/RIRequest;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->acquireWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;I)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mStartTimeMs:J

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    iget v2, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v1, v2, p1}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static arrayListToPrimitiveArray(Ljava/util/ArrayList;)[I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)[I"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static arrayListToString(Ljava/util/ArrayList;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private clearRequestList(IZ)V
    .locals 7

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz p2, :cond_0

    const-string v2, "RadioInteractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "clearRequestList  mRequestList="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RIRequest;

    if-eqz p2, :cond_1

    const-string v4, "RadioInteractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v3, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v6}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/unisoc/telephony/server/RIRequest;->onError(ILjava/lang/Object;)V

    invoke-direct {p0, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->decrementWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;)V

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RIRequest;->release()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearWakeLock(I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_0
    iget v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit v2

    return v1

    :cond_0
    const-string v3, "RadioInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NOTE: mWakeLockCount is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "at time of clearing"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mActiveWakelockWorkSource:Landroid/os/WorkSource;

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v2

    :try_start_1
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-nez v3, :cond_2

    monitor-exit v2

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mAckWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    monitor-exit v2

    return v0

    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0
.end method

.method private convertNullToEmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method private decrementWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;)V
    .locals 3

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "RadioInteractor"

    goto :goto_1

    :pswitch_0
    goto :goto_2

    :pswitch_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLockCount:I

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    :goto_0
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :pswitch_2
    goto :goto_2

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Decrementing Invalid Wakelock type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const/4 v0, -0x1

    iput v0, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mWakeLockType:I

    monitor-exit p1

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private findAndRemoveRequestFromList(I)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/unisoc/telephony/server/RIRequest;

    move-object v0, v2

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private static getResponseForTimedOutRIRequest(Lcom/android/unisoc/telephony/server/RIRequest;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method private getWorkSourceClientId(Landroid/os/WorkSource;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->get(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1, v1}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInteractor"

    invoke-static {v1, v0}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->resetProxyAndRequestList(I)V

    return-void
.end method

.method private isExtRadioVersion2_0()Z
    .locals 8

    sget-object v0, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->DESCRIPTOR:Ljava/lang/String;

    sget-object v1, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    sget-object v2, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->DESCRIPTOR:Ljava/lang/String;

    sget-object v3, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    sget-object v4, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->DESCRIPTOR:Ljava/lang/String;

    sget-object v5, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x2f

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isMobileDataCapable(Landroid/content/Context;)Z
    .locals 2

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isDataCapable()Z

    move-result v1

    return v1
.end method

.method private obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/unisoc/telephony/server/RIRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->addRequest(Lcom/android/unisoc/telephony/server/RIRequest;)V

    return-object v0
.end method

.method static requestToString(I)Ljava/lang/String;
    .locals 1

    sparse-switch p0, :sswitch_data_0

    const-string v0, "<unknown request>"

    return-object v0

    :sswitch_0
    const-string v0, "RI_REQUEST_SET_FAST_RETURN_NETWORK"

    return-object v0

    :sswitch_1
    const-string v0, "RI_REQUEST_GET_NR_SPEED_AND_SIGNAL_STRENGTH"

    return-object v0

    :sswitch_2
    const-string v0, "RI_REQUEST_SET_NVCODE_TO_MISCDATA"

    return-object v0

    :sswitch_3
    const-string v0, "RI_REQUEST_READ_NVCODE_FROM_MISCDATA"

    return-object v0

    :sswitch_4
    const-string v0, "RI_REQUEST_SEND_ASYNCH_ATCMD"

    return-object v0

    :sswitch_5
    const-string v0, "RI_REQUEST_GET_IDENTITY_STATE"

    return-object v0

    :sswitch_6
    const-string v0, "RI_REQUEST_SET_RADIO_POWER_FALLBACK_WITH_TYPE"

    return-object v0

    :sswitch_7
    const-string v0, "RI_REQUEST_SET_SUP_CARD_STATE"

    return-object v0

    :sswitch_8
    const-string v0, "RI_REQUEST_GET_NSA_CONN_STATUS"

    return-object v0

    :sswitch_9
    const-string v0, "RI_REQUEST_SEND_SCREEN_INTERACTION_EXTRAS"

    return-object v0

    :sswitch_a
    const-string v0, "RI_REQUEST_SET_SCG_ALLOW"

    return-object v0

    :sswitch_b
    const-string v0, "RI_REQUEST_GET_BIG_DATA_OF_NET_AND_CALL"

    return-object v0

    :sswitch_c
    const-string v0, "RI_REQUEST_ENABLE_SMART_NR_SWITCH"

    return-object v0

    :sswitch_d
    const-string v0, "RI_REQUEST_SET_FDN_LIST"

    return-object v0

    :sswitch_e
    const-string v0, "RI_REQUEST_SET_USB_SHARE_STATE_SWITCH"

    return-object v0

    :sswitch_f
    const-string v0, "RI_REQUEST_GET_NR_SA"

    return-object v0

    :sswitch_10
    const-string v0, "RI_REQUEST_SET_NR_SA"

    return-object v0

    :sswitch_11
    const-string v0, "RI_REQUEST_ENABLE_NR_SWITCH"

    return-object v0

    :sswitch_12
    const-string v0, "RI_REQUEST_ALLFILE_FOR_ICCIO"

    return-object v0

    :sswitch_13
    const-string v0, "RI_REQUEST_GET_CPCOMLOG_VERSION"

    return-object v0

    :sswitch_14
    const-string v0, "RI_REQUEST_GET_EXCEPTION_EVENTS"

    return-object v0

    :sswitch_15
    const-string v0, "RI_REQUEST_SET_SUPP_SERVICE_FLAG"

    return-object v0

    :sswitch_16
    const-string v0, "RI_REQUEST_GET_PCBA"

    return-object v0

    :sswitch_17
    const-string v0, "RI_REQUEST_GET_NUMBER_CONTROL"

    return-object v0

    :sswitch_18
    const-string v0, "RI_REQUEST_SET_MNOP_PARAM"

    return-object v0

    :sswitch_19
    const-string v0, "RI_REQUEST_GET_SPECIAL_RATCAP"

    return-object v0

    :sswitch_1a
    const-string v0, "RI_REQUEST_GET_SIM_STATUS"

    return-object v0

    :sswitch_1b
    const-string v0, "RI_REQUEST_SET_FACILITY_LOCK"

    return-object v0

    :sswitch_1c
    const-string v0, "RI_REQUEST_GET_ACTIVE_PDP_COUNT"

    return-object v0

    :sswitch_1d
    const-string v0, "RI_REQUEST_UPDATE_CLIP"

    return-object v0

    :sswitch_1e
    const-string v0, "RI_REQUEST_QUERY_COLR"

    return-object v0

    :sswitch_1f
    const-string v0, "RI_REQUEST_QUERY_COLP"

    return-object v0

    :sswitch_20
    const-string v0, "RI_REQUEST_ICC_IO"

    return-object v0

    :sswitch_21
    const-string v0, "RI_REQUEST_GET_LTE_SPEED_AND_SIGNAL_STRENGTH"

    return-object v0

    :sswitch_22
    const-string v0, "REQUEST_SET_PS_DATA_OFF"

    return-object v0

    :sswitch_23
    const-string v0, "REQUEST_QUERY_ROOT_NODE"

    return-object v0

    :sswitch_24
    const-string v0, "RI_REQUEST_GET_SMS_BEARER"

    return-object v0

    :sswitch_25
    const-string v0, "RI_REQUEST_GET_VOLTE_ALLOWED_PLMN"

    return-object v0

    :sswitch_26
    const-string v0, "REQUEST_RESET_MODEM"

    return-object v0

    :sswitch_27
    const-string v0, "RI_REQUEST_SET_IMS_USER_AGENT"

    return-object v0

    :sswitch_28
    const-string v0, "GET_SUBSIDYLOCK_STATUS"

    return-object v0

    :sswitch_29
    const-string v0, "SET_EMERGENCY_ONLY"

    return-object v0

    :sswitch_2a
    const-string v0, "REQUEST_SET_LOCATION_INFO"

    return-object v0

    :sswitch_2b
    const-string v0, "REQUEST_GET_CNAP"

    return-object v0

    :sswitch_2c
    const-string v0, "REQUEST_ENABLE_RADIO_POWER_FALLBACK"

    return-object v0

    :sswitch_2d
    const-string v0, "REQUEST_GET_PREFERRED_NETWORK_TYPE"

    return-object v0

    :sswitch_2e
    const-string v0, "REQUEST_SET_RADIO_PREFERENCE"

    return-object v0

    :sswitch_2f
    const-string v0, "REQUEST_GET_RADIO_PREFERENCE"

    return-object v0

    :sswitch_30
    const-string v0, "REQUEST_SET_SIM_POWER_REAL"

    return-object v0

    :sswitch_31
    const-string v0, "REQUEST_QUERY_PLMN"

    return-object v0

    :sswitch_32
    const-string v0, "REQUEST_UPDATE_PLMN"

    return-object v0

    :sswitch_33
    const-string v0, "GET_TPMR_STATE"

    return-object v0

    :sswitch_34
    const-string v0, "SET_TPMR_STATE"

    return-object v0

    :sswitch_35
    const-string v0, "SHUTDOWN"

    return-object v0

    :sswitch_36
    const-string v0, "SET_PREFERRED_NETWORK_TYPE"

    return-object v0

    :sswitch_37
    const-string v0, "SEND_CMD"

    return-object v0

    :sswitch_38
    const-string v0, "REATTACH"

    return-object v0

    :sswitch_39
    const-string v0, "SET_XCAP_IP_ADDR"

    return-object v0

    :sswitch_3a
    const-string v0, "SIMMGR_GET_SIM_STATUS"

    return-object v0

    :sswitch_3b
    const-string v0, "UPDATE_OPERATOR_NAME"

    return-object v0

    :sswitch_3c
    const-string v0, "SET_SINGLE_PDN"

    return-object v0

    :sswitch_3d
    const-string v0, "UPDATE_REAL_ECCLIST"

    return-object v0

    :sswitch_3e
    const-string v0, "GET_SIMLOCK_WHITE_LIST"

    return-object v0

    :sswitch_3f
    const-string v0, "GET_SIMLOCK_DUMMYS"

    return-object v0

    :sswitch_40
    const-string v0, "GET_SIMLOCK_STATUS"

    return-object v0

    :sswitch_41
    const-string v0, "SET_FACILITY_LOCK_BY_USER"

    return-object v0

    :sswitch_42
    const-string v0, "GET_SIMLOCK_REMAIN_TIMES"

    return-object v0

    :sswitch_43
    const-string v0, "QUERY_SMS_STORAGE_MODE"

    return-object v0

    :sswitch_44
    const-string v0, "STORE_SMS_TO_SIM"

    return-object v0

    :sswitch_45
    const-string v0, "GET_SIM_CAPACITY"

    return-object v0

    :sswitch_46
    const-string v0, "EXPLICIT_CALL_TRANSFER"

    return-object v0

    :sswitch_47
    const-string v0, "SIM_GET_ATR"

    return-object v0

    :sswitch_48
    const-string v0, "ENABLE_RAU_NOTIFY"

    return-object v0

    :sswitch_49
    const-string v0, "SIM_POWER"

    return-object v0

    :sswitch_4a
    const-string v0, "GET_HD_VOICE_STATE"

    return-object v0

    :sswitch_4b
    const-string v0, "DC_FORCE_DETACH"

    return-object v0

    :sswitch_4c
    const-string v0, "ATTACH_DATACONN"

    return-object v0

    :sswitch_4d
    const-string v0, "ENABLE_LTE"

    return-object v0

    :sswitch_4e
    const-string v0, "DC_TRAFFIC_CLASS"

    return-object v0

    :sswitch_4f
    const-string v0, "VIDEOPHONE_CONTROL_IFRAME"

    return-object v0

    :sswitch_50
    const-string v0, "VIDEOPHONE_LOCAL_MEDIA"

    return-object v0

    :sswitch_51
    const-string v0, "VIDEOPHONE_STRING"

    return-object v0

    :sswitch_52
    const-string v0, "VIDEOPHONE_FALLBACK"

    return-object v0

    :sswitch_53
    const-string v0, "VIDEOPHONE_CODEC"

    return-object v0

    :sswitch_54
    const-string v0, "VIDEOPHONE_DIAL"

    return-object v0

    :sswitch_55
    const-string v0, "RESPONSE_ACKNOWLEDGEMENT"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x320 -> :sswitch_55
        0xfa1 -> :sswitch_54
        0xfa2 -> :sswitch_53
        0xfa3 -> :sswitch_52
        0xfa4 -> :sswitch_51
        0xfa5 -> :sswitch_50
        0xfa6 -> :sswitch_4f
        0xfa7 -> :sswitch_4e
        0xfa8 -> :sswitch_4d
        0xfa9 -> :sswitch_4c
        0xfaa -> :sswitch_4b
        0xfab -> :sswitch_4a
        0xfac -> :sswitch_49
        0xfad -> :sswitch_48
        0xfae -> :sswitch_47
        0xfaf -> :sswitch_46
        0xfb0 -> :sswitch_45
        0xfb1 -> :sswitch_44
        0xfb2 -> :sswitch_43
        0xfb3 -> :sswitch_42
        0xfb4 -> :sswitch_41
        0xfb5 -> :sswitch_40
        0xfb6 -> :sswitch_3f
        0xfb7 -> :sswitch_3e
        0xfb8 -> :sswitch_3d
        0xfb9 -> :sswitch_3c
        0xfba -> :sswitch_3b
        0xfbb -> :sswitch_3a
        0xfbc -> :sswitch_39
        0xfbd -> :sswitch_38
        0xfbe -> :sswitch_37
        0xfbf -> :sswitch_36
        0xfc0 -> :sswitch_35
        0xfc1 -> :sswitch_34
        0xfc2 -> :sswitch_33
        0xfc4 -> :sswitch_32
        0xfc5 -> :sswitch_31
        0xfc6 -> :sswitch_30
        0xfc7 -> :sswitch_2f
        0xfc8 -> :sswitch_2e
        0xfca -> :sswitch_2d
        0xfcb -> :sswitch_2c
        0xfcc -> :sswitch_2b
        0xfcd -> :sswitch_2a
        0xfce -> :sswitch_29
        0xfcf -> :sswitch_28
        0xfd0 -> :sswitch_27
        0xfd1 -> :sswitch_26
        0xfd2 -> :sswitch_25
        0xfd3 -> :sswitch_24
        0xfd4 -> :sswitch_23
        0xfd5 -> :sswitch_22
        0xfd6 -> :sswitch_21
        0xfd7 -> :sswitch_20
        0xfd8 -> :sswitch_1f
        0xfd9 -> :sswitch_1e
        0xfda -> :sswitch_1d
        0xfdb -> :sswitch_1c
        0xfdc -> :sswitch_1b
        0xfdd -> :sswitch_1a
        0xfde -> :sswitch_19
        0xfdf -> :sswitch_18
        0xfe0 -> :sswitch_17
        0xfe1 -> :sswitch_16
        0xfe2 -> :sswitch_15
        0xfe3 -> :sswitch_14
        0xfe4 -> :sswitch_13
        0xfe5 -> :sswitch_12
        0xfe6 -> :sswitch_11
        0xfe7 -> :sswitch_10
        0xfe8 -> :sswitch_f
        0xfe9 -> :sswitch_e
        0xfea -> :sswitch_d
        0xfeb -> :sswitch_c
        0xfec -> :sswitch_b
        0xfed -> :sswitch_a
        0xfee -> :sswitch_9
        0xfef -> :sswitch_8
        0xff0 -> :sswitch_7
        0xff1 -> :sswitch_6
        0xff2 -> :sswitch_5
        0xff3 -> :sswitch_4
        0xff4 -> :sswitch_3
        0xff5 -> :sswitch_2
        0xff6 -> :sswitch_1
        0xff7 -> :sswitch_0
    .end sparse-switch
.end method

.method private declared-synchronized resetProxyAndRequestList(I)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_0

    :try_start_0
    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->clear()V

    :goto_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    sget-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioState;->RADIO_UNAVAILABLE:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioState;

    invoke-virtual {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setRadioState(Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioState;)V

    invoke-static {}, Lcom/android/unisoc/telephony/server/RIRequest;->resetSerial()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->clearRequestList(IZ)V

    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static responseToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const-string v0, "<unknown response>"

    return-object v0

    :pswitch_1
    const-string v0, "UNSOL_AT_CMD"

    return-object v0

    :pswitch_2
    const-string v0, "UNSOL_RACH_FAIL"

    return-object v0

    :pswitch_3
    const-string v0, "RI_UNSOL_ABNORMAL_POWER_DETECTED"

    return-object v0

    :pswitch_4
    const-string v0, "RI_UNSOL_POST_URSP"

    return-object v0

    :pswitch_5
    const-string v0, "RI_UNSOL_PSEUDO_STATION_INFORMATION"

    return-object v0

    :pswitch_6
    const-string v0, "RI_UNSOL_REG_REJECTED_SCENE_INFO"

    return-object v0

    :pswitch_7
    const-string v0, "RI_UNSOL_SIB24_STATUS"

    return-object v0

    :pswitch_8
    const-string v0, "RI_UNSOL_NSA_CONNECTION_STATUS"

    return-object v0

    :pswitch_9
    const-string v0, "UNSOL_EXCECPTION_EVENTS"

    return-object v0

    :pswitch_a
    const-string v0, "UNSOL_NR_CFG_INFO"

    return-object v0

    :pswitch_b
    const-string v0, "UNSOL_SMART_NR_CHANNGED"

    return-object v0

    :pswitch_c
    const-string v0, "RI_UNSOL_MODEM_STATE_CHANGED"

    return-object v0

    :pswitch_d
    const-string v0, "RI_UNSOL_SIM_REFRESH"

    return-object v0

    :pswitch_e
    const-string v0, "UNSOL_IMS_CSFB_VENDOR_CAUSE"

    return-object v0

    :pswitch_f
    const-string v0, "RI_UNSOL_SUBSIDYLOCK_STATE"

    return-object v0

    :pswitch_10
    const-string v0, "UNSOL_UPDATE_HD_VOICE_STATE"

    return-object v0

    :pswitch_11
    const-string v0, "UNSOL_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    :pswitch_12
    const-string v0, "UNSOL_AVAILABLE_NETWORKS"

    return-object v0

    :pswitch_13
    const-string v0, "UNSOL_EARLY_MEDIA"

    return-object v0

    :pswitch_14
    const-string v0, "UNSOL_SIMMGR_SIM_STATUS_CHANGED"

    return-object v0

    :pswitch_15
    const-string v0, "UNSOL_NETWORK_ERROR_CODE"

    return-object v0

    :pswitch_16
    const-string v0, "UNSOL_SIMLOCK_SIM_EXPIRED"

    return-object v0

    :pswitch_17
    const-string v0, "UNSOL_RI_CONNECTED"

    return-object v0

    :pswitch_18
    const-string v0, "UNSOL_CLEAR_CODE_FALLBACK"

    return-object v0

    :pswitch_19
    const-string v0, "UNSOL_RAU_NOTIFY"

    return-object v0

    :pswitch_1a
    const-string v0, "UNSOL_VIDEOPHONE_MEDIA_START"

    return-object v0

    :pswitch_1b
    const-string v0, "UNSOL_VIDEOPHONE_RECORD_VIDEO"

    return-object v0

    :pswitch_1c
    const-string v0, "UNSOL_VIDEOPHONE_RELEASING"

    return-object v0

    :pswitch_1d
    const-string v0, "UNSOL_VIDEOPHONE_MM_RING"

    return-object v0

    :pswitch_1e
    const-string v0, "UNSOL_VIDEOPHONE_REMOTE_MEDIA"

    return-object v0

    :pswitch_1f
    const-string v0, "UNSOL_VIDEOPHONE_STRING"

    return-object v0

    :pswitch_20
    const-string v0, "UNSOL_VIDEOPHONE_DSCI"

    return-object v0

    :pswitch_21
    const-string v0, "UNSOL_VIDEOPHONE_CODEC"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1388
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_0
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
    .end packed-switch
.end method

.method static retToString(ILjava/lang/Object;)Ljava/lang/String;
    .locals 8

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    instance-of v0, p1, [I

    const-string v1, ", "

    const-string v2, "}"

    const-string v3, "{"

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, [I

    array-length v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    if-lez v4, :cond_2

    const/4 v5, 0x0

    add-int/lit8 v6, v5, 0x1

    aget v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_1

    const-string v0, "***"

    return-object v0

    :cond_1
    return-object v0

    :goto_0
    if-ge v6, v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    aget v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_5

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    array-length v4, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v5

    if-lez v4, :cond_4

    const/4 v5, 0x0

    add-int/lit8 v6, v5, 0x1

    aget-object v5, v0, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    if-ge v6, v4, :cond_4

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    add-int/lit8 v7, v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v6, v7

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    :pswitch_data_0
    .packed-switch 0xfdd
        :pswitch_0
    .end packed-switch
.end method

.method private sendAck(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    const/16 v1, 0x320

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RIRequest;->obtain(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->acquireWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;I)V

    const-string v1, "sendAck: "

    const-string v3, "sendAck"

    const-string v4, "Error trying to send ack, radioProxy = null"

    const-string v5, "RadioInteractor"

    if-nez p1, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->responseAcknowledgement()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    const/4 v6, 0x0

    invoke-direct {p0, v6, v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    goto :goto_3

    :cond_1
    invoke-virtual {p0, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    :try_start_1
    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->responseAcknowledgement()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    goto :goto_3

    :catch_1
    move-exception v4

    invoke-direct {p0, p1, v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RIRequest;->release()V

    return-void
.end method

.method static serviceToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "EXT_VOICE"

    return-object v0

    :pswitch_1
    const-string v0, "EXT_SIM"

    return-object v0

    :pswitch_2
    const-string v0, "EXT_NETWORK"

    return-object v0

    :pswitch_3
    const-string v0, "EXT_MODEM"

    return-object v0

    :pswitch_4
    const-string v0, "EXT_MESSAGING"

    return-object v0

    :pswitch_5
    const-string v0, "EXT_DATA"

    return-object v0

    :pswitch_6
    const-string v0, "EXT_RADIO"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public attachData(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfa9

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->attachData(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "attachData"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableLTE(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfa8

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->enableLTE(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "enableLTE"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableNrSwitch(IILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfe6

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mode :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->enableNrSwitch(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "enableNrSwitch"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "enableNrSwitch : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public enableRadioPowerFallback(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfcb

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->enableRadioPowerFallback(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "enableRadioPowerFallback"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableRadioPowerFallbackWithScenarioId(ZILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfcb

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " scenarioId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->enableRadioPowerFallbackWithScenarioId(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "enableRadioPowerFallbackWithScenarioId"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableRauNotify(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfad

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->enableRauNotify(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "enableRauNotify"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public enableSmartNrSwitch(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfeb

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->enableSmartNrSwitch(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "enableSmartNrSwitch"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "enableSmartNrSwitch : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public explicitCallTransfer(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfaf

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->explicitCallTransfer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "explicitCallTransfer"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public forceDetachDataConn(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfaa

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->forceDetachDataConn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "forceDetachDataConn"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getActivePdpCount(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfdb

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->getActivePdpCount(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "getActivePdpCount"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getBigDataOfNetAndCall(IIZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfec

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "appId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "moduleId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "ifQuery :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getBigDataOfNetAndCall(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getBigDataOfNetAndCall"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getBigDataOfNetAndCall : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p4, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getCNAP(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfcc

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->getCNAP(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "getCNAP"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getCpComLogVersion(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfa9

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->getCpComLogVersion(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "getCpComLogVersion"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getCpComLogVersion : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getExceptionEvents(IIIILandroid/os/Message;)V
    .locals 8

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfe3

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p5, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v7, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v7, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    move-object v1, v0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->getExceptionEvents(IIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x3

    const-string v3, "getExceptionEvents"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getExceptionEvents : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p5, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p5}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public declared-synchronized getExtRadioProxy(Landroid/os/Message;)Lvendor/sprd/hardware/radio/V1_0/IExtRadio;
    .locals 7

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mIsMobileNetworkSupported:Z

    const/4 v2, 0x1

    if-nez v0, :cond_2

    const-string v0, "RadioInteractor"

    const-string v3, "getExtRadioProxy: Not calling getService(): wifi-only"

    invoke-static {v0, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    nop

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_2
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDisabledRadioServices:Landroid/util/SparseArray;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "RadioInteractor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getExtRadioProxy: mExtRadioProxy for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is disabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_4

    :cond_4
    :try_start_4
    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_5

    move v4, v3

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_0
    aget-object v0, v0, v4

    invoke-static {v0, v2}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    const-string v0, "RadioInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtRadioProxy_V1.1 mExtRadioProxy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/util/NoSuchElementException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_5
    const-string v4, "RadioInteractor"

    const-string v5, "getExtRadioProxy_V1.1: NoSuchElementException!"

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v0, :cond_7

    :try_start_6
    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    if-nez v4, :cond_6

    move v4, v3

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    aget-object v0, v0, v4

    invoke-static {v0, v2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-result-object v0

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    const-string v0, "RadioInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtRadioProxy_V1.0 mExtRadioProxy : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/util/NoSuchElementException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_7
    const-string v4, "RadioInteractor"

    const-string v5, "getExtRadioProxy_V1.0: NoSuchElementException!"

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    :goto_3
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioProxyDeathRecipient:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    invoke-interface {v0, v4, v5, v6}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioResponse:Lcom/android/unisoc/telephony/server/RadioResponse;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioIndication:Lcom/android/unisoc/telephony/server/RadioIndication;

    invoke-interface {v0, v3, v4}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setExtResponseFunctions(Lvendor/sprd/hardware/radio/V1_0/IExtRadioResponse;Lvendor/sprd/hardware/radio/V1_0/IExtRadioIndication;)V

    goto :goto_4

    :cond_8
    const-string v0, "RadioInteractor"

    const-string v3, "getExtRadioProxy: mExtRadioProxy == null"

    invoke-static {v0, v3}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_4
    goto :goto_5

    :catch_2
    move-exception v0

    :try_start_8
    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    const-string v3, "RadioInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ExtRadioProxy getService/setExtResponseFunctions: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    if-nez v0, :cond_9

    const-string v0, "RadioInteractor"

    const-string v3, "getExtRadioProxy: mExtRadioProxy == null"

    invoke-static {v0, v3}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    nop

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v0

    invoke-static {p1, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_9
    const-string v0, "RadioInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExtRadioProxy mExtRadioProxy : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtRadioProxy:Lvendor/sprd/hardware/radio/V1_0/IExtRadio;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mIsMobileNetworkSupported:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const-string v0, "RadioInteractor"

    const-string v3, "getExtRadioProxy: Not calling getService(): wifi-only"

    invoke-static {v0, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    nop

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v0

    invoke-static {p2, v1, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceProxies:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_2

    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_2
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "RadioInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtRadioServiceProxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->serviceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_3
    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "RadioInteractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtRadioVoiceServiceProxy binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    move-object v5, v0

    check-cast v5, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-static {v3}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;)V

    goto/16 :goto_0

    :pswitch_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "RadioInteractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtRadioSimServiceProxy binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    move-object v5, v0

    check-cast v5, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-static {v3}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;)V

    goto/16 :goto_0

    :pswitch_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "RadioInteractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtRadioNetworkServiceProxy binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    move-object v5, v0

    check-cast v5, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-static {v3}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;)V

    goto/16 :goto_0

    :pswitch_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "RadioInteractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtRadioModemServiceProxy binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    move-object v5, v0

    check-cast v5, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-static {v3}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;)V

    goto/16 :goto_0

    :pswitch_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "RadioInteractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtRadioMessagingServiceProxy binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    move-object v5, v0

    check-cast v5, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-static {v3}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;)V

    goto :goto_0

    :pswitch_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v5, v4, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    const-string v5, "RadioInteractor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExtRadioDataServiceProxy binder: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    aget-object v4, v4, v7

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    move-object v5, v0

    check-cast v5, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-static {v3}, Lvendor/unisoc/hardware/radio/data/IExtRadioData$Stub;->asInterface(Landroid/os/IBinder;)Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->setAidl(Lcom/android/internal/telephony/HalVersion;Lvendor/unisoc/hardware/radio/data/IExtRadioData;)V

    :cond_4
    :goto_0
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_5

    :try_start_3
    sget-object v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4, v2}, Lvendor/sprd/hardware/radio/V1_1/IExtRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/V1_1/IExtRadio;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/sprd/hardware/radio/V1_0/IExtRadio;)V
    :try_end_3
    .catch Ljava/util/NoSuchElementException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_4
    const-string v4, "RadioInteractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtRadioServiceProxy NoSuchElementException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->less(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_6

    :try_start_5
    sget-object v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_0:Lcom/android/internal/telephony/HalVersion;

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    invoke-static {v4, v2}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->getService(Ljava/lang/String;Z)Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->setHidl(Lcom/android/internal/telephony/HalVersion;Lvendor/sprd/hardware/radio/V1_0/IExtRadio;)V
    :try_end_5
    .catch Ljava/util/NoSuchElementException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_6
    const-string v4, "RadioInteractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExtRadioServiceProxy NoSuchElementException: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isAidl()Z

    move-result v3

    if-eqz v3, :cond_7

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_6
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->getAidl()Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    move-result-object v4

    invoke-interface {v4}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    move-object v3, v0

    check-cast v3, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->getAidl()Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtVoiceResponse:Lcom/android/unisoc/telephony/server/ExtRadioVoiceResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtVoiceIndication:Lcom/android/unisoc/telephony/server/ExtRadioVoiceIndication;

    invoke-interface {v3, v4, v5}, Lvendor/unisoc/hardware/radio/voice/IExtRadioVoice;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/voice/IExtRadioVoiceResponse;Lvendor/unisoc/hardware/radio/voice/IExtRadioVoiceIndication;)V

    goto/16 :goto_3

    :pswitch_7
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getAidl()Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    move-result-object v4

    invoke-interface {v4}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    move-object v3, v0

    check-cast v3, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getAidl()Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtSimResponse:Lcom/android/unisoc/telephony/server/ExtRadioSimResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtSimIndication:Lcom/android/unisoc/telephony/server/ExtRadioSimIndication;

    invoke-interface {v3, v4, v5}, Lvendor/unisoc/hardware/radio/sim/IExtRadioSim;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/sim/IExtRadioSimResponse;Lvendor/unisoc/hardware/radio/sim/IExtRadioSimIndication;)V

    goto/16 :goto_3

    :pswitch_8
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getAidl()Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    move-result-object v4

    invoke-interface {v4}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    move-object v3, v0

    check-cast v3, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getAidl()Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtNetworkResponse:Lcom/android/unisoc/telephony/server/ExtRadioNetworkResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtNetworkIndication:Lcom/android/unisoc/telephony/server/ExtRadioNetworkIndication;

    invoke-interface {v3, v4, v5}, Lvendor/unisoc/hardware/radio/network/IExtRadioNetwork;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/network/IExtRadioNetworkResponse;Lvendor/unisoc/hardware/radio/network/IExtRadioNetworkIndication;)V

    goto :goto_3

    :pswitch_9
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->getAidl()Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    move-result-object v4

    invoke-interface {v4}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    move-object v3, v0

    check-cast v3, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->getAidl()Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtModemResponse:Lcom/android/unisoc/telephony/server/ExtRadioModemResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtModemIndication:Lcom/android/unisoc/telephony/server/ExtRadioModemIndication;

    invoke-interface {v3, v4, v5}, Lvendor/unisoc/hardware/radio/modem/IExtRadioModem;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/modem/IExtRadioModemResponse;Lvendor/unisoc/hardware/radio/modem/IExtRadioModemIndication;)V

    goto :goto_3

    :pswitch_a
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->getAidl()Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    move-result-object v4

    invoke-interface {v4}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    move-object v3, v0

    check-cast v3, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->getAidl()Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtMessagingResponse:Lcom/android/unisoc/telephony/server/ExtRadioMessagingResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtMessagingIndication:Lcom/android/unisoc/telephony/server/ExtRadioMessagingIndication;

    invoke-interface {v3, v4, v5}, Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessaging;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessagingResponse;Lvendor/unisoc/hardware/radio/messaging/IExtRadioMessagingIndication;)V

    goto :goto_3

    :pswitch_b
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDeathRecipients:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;

    move-object v4, v0

    check-cast v4, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->getAidl()Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    move-result-object v4

    invoke-interface {v4}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore$BinderServiceDeathRecipient;->linkToDeath(Landroid/os/IBinder;)V

    move-object v3, v0

    check-cast v3, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->getAidl()Lvendor/unisoc/hardware/radio/data/IExtRadioData;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtDataResponse:Lcom/android/unisoc/telephony/server/ExtRadioDataResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mExtDataIndication:Lcom/android/unisoc/telephony/server/ExtRadioDataIndication;

    invoke-interface {v3, v4, v5}, Lvendor/unisoc/hardware/radio/data/IExtRadioData;->setExtResponseFunctions(Lvendor/unisoc/hardware/radio/data/IExtRadioDataResponse;Lvendor/unisoc/hardware/radio/data/IExtRadioDataIndication;)V

    nop

    :goto_3
    goto :goto_4

    :cond_7
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v4, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v3

    if-nez v3, :cond_8

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->getHidl()Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioProxyDeathRecipient:Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioProxyDeathRecipient;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mServiceCookies:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v5

    invoke-interface {v3, v4, v5, v6}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->getHidl()Lvendor/sprd/hardware/radio/V1_0/IExtRadio;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioResponse:Lcom/android/unisoc/telephony/server/RadioResponse;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioIndication:Lcom/android/unisoc/telephony/server/RadioIndication;

    invoke-interface {v3, v4, v5}, Lvendor/sprd/hardware/radio/V1_0/IExtRadio;->setExtResponseFunctions(Lvendor/sprd/hardware/radio/V1_0/IExtRadioResponse;Lvendor/sprd/hardware/radio/V1_0/IExtRadioIndication;)V

    goto :goto_4

    :cond_8
    new-instance v3, Ljava/lang/AssertionError;

    const-string v4, "extServiceProxy shouldn\'t be HIDL with HAL 2.0"

    invoke-direct {v3, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3

    :cond_9
    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDisabledRadioServices:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-interface {v3, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v3, "RadioInteractor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getExtRadioServiceProxy: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->serviceToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->HIDL_SERVICE_NAME:[Ljava/lang/String;

    iget-object v6, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is disabled"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_4
    goto :goto_5

    :catch_2
    move-exception v3

    :try_start_7
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->clear()V

    const-string v4, "RadioInteractor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ServiceProxy getService/setExtResponseFunctions: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_5
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "RadioInteractor"

    const-string v4, "getExtRadioServiceProxy: extServiceProxy == null"

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_a

    nop

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v2

    invoke-static {p2, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_a
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method public getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Landroid/os/Message;",
            ")TT;"
        }
    .end annotation

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    return-object v0

    :cond_0
    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    return-object v0

    :cond_1
    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    if-ne p1, v0, :cond_2

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    return-object v0

    :cond_2
    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    if-ne p1, v0, :cond_3

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    return-object v0

    :cond_3
    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    if-ne p1, v0, :cond_4

    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    return-object v0

    :cond_4
    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    if-ne p1, v0, :cond_5

    const/4 v0, 0x6

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(ILandroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    return-object v0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getExtRadioServiceProxy: unrecognized "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInteractor"

    invoke-static {v1, v0}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getHDVoiceState(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfab

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->getHDVoiceState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "getHDVoiceState"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getIccCardStatus(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfdd

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getIccCardStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getIccCardStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getIdentityState(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xff2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->getIdentityState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "getIdentityState"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getIdentityState : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getLteSpeedAndSignalStrength(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd6

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->requestLteSpeedAndSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getLteSpeedAndSignalStrength"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getNrSpeedAndSignalStrength(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xff6

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->requestNrSpeedAndSignalStrength(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getNrSpeedAndSignalStrength"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getNrSpeedAndSignalStrength : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getNsaConnStatus(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfef

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getNsaConnStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getNsaConnStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getNsaConnStatus : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getNumberControl(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfe0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " number "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->getNumberControl(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "getNumberControl"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public getPcba(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfe1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->getPcba(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "getPcba"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getPhoneId()I
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfca

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getPreferredNetworkTypeExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getPreferredNetworkTypeExt"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getRadioPreference(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc7

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getRadioPreference(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getRadioPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSA(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfe8

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getSA(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getSA"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "getSA : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public getSimCapacity(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getSimCapacity(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getSimCapacity"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSimlockDummys(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb6

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getSimlockDummys(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getSimlockDummys"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSimlockRemaintimes(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb3

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getSimlockRemaintimes(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getSimlockRemaintimes"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSimlockStatus(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb5

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getSimlockStatus(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getSimlockStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSimlockWhitelist(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb7

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getSimlockWhitelist(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getSimlockWhitelist"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSmsBearer(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd3

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->getSmsBearer(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    const-string v4, "getSmsBearer"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSpecialRatcap(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfde

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->getSpecialRatcap(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "getSpecialRatcap"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getSubsidyLockdyStatus(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfcf

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->getSubsidyLockdyStatus(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "getSubsidyLockdyStatus"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getTPMRState(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc2

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->getTPMRState(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    const-string v4, "getTPMRState"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public getVoLTEAllowedPLMN(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd2

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->getVoLTEAllowedPLMN(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "getVoLTEAllowedPLMN"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public iccIOForAllFile(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfe5

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->iccIOForAllFile(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "iccIOForAllFile"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "iccIOForAllFile : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public iccIOForApp(Landroid/os/Message;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v1, v0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v14}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xfd7

    iget-object v3, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v15, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RadioInteractor"

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v4, v15, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    move-object v3, v14

    move/from16 v5, p2

    move/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move-object/from16 v11, p8

    move-object/from16 v12, p9

    move-object/from16 v13, p10

    invoke-virtual/range {v3 .. v13}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->iccIOForAppExt(IIILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    const-string v4, "iccIOForApp"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyRegistrantsRilConnectionChanged(I)V
    .locals 4

    iput p1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilVersion:I

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/AsyncResult;

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, p1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public notifyUnsolAbnormalPowerDetectionRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAbnormalPowerDetectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolAtCmdRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAtCmdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolAvailableNetworksRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAvailableNetworksRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolClearCodeFallbackRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolClearCodeFallbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolEarlyMediaRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolExceptionEventsRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExceptionEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolExpireSimdRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExpireSimdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolHdStatusdRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolImsCsfbVendorCauseRegistrant(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolMNOPResetModemRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolMNOPResetModemRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolModemStateChangedRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolModemStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolNetworkErrorCodeRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNetworkErrorCodeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolNrCfgInfoRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolNsaConnStatusRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNsaConnStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolPostUrspRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPostUrspRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolPseudoStationInforReportRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPseudoStationInforReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolRIConnectedRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolRachFailRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRachFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolRauSuccessRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRauSuccessRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolRealSimStateChangedRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolReasonsForRegRejectedRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolReasonsForRegRejectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolSib24StatusRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolSimRefreshRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSimRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolSmartNrChangedRegistrants()V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    return-void
.end method

.method public notifyUnsolSubsidyLockStateRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSubsidyLockStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPCodecRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPFailRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPFallBackRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFallBackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPMMRingRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMMRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPMediaStartRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMediaStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPRecordVideoRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRecordVideoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPRemoteMediaRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRemoteMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public notifyUnsolVPStrsRegistrants(Landroid/os/AsyncResult;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPStrsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public processIndication(II)V
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->sendAck(I)V

    const-string v0, "Unsol response received; Sending ack to ril.cpp"

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLog(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processResponse(ILvendor/unisoc/hardware/radio/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 3

    iget v0, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->serial:I

    iget v1, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->error:I

    iget v2, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->type:I

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseInternal(IIII)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponse(Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 4

    iget v0, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->serial:I

    iget v1, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    iget v2, p1, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->type:I

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v0, v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseInternal(IIII)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    return-object v0
.end method

.method public processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;Ljava/lang/Object;)V
    .locals 2

    iget v0, p2, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->error:I

    iget v1, p2, Lvendor/sprd/hardware/radio/V1_0/ExtRadioResponseInfo;->type:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDoneInternal(Lcom/android/unisoc/telephony/server/RIRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public processResponseDone(Lcom/android/unisoc/telephony/server/RIRequest;Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;Ljava/lang/Object;)V
    .locals 2

    iget v0, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->error:I

    iget v1, p2, Lvendor/unisoc/hardware/radio/ExtRadioResponseInfo;->type:I

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->processResponseDoneInternal(Lcom/android/unisoc/telephony/server/RIRequest;IILjava/lang/Object;)V

    return-void
.end method

.method public processResponseDoneInternal(Lcom/android/unisoc/telephony/server/RIRequest;IILjava/lang/Object;)V
    .locals 3

    if-eqz p1, :cond_2

    const-string v0, "< "

    if-nez p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v1, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLog(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p4}, Lcom/android/unisoc/telephony/server/RIRequest;->onError(ILjava/lang/Object;)V

    :goto_0
    if-nez p3, :cond_1

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->decrementWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/unisoc/telephony/server/RIRequest;->release()V

    :cond_2
    return-void
.end method

.method public processResponseInternal(IIII)Lcom/android/unisoc/telephony/server/RIRequest;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p4, v1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRequestList:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/unisoc/telephony/server/RIRequest;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const-string v1, "RadioInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected solicited ack response! sn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->decrementWakeLock(Lcom/android/unisoc/telephony/server/RIRequest;)V

    const-string v1, "RadioInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Ack < "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->serviceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-object v0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_1
    invoke-direct {p0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->findAndRemoveRequestFromList(I)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v0

    if-nez v0, :cond_2

    const-string v1, "RadioInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processResponse: Unexpected response! serial: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1

    :cond_2
    const/4 v1, 0x2

    if-ne p4, v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->sendAck(I)V

    const-string v1, "RadioInteractor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Response received for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Sending ack to ril.cpp"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method public queryCOLP(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd8

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->queryCOLP(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "queryCOLP"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public queryCOLR(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd9

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->queryCOLR(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "queryCOLR"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public queryFacilityLockForAppExt(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfc9

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v3, "> "

    const-string v4, "RadioInteractor"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " facility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " password = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->queryFacilityLockForAppExt(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "queryFacilityLockForAppExt"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public queryPlmn(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc5

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->queryPlmn(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "queryPlmn"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public queryRootNode(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd4

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->queryRootNode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "queryRootNode"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public querySmsStorageMode(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb2

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->querySmsStorageMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    const-string v4, "querySmsStorageMode"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public reAttach(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfbd

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->reAttach(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "reAttach"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public readNvcodeFromMiscdata(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xff4

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->readNvcodeFromMiscdata(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "readNvcodeFromMiscdata"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "readNvcodeFromMiscdata : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public registerForAbnormalPowerDetection(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAbnormalPowerDetectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForAtCmd(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAtCmdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForAvailableNetworks(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAvailableNetworksRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForClearCodeFallback(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolClearCodeFallbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForEarlyMedia(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForExceptionEvents(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExceptionEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForExpireSim(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExpireSimdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForHdStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForImsCsfbVendorCause(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForMNOPResetModem(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolMNOPResetModemRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolModemStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNetowrkErrorCode(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNetworkErrorCodeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNrCfgInfo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForNsaConnStatus(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNsaConnStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForPostUrsp(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPostUrspRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForPseudoStationInforReport(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPseudoStationInforReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRachFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRachFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRauSuccess(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRauSuccessRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForRealSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-boolean v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mHasRealSimStateChanged:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    iget v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mDate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    :cond_0
    return-void
.end method

.method public registerForReasonsForRegRejected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolReasonsForRegRejectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSib24Status(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSimRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSmartNrChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForSubsidyLock(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSubsidyLockStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForUnsolRadioInteractor(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRadiointeractorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForUnsolRiConnected(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 5

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRilVersion:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    invoke-direct {v2, v4, v3, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    return-void
.end method

.method public registerForsetOnVPCodec(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPFail(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPFallBack(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFallBackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPMMRing(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMMRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPMediaStart(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMediaStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPRecordVideo(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRecordVideoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPRemoteMedia(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRemoteMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public registerForsetOnVPString(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPStrsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public requestShutdown(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->requestShutdownExt(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "requestShutdown"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public resetModem(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->resetModem(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "resetModem"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method riljLog(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInteractor"

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method riljLoge(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " [SUB"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mPhoneId:Ljava/lang/Integer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInteractor"

    invoke-static {v1, v0, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public sendAsynchAtCmd(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xff3

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oemReq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->sendCmdAsync(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "sendAsynchAtCmd"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendCmdAsync(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfbe

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cmd = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->sendCmdAsync(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "sendCmdAsync"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public sendScreenInteractionExtras(IIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p7

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v1, v0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v11}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v3, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v0

    const/4 v12, 0x6

    const-string v3, "RadioInteractor"

    if-eqz v0, :cond_1

    const/16 v0, 0xfee

    iget-object v4, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {v1, v0, v2, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v13

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "> "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v13, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "functionFlag = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v14, p1

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " imsCallId = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v15, p2

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "interactTextAckflag = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v10, p3

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "eventType = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v9, p4

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "digits = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v8, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "duration = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v7, p6

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v4, v13, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    move-object v3, v11

    move/from16 v5, p1

    move/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->sendScreenInteractionExtras(IIIIILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "sendScreenInteractionExtras"

    invoke-direct {v1, v12, v3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    move/from16 v14, p1

    move/from16 v15, p2

    const-string v0, "sendScreenInteractionExtras : REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_2

    nop

    invoke-static {v12}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v0

    const/4 v3, 0x0

    invoke-static {v2, v3, v0}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setEmergencyOnly(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfce

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " emergencyOnly = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setEmergencyOnly(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "setEmergencyOnly"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V
    .locals 9

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p6}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfdc

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v8

    sget-boolean v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v2, "> "

    const-string v3, "RadioInteractor"

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " facility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " lockstate = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " serviceClass = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " appId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v8, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->setFacilityLock(ILjava/lang/String;ZLjava/lang/String;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const/4 v2, 0x5

    const-string v3, "setFacilityLock"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setFacilityLockForUser(Ljava/lang/String;ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb4

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " facility = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " lockState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->setFacilityLockForUser(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "setFacilityLockForUser"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setFastReturnNetwork(Ljava/lang/String;IIIILandroid/os/Message;)V
    .locals 9

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p6}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xff7

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p6, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, v8, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " plmn : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rat :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " srchtype :"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " rerpThreshold "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " priority "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v8, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    move-object v1, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setFastReturnNetwork(ILjava/lang/String;IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v2, 0x4

    const-string v3, "setFastReturnNetwork"

    invoke-direct {p0, v2, v3, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setFastReturnNetwork : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p6, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p6}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setFdnList(ILjava/lang/String;Landroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const/4 v2, 0x6

    const-string v3, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfea

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " operation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "extendFdnList : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v3, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setFdnList(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "setFdnList"

    invoke-direct {p0, v2, v4, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setFdnList : REQUEST_NOT_SUPPORTED"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_2

    nop

    invoke-static {v2}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p3, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setImsUserAgent(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sipUserAgent = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setImsUserAgent(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "setImsUserAgent"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setLocationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfcd

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v3, "> "

    const-string v4, "RadioInteractor"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " longitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " latitude = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setLocationInfo(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "setLocationInfo"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public setMNOParam(ILjava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfdf

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "dataLen : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " data:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->setMNOParam(IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "setMNOParam"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setNvcodeToMiscdata(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xff4

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "nvcode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->setNvcodeToMiscdata(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "setNvcodeToMiscdata"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setNvcodeToMiscdata : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPreferredNetworkType(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfbf

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " networkType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setPreferredNetworkTypeExt(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "setPreferredNetworkTypeExt"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setPsDataOff(ZILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfd5

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " onOff = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->setPsDataOff(IZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "setPsDataOff"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRadioPowerFallbackWithType(ZIILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xff1

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " enable : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "scenarioId :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setRadioPowerFallbackWithType(IZII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "setRadioPowerFallbackWithType"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setRadioPowerFallbackWithType : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p4, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p4}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setRadioPreference(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc8

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " key = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " value = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setRadioPreference(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "setRadioPreference"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected setRadioState(Lcom/android/unisoc/telephony/server/RadioInteractorCore$RadioState;)V
    .locals 0

    return-void
.end method

.method public setSA(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_1_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfe7

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setSA(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "setSA"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setSA : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSCGAllow(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfed

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "allowSCGadd :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->setSCGAllow(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "setSCGAllow"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setSCGAllow : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setSimPowerReal(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc6

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->setSimPowerReal(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "setSimPowerReal"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSinglePDN(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb9

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isSinglePDN = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->setSinglePDN(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "setSinglePDN"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSupCardState(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xff0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " oemReq = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioModemProxy;->sendCmdAsync(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x3

    const-string v4, "sendCmdAsync"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setSuppServiceFlag(IIILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfe2

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " serviceClass = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " description = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setSSflag(IIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "setSuppServiceFlag"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTPMRState(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfc1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->setTPMRState(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "setTPMRState"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTrafficClass(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfa7

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->setTrafficClass(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "setTrafficClass"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public setUsbShareStateSwitch(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRadioVersion:Lcom/android/internal/telephony/HalVersion;

    sget-object v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->EXT_RADIO_HAL_VERSION_2_0:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result v1

    const-string v2, "RadioInteractor"

    if-eqz v1, :cond_1

    const/16 v1, 0xfe9

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " switchState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->setUsbShareStateSwitch(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "setUsbShareStateSwitch"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "setUsbShareStateSwitch : REQUEST_NOT_SUPPORTED"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_2

    nop

    const/4 v1, 0x6

    invoke-static {v1}, Lcom/android/unisoc/telephony/server/CommandException;->fromRilErrno(I)Lcom/android/unisoc/telephony/server/CommandException;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p2, v2, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setXcapIPAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfbc

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " cid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipv4Addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ipv6Addr = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioDataProxy;->setXcapIPAddress(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x1

    const-string v4, "setXcapIPAddress"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public simGetAtr(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfae

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->simGetAtr(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "simGetAtr"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public simmgrSimPower(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfac

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->simmgrSimPower(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x5

    const-string v4, "simmgrSimPower"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public storeSmsToSim(ZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioMessagingProxy;->storeSmsToSim(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x2

    const-string v4, "storeSmsToSim"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public unregisterForAbnormalPowerDetection(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAbnormalPowerDetectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForAtCmd(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAtCmdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForAvailableNetworks(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolAvailableNetworksRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForClearCodeFallback(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolClearCodeFallbackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEarlyMedia(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolEarlyMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForExceptionEvents(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExceptionEventsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForExpireSim(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolExpireSimdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHdStatusChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolHdStatusdRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsCsfbVendorCause(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolImsCsfbVendorCauseRegistrant:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMNOPResetModem(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolMNOPResetModemRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForModemStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolModemStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetowrkErrorCode(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNetworkErrorCodeRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNrCfgInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNrCfgInfoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNsaConnStatus(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolNsaConnStatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPostUrsp(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPostUrspRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPseudoStationInforReport(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolPseudoStationInforReportRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRachFail(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRachFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRauSuccess(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRauSuccessRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRealSimStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRealSimStateChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForReasonsForRegRejected(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolReasonsForRegRejectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSib24Status(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSib24StatusRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSimRefreshRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSmartNrChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSmartNrChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubsidyLock(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolSubsidyLockStateRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUnsolRadioInteractor(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRadiointeractorRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUnsolRiConnected(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolRIConnectedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPCodec(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPCodecRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPFail(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFailRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPFallBack(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPFallBackRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPMMRing(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMMRingRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPMediaStart(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPMediaStartRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPRecordVideo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRecordVideoRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPRemoteMedia(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPRemoteMediaRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPString(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mUnsolVPStrsRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method

.method public unsljLog(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method public unsljLogRet(ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNSL]< "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->responseToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->riljLog(Ljava/lang/String;)V

    return-void
.end method

.method public updateCLIP(ILandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfda

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->updateCLIP(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "updateCLIP"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateEcclist(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfb8

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ecclist = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->updateEcclist(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "updateEcclist"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updateOperatorName(Ljava/lang/String;Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfba

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " plmn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioNetworkProxy;->updateOperatorName(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x4

    const-string v4, "updateOperatorName"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public updatePlmn(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 14

    move-object v1, p0

    move-object/from16 v2, p7

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {p0, v0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;

    invoke-virtual {v11}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xfc4

    iget-object v3, v1, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v12, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "RadioInteractor"

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move v13, v0

    goto :goto_0

    :cond_0
    move v13, v0

    :goto_0
    :try_start_0
    iget v4, v12, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    move-object v3, v11

    move v5, p1

    move/from16 v6, p2

    move v7, v13

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-virtual/range {v3 .. v10}, Lcom/android/unisoc/telephony/server/ExtRadioSimProxy;->updatePlmnPriority(IIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const/4 v3, 0x5

    const-string v4, "updatePlmn"

    invoke-direct {p0, v3, v4, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public videoPhoneCodec(ILandroid/os/Bundle;Landroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfa2

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v3, "> "

    const-string v4, "RadioInteractor"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " type = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " param = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->videoPhoneCodec(IILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "videoPhoneCodec"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public videoPhoneControlIFrame(ZZLandroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfa6

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " isIFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " needIFrame = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->videoPhoneControlIFrame(IZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "videoPhoneControlIFrame"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public videoPhoneDial(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfa1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v3, "> "

    const-string v4, "RadioInteractor"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sub_address = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " clirMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->videoPhoneDial(ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "videoPhoneDial"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public videoPhoneFallback(Landroid/os/Message;)V
    .locals 5

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/16 v1, 0xfa3

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractor"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->videoPhoneFallback(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "videoPhoneFallback"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public videoPhoneLocalMedia(IIZLandroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfa5

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v3, "> "

    const-string v4, "RadioInteractor"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " datatype = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " sw = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bReplaceImg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1, p2, p3}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->videoPhoneLocalMedia(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "videoPhoneLocalMedia"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method

.method public videoPhoneString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 6

    const-class v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {p0, v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExtRadioServiceProxy(Ljava/lang/Class;Landroid/os/Message;)Lcom/android/unisoc/telephony/server/ExtRadioServiceProxy;

    move-result-object v0

    check-cast v0, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0xfa4

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->mRILDefaultWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v1, p2, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->obtainRequest(ILandroid/os/Message;Landroid/os/WorkSource;)Lcom/android/unisoc/telephony/server/RIRequest;

    move-result-object v1

    sget-boolean v2, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->DBG:Z

    const-string v3, "> "

    const-string v4, "RadioInteractor"

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " str = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RIRequest;->serialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mRequest:I

    invoke-static {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_0
    iget v2, v1, Lcom/android/unisoc/telephony/server/RIRequest;->mSerial:I

    invoke-virtual {v0, v2, p1}, Lcom/android/unisoc/telephony/server/ExtRadioVoiceProxy;->videoPhoneString(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const/4 v3, 0x6

    const-string v4, "videoPhoneString"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->handleRadioProxyExceptionForRR(ILjava/lang/String;Ljava/lang/Exception;)V

    :cond_1
    :goto_1
    return-void
.end method
