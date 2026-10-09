.class public Lcom/android/unisoc/telephony/server/RadioInteractorHandler;
.super Landroid/os/Handler;
.source "RadioInteractorHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;,
        Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;
    }
.end annotation


# static fields
.field public static final ACTION_SIMLOCK_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIMLOCK_STATE_CHANGED"

.field protected static final COMMAND_GET_RESPONSE:I = 0xc0

.field protected static final COMMAND_READ_BINARY:I = 0xb0

.field protected static final EVENT_ATTACH_DATA_DONE:I = 0xc

.field protected static final EVENT_DC_FORCE_DETACH_DONE:I = 0x21

.field protected static final EVENT_ECT_RESULT:I = 0x9

.field protected static final EVENT_ENABLE_SMART_NR_SWITCH:I = 0x44

.field protected static final EVENT_GET_ACTIVE_PDP_COUNT_DONE:I = 0x2d

.field protected static final EVENT_GET_ATR_DONE:I = 0x5

.field protected static final EVENT_GET_BIG_DATA_OF_NET_AND_CALL:I = 0x45

.field protected static final EVENT_GET_CNAP_DONE:I = 0x26

.field protected static final EVENT_GET_HD_VOICE_STATE_DONE:I = 0x6

.field protected static final EVENT_GET_ICC_STATUS_DONE:I = 0x37

.field protected static final EVENT_GET_LTE_SPEED_AND_SIGNAL_STRENGTH:I = 0x35

.field protected static final EVENT_GET_NR_SPEED_AND_SIGNAL_STRENGTH:I = 0x51

.field protected static final EVENT_GET_NSA_CONN_STATUS:I = 0x4a

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE_DONE:I = 0x1e

.field protected static final EVENT_GET_RADIO_PREFERENCE_DONE:I = 0x1c

.field protected static final EVENT_GET_REALL_SIM_STATUS_DONE:I = 0x15

.field protected static final EVENT_GET_REMIAN_TIMES_DONE:I = 0xe

.field protected static final EVENT_GET_REQUEST_RADIOINTERACTOR_DONE:I = 0x1

.field protected static final EVENT_GET_SIMLOCK_DUMMYS:I = 0x17

.field protected static final EVENT_GET_SIMLOCK_STATUS_DONE:I = 0xf

.field protected static final EVENT_GET_SIMLOCK_WHITE_LIST:I = 0x18

.field protected static final EVENT_GET_SMS_BEARER_DONE:I = 0x32

.field protected static final EVENT_GET_SPECIAL_RATCAP_DONE:I = 0x39

.field protected static final EVENT_GET_SUBSIDYLOCK_STATE_DONE:I = 0x20

.field protected static final EVENT_GET_TPMR_STATE_DONE:I = 0x2c

.field protected static final EVENT_GET_VOLTE_ALLOWED_PLMN_DONE:I = 0x31

.field protected static final EVENT_ICC_IO_DONE:I = 0x22

.field protected static final EVENT_INVOKE_ENABLE_RAU_NOTIFY_DONE:I = 0x4

.field protected static final EVENT_INVOKE_GET_SIM_CAPACITY_DONE:I = 0x3

.field protected static final EVENT_INVOKE_OEM_RIL_REQUEST_STRINGS_DONE:I = 0x2

.field protected static final EVENT_QUERY_COLP_DONE:I = 0x27

.field protected static final EVENT_QUERY_COLR_DONE:I = 0x28

.field protected static final EVENT_QUERY_FACILITY_LOCK_DONE:I = 0x2e

.field protected static final EVENT_QUERY_PLMN_DONE:I = 0x1b

.field protected static final EVENT_QUERY_SMS_STORAGE_MODE_DONE:I = 0x8

.field protected static final EVENT_REATTACH_DONE:I = 0x16

.field protected static final EVENT_REQUEST_ENABLE_NR_SWITCH:I = 0x41

.field protected static final EVENT_REQUEST_ENABLE_RADIO_POWER_FALLBACK:I = 0x1f

.field protected static final EVENT_REQUEST_ENABLE_RADIO_POWER_FALLBACK_WITH_SCENARIOID:I = 0x38

.field protected static final EVENT_REQUEST_GET_CPCOMLOG_VERSION_DONE:I = 0x40

.field protected static final EVENT_REQUEST_GET_EXCEPTION_DONE:I = 0x3f

.field protected static final EVENT_REQUEST_GET_IDENTITY_STATE:I = 0x4d

.field protected static final EVENT_REQUEST_GET_NUMBER_CONTROL:I = 0x3c

.field protected static final EVENT_REQUEST_GET_PCBA_DONE:I = 0x3d

.field protected static final EVENT_REQUEST_GET_SA:I = 0x47

.field protected static final EVENT_REQUEST_QUERY_ROOT_NODE_DONE:I = 0x33

.field protected static final EVENT_REQUEST_READ_NVCODE_FROM_MISCDATA_DONE:I = 0x4f

.field protected static final EVENT_REQUEST_RESET_MODEM_DONE:I = 0x30

.field protected static final EVENT_REQUEST_SEND_ASYNCH_ATCMD:I = 0x4e

.field protected static final EVENT_REQUEST_SEND_SCREEN_INTERACTION_EXTRAS:I = 0x49

.field protected static final EVENT_REQUEST_SET_FAST_RETURN_NETWORK:I = 0x52

.field protected static final EVENT_REQUEST_SET_FDN_LIST:I = 0x43

.field protected static final EVENT_REQUEST_SET_MNOP_PARAM:I = 0x3b

.field protected static final EVENT_REQUEST_SET_NVCODE_TO_MISCDATA_DONE:I = 0x50

.field protected static final EVENT_REQUEST_SET_PRE_NETWORK_TYPE:I = 0x11

.field protected static final EVENT_REQUEST_SET_PS_DATA_OFF:I = 0x34

.field protected static final EVENT_REQUEST_SET_RADIO_POWER_FALLBACK_WITH_TYPE:I = 0x4c

.field protected static final EVENT_REQUEST_SET_SA:I = 0x46

.field protected static final EVENT_REQUEST_SET_SIM_POWER:I = 0x10

.field protected static final EVENT_REQUEST_SET_SIM_POWER_REAL:I = 0x3a

.field protected static final EVENT_REQUEST_SET_SUPP_SERVICE_FLAG:I = 0x3e

.field protected static final EVENT_REQUEST_SET_USB_SHARE_STATE_SWITCH:I = 0x42

.field protected static final EVENT_REQUEST_SHUTDOWN_DONE:I = 0xd

.field protected static final EVENT_REQUEST_STORE_SMS_TO_SIM_DONE:I = 0x7

.field protected static final EVENT_REQUEST_UPDATE_OPERATOR_NAME:I = 0x14

.field protected static final EVENT_REQUEST_UPDTAE_REAL_ECCLIST:I = 0x12

.field protected static final EVENT_SET_ENMERGENCY_DONE:I = 0x23

.field protected static final EVENT_SET_FACILITY_LOCK_BY_USER_DONE:I = 0x25

.field protected static final EVENT_SET_FACILITY_LOCK_DONE:I = 0x36

.field protected static final EVENT_SET_IMS_USER_AGENT_DONE:I = 0x2f

.field protected static final EVENT_SET_LOCATION_INFO_DONE:I = 0x24

.field protected static final EVENT_SET_LTE_ENABLE_DONE:I = 0xb

.field protected static final EVENT_SET_RADIO_PREFERENCE_DONE:I = 0x1d

.field protected static final EVENT_SET_SCG_ALLOW:I = 0x48

.field protected static final EVENT_SET_SINGLE_PDN_DONE:I = 0x13

.field protected static final EVENT_SET_SUP_CARD_STATE:I = 0x4b

.field protected static final EVENT_SET_TPMR_STATE_DONE:I = 0x2b

.field protected static final EVENT_SET_XCAP_IP_ADDRESS_DONE:I = 0x2a

.field protected static final EVENT_TRAFFIC_CLASS_DONE:I = 0xa

.field protected static final EVENT_UNSOL_ABNORMAL_POWER_DETECTED:I = 0x79

.field protected static final EVENT_UNSOL_AT_CMD:I = 0x7b

.field protected static final EVENT_UNSOL_EARLY_MEDIA:I = 0x69

.field protected static final EVENT_UNSOL_EXCECPTION_EVENTS:I = 0x72

.field protected static final EVENT_UNSOL_EXPIRE_SIM:I = 0x68

.field protected static final EVENT_UNSOL_HD_STATUS_INFO:I = 0x6a

.field protected static final EVENT_UNSOL_IMS_CSFB_VENDOR_CAUSE:I = 0x6c

.field protected static final EVENT_UNSOL_MNOP_RESET_MODEM:I = 0x6f

.field protected static final EVENT_UNSOL_MODEM_STATE_CHANGED:I = 0x6e

.field protected static final EVENT_UNSOL_NR_CFG_INFO_CHANGED:I = 0x71

.field protected static final EVENT_UNSOL_NSA_CONNECTION_STATUS:I = 0x73

.field protected static final EVENT_UNSOL_POST_URSP:I = 0x78

.field protected static final EVENT_UNSOL_PSEUDO_STATION_INFORMATION:I = 0x76

.field protected static final EVENT_UNSOL_RACH_FAIL:I = 0x7a

.field protected static final EVENT_UNSOL_RADIOINTERACTOR:I = 0x64

.field protected static final EVENT_UNSOL_RADIOINTERACTOR_EMBMS:I = 0x65

.field protected static final EVENT_UNSOL_RAU_SUCCESS:I = 0x77

.field protected static final EVENT_UNSOL_REG_REJECTED_SCENE_INFO:I = 0x75

.field protected static final EVENT_UNSOL_RI_CONNECTED:I = 0x66

.field protected static final EVENT_UNSOL_SIB24_STATUS:I = 0x74

.field protected static final EVENT_UNSOL_SIMMGR_SIM_STATUS_CHANGED:I = 0x67

.field protected static final EVENT_UNSOL_SIM_REFRESH:I = 0x6d

.field protected static final EVENT_UNSOL_SMART_NR_CHANGED:I = 0x70

.field protected static final EVENT_UNSOL_SUBSIDYLOCK_STATE:I = 0x6b

.field protected static final EVENT_UPDATE_CLIP_DONE:I = 0x29

.field protected static final EVENT_UPDATE_PLMN_DONE:I = 0x1a

.field public static final INTENT_KEY_SIMLOCK_STATE:Ljava/lang/String; = "simlock_state"

.field protected static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field protected static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field public static final TAG:Ljava/lang/String; = "RadioInteractorHandler"


# instance fields
.field private mAppState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

.field private mAppType:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

.field private mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

.field private mIccCardStatus:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;

.field private mPersoSubState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

.field private mPersonalisationLockedRegistrants:Landroid/os/RegistrantList;

.field private mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

.field private mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

.field private mSubsidyLockState:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmRadioInteractorCore(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)Lcom/android/unisoc/telephony/server/RadioInteractorCore;
    .locals 0

    iget-object p0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRadioInteractorNotifier(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;)Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;
    .locals 0

    iget-object p0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetFailedService(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;I)Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getFailedService(I)Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleGetNrSpeedAndSignalStrength(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleGetNrSpeedAndSignalStrength(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessagerForSimLock(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessagerForSimLock(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessengeForIntegerArrayList(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessengeForIntegerArrayList(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessengerForInt(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessengerForInt(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessengerForLteSpeedAndSignal(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessengerForLteSpeedAndSignal(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessengerForString(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessengerForString(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessengerForStringList(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessengerForStringList(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMessengerForVoid(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleMessengerForVoid(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResponseForIccIo(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleResponseForIccIo(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResponseForInt(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleResponseForInt(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResponseForInvokeGetSimCapacity(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleResponseForInvokeGetSimCapacity(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResponseForInvokeOemRILRequest(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleResponseForInvokeOemRILRequest(Landroid/os/Message;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleResponseForVoid(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->handleResponseForVoid(Landroid/os/Message;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/unisoc/telephony/server/RadioInteractorCore;Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mPersonalisationLockedRegistrants:Landroid/os/RegistrantList;

    sget-object v0, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->APPTYPE_UNKNOWN:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mAppType:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mSubsidyLockState:I

    iput-object p1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iput-object p2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iput-object p3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mContext:Landroid/content/Context;

    const/16 v0, 0x64

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->unsolicitedRegisters(Landroid/os/Handler;I)V

    const/16 v0, 0x66

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForRiConnected(Landroid/os/Handler;I)V

    const/16 v0, 0x65

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForRadioInteractorEmbms(Landroid/os/Handler;I)V

    const/16 v0, 0x67

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForRealSimStateChanged(Landroid/os/Handler;I)V

    const/16 v0, 0x69

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForEarlyMedia(Landroid/os/Handler;I)V

    const/16 v0, 0x6a

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForHdStatusChanged(Landroid/os/Handler;I)V

    const/16 v0, 0x6c

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForImsCsfbVendorCause(Landroid/os/Handler;I)V

    const/16 v0, 0x72

    invoke-virtual {p0, p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForExceptionEvents(Landroid/os/Handler;I)V

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RadioInteractor:SyncSender"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;-><init>(Lcom/android/unisoc/telephony/server/RadioInteractorHandler;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    :cond_0
    const/16 v1, 0x68

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForExpireSim(Landroid/os/Handler;I)V

    const/16 v1, 0x6b

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForSubsidyLock(Landroid/os/Handler;I)V

    const/16 v1, 0x6d

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForSimRefresh(Landroid/os/Handler;I)V

    const/16 v1, 0x6e

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForModemStateChanged(Landroid/os/Handler;I)V

    const/16 v1, 0x6f

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForMNOPResetModem(Landroid/os/Handler;I)V

    const/16 v1, 0x70

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForSmartNrChanged(Landroid/os/Handler;I)V

    const/16 v1, 0x71

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForNrCfgInfo(Landroid/os/Handler;I)V

    const/16 v1, 0x73

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForNsaConnStatus(Landroid/os/Handler;I)V

    const/16 v1, 0x74

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForSib24Status(Landroid/os/Handler;I)V

    const/16 v1, 0x75

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForReasonsForRegRejected(Landroid/os/Handler;I)V

    const/16 v1, 0x76

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForPseudoStationInforReport(Landroid/os/Handler;I)V

    const/16 v1, 0x77

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForRauSuccess(Landroid/os/Handler;I)V

    const/16 v1, 0x78

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForPostUrsp(Landroid/os/Handler;I)V

    const/16 v1, 0x79

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForAbnormalPowerDetection(Landroid/os/Handler;I)V

    const/16 v1, 0x7a

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForRachFail(Landroid/os/Handler;I)V

    const/16 v1, 0x7b

    invoke-virtual {p0, p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->registerForAtCmd(Landroid/os/Handler;I)V

    return-void
.end method

.method private broadcastIccStateChangedIntent(Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;)V
    .locals 4

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v0

    new-instance v1, Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "android.intent.action.VSIM_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "phoneId"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "state"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "broadcastIccStateChangedIntent intent android.intent.action.VSIM_STATE_CHANGED for phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "RadioInteractorHandler"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    return-void
.end method

.method private broadcastSimLockStateChanged(I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIMLOCK_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "simlock_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Broadcasting intent ACTION_SIMLOCK_STATE_CHANGED simLockState"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for phone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioInteractorHandler"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    invoke-static {v0, v1}, Landroid/app/ActivityManager;->broadcastStickyIntent(Landroid/content/Intent;I)V

    return-void
.end method

.method private enforceSprdModifyPermission(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.permission.MODIFY_PHONE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Neither user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nor current process has "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private getFailedService(I)Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;
    .locals 1

    packed-switch p1, :pswitch_data_0

    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;->UNKNOWN:Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;->TRANSFER:Lcom/android/unisoc/telephony/server/RadioInteractorCore$SuppService;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method private handleGetNrSpeedAndSignalStrength(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForNrSpeedAndSignal is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "hasException"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "result"

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/unisoc/telephony/linkturbo/NrSpeedAndSignalStrengthInfo;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when send Messenger for Parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleMessagerForSimLock(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const/4 v2, 0x2

    iget-object v3, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v3, [I

    const/4 v4, 0x0

    aget v3, v3, v4

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v4, v4, Lcom/android/unisoc/telephony/server/CommandException;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/unisoc/telephony/server/CommandException;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/CommandException;->getCommandError()Lcom/android/unisoc/telephony/server/CommandException$Error;

    move-result-object v4

    sget-object v5, Lcom/android/unisoc/telephony/server/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/unisoc/telephony/server/CommandException$Error;

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set facility lock result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "RadioInteractorHandler"

    invoke-static {v5, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v4

    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v4, Landroid/os/Message;->what:I

    iput v2, v4, Landroid/os/Message;->arg1:I

    iput v3, v4, Landroid/os/Message;->arg2:I

    :try_start_0
    invoke-virtual {v1, v4}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception in notifyMessenger: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private handleMessengeForIntegerArrayList(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForIntegerArray is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "hasException"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "result"

    if-nez v4, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, [I

    const/4 v7, 0x0

    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget v8, v6, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_1
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when send Messenger for IntegerList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleMessengerForInt(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForInt is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, -0x1

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    const/4 v5, 0x0

    aget v3, v4, v5

    :cond_1
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "result"

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->arg1:I

    iput v6, v5, Landroid/os/Message;->what:I

    iget-object v6, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v6}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v6

    iput v6, v5, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {v1, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception when send Messenger for int: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleMessengerForLteSpeedAndSignal(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForLteSpeedAndSignal is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "hasException"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "result"

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Lcom/android/unisoc/telephony/linkturbo/LteSpeedAndSignalStrengthInfo;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when send Messenger for Parcel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleMessengerForString(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForString is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "hasException"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "result"

    if-nez v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_0
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when send Messenger for String: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private handleMessengerForStringList(Landroid/os/Message;)V
    .locals 9

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForStringList is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->what:I

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_1

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "hasException"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v5, "result"

    if-nez v4, :cond_3

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    iget-object v7, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v6, v7

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    :goto_0
    array-length v8, v6

    if-ge v7, v8, :cond_2

    aget-object v8, v6, v7

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_2
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v6, v5, v4}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :goto_1
    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception when send Messenger for StringList: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleMessengerForVoid(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v3, "messengerForVoid is null, return."

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iput v4, v3, Landroid/os/Message;->what:I

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_1

    const-string v5, "hasException"

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_1
    invoke-virtual {v3, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :try_start_0
    invoke-virtual {v1, v3}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception when send Messenger for void: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private handleResponseForIccIo(Landroid/os/Message;)V
    .locals 11

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Messenger;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v3, "RadioInteractorHandler"

    if-nez v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;

    if-eqz v2, :cond_1

    const/4 v4, 0x0

    const/4 v5, 0x2

    iget-object v6, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->payload:[B

    if-eqz v6, :cond_0

    iget-object v6, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->payload:[B

    array-length v6, v6

    if-lez v6, :cond_0

    iget-object v6, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->payload:[B

    array-length v6, v6

    add-int/lit8 v5, v6, 0x2

    new-array v4, v5, [B

    iget-object v6, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->payload:[B

    iget-object v7, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->payload:[B

    array-length v7, v7

    const/4 v8, 0x0

    invoke-static {v6, v8, v4, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_0
    new-array v4, v5, [B

    :goto_0
    add-int/lit8 v6, v5, -0x1

    iget v7, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->sw2:I

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v5, -0x2

    iget v7, v2, Lcom/android/unisoc/telephony/server/uicc/IccIoResult;->sw1:I

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const-string v7, "payload"

    invoke-virtual {v6, v7, v4}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v7, Landroid/os/Message;->arg1:I

    :try_start_0
    invoke-virtual {v1, v7}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Exception in notifyMessenger: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    goto :goto_2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_ICC_IO_DONE: Exception: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private handleResponseForInt(Landroid/os/Message;)V
    .locals 5

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "RadioInteractorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have expection!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleResponseForInvokeGetSimCapacity(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v2, "RadioInteractorHandler"

    const-string v3, "handleMessage EVENT_INVOKE_GET_SIM_CAPACITY_DONE"

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v1

    :try_start_0
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    if-eqz v2, :cond_0

    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_0

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms]sim used:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v2, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " total:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v6, 0x1

    aget-object v7, v2, v6

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, v2, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v4, v2, v6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sms]simCapacity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v3, "ERROR"

    iput-object v3, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const-string v2, "ERROR"

    iput-object v2, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    const-string v2, "RadioInteractorHandler"

    const-string v3, "[sms]get sim capacity fail"

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private handleResponseForInvokeOemRILRequest(Landroid/os/Message;)V
    .locals 8

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    iget-object v2, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->argument:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    const/4 v3, -0x1

    const-string v4, "RadioInteractorHandler"

    const-string v5, "handleMessage EVENT_INVOKE_OEM_RIL_REQUEST_STRINGS_DONE"

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    monitor-enter v1

    :try_start_0
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_1

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    const-string v5, "RadioInteractorHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "responseData = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    array-length v5, v2

    if-lez v5, :cond_0

    const/4 v5, 0x0

    aput-object v4, v2, v5

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v4, Lcom/android/unisoc/telephony/server/CommandException;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/CommandException;->getCommandError()Lcom/android/unisoc/telephony/server/CommandException$Error;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/CommandException$Error;->ordinal()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v5

    if-lez v3, :cond_2

    mul-int/lit8 v3, v3, -0x1

    :cond_2
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v4

    goto :goto_2

    :catch_0
    move-exception v4

    :try_start_1
    const-string v5, "RadioInteractorHandler"

    const-string v6, "sendOemRilRequestRaw: Runtime Exception"

    invoke-static {v5, v6}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/unisoc/telephony/server/CommandException$Error;->GENERIC_FAILURE:Lcom/android/unisoc/telephony/server/CommandException$Error;

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/CommandException$Error;->ordinal()I

    move-result v5

    move v3, v5

    if-lez v3, :cond_3

    mul-int/lit8 v3, v3, -0x1

    :cond_3
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iput-object v4, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private handleResponseForVoid(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const-string v2, "RadioInteractorHandler"

    if-nez v1, :cond_0

    const-string v1, "handle :success"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle :fail"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private notifySimLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    .locals 6

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mAppState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;->APPSTATE_SUBSCRIPTION_PERSO:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mPersoSubState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    invoke-virtual {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->getSimLockState(Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mPersonalisationLockedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/os/AsyncResult;

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySimLockedRegistrantsIfNeeded simLockState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "RadioInteractorHandler"

    invoke-static {v2, v0}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->broadcastSimLockStateChanged(I)V

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v0, v0, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {p1, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private declared-synchronized onGetIccCardStatusDone(Landroid/os/AsyncResult;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const-string v0, "RadioInteractorHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;

    iput-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mIccCardStatus:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    iput-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    const-string v1, "RadioInteractorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Notify SIM state changed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRealSimStateChanged(I)V

    const-string v1, "persist.vendor.radio.vsim.product"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-lt v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    invoke-direct {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->broadcastIccStateChangedIntent(Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;)V

    :cond_1
    iget-object v1, v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    array-length v1, v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :try_start_2
    iget-object v1, v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->mApplications:[Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;

    aget-object v1, v1, v2

    const-string v2, "RadioInteractorHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "result =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->perso_substate:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_state:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mAppState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppState;

    iget-object v2, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->app_type:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    iput-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mAppType:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mPersoSubState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    iget-object v3, v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx;->perso_substate:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    iput-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mPersoSubState:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    const/4 v3, 0x0

    invoke-direct {p0, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->notifySimLockedRegistrantsIfNeeded(Landroid/os/Registrant;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private parsePinPukErrorResultEx(Landroid/os/AsyncResult;)I
    .locals 4

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    if-eqz v0, :cond_0

    array-length v1, v0

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parsePinPukErrorResult: attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "RadioInteractorHandler"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    aget v1, v0, v2

    return v1

    :cond_0
    const/4 v1, -0x1

    return v1
.end method


# virtual methods
.method public attachDataConn(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->attachData(ZLandroid/os/Message;)V

    return-void
.end method

.method public codecVP(ILandroid/os/Bundle;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->videoPhoneCodec(ILandroid/os/Bundle;Landroid/os/Message;)V

    return-void
.end method

.method public controlIFrame(ZZLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->videoPhoneControlIFrame(ZZLandroid/os/Message;)V

    return-void
.end method

.method public controlVPLocalMedia(IIZLandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->videoPhoneLocalMedia(IIZLandroid/os/Message;)V

    return-void
.end method

.method public dialVP(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->videoPhoneDial(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public enableNrSwitch(II)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x41

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->enableNrSwitch(IILandroid/os/Message;)V

    return-void
.end method

.method public enableRadioPowerFallback(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x1f

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->enableRadioPowerFallback(ZLandroid/os/Message;)V

    return-void
.end method

.method public enableRadioPowerFallbackWithScenarioId(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x38

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->enableRadioPowerFallbackWithScenarioId(ZILandroid/os/Message;)V

    return-void
.end method

.method public enableRauNotify()V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->enableRauNotify(Landroid/os/Message;)V

    return-void
.end method

.method public enableSmartNrSwitch(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x44

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->enableSmartNrSwitch(ILandroid/os/Message;)V

    return-void
.end method

.method public explicitCallTransfer()V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->explicitCallTransfer(Landroid/os/Message;)V

    return-void
.end method

.method public fallBackVP(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->videoPhoneFallback(Landroid/os/Message;)V

    return-void
.end method

.method public forceDetachDataConn(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->forceDetachDataConn(Landroid/os/Message;)V

    return-void
.end method

.method public getActivePdpCount()I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getActivePdpCount"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getActivePdpCount(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getActivePdpCount NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getBigDataOfNetAndCall(IIZLandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x45

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getBigDataOfNetAndCall(IIZLandroid/os/Message;)V

    return-void
.end method

.method public getCNAP(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x26

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getCNAP(Landroid/os/Message;)V

    return-void
.end method

.method public getCpComLogVersion()Ljava/lang/String;
    .locals 7

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getCpComLogVersion"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x40

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getCpComLogVersion(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "RadioInteractorHandler"

    const-string v4, "getCpComLogVersion. The request result is null."

    invoke-static {v2, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCpComLogVersion ClassCastException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getExceptionEvents(IIII)Ljava/lang/String;
    .locals 9

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getExceptionEvents"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object v8, v1

    invoke-virtual/range {v3 .. v8}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getExceptionEvents(IIIILandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    const-string v2, "RadioInteractorHandler"

    const-string v4, "getExceptionEvents. The request result is null."

    invoke-static {v2, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getExceptionEvents ClassCastException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    return-object v0
.end method

.method public getIccAppType()I
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mAppType:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;

    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$AppType;->ordinal()I

    move-result v0

    return v0
.end method

.method public getIccIdFromIccStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mIccCardStatus:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx;->iccid:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getIdentityState(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x4d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getIdentityState(Landroid/os/Message;)V

    return-void
.end method

.method public getLteSpeedAndSignalStrength(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x35

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getLteSpeedAndSignalStrength(Landroid/os/Message;)V

    return-void
.end method

.method public getNrSpeedAndSignalStrength(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x51

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getNrSpeedAndSignalStrength(Landroid/os/Message;)V

    return-void
.end method

.method public getNsaConnStatus(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x4a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getNsaConnStatus(Landroid/os/Message;)V

    return-void
.end method

.method public getNumberControl(ILjava/lang/String;)Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;
    .locals 7

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getNumberControl"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getNumberControl(ILjava/lang/String;Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "RadioInteractorHandler"

    const-string v4, "getNumberControl. The request result is null."

    invoke-static {v2, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :cond_0
    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/unisoc/telephony/numberControl/VowifiNumberControlInfo;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getNumberControl ClassCastException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getPcba()Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getPcba"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPcba(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPcba NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getPreferredNetworkType()I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPreferredNetworkType(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getPreferredNetworkType NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getRadioPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getRadioPreference"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x1c

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getRadioPreference(Ljava/lang/String;Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getRadioPreference NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getRealSimStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mCardState:Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/unisoc/telephony/server/uicc/IccCardStatusEx$CardState;->ordinal()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getSA(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x47

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSA(Landroid/os/Message;)V

    return-void
.end method

.method public getSimCapacity()Ljava/lang/String;
    .locals 7

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/4 v3, 0x3

    invoke-virtual {v2, v3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSimCapacity(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimCapacity NullPointerException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSimLockRemainTimes(I)I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getSimLockRemainTimes"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSimlockRemaintimes(ILandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimLockRemainTimes NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getSimLockState(Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;)I
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    const-string v2, "RadioInteractorHandler"

    if-ne p1, v1, :cond_0

    const-string v1, "Notifying registrants: NetworkLocked"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    goto/16 :goto_0

    :cond_0
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_1

    const-string v1, "Notifying registrants: NetworkSubsetLocked"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xd

    goto/16 :goto_0

    :cond_1
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_2

    const-string v1, "Notifying registrants: ServiceProviderLocked"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xe

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_3

    const-string v1, "Notifying registrants: corporateLocked"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SIM:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_4

    const-string v1, "Notifying registrants: simLocked"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    goto :goto_0

    :cond_4
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_5

    const-string v1, "Notifying registrants: NetworkLocked puk"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x11

    goto :goto_0

    :cond_5
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_NETWORK_SUBSET_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_6

    const-string v1, "Notifying registrants: NetworkSubsetLocked puk"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x12

    goto :goto_0

    :cond_6
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_CORPORATE_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_7

    const-string v1, "Notifying registrants: corporateLocked puk"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x14

    goto :goto_0

    :cond_7
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SERVICE_PROVIDER_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_8

    const-string v1, "Notifying registrants: ServiceProviderLocked puk"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x13

    goto :goto_0

    :cond_8
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_SIM_PUK:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_9

    const-string v1, "Notifying registrants: simLocked puk"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x10

    goto :goto_0

    :cond_9
    sget-object v1, Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;->PERSOSUBSTATE_SIM_LOCK_PERMANENTLY:Lcom/android/unisoc/telephony/server/uicc/IccCardApplicationStatusEx$PersoSubState;

    if-ne p1, v1, :cond_a

    const-string v1, "Notifying registrants: simlock permannently"

    invoke-static {v2, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x15

    goto :goto_0

    :cond_a
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getSimLockStatus(I)I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getSimLockStatus"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSimlockStatus(ILandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSimLockStatus NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getSimlockDummys()[I
    .locals 3

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x17

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSimlockDummys(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, [I

    return-object v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getSimlockWhitelist(I)Ljava/lang/String;
    .locals 7

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v3, 0x18

    invoke-virtual {v2, v3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3, p1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSimlockWhitelist(ILandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimlockWhitelist NullPointerException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSmsBearer()I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x32

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSmsBearer(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSmsBearer NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception v2

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getSpecialRatcap(Landroid/os/Messenger;II)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x39

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSpecialRatcap(ILandroid/os/Message;)V

    return-void
.end method

.method public getSubsidyLockStatus()I
    .locals 6

    iget v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mSubsidyLockState:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "RadioInteractorHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no necessary to get from modem return "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mSubsidyLockState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mSubsidyLockState:I

    return v0

    :cond_0
    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getSubsidyLockdyStatus"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getSubsidyLockdyStatus(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPlmn getSubsidyLockStatus happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    move v2, v3

    :goto_0
    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get SubsidyLock Status from modem "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mSubsidyLockState:I

    return v2

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public getTPMRState(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x2c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getTPMRState(Landroid/os/Message;)V

    return-void
.end method

.method public getVoLTEAllowedPLMN()I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "getVoLTEAllowedPLMN"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x31

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getVoLTEAllowedPLMN(Landroid/os/Message;)V

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getVoLTEAllowedPLMN NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catch_1
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    const-string v4, "getVoLTEAllowedPLMN ClassCastException"

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x37

    const-string v2, "result = "

    const-string v3, "RadioInteractorHandler"

    sparse-switch v0, :sswitch_data_0

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized event unsol radiointeractor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_0

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_0

    const-string v1, "EVENT_UNSOL_AT_CMD"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyAtCmd(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolAtCmd exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "EVENT_UNSOL_RACH_FAIL "

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRachFail(I)V

    goto/16 :goto_1

    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    const-string v1, "EVENT_UNSOL_ABNORMAL_POWER_DETECTED"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyAbnormalPowerDetection(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolAbnormalPowerDetection exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "EVENT_UNSOL_POST_URSP"

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/String;

    array-length v2, v1

    const/4 v4, 0x1

    if-le v2, v4, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v4, v1, v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "urspType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "originalUrsp = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyPostUrspEvent([Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const-string v2, "EVENT_UNSOL_POST_URSP has error!"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    goto/16 :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsolPostUrsp exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "EVENT_UNSOL_RAU_SUCCESS"

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRauSuccess(I)V

    goto/16 :goto_1

    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_4

    const-string v1, "EVENT_UNSOL_PSEUDO_STATION_INFORMATION"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyPseudoStationInforReport(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UnsolPseudoStationInformationReport exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_5

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_5

    const-string v1, "UNSOL_REG_REJECTED_SCENE_INFO"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyReasonsForRegRejected(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedReasonsForRegRejected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_7
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_6

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_6

    const-string v1, "EVENT_UNSOL_SIB24_STATUS"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/unisoc/telephony/Sib24StatusIndication;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/Sib24StatusIndication;->getType()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/Sib24StatusIndication;->getStatus()I

    move-result v4

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifySib24StateChanegd(III)V

    goto/16 :goto_1

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedSib24StateChanged exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_7

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_UNSOL_NSA_CONNECTION_STATUS"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyNsaConnStatus(II)V

    goto/16 :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mUnsolNsaConnStatus exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_9
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_8

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_8

    const-string v1, "EVENT_UNSOL_EXCECPTION_EVENTS"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyUnsolExceptionEvents(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedExceptionEvents exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_a
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_9

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_9

    const-string v1, "EVENT_UNSOL_SIGNAL_CONNECTION_STATUS_CHANGED"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyNrCfgInfoChanegd([II)V

    goto/16 :goto_1

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedNrCfgInfo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "EVENT_UNSOL_SMART_NR_CHANGED "

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifySmartNrChanegd(I)V

    goto/16 :goto_1

    :sswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_a

    const-string v1, "EVENT_UNSOL_MNOP_RESET_MODEM"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorEventForSubscriber(I)V

    goto/16 :goto_1

    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedMNOPResetModem exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_b

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_b

    const-string v1, "EVENT_UNSOL_MODEM_STATE_CHANGED"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/unisoc/telephony/ModemStatusIndication;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/ModemStatusIndication;->getStatus()I

    move-result v3

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/ModemStatusIndication;->getAssertInfo()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyModemStateChanegd(ILjava/lang/String;I)V

    goto/16 :goto_1

    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedModemStateChanegd exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "EVENT_UNSOL_SIM_REFRESH "

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifySimRefresh(I)V

    goto/16 :goto_1

    :sswitch_f
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_c

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_c

    const-string v1, "EVENT_UNSOL_IMS_CSFB_VENDOR_CAUSE"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorImsCsfbVendorCauseInfo(Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedImsCsfbVendorCause exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_10
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_d

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_d

    const-string v1, "EVENT_UNSOL_SUBSIDYLOCK_STATE "

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iput v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mSubsidyLockState:I

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifySubsidyLockEvent(II)V

    goto/16 :goto_1

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedBandInfo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_11
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_e

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_e

    const-string v1, "EVENT_UNSOL_HD_STATUS_INFO"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorHdStatusInfo(II)V

    goto/16 :goto_1

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedHdStatusInfo exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_12
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_f

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_f

    const-string v1, "EVENT_UNSOL_EARLY_MEDIA"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorEventForEarlyMedia(II)V

    goto/16 :goto_1

    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicited early media exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_13
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_10

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_10

    const-string v1, "EVENT_UNSOL_SIMLOCK_SIM_EXPIRED "

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyExpireSimEvent(II)V

    goto/16 :goto_1

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedExpireSim exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_14
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_11

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v4, :cond_11

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_UNSOL_SIMMGR_SIM_STATUS_CHANGED - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v5}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v4, v3}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorEventForSimmgrSimStatus(II)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getIccCardStatus(Landroid/os/Message;)V

    goto/16 :goto_1

    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedRealSimStateChanged exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :sswitch_15
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_12

    const-string v2, "EVENT_UNSOL_RI_CONNECTED"

    invoke-static {v3, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {p0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getIccCardStatus(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRilConnectionChanged(I)V

    goto/16 :goto_1

    :cond_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedRiConnected exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_16
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_13

    const-string v1, "EVENT_UNSOL_RADIOINTERACTOR_EMBMS"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorEventForEmbms(I)V

    goto :goto_1

    :cond_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedRadioInteractorEmbms exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_14

    const-string v1, "EVENT_UNSOL_RADIOINTERACTOR"

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorNotifier:Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorNotifier;->notifyRadiointeractorEventForSubscriber(I)V

    goto :goto_1

    :cond_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unsolicitedRegisters exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/android/unisoc/telephony/UtilLog;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :sswitch_18
    const-string v0, "EVENT_GET_ICC_STATUS_DONE"

    invoke-static {v3, v0}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->onGetIccCardStatusDone(Landroid/os/AsyncResult;)V

    nop

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x37 -> :sswitch_18
        0x64 -> :sswitch_17
        0x65 -> :sswitch_16
        0x66 -> :sswitch_15
        0x67 -> :sswitch_14
        0x68 -> :sswitch_13
        0x69 -> :sswitch_12
        0x6a -> :sswitch_11
        0x6b -> :sswitch_10
        0x6c -> :sswitch_f
        0x6d -> :sswitch_e
        0x6e -> :sswitch_d
        0x6f -> :sswitch_c
        0x70 -> :sswitch_b
        0x71 -> :sswitch_a
        0x72 -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0x75 -> :sswitch_6
        0x76 -> :sswitch_5
        0x77 -> :sswitch_4
        0x78 -> :sswitch_3
        0x79 -> :sswitch_2
        0x7a -> :sswitch_1
        0x7b -> :sswitch_0
    .end sparse-switch
.end method

.method public iccGetAtr()Ljava/lang/String;
    .locals 7

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->simGetAtr(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccGetAtr NullPointerException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public iccIOForAllFile(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->iccIOForAllFile(Landroid/os/Message;)V

    return-void
.end method

.method public iccIOForApp(Landroid/os/Messenger;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x22

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move/from16 v5, p11

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v6, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    move-object v7, v1

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move/from16 v13, p7

    move-object/from16 v14, p8

    move-object/from16 v15, p9

    move-object/from16 v16, p10

    invoke-virtual/range {v6 .. v16}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->iccIOForApp(Landroid/os/Message;IILjava/lang/String;IIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public invokeOemRILRequestStrings(Ljava/lang/String;[Ljava/lang/String;)I
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    invoke-direct {v0, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->sendCmdAsync(Ljava/lang/String;Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invokeOemRILRequestStrings NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, -0x1

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public queryCOLP(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x27

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->queryCOLP(Landroid/os/Message;)V

    return-void
.end method

.method public queryCOLR(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x28

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->queryCOLR(Landroid/os/Message;)V

    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x2e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->queryFacilityLockForAppExt(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public queryHdVoiceState()Z
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->getHDVoiceState(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryHdVoiceState NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public queryPlmn(I)Ljava/lang/String;
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v1, "queryPlmn"

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x1b

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->queryPlmn(ILandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "queryPlmn NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return-object v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public queryRootNode()V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x33

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->queryRootNode(Landroid/os/Message;)V

    return-void
.end method

.method public querySmsStorageMode()Ljava/lang/String;
    .locals 7

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v3, 0x8

    invoke-virtual {v2, v3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->querySmsStorageMode(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    :catch_0
    move-exception v3

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "querySmsStorageMode NullPointerException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public readNvcodeFromMiscdata(Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x4f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, v2, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->readNvcodeFromMiscdata(Landroid/os/Message;)V

    return-void
.end method

.method public registerForAbnormalPowerDetection(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForAbnormalPowerDetection(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForAtCmd(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForAtCmd(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForAvailableNetworks(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForAvailableNetworks(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForClearCodeFallback(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForClearCodeFallback(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForEarlyMedia(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForEarlyMedia(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForExceptionEvents(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForExceptionEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForExpireSim(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForExpireSim(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForHdStatusChanged(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForHdStatusChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForImsCsfbVendorCause(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForImsCsfbVendorCause(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForMNOPResetModem(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForMNOPResetModem(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForModemStateChanged(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForModemStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNetowrkErrorCode(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForNetowrkErrorCode(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNrCfgInfo(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForNrCfgInfo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForNsaConnStatus(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForNsaConnStatus(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPostUrsp(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForPostUrsp(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForPseudoStationInforReport(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForPseudoStationInforReport(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRachFail(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForRachFail(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRadioInteractorEmbms(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForUnsolRadioInteractor(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRauSuccess(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForRauSuccess(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRealSimStateChanged(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForRealSimStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForReasonsForRegRejected(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForReasonsForRegRejected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForRiConnected(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForUnsolRiConnected(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSib24Status(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForSib24Status(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSimRefresh(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForSimRefresh(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSmartNrChanged(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForSmartNrChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForSubsidyLock(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForSubsidyLock(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPCodec(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPCodec(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPFail(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPFail(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPFallBack(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPFallBack(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPMMRing(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPMMRing(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPMediaStart(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPMediaStart(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPRecordVideo(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPRecordVideo(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPRemoteMedia(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPRemoteMedia(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public registerForsetOnVPString(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForsetOnVPString(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public requestDCTrafficClass(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setTrafficClass(ILandroid/os/Message;)V

    return-void
.end method

.method public requestReattach()V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->reAttach(Landroid/os/Message;)V

    return-void
.end method

.method public requestSetSinglePDNByNetwork(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setSinglePDN(ZLandroid/os/Message;)V

    return-void
.end method

.method public requestShutdown()Z
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0xd

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->requestShutdown(Landroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestShutdown NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public resetModem()V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->resetModem(Landroid/os/Message;)V

    return-void
.end method

.method public sendAsynchAtCmd(Ljava/lang/String;Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x4e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->sendAsynchAtCmd(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public sendScreenInteractionExtras(IIIILjava/lang/String;I)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x49

    invoke-virtual {v1, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v3, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object v10, v1

    invoke-virtual/range {v3 .. v10}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->sendScreenInteractionExtras(IIIILjava/lang/String;ILandroid/os/Message;)V

    return-void
.end method

.method public sendVPString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->videoPhoneString(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setEmergencyOnly(ZLandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x23

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setEmergencyOnly(ZLandroid/os/Message;)V

    return-void
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Messenger;I)V
    .locals 13

    move-object v0, p0

    iget-object v1, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x36

    const/4 v3, 0x0

    move-object/from16 v4, p6

    move/from16 v5, p7

    invoke-virtual {v1, v2, v5, v3, v4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v6, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    move-object v7, p1

    move v8, p2

    move-object/from16 v9, p3

    move/from16 v10, p4

    move-object/from16 v11, p5

    move-object v12, v1

    invoke-virtual/range {v6 .. v12}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setFacilityLockByUser(Ljava/lang/String;ZLandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x25

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setFacilityLockForUser(Ljava/lang/String;ZLandroid/os/Message;)V

    return-void
.end method

.method public setFastReturnNetwork(Ljava/lang/String;IIII)V
    .locals 9

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x52

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    move-object v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move-object v8, v0

    invoke-virtual/range {v2 .. v8}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setFastReturnNetwork(Ljava/lang/String;IIIILandroid/os/Message;)V

    return-void
.end method

.method public setFdnList(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x43

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setFdnList(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setImsUserAgent(Ljava/lang/String;Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x2f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setImsUserAgent(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setLocationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x24

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p4, v2, p3}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setLocationInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setLteEnabled(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->enableLTE(ZLandroid/os/Message;)V

    return-void
.end method

.method public setMNOParam(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x3b

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setMNOParam(ILjava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setNvcodeToMiscdata(Ljava/lang/String;Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x50

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setNvcodeToMiscdata(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setPreferredNetworkType(I)I
    .locals 3

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x11

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setPreferredNetworkType(ILandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public setPsDataOff(ZI)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x34

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setPsDataOff(ZILandroid/os/Message;)V

    return-void
.end method

.method public setRadioPowerFallbackWithType(ZII)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x4c

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setRadioPowerFallbackWithType(ZIILandroid/os/Message;)V

    return-void
.end method

.method public setRadioPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x1d

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setRadioPreference(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setSA(ILandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x46

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setSA(ILandroid/os/Message;)V

    return-void
.end method

.method public setSCGAllow(ZLandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x48

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setSCGAllow(ZLandroid/os/Message;)V

    return-void
.end method

.method public setSimPower(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enforceSprdModifyPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->simmgrSimPower(ZLandroid/os/Message;)V

    return-void
.end method

.method public setSimPowerReal(Ljava/lang/String;Z)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->enforceSprdModifyPermission(Ljava/lang/String;)V

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v2, 0x3a

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setSimPowerReal(ZLandroid/os/Message;)V

    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSupCardState(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x4b

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setSupCardState(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public setSuppServiceFlag(III)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x3e

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setSuppServiceFlag(IIILandroid/os/Message;)V

    return-void
.end method

.method public setTPMRState(ILandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x2b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setTPMRState(ILandroid/os/Message;)V

    return-void
.end method

.method public setUsbShareStateSwitch(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x42

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setUsbShareStateSwitch(ZLandroid/os/Message;)V

    return-void
.end method

.method public setXcapIPAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x2a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p5, v2, p4}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->setXcapIPAddress(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public storeSmsToSim(Z)Z
    .locals 6

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v2, p1, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->storeSmsToSim(ZLandroid/os/Message;)V

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "RadioInteractorHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "storeSmsToSim NullPointerException happen."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    return v3

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method public unregisterForAbnormalPowerDetection(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForAbnormalPowerDetection(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForAtCmd(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForAtCmd(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForAvailableNetworks(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForAvailableNetworks(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForClearCodeFallback(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForClearCodeFallback(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForEarlyMedia(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForEarlyMedia(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForExceptionEvents(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForExceptionEvents(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForExpireSim(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForExpireSim(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForHdStatusChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForHdStatusChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForImsCsfbVendorCause(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForImsCsfbVendorCause(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForMNOPResetModem(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForMNOPResetModem(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForModemStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForModemStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNetowrkErrorCode(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForNetowrkErrorCode(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNrCfgInfo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForNrCfgInfo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForNsaConnStatus(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForNsaConnStatus(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPostUrsp(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForPostUrsp(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForPseudoStationInforReport(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForPseudoStationInforReport(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRachFail(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForRachFail(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRadioInteractorEmbms(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForUnsolRadioInteractor(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRauSuccess(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForRauSuccess(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRealSimStateChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForRealSimStateChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForReasonsForRegRejected(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForReasonsForRegRejected(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForRiConnected(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForUnsolRiConnected(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSib24Status(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForSib24Status(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSimRefresh(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForSimRefresh(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSmartNrChanged(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForSmartNrChanged(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForSubsidyLock(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForSubsidyLock(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForUnsolRadioInteractor(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForUnsolRadioInteractor(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPCodec(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPCodec(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPFail(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPFail(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPFallBack(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPFallBack(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPMMRing(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPMMRing(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPMediaStart(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPMediaStart(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPRecordVideo(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPRecordVideo(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPRemoteMedia(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPRemoteMedia(Landroid/os/Handler;)V

    return-void
.end method

.method public unregisterForsetOnVPString(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v0, p1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->unregisterForsetOnVPString(Landroid/os/Handler;)V

    return-void
.end method

.method public unsolicitedRegisters(Landroid/os/Handler;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->registerForUnsolRadioInteractor(Landroid/os/Handler;ILjava/lang/Object;)V

    return-void
.end method

.method public updateCLIP(ILandroid/os/Messenger;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x29

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2, p2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->updateCLIP(ILandroid/os/Message;)V

    return-void
.end method

.method public updateOperatorName(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->updateOperatorName(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public updatePlmn(IILjava/lang/String;III)I
    .locals 12

    move-object v1, p0

    new-instance v0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;

    const-string v2, "updatePlmn"

    invoke-direct {v0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;-><init>(Ljava/lang/Object;)V

    move-object v2, v0

    iget-object v0, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v3, 0x1a

    invoke-virtual {v0, v3, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    iget-object v4, v1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    move v5, p1

    move v6, p2

    move-object v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move-object v11, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->updatePlmn(IILjava/lang/String;IIILandroid/os/Message;)V

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, v2, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v4, "RadioInteractorHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updatePlmn NullPointerException happen."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, -0x1

    return v4

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public updateRealEccList(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mHandler:Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$SyncHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/unisoc/telephony/server/RadioInteractorHandler;->mRadioInteractorCore:Lcom/android/unisoc/telephony/server/RadioInteractorCore;

    invoke-virtual {v1, p1, v0}, Lcom/android/unisoc/telephony/server/RadioInteractorCore;->updateEcclist(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public waitForResult(Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;)V
    .locals 3

    nop

    :goto_0
    :try_start_0
    iget-object v0, p1, Lcom/android/unisoc/telephony/server/RadioInteractorHandler$ThreadRequest;->result:Ljava/lang/Object;

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "RadioInteractorHandler"

    const-string v2, "interrupted while trying to get remain times"

    invoke-static {v1, v2}, Lcom/android/unisoc/telephony/UtilLog;->logd(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method
