.class public Lcom/android/stk/StkAppService;
.super Landroid/app/Service;
.source "StkAppService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/stk/StkAppService$StkContext;,
        Lcom/android/stk/StkAppService$ServiceHandler;,
        Lcom/android/stk/StkAppService$DelayedCmd;,
        Lcom/android/stk/StkAppService$InitiatedByUserAction;
    }
.end annotation


# static fields
.field private static final PLAY_TONE_ONLY:Ljava/lang/Integer;

.field private static final PLAY_TONE_WITH_DIALOG:Ljava/lang/Integer;

.field private static final VIBRATION_PATTERN:[J

.field static idleModeIcon:Landroid/graphics/Bitmap;

.field static idleModeIconSelfExplanatory:Z

.field static idleModeText:Ljava/lang/String;

.field public static mHomePressedFlg:Z

.field static sInstance:Lcom/android/stk/StkAppService;


# instance fields
.field private final mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mAlarmTime:J

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallState:I

.field private mCallStateListener:[Z

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mHomeKeyEventReceiver:Landroid/content/BroadcastReceiver;

.field private mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

.field private final mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

.field private mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPreciseCallStateListener:[Landroid/telephony/PhoneStateListener;

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisterIms:[Z

.field private mRingtone:Landroid/media/Ringtone;

.field private volatile mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

.field private volatile mServiceLooper:Landroid/os/Looper;

.field private mSimCount:I

.field private mSlotId:I

.field private mStartSetUpCallSuccess:Z

.field private mStkContext:[Lcom/android/stk/StkAppService$StkContext;

.field private mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

.field private mTm:Landroid/telephony/TelephonyManager;

.field public mToast:Landroid/widget/Toast;

.field private mTonePlayer:Lcom/android/stk/TonePlayer;

.field private mUserActivityReceiver:Landroid/content/BroadcastReceiver;

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPresentReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/stk/StkAppService;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/stk/StkAppService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrentUserId(Lcom/android/stk/StkAppService;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkAppService;->mCurrentUserId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcom/android/stk/StkAppService;)Landroid/app/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmServiceHandler(Lcom/android/stk/StkAppService;)Lcom/android/stk/StkAppService$ServiceHandler;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSimCount(Lcom/android/stk/StkAppService;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSlotId(Lcom/android/stk/StkAppService;)I
    .locals 0

    iget p0, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStartSetUpCallSuccess(Lcom/android/stk/StkAppService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/stk/StkAppService;->mStartSetUpCallSuccess:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmStkContext(Lcom/android/stk/StkAppService;)[Lcom/android/stk/StkAppService$StkContext;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStkService(Lcom/android/stk/StkAppService;)[Lcom/android/internal/telephony/cat/AppInterface;
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAlarmTime(Lcom/android/stk/StkAppService;J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/stk/StkAppService;I)V
    .locals 0

    iput p1, p0, Lcom/android/stk/StkAppService;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentUserId(Lcom/android/stk/StkAppService;I)V
    .locals 0

    iput p1, p0, Lcom/android/stk/StkAppService;->mCurrentUserId:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmStartSetUpCallSuccess(Lcom/android/stk/StkAppService;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/stk/StkAppService;->mStartSetUpCallSuccess:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddToMenuSystemOrUpdateLabel(Lcom/android/stk/StkAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->addToMenuSystemOrUpdateLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallDelayedMsg(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcallSetActivityInstMsg(Lcom/android/stk/StkAppService;IILjava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->callSetActivityInstMsg(IILjava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelIdleText(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->cancelIdleText(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelNotificationOnKeyguard(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->cancelNotificationOnKeyguard(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcancelTimeOut(Lcom/android/stk/StkAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->cancelTimeOut()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckForSetupEvent(Lcom/android/stk/StkAppService;ILandroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcleanUpInstanceStackBySlot(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->cleanUpInstanceStackBySlot(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcreateAllChannels(Lcom/android/stk/StkAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->createAllChannels()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNotificationId(Lcom/android/stk/StkAppService;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandleAlphaNotify(Lcom/android/stk/StkAppService;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleAlphaNotify(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCmd(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleCmdResponse(Lcom/android/stk/StkAppService;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleCmdResponse(Landroid/os/Bundle;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDelayedCmd(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleDelayedCmd(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleHomeKeyPressed(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleHomeKeyPressed(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleIdleScreen(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleIdleScreen(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMultiSimConfigChanged(Lcom/android/stk/StkAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->handleMultiSimConfigChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSessionEnd(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleStopTone(Lcom/android/stk/StkAppService;Landroid/os/Message;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->handleStopTone(Landroid/os/Message;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misAllCallsIdle(Lcom/android/stk/StkAppService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isAllCallsIdle(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misCmdInteractive(Lcom/android/stk/StkAppService;Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misEndCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isEndCallSuccess(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misHoldCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isHoldCallSuccessTimeout(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misPackageInStack(Lcom/android/stk/StkAppService;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isPackageInStack(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSetUpCallAfterHoldCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isSetUpCallAfterHoldCallSuccess(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSetUpCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isSetUpCallSuccess(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$misSetupCallSuccessTimeout(Lcom/android/stk/StkAppService;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isSetupCallSuccessTimeout(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlaunchRefreshMsg(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchRefreshMsg(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlaunchTextDialog(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessNormalResponse(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNormalResponse(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessSetupCallResponse(Lcom/android/stk/StkAppService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processSetupCallResponse(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrestoreInstanceFromStackBySlot(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->restoreInstanceFromStackBySlot(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendResponse(Lcom/android/stk/StkAppService;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSetUpCallFail(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->startSetUpCallFail(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mstartSetUpCallSuccess(Lcom/android/stk/StkAppService;Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->startSetUpCallSuccess(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mterminateTone(Lcom/android/stk/StkAppService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->terminateTone(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterHomeVisibilityObserver(Lcom/android/stk/StkAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterHomeVisibilityObserver()V

    return-void
.end method

.method static bridge synthetic -$$Nest$munregisterUserActivityReceiver(Lcom/android/stk/StkAppService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterUserActivityReceiver()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/stk/StkAppService;->PLAY_TONE_ONLY:Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sput-object v1, Lcom/android/stk/StkAppService;->PLAY_TONE_WITH_DIALOG:Ljava/lang/Integer;

    const-string v1, ""

    sput-object v1, Lcom/android/stk/StkAppService;->idleModeText:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/stk/StkAppService;->idleModeIcon:Landroid/graphics/Bitmap;

    sput-boolean v0, Lcom/android/stk/StkAppService;->idleModeIconSelfExplanatory:Z

    sput-boolean v0, Lcom/android/stk/StkAppService;->mHomePressedFlg:Z

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/stk/StkAppService;->VIBRATION_PATTERN:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x15e
        0xfa
        0x15e
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUserActivityReceiver:Landroid/content/BroadcastReceiver;

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const-wide/16 v2, -0x1

    iput-wide v2, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mToast:Landroid/widget/Toast;

    iput v1, p0, Lcom/android/stk/StkAppService;->mCurrentUserId:I

    iput-boolean v1, p0, Lcom/android/stk/StkAppService;->mStartSetUpCallSuccess:Z

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mHomeKeyEventReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/stk/StkAppService$1;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$1;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    new-instance v0, Lcom/android/stk/StkAppService$11;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$11;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    new-instance v0, Lcom/android/stk/StkAppService$12;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$12;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private addToMenuSystemOrUpdateLabel()V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    if-eqz v2, :cond_4

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getMainMenu: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StkAppService"

    invoke-static {v4, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-static {v2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e0020

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v3, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, v2, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->hasVowifiConnected()Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/android/stk/StkAppInstaller;->installOrUpdate(Landroid/content/Context;Ljava/lang/String;)V

    :cond_7
    :goto_2
    return-void
.end method

.method private beep()V
    .locals 2

    new-instance p0, Landroid/media/ToneGenerator;

    const/4 v0, 0x5

    const/16 v1, 0x1f4

    invoke-direct {p0, v0, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    const/16 v0, 0x18

    invoke-virtual {p0, v0}, Landroid/media/ToneGenerator;->startTone(I)Z

    invoke-virtual {p0}, Landroid/media/ToneGenerator;->stopTone()V

    invoke-virtual {p0}, Landroid/media/ToneGenerator;->release()V

    return-void
.end method

.method private buildNotification(Landroid/content/Intent;Ljava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    if-eqz p2, :cond_0

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1080864

    invoke-static {p2, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x106001c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    invoke-direct {p0, p3}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result p0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :cond_1
    return-void
.end method

.method private callDelayedMsg(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x6

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private callSetActivityInstMsg(IILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private cancelIdleText(I)V
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->unregisterHomeVisibilityObserver(Lcom/android/internal/telephony/cat/AppInterface$CommandType;I)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmIdleModeTextVisible(Lcom/android/stk/StkAppService$StkContext;Z)V

    return-void
.end method

.method private cancelNotificationOnKeyguard(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/stk/StkAppService;->getNotificationId(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mNotificationOnKeyguard:Z

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->unregisterUserPresentReceiver(I)V

    return-void
.end method

.method private cancelTimeOut()V
    .locals 4

    iget-wide v0, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelTimeOut - slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    iput-wide v2, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    :cond_0
    return-void
.end method

.method private checkForSetupEvent(ILandroid/os/Bundle;I)V
    .locals 6

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Event :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "StkAppService"

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, p2, p3

    invoke-static {p2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, p2, p3

    invoke-static {p2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object p2

    iget-object p2, p2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, p2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget v5, p2, v3

    if-ne p1, v5, :cond_0

    move v2, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ne v2, v4, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Event "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "exists in the EventList"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    const/4 p2, 0x5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    goto :goto_2

    :cond_2
    iget-object p2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget-object p2, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "language: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/telephony/GsmAlphabet;->stringToGsm8BitPacked(Ljava/lang/String;)[B

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[BI)V

    goto :goto_2

    :cond_3
    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->sendSetUpEventResponse(I[BI)V

    invoke-direct {p0, p1, p3}, Lcom/android/stk/StkAppService;->removeSetUpEvent(II)V

    goto :goto_2

    :cond_4
    const-string p0, " Event does not exist in the EventList"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SetupEventList is not received. Ignoring the event: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method private cleanUpInstanceStackBySlot(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$StkContext;->getPendingActivityInstance()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$StkContext;->getPendingDialogInstance()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cleanUpInstanceStackBySlot slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "StkAppService"

    invoke-static {v3, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_4

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "current cmd type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INPUT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->GET_INKEY:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    if-ne v5, v6, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_MENU:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    if-eq v5, v6, :cond_1

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SELECT_ITEM:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    if-ne v5, v6, :cond_3

    :cond_1
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iput-boolean v4, v5, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p1

    iput-boolean v4, v5, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    :cond_3
    :goto_1
    const-string v5, "finish pending activity."

    invoke-static {v3, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0, v2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmActivityInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    :cond_4
    if-eqz v1, :cond_5

    const-string v0, "finish pending dialog."

    invoke-static {v3, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iput-boolean v4, v0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    :cond_5
    return-void
.end method

.method private createAllChannels()V
    .locals 4

    new-instance v0, Landroid/app/NotificationChannel;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x3

    const-string v3, "mobileServiceMessages"

    invoke-direct {v0, v3, v1, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    sget-object v1, Lcom/android/stk/StkAppService;->VIBRATION_PATTERN:[J

    invoke-virtual {v0, v1}, Landroid/app/NotificationChannel;->setVibrationPattern([J)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method private delayToCheckUserUnlock(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/16 v1, 0x1f4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const-wide/16 v0, 0xbb8

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private endCall()V
    .locals 3

    iget v0, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_3

    check-cast v0, Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhone;

    if-eqz v1, :cond_1

    const-string v2, "hang up ims call"

    invoke-static {p0, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getForegroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getBackgroundCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getRingingCall()Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mRingingCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangupIfAlive()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v2, v2, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangupIfAlive()V

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhone;->getCallTracker()Lcom/android/internal/telephony/CallTracker;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;->mForegroundCall:Lcom/android/internal/telephony/imsphone/ImsPhoneCall;

    invoke-virtual {v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCall;->hangupIfAlive()V

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isPhoneTypeGsm()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    const-string v1, "hang up call"

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mRingingCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    iget-object p0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    iget-object p0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCT:Lcom/android/internal/telephony/GsmCdmaCallTracker;

    iget-object p0, p0, Lcom/android/internal/telephony/GsmCdmaCallTracker;->mForegroundCall:Lcom/android/internal/telephony/GsmCdmaCall;

    invoke-virtual {p0}, Lcom/android/internal/telephony/GsmCdmaCall;->hangupIfAlive()V

    goto :goto_0

    :cond_3
    const-string v0, "ERROR: phone is null."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private findEvent(I[I)Z
    .locals 3

    array-length p0, p2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p2, v1

    if-ne v2, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private finishToneDialogActivity()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.finish_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void
.end method

.method static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 2

    const-string v0, "carrier_config"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const-string v1, "telephony_subscription_service"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getBooleanCarrierConfig(Ljava/lang/String;I)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/stk/StkAppService;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private getCallState(I)I
    .locals 2

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCallState(I)I

    move-result p0

    return p0

    :cond_0
    return v0
.end method

.method private getCallState(IZ)Lcom/android/internal/telephony/Call$State;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "getCallState: phone is null."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    return-object p0

    :cond_2
    sget-object p0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    return-object p0
.end method

.method private getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I
    .locals 2

    sget-object v0, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p2

    iget-boolean p0, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    or-int/2addr p0, p1

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v1, 0x40000

    :goto_1
    return v1
.end method

.method static getInstance()Lcom/android/stk/StkAppService;
    .locals 1

    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-object v0
.end method

.method private getItemName(II)Ljava/lang/String;
    .locals 2

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p2

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    iget-object p0, p0, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Item;

    iget v1, v0, Lcom/android/internal/telephony/cat/Item;->id:I

    if-ne v1, p1, :cond_1

    iget-object p0, v0, Lcom/android/internal/telephony/cat/Item;->text:Ljava/lang/String;

    return-object p0

    :cond_2
    return-object p2
.end method

.method private getNotificationId(I)I
    .locals 3

    const-string v0, "StkAppService"

    if-ltz p1, :cond_0

    iget p0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, p0, :cond_0

    add-int/lit16 p0, p1, 0x14d

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalid slotId: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p0, 0x14d

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getNotificationId, slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", notifyId: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private getNotificationId(II)I
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result p2

    iget p0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    mul-int/2addr p1, p0

    add-int/2addr p2, p1

    return p2
.end method

.method private getPhone(I)Lcom/android/internal/telephony/Phone;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getPhone slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    return-object p0
.end method

.method private getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;
    .locals 2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mPreciseCallStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/stk/StkAppService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/stk/StkAppService$2;-><init>(Lcom/android/stk/StkAppService;I)V

    aput-object v1, v0, p1

    :cond_0
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mPreciseCallStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Lcom/android/stk/StkAppService$13;

    invoke-direct {v0, p0, p1}, Lcom/android/stk/StkAppService$13;-><init>(Lcom/android/stk/StkAppService;I)V

    return-object v0
.end method

.method private handleAlphaNotify(Landroid/os/Bundle;)V
    .locals 1

    const-string p0, "alpha_string"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Alpha string received from card: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StkAppService"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const/4 v0, 0x1

    invoke-static {p1, p0, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    const/16 p1, 0x30

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-object p1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    iput-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    iput-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[handleCmd]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "StkAppService"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v3

    aget v3, v0, v3

    const/high16 v4, 0x10000000

    const/16 v5, 0xd

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchOpenChannelDialog(I)V

    goto/16 :goto_9

    :pswitch_1
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->handlePlayTone(I)V

    goto/16 :goto_9

    :pswitch_2
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f0e003c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SET_UP_CALL mesg.text "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processSetupCall(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_9

    :pswitch_3
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iput-boolean v1, p1, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10404d4

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    :cond_4
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Not perform if the setup process has not been completed."

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->sendScreenBusyResponse(I)V

    goto/16 :goto_9

    :cond_5
    const-string p1, "stk_disable_launch_browser_bool"

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->getBooleanCarrierConfig(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "Browser is not launched as per carrier."

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0xe

    invoke-direct {p0, p1, p2, v7}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto/16 :goto_9

    :cond_6
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v0

    iput-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isUrlAvailableToLaunchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)Z

    move-result p1

    if-nez p1, :cond_7

    const-string p1, "Browser url property is not set - send error"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p1, 0x18

    invoke-direct {p0, p1, p2, v7}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto/16 :goto_9

    :cond_7
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "alphaId: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto/16 :goto_9

    :cond_9
    :goto_0
    const-string p1, "user confirmation is not currently needed.\nsupressing confirmation dialogue and confirming silently..."

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iput-boolean v7, p1, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    invoke-direct {p0, v5, p2, v7}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto/16 :goto_9

    :pswitch_4
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchInputActivity(I)V

    goto/16 :goto_9

    :pswitch_5
    const-string v0, "SELECT_ITEM +"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iget-object v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v2

    iput-object v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    goto/16 :goto_8

    :pswitch_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object p1

    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iput-boolean v1, v3, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    iget v4, p0, Lcom/android/stk/StkAppService;->mCurrentUserId:I

    if-eqz v4, :cond_a

    const-string p1, "secondary users,need send TR"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, p2, v7}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto/16 :goto_3

    :cond_a
    iget-object v4, v3, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    if-eqz v4, :cond_b

    iput-object v4, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    goto :goto_1

    :cond_b
    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_c

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p2

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    iput-object v3, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    :cond_c
    :goto_1
    const-string v3, "gsm.sys.modem.recovery"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-direct {p0, v5, p2, v7}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto :goto_3

    :cond_d
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-virtual {p0, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result v3

    if-nez v3, :cond_e

    const-string p1, "Air Plane Mode On"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v5, p2, v1}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto :goto_3

    :cond_e
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "com.android.dialer"

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->isPackageInStack(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_f

    const-string v3, "com.google.android.dialer"

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->isPackageInStack(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10

    :cond_f
    invoke-direct {p0, v5, p2, v1}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto :goto_3

    :cond_10
    iget-boolean p1, p1, Lcom/android/internal/telephony/cat/TextMessage;->isHighPriority:Z

    if-nez p1, :cond_13

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-boolean v3, p1, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-nez v3, :cond_13

    invoke-static {p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmDisplayTextDlgIsVisibile(Lcom/android/stk/StkAppService$StkContext;)Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isTopOfStack()Z

    move-result p1

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isScreenIdle()Z

    move-result p1

    if-eqz p1, :cond_12

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result p1

    if-eqz p1, :cond_11

    goto :goto_2

    :cond_11
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto :goto_3

    :cond_12
    :goto_2
    const-string p1, "Screen is not idle"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->sendScreenBusyResponse(I)V

    goto :goto_3

    :cond_13
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    :goto_3
    move v7, v0

    goto/16 :goto_9

    :pswitch_7
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->replaceEventList(I)V

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isScreenIdle()Z

    move-result p1

    if-eqz p1, :cond_22

    const-string p1, " Check if IDLE_SCREEN_AVAILABLE_EVENT is present in List"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x5

    invoke-direct {p0, p1, v6, p2}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;I)V

    goto/16 :goto_9

    :pswitch_8
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    if-eqz v2, :cond_14

    iget-object v3, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v3, :cond_14

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_1

    goto :goto_4

    :pswitch_9
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e003b

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_4

    :pswitch_a
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e003a

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_4

    :pswitch_b
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0e0038

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    :cond_14
    :goto_4
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto/16 :goto_9

    :pswitch_c
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iput-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    iget-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object p1

    iput-object p1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "SET_UP_MENU ["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->removeMenu(I)Z

    move-result p1

    if-eqz p1, :cond_16

    const-string p1, "removeMenu() - Uninstall App"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iput-object v6, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v6, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    goto :goto_5

    :cond_15
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->uninstallIfUnnecessary()Z

    move-result p1

    if-nez p1, :cond_19

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->addToMenuSystemOrUpdateLabel()V

    goto :goto_5

    :cond_16
    const-string p1, "install App"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result p1

    if-eqz p1, :cond_17

    invoke-virtual {p0, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_17
    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_18

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/stk/StkAppInstaller;->install(Landroid/content/Context;I)V

    goto :goto_5

    :cond_18
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/stk/StkAppService;->isUiccReady(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_19

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->addToMenuSystemOrUpdateLabel()V

    :cond_19
    :goto_5
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-boolean p1, p1, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    if-eqz p1, :cond_22

    invoke-direct {p0, v6, p2}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    goto/16 :goto_9

    :pswitch_d
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {p1, v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object p1

    if-eqz p1, :cond_1a

    iget-object p1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1b

    :cond_1a
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->cancelIdleText(I)V

    :cond_1b
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v0, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object p1

    if-eqz p1, :cond_21

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    invoke-static {p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result p1

    if-nez p1, :cond_1c

    const-string p1, "set up idle mode"

    invoke-static {v2, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    goto/16 :goto_8

    :cond_1c
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->registerHomeVisibilityObserver()V

    goto/16 :goto_8

    :pswitch_e
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    const-string p1, "persist.sys.callforwarding"

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_21

    invoke-static {p2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    if-eqz p1, :cond_21

    invoke-virtual {p1, v1, v6}, Lcom/android/internal/telephony/Phone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_8

    :pswitch_f
    move v0, v1

    goto/16 :goto_7

    :pswitch_10
    const-string p1, "persist.radio.stk.commandqualifier"

    const-string v0, "0"

    invoke-static {p2, p1, v0}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "REFRESH cmdQualifier: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_22

    new-instance p1, Landroid/content/Intent;

    const-string v0, "refresh_uninstall"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-eqz p1, :cond_1d

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    :cond_1d
    invoke-virtual {p0, p2}, Lcom/android/stk/StkAppService;->isAllOtherCardsAbsent(I)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-nez p1, :cond_1e

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    :cond_1e
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iput-object v6, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object v6, p1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    goto :goto_9

    :pswitch_11
    move p1, v1

    move v0, p1

    :goto_6
    iget v3, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v3, :cond_20

    if-eq p1, p2, :cond_1f

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getCallState(I)I

    move-result v3

    if-eqz v3, :cond_1f

    const-string v0, "anotherCardBusyOnCall = true"

    invoke-static {v2, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v7

    :cond_1f
    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    :cond_20
    :goto_7
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    if-eqz v0, :cond_21

    new-instance p1, Landroid/content/Intent;

    const-string v0, "session_ended"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v0, "SLOT_ID"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_21
    :goto_8
    move v7, v1

    :cond_22
    :goto_9
    if-nez v7, :cond_24

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-eqz p1, :cond_23

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    goto :goto_a

    :cond_23
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p2

    iput-boolean v1, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    :cond_24
    :goto_a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_f
        :pswitch_d
        :pswitch_c
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_f
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x9
        :pswitch_b
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private handleCmdResponse(Landroid/os/Bundle;I)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCmdResponse, sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mRingtone:Landroid/media/Ringtone;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v2, v0, p2

    if-nez v2, :cond_2

    invoke-static {p2}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v2

    aput-object v2, v0, p2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v0, v0, p2

    if-nez v0, :cond_2

    const-string p0, "No response is sent back to the missing CatService."

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    const-string v2, "help"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "response id"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    const/16 v6, 0x12

    const/4 v7, 0x1

    packed-switch v5, :pswitch_data_0

    :pswitch_0
    const-string p0, "Unknown result id"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    const-string v2, "RES_ID_ERROR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v5

    aget v2, v2, v5

    if-eq v2, v6, :cond_3

    goto/16 :goto_9

    :cond_3
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->LAUNCH_BROWSER_ERROR:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :pswitch_2
    const-string v2, "RES_ID_END_SESSION"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :pswitch_3
    const-string v2, "RES_ID_BACKWARD"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->BACKWARD_MOVE_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :pswitch_4
    const-string v2, "RES_ID_TIMEOUT"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v2

    sget-object v5, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->DISPLAY_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    if-ne v2, v5, :cond_5

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/cat/TextMessage;->userClear:Z

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_0

    :cond_4
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    :goto_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iput-boolean v7, v2, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    goto/16 :goto_9

    :cond_5
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->NO_RESPONSE_FROM_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :pswitch_5
    const-string v2, "choice"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User Choice="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_7

    if-eq v2, v7, :cond_6

    goto :goto_1

    :cond_6
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    move v2, v7

    goto :goto_2

    :cond_7
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    :goto_1
    move v2, v3

    :goto_2
    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p2

    iget-object v5, v5, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v5

    sget-object v6, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->OPEN_CHANNEL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v6

    if-ne v5, v6, :cond_18

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    goto/16 :goto_9

    :pswitch_6
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :pswitch_7
    const-string v2, "RES_ID_CONFIRM"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "confirm"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget-object v5, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v5, v5, v8

    const/16 v8, 0xd

    if-eq v5, v8, :cond_e

    if-eq v5, v6, :cond_b

    const/16 v6, 0x13

    if-eq v5, v6, :cond_8

    goto/16 :goto_9

    :cond_8
    if-eqz v2, :cond_a

    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object p1

    if-eqz p1, :cond_9

    invoke-static {p2}, Lcom/android/ims/internal/ImsManagerEx;->isVoWiFiRegisteredForPhone(I)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {p1, v7, v3}, Lcom/android/ims/internal/IImsServiceEx;->setVoWifiUnavailable(IZ)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WARN: Fail setVoWifiUnavailable e: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_3
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processSetupCallResponseMessage(I)V

    return-void

    :cond_a
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :cond_b
    const-string v5, "stk_different_launch_browser_tr"

    invoke-static {p0, v5, p2}, Lcom/android/stk/StkAppService;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v5

    if-eqz v2, :cond_c

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iput-boolean v7, v2, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    iget-object v5, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    move-result-object v5

    iput-object v5, v2, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    goto/16 :goto_9

    :cond_c
    if-eqz v5, :cond_d

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->USER_NOT_ACCEPT:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :cond_d
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :cond_e
    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v2

    if-eqz v2, :cond_f

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_4

    :cond_f
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_4
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_5

    :cond_10
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->UICC_SESSION_TERM_BY_USER:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    :goto_5
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iput-boolean v7, v2, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    goto/16 :goto_9

    :pswitch_8
    const-string v5, "RES_ID_INPUT"

    invoke-static {v1, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "input"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v6

    if-eqz v6, :cond_11

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v6

    iget-boolean v6, v6, Lcom/android/internal/telephony/cat/Input;->yesNo:Z

    if-eqz v6, :cond_11

    const-string v2, "YES"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setYesNo(Z)V

    goto/16 :goto_9

    :cond_11
    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto/16 :goto_9

    :cond_12
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v2

    if-eqz v2, :cond_13

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_6

    :cond_13
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_6
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setInput(Ljava/lang/String;)V

    goto :goto_9

    :pswitch_9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MENU_SELECTION="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "menu selection"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    sget-object v6, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    iget-object v8, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v8, v8, p2

    iget-object v8, v8, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v8

    aget v6, v6, v8

    const/16 v8, 0x8

    if-eq v6, v8, :cond_14

    const/16 v8, 0xe

    if-eq v6, v8, :cond_15

    goto :goto_9

    :cond_14
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    iput-boolean v7, v6, Lcom/android/stk/StkAppService$StkContext;->mIsSessionFromUser:Z

    :cond_15
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p2

    invoke-direct {p0, v5, p2}, Lcom/android/stk/StkAppService;->getItemName(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    if-eqz v2, :cond_16

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->HELP_INFO_REQUIRED:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    goto :goto_8

    :cond_16
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v2

    if-eqz v2, :cond_17

    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->PRFRMD_ICON_NOT_DISPLAYED:Lcom/android/internal/telephony/cat/ResultCode;

    goto :goto_7

    :cond_17
    sget-object v2, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    :goto_7
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    :goto_8
    invoke-virtual {v0, v5}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setMenuSelection(I)V

    :cond_18
    :goto_9
    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    :pswitch_a
    goto :goto_a

    :pswitch_b
    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->cancelNotificationOnKeyguard(I)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iput-boolean v7, p1, Lcom/android/stk/StkAppService$StkContext;->mNoResponseFromUser:Z

    goto :goto_a

    :pswitch_c
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iput-boolean v3, p1, Lcom/android/stk/StkAppService$StkContext;->mNoResponseFromUser:Z

    :goto_a
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    if-eqz p1, :cond_19

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleCmdResponse- cmdName["

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p2

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object p1, p1, p2

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result p1

    sget-object v0, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->LAUNCH_BROWSER:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    if-ne p1, v0, :cond_1a

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, p1, p2

    iget-boolean p2, p1, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    if-eqz p2, :cond_1a

    iput-boolean v3, p1, Lcom/android/stk/StkAppService$StkContext;->launchBrowser:Z

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V

    :cond_1a
    return-void

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_a
        :pswitch_c
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method

.method private handleDelayedCmd(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDelayedCmd, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/stk/StkAppService$DelayedCmd;

    if-eqz v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleDelayedCmd - queue size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v3, p1

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "sim id: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget p1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->id:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x4

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    iget p1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->handleSessionEnd(I)V

    goto :goto_0

    :cond_1
    iget-object p1, v0, Lcom/android/stk/StkAppService$DelayedCmd;->msg:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iget v0, v0, Lcom/android/stk/StkAppService$DelayedCmd;->slotId:I

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->handleCmd(Lcom/android/internal/telephony/cat/CatCmdMessage;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private handleHomeKeyPressed(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mIsSessionFromUser:Z

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$StkContext;->getPendingDialogInstance()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/stk/StkAppService$StkContext;->getPendingActivityInstance()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDialogInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    invoke-static {p0, v2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmActivityInstance(Lcom/android/stk/StkAppService$StkContext;Landroid/app/Activity;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private handleIdleScreen(I)V
    .locals 2

    const-string v0, "StkAppService"

    const-string v1, "Need to send IDLE SCREEN Available event to SIM"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/android/stk/StkAppService;->checkForSetupEvent(ILandroid/os/Bundle;I)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextVisible(Lcom/android/stk/StkAppService$StkContext;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchIdleText(I)V

    :cond_0
    return-void
.end method

.method private declared-synchronized handleMultiSimConfigChanged()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v1

    iput v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v2, :cond_0

    const-string v2, "StkAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v1}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    new-instance v3, Lcom/android/stk/StkAppService$StkContext;

    invoke-direct {v3, p0}, Lcom/android/stk/StkAppService$StkContext;-><init>(Lcom/android/stk/StkAppService;)V

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, v1

    invoke-static {v2, v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmSlotId(Lcom/android/stk/StkAppService$StkContext;I)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, v1

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    iput-object v3, v2, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_2

    const-string v1, "StkAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/android/internal/telephony/cat/AppInterface;->dispose()V

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aput-object v3, v1, v2

    :cond_1
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aput-object v3, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private handlePlayTone(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f040006

    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    xor-int/2addr v1, v3

    goto :goto_0

    :catch_0
    move v1, v3

    :goto_0
    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "StkAppService"

    if-eqz v2, :cond_0

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Alpha identifier data is null, play only tone"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v4

    goto :goto_1

    :cond_0
    move v2, v3

    :goto_1
    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v6, :cond_1

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "toneMsg.text "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " Starting ToneDialog activity with default message."

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v6, 0x7f0e003d

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_2

    :cond_1
    move v3, v2

    :goto_2
    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v2, :cond_2

    if-nez v1, :cond_2

    const-string v2, "config value stkNoAlphaUsrCnf is true"

    invoke-static {v5, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_2
    move v4, v3

    :goto_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "toneMsg.text: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "showUser: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "displayDialog: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v4, p1}, Lcom/android/stk/StkAppService;->playTone(ZI)V

    return-void
.end method

.method private handleSessionEnd(I)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->cleanUpInstanceStackBySlot(I)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    const-string v0, "[handleSessionEnd] - mCurrentCmd changed to mMainCmd!."

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v2, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenuCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "slotId: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mMenuState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mNoResponseFromUser:Z

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    const-string v0, "[handleSessionEnd][mMainCmd is null!]"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mIsSessionFromUser:Z

    iget-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    iput-object v3, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[handleSessionEnd][mMenuState]"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-boolean v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget v1, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    const/4 v3, 0x2

    if-ne v3, v1, :cond_2

    const/4 v1, 0x1

    iput v1, v0, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "session_ended"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "SLOT_ID"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    iput-boolean v2, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    :goto_0
    return-void
.end method

.method private handleStopTone(Landroid/os/Message;I)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x11

    const/16 v2, 0x10

    if-ne v0, v2, :cond_1

    sget-object v0, Lcom/android/stk/StkAppService;->PLAY_TONE_WITH_DIALOG:Ljava/lang/Integer;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {v0, p1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->finishToneDialogActivity()V

    :cond_0
    const/16 p1, 0xe

    goto :goto_0

    :cond_1
    if-ne v0, v1, :cond_2

    const/16 p1, 0x16

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    const/4 p2, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/android/stk/TonePlayer;->stop()V

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    invoke-virtual {p1}, Lcom/android/stk/TonePlayer;->release()V

    iput-object p2, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    :cond_3
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/os/Vibrator;->cancel()V

    iput-object p2, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    :cond_4
    return-void
.end method

.method private isAllCallsIdle(I)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAllCallsIdle( ): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object p1

    if-ne p0, p1, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    return v3
.end method

.method private isBackgroundCallEnd(Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isBusyOnCall()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->getCallState(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "slotId : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isBusyOnCall callState : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private isCmdInteractive(Lcom/android/internal/telephony/cat/CatCmdMessage;)Z
    .locals 0

    sget-object p0, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result p1

    aget p0, p0, p1

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x1

    return p0

    :pswitch_0
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isEndCallSuccess(Landroid/telephony/PreciseCallState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isForegroundCallEnd(Landroid/telephony/PreciseCallState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isBackgroundCallEnd(Landroid/telephony/PreciseCallState;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isRingingCallEnd(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isForegroundCallEnd(Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isHoldCallSuccessTimeout(I)Z
    .locals 1

    iget p1, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "onAlarm() : phone is null."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    move v0, p0

    :cond_1
    return v0
.end method

.method private isPackageInStack(Ljava/lang/String;)Z
    .locals 3

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method private isRingingCallEnd(Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getRingingCallState()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isScreenLocked()Z
    .locals 1

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result p0

    return p0
.end method

.method private isScreenSecure()Z
    .locals 2

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/KeyguardManager;

    invoke-virtual {p0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isScreenSecure : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method private isSetUpCallAfterHoldCallSuccess(Landroid/telephony/PreciseCallState;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isSetUpCallSuccess(Landroid/telephony/PreciseCallState;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSetUpCallSuccess(Landroid/telephony/PreciseCallState;)Z
    .locals 0

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isSetupCallSuccessTimeout(I)Z
    .locals 1

    iget p1, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p1, "onAlarm() : phone is null."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object p0

    sget-object p1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isUrlAvailableToLaunchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)Z
    .locals 1

    const-string p0, "persist.radio.stk.default_url"

    const-string v0, "http://www.google.com"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    iget-object p0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private launchBrowser(Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    const-string v1, "StkAppService"

    if-nez v0, :cond_1

    const-string v0, "no url data provided by proactive command. launching browser with stk default URL ... "

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.radio.stk.default_url"

    const-string v2, "http://www.google.com"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launch browser command has attached url = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    :goto_0
    const-string v2, "http://"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "https://"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launching browser with modified url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    :goto_1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launching browser with url = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    sget-object v1, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$LaunchBrowserMode:[I

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/4 v1, 0x1

    const/high16 v2, 0x4000000

    if-eq p1, v1, :cond_6

    const/4 v1, 0x2

    if-eq p1, v1, :cond_5

    const/4 v1, 0x3

    if-eq p1, v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    :cond_5
    const/high16 p1, 0x8000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    goto :goto_3

    :cond_6
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :goto_3
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    const-wide/16 p0, 0xbb8

    :try_start_0
    invoke-static {p0, p1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method private launchCallMsg(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iget-boolean v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-eqz v1, :cond_0

    iget-object p1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_4

    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/stk/StkAppService;->showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchEventMessage(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method private launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;

    iput-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stk://com.android.stk/dialog/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "com.android.stk.StkDialogActivity"

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v2, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v2, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v2

    const/high16 v3, 0x50800000

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "TEXT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p1, "SLOT_ID"

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchEventMessage(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->launchEventMessage(ILcom/android/internal/telephony/cat/TextMessage;)V

    return-void
.end method

.method private launchEventMessage(ILcom/android/internal/telephony/cat/TextMessage;)V
    .locals 5

    if-eqz p2, :cond_6

    iget-object v0, p2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_6

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    new-instance v0, Landroid/widget/Toast;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v2, 0x7f0b0070

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x1020006

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v3, p1

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_2

    iget-boolean p1, p2, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez p1, :cond_3

    :cond_2
    iget-object p1, p2, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 p1, -0x1000000

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setDuration(I)V

    const/16 p1, 0x50

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2, p2}, Landroid/widget/Toast;->setGravity(III)V

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f040007

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_5

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_5
    :goto_1
    return-void

    :cond_6
    :goto_2
    const-string p0, "StkAppService"

    const-string p1, "launchEventMessage return"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private launchIdleText(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchIdleText - text["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "] iconSelfExplanatory["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "] icon["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "], sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "Add IdleMode text"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.stk"

    const-string v3, "com.android.stk.StkMessageActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    sput-object v2, Lcom/android/stk/StkAppService;->idleModeText:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    sput-object v2, Lcom/android/stk/StkAppService;->idleModeIcon:Landroid/graphics/Bitmap;

    iget-boolean v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    sput-boolean v2, Lcom/android/stk/StkAppService;->idleModeIconSelfExplanatory:Z

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0xc000000

    invoke-static {v2, v3, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->createAllChannels()V

    new-instance v2, Landroid/app/Notification$Builder;

    const-string v3, "mobileServiceMessages"

    invoke-direct {v2, p0, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v3, v3, p1

    iget-object v3, v3, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v3}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v3

    iget-object v3, v3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_0

    :cond_0
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_0
    const v3, 0x7f0700f1

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v2, v1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    invoke-static {v4}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->hasIconLoadFailed()Z

    move-result v4

    if-nez v4, :cond_1

    iget-boolean v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->iconSelfExplanatory:Z

    if-nez v4, :cond_2

    :cond_1
    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    iget-object v4, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    iget-object v5, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    :cond_2
    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    :goto_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x106001c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v3

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    invoke-static {p0, v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmIdleModeTextVisible(Lcom/android/stk/StkAppService$StkContext;Z)V

    :cond_4
    return-void
.end method

.method private launchInputActivity(I)V
    .locals 8

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stk://com.android.stk/input/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geInput()Lcom/android/internal/telephony/cat/Input;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f040007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_0
    if-eqz v2, :cond_1

    iget-object v3, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchInputActivity, slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "StkAppService"

    invoke-static {v6, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v5, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v5, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v5

    const/high16 v7, 0x10000000

    or-int/2addr v5, v7

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "com.android.stk"

    const-string v7, "com.android.stk.StkInputActivity"

    invoke-virtual {v0, v5, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "INPUT"

    invoke-virtual {v0, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "SLOT_ID"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    if-eqz v2, :cond_2

    iget-object v1, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/stk/StkAppService;->notifyUserIfNecessary(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenLocked()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenSecure()Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isScreenLocked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenLocked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isScreenSecure :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenSecure()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->wakeUp()V

    invoke-direct {p0, v0, v3, p1}, Lcom/android/stk/StkAppService;->buildNotification(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v1, v2, Lcom/android/internal/telephony/cat/Input;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/stk/StkAppService;->notifyUserIfNecessary(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_4
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isAirPlaneModeOn()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/stk/StkAppService;->isVowifiConnected(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p2

    iput v1, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stk://com.android.stk/menu/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchMenuActivity, slotId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iget v4, v4, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iget v4, v4, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "StkAppService"

    invoke-static {v4, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "com.android.stk"

    const-string v5, "com.android.stk.StkMenuActivity"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "SLOT_ID"

    const/high16 v5, 0x10000000

    const-string v6, "STATE"

    const/4 v7, 0x2

    if-nez p1, :cond_2

    sget-object p1, Lcom/android/stk/StkAppService$InitiatedByUserAction;->yes:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result p1

    or-int/2addr p1, v5

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iget v5, v4, Lcom/android/stk/StkAppService$StkContext;->mOpCode:I

    const/4 v8, 0x3

    if-ne v5, v8, :cond_1

    iget v4, v4, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    if-ne v4, v7, :cond_1

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p2

    iput v1, v4, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    goto :goto_0

    :cond_2
    sget-object p1, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result p1

    or-int/2addr p1, v5

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iput v7, v1, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    sget-boolean v1, Lcom/android/stk/StkAppService;->mHomePressedFlg:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isTopOfStack()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "com.android.dialer"

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->isPackageInStack(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "com.google.android.dialer"

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->isPackageInStack(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    const-string p1, "Home key Pressed and current activity is not stk menu,no need to launch"

    invoke-static {v4, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "session_ended"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    return-void

    :cond_5
    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMenuState:I

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private launchNotificationOnKeyguard(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const/high16 v2, 0x4000000

    invoke-static {v0, v1, p1, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    new-instance v0, Landroid/app/Notification$Builder;

    const-string v1, "mobileServiceMessages"

    invoke-direct {v0, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v1, v0}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    invoke-virtual {v1, p3}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {p0, p2}, Lcom/android/stk/StkAppService;->getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;

    move-result-object p3

    if-eqz p3, :cond_1

    iget-object v1, p3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p3, p3, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    goto :goto_1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x7f0e001d

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_1
    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    const p1, 0x7f0700f1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    invoke-virtual {v0, p1}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x106001c

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->registerUserPresentReceiver()V

    iget-object p3, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->getNotificationId(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p3, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p2

    iput-boolean p1, p0, Lcom/android/stk/StkAppService$StkContext;->mNotificationOnKeyguard:Z

    return-void
.end method

.method private launchOpenChannelDialog(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "StkAppService"

    const-string p1, "msg is null, return here"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    iget-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, v0, Lcom/android/internal/telephony/cat/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/stk/StkAppService$9;

    invoke-direct {v2, p0, p1}, Lcom/android/stk/StkAppService$9;-><init>(Lcom/android/stk/StkAppService;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e00a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/stk/StkAppService$8;

    invoke-direct {v2, p0, p1}, Lcom/android/stk/StkAppService$8;-><init>(Lcom/android/stk/StkAppService;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040003

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-nez p0, :cond_2

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    :cond_2
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private launchRefreshMsg(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v0, :cond_0

    const-string p1, "[stkapp] launchRefreshMsg and mCurrentCmd is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f040002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "[stkapp] Don\'t need launchRefreshMsg for STK Feature"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {p1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object v0, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_3
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object p1, p1, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/android/stk/StkAppService;->mToast:Landroid/widget/Toast;

    const/16 v0, 0x50

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/widget/Toast;->setGravity(III)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mToast:Landroid/widget/Toast;

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_4
    :goto_0
    const-string p1, "[stkapp] launchRefreshMsg is null"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private launchTextDialog(I)V
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launchTextDialog, slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f040007

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/16 v3, 0xd

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;)I

    move-result v2

    add-int/2addr v2, v4

    invoke-static {v0, v2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchTextDialog, mDelayToCheckTime = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    invoke-static {v2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;)I

    move-result v0

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;I)V

    invoke-direct {p0, v3, p1, v5}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->delayToCheckUserUnlock(I)V

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0, v5}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDelayToCheckTime(Lcom/android/stk/StkAppService$StkContext;I)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "stk://com.android.stk/dialog/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getNotificationId(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_2
    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v6}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v6

    if-eqz v6, :cond_3

    iget-object v7, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    const-string v8, "com.android.stk"

    const-string v9, "com.android.stk.StkDialogActivity"

    invoke-virtual {v0, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    sget-object v8, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v8, p1}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v8

    const/high16 v9, 0x10000000

    or-int/2addr v8, v9

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const-string v5, "TEXT"

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v5, "SLOT_ID"

    invoke-virtual {v0, v5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v6, :cond_4

    iget-object v5, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v5}, Lcom/android/stk/StkAppService;->notifyUserIfNecessary(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_4
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenLocked()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenSecure()Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isScreenLocked : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenLocked()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isScreenSecure : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isScreenSecure()Z

    move-result v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->wakeUp()V

    invoke-direct {p0, v0, v7, p1}, Lcom/android/stk/StkAppService;->buildNotification(Landroid/content/Intent;Ljava/lang/String;I)V

    goto :goto_2

    :cond_5
    if-eqz v6, :cond_6

    iget-object v1, v6, Lcom/android/internal/telephony/cat/TextMessage;->text:Ljava/lang/String;

    invoke-direct {p0, v0, p1, v1}, Lcom/android/stk/StkAppService;->notifyUserIfNecessary(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/TextMessage;->responseNeeded:Z

    if-nez v0, :cond_7

    invoke-direct {p0, v3, p1, v4}, Lcom/android/stk/StkAppService;->sendResponse(IIZ)V

    :cond_7
    return-void
.end method

.method private notifyUserIfNecessary(Landroid/content/Intent;ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->createAllChannels()V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iget-boolean v0, v0, Lcom/android/stk/StkAppService$StkContext;->mNoResponseFromUser:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "keyguard"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/stk/StkAppService;->launchNotificationOnKeyguard(Landroid/content/Intent;ILjava/lang/String;)V

    :cond_1
    const p0, 0x3000001a

    const-string p1, "StkAppService"

    invoke-virtual {v0, p0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method private playTone(ZI)V
    .locals 6

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "StkAppService"

    const-string p1, "null settings, not playing tone."

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    new-instance v1, Lcom/android/stk/TonePlayer;

    invoke-direct {v1}, Lcom/android/stk/TonePlayer;-><init>()V

    iput-object v1, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    iget-object v2, v0, Lcom/android/internal/telephony/cat/ToneSettings;->tone:Lcom/android/internal/telephony/cat/Tone;

    invoke-virtual {v1, v2}, Lcom/android/stk/TonePlayer;->play(Lcom/android/internal/telephony/cat/Tone;)V

    iget-object v1, v0, Lcom/android/internal/telephony/cat/ToneSettings;->duration:Lcom/android/internal/telephony/cat/Duration;

    invoke-static {v1}, Lcom/android/stk/StkApp;->calculateDurationInMilis(Lcom/android/internal/telephony/cat/Duration;)I

    move-result v1

    if-nez v1, :cond_1

    const/16 v1, 0x7d0

    :cond_1
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-eqz p1, :cond_2

    sget-object v3, Lcom/android/stk/StkAppService;->PLAY_TONE_WITH_DIALOG:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    sget-object v3, Lcom/android/stk/StkAppService;->PLAY_TONE_ONLY:Ljava/lang/Integer;

    :goto_0
    const/16 v4, 0x10

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    int-to-long v4, v1

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-boolean v0, v0, Lcom/android/internal/telephony/cat/ToneSettings;->vibrate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    :cond_3
    if-eqz p1, :cond_4

    new-instance p1, Landroid/content/Intent;

    sget-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const-class v1, Lcom/android/stk/ToneDialog;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stk://com.android.stk/tone/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sget-object v1, Lcom/android/stk/StkAppService$InitiatedByUserAction;->unknown:Lcom/android/stk/StkAppService$InitiatedByUserAction;

    invoke-direct {p0, v1, p2}, Lcom/android/stk/StkAppService;->getFlagActivityNoUserAction(Lcom/android/stk/StkAppService$InitiatedByUserAction;I)I

    move-result v1

    const/high16 v2, 0x30000000

    or-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v1

    const-string v2, "TEXT"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "SLOT_ID"

    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/android/stk/StkAppService;->startActivity(Landroid/content/Intent;)V

    :cond_4
    return-void
.end method

.method private processEndCall(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 2

    const-string v0, "StkAppService"

    const-string v1, "End call"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    return-void
.end method

.method private processEndCallResponse(I)V
    .locals 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const-string v0, "persist.radio.stk.commandqualifier"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isAllCallsIdle(slotId)  = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isAllCallsIdle(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,sim id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->isAllCallsIdle(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    iput v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->processSetupCallResponse(IZ)V

    goto :goto_0

    :cond_0
    const-string v0, "End call"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->endCall()V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->cancelTimeOut()V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->startTimeOut()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: Call hangup: caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    :goto_0
    return-void
.end method

.method private processHoldCall(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/android/stk/StkAppService;->getCallState(IZ)Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    const-string p1, "BackgroundCall state is already in holding)"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processTerminalAbnormalResponse(I)V

    goto :goto_0

    :cond_0
    const-string v0, "StkAppService"

    const-string v1, "Hold call"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    :goto_0
    return-void
.end method

.method private processHoldCallResponse(I)V
    .locals 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const-string v1, "persist.radio.stk.commandqualifier"

    const-string v2, "0"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/stk/StkAppService;->getCallState(IZ)Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processHoldCallResponse callState["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], sim id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v3, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v1, :cond_3

    if-eq v2, v0, :cond_0

    const-string v0, "processHoldCallResponse in other state"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processTerminalAbnormalResponse(I)V

    goto :goto_1

    :cond_0
    const-string v0, "processHoldCallResponse in Active "

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "switchHoldingAndActive"

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    check-cast v0, Lcom/android/internal/telephony/imsphone/ImsPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/imsphone/ImsPhone;->holdActiveCall()V

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->switchHoldingAndActive()V

    :goto_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->cancelTimeOut()V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->startTimeOut()V

    goto :goto_1

    :cond_2
    const-string v0, "ERROR: phone is null."

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Error: switchHoldingAndActive: caught "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/stk/StkAppService;->processNetworkAbnormalResponse(I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, v1}, Lcom/android/stk/StkAppService;->processSetupCallResponse(IZ)V

    const/16 p1, 0x8

    iput p1, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const-string p1, "processHoldCallResponse in Idle"

    invoke-static {p0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private processNoCall(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->getCallState(I)I

    move-result v0

    const-string v1, "StkAppService"

    if-nez v0, :cond_0

    const-string v0, "No another call"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    :cond_0
    const-string p1, "currently busy on another call"

    invoke-static {v1, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processTerminalAbnormalResponse(I)V

    :goto_0
    return-void
.end method

.method private processNoCallResponse(I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    invoke-direct {p0, p1, v0}, Lcom/android/stk/StkAppService;->processSetupCallResponse(IZ)V

    return-void
.end method

.method private processNormalResponse(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processNormalResponse, sim id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/stk/StkAppService;->mCallState:I

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNormalResponse cmdName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "processNormalResponse mCurrentCmd is null or cmdType is null"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processSetupCall(Lcom/android/internal/telephony/cat/TextMessage;I)V
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v2, :cond_1

    if-eq v1, p2, :cond_0

    invoke-direct {p0, v1}, Lcom/android/stk/StkAppService;->getCallState(I)I

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/stk/StkAppService;->processTerminalAbnormalResponse(I)V

    sget-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const p1, 0x7f0e0037

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "persist.radio.stk.commandqualifier"

    const-string v1, "0"

    invoke-static {p2, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSetupCall cmdQualifier : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processEndCall(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_1

    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processHoldCall(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->processNoCall(Lcom/android/internal/telephony/cat/TextMessage;I)V

    :goto_1
    return-void
.end method

.method private processSetupCallResponse(IZ)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSetupCallResponse, sim id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " confirmed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSetupCallResponse cmdName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->isBusyOnCall()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string p2, "There is currently a call and cannot initiate a new call"

    invoke-static {v1, p2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processTerminalAbnormalResponse(I)V

    sget-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    const p1, 0x7f0e0037

    const/4 p2, 0x0

    invoke-static {p0, p1, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    goto :goto_1

    :cond_2
    :goto_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setConfirmation(Z)V

    if-eqz p2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchCallMsg(I)V

    :cond_3
    iget-object p2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object p1, p2, p1

    invoke-interface {p1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->cancelTimeOut()V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->startTimeOut()V

    :goto_1
    return-void

    :cond_4
    :goto_2
    const-string p0, "processSetupCallResponse mCurrentCmd is null or cmdType is null"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private processSetupCallResponseMessage(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processSetupCallResponseMessage(), sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput p1, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    const-string v0, "persist.radio.stk.commandqualifier"

    const-string v1, "0"

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processSetupCallResponseMessage() - cmdQualifier["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processEndCallResponse(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processHoldCallResponse(I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->processNoCallResponse(I)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    invoke-direct {p0, p1, v1}, Lcom/android/stk/StkAppService;->processSetupCallResponse(IZ)V

    :goto_0
    return-void
.end method

.method private processTerminalAbnormalResponse(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processTerminalAbnormalResponse, sim id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/stk/StkAppService;->mCallState:I

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processTerminalAbnormalResponse cmdName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "processTerminalAbnormalResponse mCurrentCmd is null or cmdType is null"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private registerEvents(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1

    invoke-static {p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    aget v2, p1, v1

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    const/4 v3, 0x5

    if-eq v2, v3, :cond_2

    const/4 v3, 0x7

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->registerLocaleChangeReceiver()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->registerHomeVisibilityObserver()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->registerUserActivityReceiver()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private declared-synchronized registerHomeVisibilityObserver()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/stk/StkAppService$6;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$6;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Landroidx/profileinstaller/ProfileInstallReceiver$$ExternalSyntheticLambda0;-><init>()V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addHomeVisibilityListener(Ljava/util/concurrent/Executor;Landroid/app/HomeVisibilityListener;)V

    const-string v0, "StkAppService"

    const-string v1, "Started to observe the foreground activity"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized registerLocaleChangeReceiver()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/stk/StkAppService$7;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$7;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized registerUserActivityReceiver()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUserActivityReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/stk/StkAppService$5;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$5;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUserActivityReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_ACTIVITY_NOTIFICATION"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ITelephony;->requestUserActivityNotification()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to init WindowManager:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized registerUserPresentReceiver()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/stk/StkAppService$4;

    invoke-direct {v0, p0}, Lcom/android/stk/StkAppService$4;-><init>(Lcom/android/stk/StkAppService;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private removeMenu(I)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/Menu;->items:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iput v1, v2, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    iput v0, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    return v1

    :catch_0
    const-string v2, "StkAppService"

    const-string v3, "Unable to get Menu\'s items size"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    iput v1, p0, Lcom/android/stk/StkAppService$StkContext;->mSetupMenuState:I

    return v0
.end method

.method private removeSetUpEvent(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove Event :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p2

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p2

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, v1, p2

    invoke-static {p2}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object p2

    iget-object p2, p2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/16 v1, 0xff

    aput v1, p2, v0

    const/4 p2, 0x4

    if-eq p1, p2, :cond_1

    const/4 p2, 0x5

    if-eq p1, p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterHomeVisibilityObserver()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterUserActivityReceiver()V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private replaceEventList(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, v0, v2

    const/16 v4, 0xff

    if-eq v3, v4, :cond_1

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v4}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v4

    iget-object v4, v4, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-direct {p0, v3, v4}, Lcom/android/stk/StkAppService;->findEvent(I[I)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-direct {p0, v3, p1}, Lcom/android/stk/StkAppService;->unregisterEvent(II)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-static {v0, v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmCurrentSetupEventCmd(Lcom/android/stk/StkAppService$StkContext;Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    iput-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->registerEvents(I)V

    return-void
.end method

.method private restoreInstanceFromStackBySlot(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "restoreInstanceFromStackBySlot cmdType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/stk/StkAppService$14;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2

    const/16 v1, 0x12

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchInputActivity(I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchTextDialog(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    move-result-object v0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchConfirmationDialog(Lcom/android/internal/telephony/cat/TextMessage;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->launchOpenChannelDialog(I)V

    goto :goto_0

    :cond_3
    :pswitch_2
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->launchMenuActivity(Lcom/android/internal/telephony/cat/Menu;I)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xd
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private sendResponse(IIZ)V
    .locals 2

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "response id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "confirm"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0, v0, p2}, Lcom/android/stk/StkAppService;->sendResponse(Landroid/os/Bundle;I)V

    return-void
.end method

.method private sendScreenBusyResponse(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v1, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/stk/StkAppService$StkContext;->mDisplayTextResponsed:Z

    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    const-string v1, "StkAppService"

    const-string v2, "SCREEN_BUSY"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->TERMINAL_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v1, v1, p1

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->callDelayedMsg(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    :goto_0
    return-void
.end method

.method private sendSetUpEventResponse(I[BI)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendSetUpEventResponse: event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "slotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p3

    invoke-static {v0}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmCurrentSetupEventCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "mCurrentSetupEventCmd is null"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p3

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmCurrentSetupEventCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->OK:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setEventDownload(I[B)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object p0, p0, p3

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    return-void
.end method

.method private showIconToast(Lcom/android/internal/telephony/cat/TextMessage;)V
    .locals 2

    new-instance v0, Landroid/widget/Toast;

    invoke-direct {v0, p0}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object p0, p1, Lcom/android/internal/telephony/cat/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setDuration(I)V

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private startSetUpCallFail(Landroid/telephony/PreciseCallState;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p0

    const/16 v1, 0x8

    if-eq p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result p0

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getBackgroundCallState()I

    move-result p0

    if-eq p0, v1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getRingingCallState()I

    move-result p0

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getRingingCallState()I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startSetUpCallSuccess(Landroid/telephony/PreciseCallState;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/PreciseCallState;->getForegroundCallState()I

    move-result p0

    const/4 p1, 0x4

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private startTimeOut()V
    .locals 8

    iget-wide v0, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/stk/StkAppService;->mCallState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTimeOut: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "ms, slot id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/stk/StkAppService;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    const/4 v2, 0x2

    iget-wide v3, p0, Lcom/android/stk/StkAppService;->mAlarmTime:J

    const-string v5, "StkAppService"

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private terminateTone(I)V
    .locals 4

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x10

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    sget-object v3, Lcom/android/stk/StkAppService;->PLAY_TONE_WITH_DIALOG:Ljava/lang/Integer;

    invoke-virtual {v2, v1, v3}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/stk/StkAppService;->PLAY_TONE_ONLY:Ljava/lang/Integer;

    :goto_0
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-direct {p0, v0, p1}, Lcom/android/stk/StkAppService;->handleStopTone(Landroid/os/Message;I)V

    return-void
.end method

.method private uninstallIfUnnecessary()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "StkAppService"

    const-string v1, "Uninstall App"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    const/4 p0, 0x1

    return p0
.end method

.method private unregisterEvent(II)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v1, :cond_1

    if-eq v0, p2, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-direct {p0, p1, v1}, Lcom/android/stk/StkAppService;->findEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 p2, 0x7

    if-eq p1, p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterLocaleChangeReceiver()V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-direct {p0, p1, p2}, Lcom/android/stk/StkAppService;->unregisterHomeVisibilityObserver(Lcom/android/internal/telephony/cat/AppInterface$CommandType;I)V

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterUserActivityReceiver()V

    :goto_1
    return-void
.end method

.method private declared-synchronized unregisterHomeVisibilityObserver()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    if-eqz v0, :cond_0

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->removeHomeVisibilityListener(Landroid/app/HomeVisibilityListener;)V

    const-string v0, "StkAppService"

    const-string v1, "Stopped to observe the foreground activity"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mHomeVisibilityListener:Landroid/app/HomeVisibilityListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private unregisterHomeVisibilityObserver(Lcom/android/internal/telephony/cat/AppInterface$CommandType;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v1, :cond_4

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_IDLE_MODE_TEXT:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v1, :cond_0

    if-eq v0, p2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextCmd(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmIdleModeTextVisible(Lcom/android/stk/StkAppService$StkContext;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_EVENT_LIST:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    if-ne p1, v1, :cond_2

    if-eq v0, p2, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    invoke-static {v1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fgetmSetupEventListSettings(Lcom/android/stk/StkAppService$StkContext;)Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    move-result-object v1

    iget-object v1, v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    const/4 v2, 0x5

    invoke-direct {p0, v2, v1}, Lcom/android/stk/StkAppService;->findEvent(I[I)Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterHomeVisibilityObserver()V

    return-void
.end method

.method private declared-synchronized unregisterLocaleChangeReceiver()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mLocaleChangeReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterUserActivityReceiver()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUserActivityReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mUserActivityReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized unregisterUserPresentReceiver(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v1, :cond_1

    if-eq v0, p1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/android/stk/StkAppService$StkContext;->mNotificationOnKeyguard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :try_start_1
    iget-object p1, p0, Lcom/android/stk/StkAppService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, p1}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/stk/StkAppService;->mUserPresentReceiver:Landroid/content/BroadcastReceiver;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private waitForLooper()V
    .locals 2

    :goto_0
    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    if-nez v0, :cond_0

    monitor-enter p0

    const-wide/16 v0, 0x64

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    :goto_1
    :try_start_1
    monitor-exit p0

    goto :goto_0

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_0
    return-void
.end method

.method private wakeUp()V
    .locals 2

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->beep()V

    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const v0, 0x1000001a

    const-string v1, "StkWakeLock"

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p0

    const-wide/16 v0, 0x1388

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method


# virtual methods
.method declared-synchronized getMainMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkAppService, getMainMenu, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-ltz p1, :cond_3

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getMenu()Lcom/android/internal/telephony/cat/Menu;

    move-result-object v0

    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "StkAppService, menu: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; StkAppService, mSimCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "; StkAppService, PhoneConstants.MAX_PHONE_COUNT_SINGLE_SIM: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2

    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-lt v1, v3, :cond_2

    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/stk/StkMenuConfig;->getInstance(Landroid/content/Context;)Lcom/android/stk/StkMenuConfig;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/stk/StkMenuConfig;->getLabel(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "StkAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "StkAppService, label:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lcom/android/stk/StkMenuConfig;->getIcon(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/cat/Menu;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v0, Lcom/android/internal/telephony/cat/Menu;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    iput-object v2, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    const-string v1, "StkAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StkAppService, menu.title: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/internal/telephony/cat/Menu;->title:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v3, v0, Lcom/android/internal/telephony/cat/Menu;->titleIconSelfExplanatory:Z

    :cond_1
    if-eqz p1, :cond_2

    iput-object p1, v0, Lcom/android/internal/telephony/cat/Menu;->titleIcon:Landroid/graphics/Bitmap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-object v0

    :cond_3
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getMenu(I)Lcom/android/internal/telephony/cat/Menu;
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StkAppService, getMenu, sim id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->mCurrentMenu:Lcom/android/internal/telephony/cat/Menu;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getStkContext(I)Lcom/android/stk/StkAppService$StkContext;
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid slotId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasVowifiConnected()Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v1

    move v2, v0

    :goto_0
    iget v3, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v2, v3, :cond_1

    if-eqz v1, :cond_0

    invoke-interface {v1, v2}, Lcom/android/ims/internal/IImsServiceEx;->getCurrentImsFeatureForPhone(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v4, v3, :cond_0

    const-string p0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasVowifiConnected slotId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return v0
.end method

.method declared-synchronized indicateMenuVisibility(ZI)V
    .locals 1

    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, v0, p2

    iput-boolean p1, p2, Lcom/android/stk/StkAppService$StkContext;->mMenuIsVisible:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method isAirPlaneModeOn()Z
    .locals 2

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

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

.method isAllOtherCardsAbsent(I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v1, v2, :cond_1

    if-eq v1, p1, :cond_0

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget p0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ne v1, p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method declared-synchronized isDialogPending(I)Z
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDialogPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/android/stk/StkAppService$StkContext;->mIsDialogPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method declared-synchronized isInputPending(I)Z
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInputFinishBySrv: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/android/stk/StkAppService$StkContext;->mIsInputPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method declared-synchronized isMainMenuAvailable(I)Z
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    if-ltz p1, :cond_1

    :try_start_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v1, p1

    iget-object p1, p1, Lcom/android/stk/StkAppService$StkContext;->lastSelectedItem:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_1
    monitor-exit p0

    return v0
.end method

.method isMainMenuExsit(I)Z
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isMainMenuExsit, sim id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez v1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    sub-int/2addr p1, v1

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-nez p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method declared-synchronized isMenuPending(I)Z
    .locals 3

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p1, v0, :cond_0

    const-string v0, "StkAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMenuPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-boolean v2, v2, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/android/stk/StkAppService$StkContext;->mIsMenuPending:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    monitor-exit p0

    const/4 p0, 0x0

    return p0
.end method

.method isNoTonePlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mTonePlayer:Lcom/android/stk/TonePlayer;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method isScreenIdle()Z
    .locals 6

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v2

    :cond_1
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.category.HOME"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Service;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v4, 0x10000

    invoke-virtual {p0, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v2
.end method

.method isShowDoubleApp()Z
    .locals 1

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f040005

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method isTopOfStack()Z
    .locals 3

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "currentPackageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StkAppService"

    invoke-static {v2, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_1

    const-string v0, "com.android.stk"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    return v0
.end method

.method isUiccReady(Landroid/content/Context;)Z
    .locals 3

    const/4 p1, 0x0

    move v0, p1

    :goto_0
    iget v1, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p1
.end method

.method isUiccReady(Landroid/content/Context;I)Z
    .locals 1

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p0, p0, p2

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/stk/StkAppService$StkContext;->mMainCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isVowifiConnected(I)Z
    .locals 2

    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/ims/internal/ImsManagerEx;->getIImsServiceEx()Lcom/android/ims/internal/IImsServiceEx;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/ims/internal/IImsServiceEx;->getCurrentImsFeatureForPhone(I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVowifiConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "slotId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "StkAppService"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return p0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()V
    .locals 8

    const-string v0, "onCreate()+"

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    iput v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSupportedModemCount()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v0, [Lcom/android/internal/telephony/cat/AppInterface;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    new-array v2, v0, [Lcom/android/stk/StkAppService$StkContext;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    new-array v2, v0, [Z

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCallStateListener:[Z

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mRegisterIms:[Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {p0, v2, v0, v3}, Landroid/app/Service;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string v0, "ro.bootmode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " bootmode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v3, "user"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mUserManager:Landroid/os/UserManager;

    new-instance v2, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget v2, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    new-array v3, v2, [Lcom/android/unisoc/telephony/RadioInteractorListener;

    iput-object v3, p0, Lcom/android/stk/StkAppService;->mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    new-array v2, v2, [Landroid/telephony/PhoneStateListener;

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mPreciseCallStateListener:[Landroid/telephony/PhoneStateListener;

    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/stk/StkAppService;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v3, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/16 v4, 0xd05

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slotId: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v6

    aput-object v6, v4, v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    new-instance v6, Lcom/android/stk/StkAppService$StkContext;

    invoke-direct {v6, p0}, Lcom/android/stk/StkAppService$StkContext;-><init>(Lcom/android/stk/StkAppService;)V

    aput-object v6, v4, v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, v3

    invoke-static {v4, v3}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmSlotId(Lcom/android/stk/StkAppService$StkContext;I)V

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v4, v4, v3

    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iput-object v6, v4, Lcom/android/stk/StkAppService$StkContext;->mCmdsQ:Ljava/util/LinkedList;

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-direct {p0, v3}, Lcom/android/stk/StkAppService;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v6

    aput-object v6, v4, v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mRadioInteractorListener:[Lcom/android/unisoc/telephony/RadioInteractorListener;

    aget-object v6, v6, v3

    const/high16 v7, 0x800000

    invoke-virtual {v4, v6, v7, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    const-string v4, "RadioInteractorListener.LISTEN_MODEM_STATE_CHANGED_EVENT"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "panic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "wdgreboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "apwdgreboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "special"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "unknowreboot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "gsm.sys.modem.recovery"

    const-string v1, "1"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "Stk App Service"

    invoke-direct {v0, v5, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mNotificationManager:Landroid/app/NotificationManager;

    sput-object p0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    return-void
.end method

.method public onDestroy()V
    .locals 8

    const-string v0, "onDestroy()"

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterUserActivityReceiver()V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterHomeVisibilityObserver()V

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->unregisterLocaleChangeReceiver()V

    const/4 v0, 0x0

    sput-object v0, Lcom/android/stk/StkAppService;->sInstance:Lcom/android/stk/StkAppService;

    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-static {v2}, Lcom/android/internal/telephony/PhoneConfigurationManager;->unregisterForMultiSimConfigChange(Landroid/os/Handler;)V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2}, Landroid/app/Service;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v3, v4, :cond_3

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    aget v4, v4, v2

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v5

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/TelephonyManager;

    invoke-virtual {v6, v4}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mPreciseCallStateListener:[Landroid/telephony/PhoneStateListener;

    aget-object v6, v6, v3

    if-eqz v6, :cond_1

    if-eqz v4, :cond_1

    invoke-virtual {v4, v6, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mPreciseCallStateListener:[Landroid/telephony/PhoneStateListener;

    aput-object v0, v4, v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mCallStateListener:[Z

    aput-boolean v2, v4, v3

    :cond_1
    iget-object v4, p0, Lcom/android/stk/StkAppService;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    if-eqz v4, :cond_2

    :try_start_0
    invoke-virtual {v5, v4}, Landroid/telephony/ims/ImsMmTelManager;->unregisterImsRegistrationCallback(Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mRegisterIms:[Z

    aput-boolean v2, v4, v3

    const-string v4, "unregisterImsRegistrationCallback succeeded"

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tryRegisterIms Exceptio: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 7

    const-string p2, "StkAppService"

    if-nez p1, :cond_0

    const-string p0, "StkAppService onStart intent is null so return"

    invoke-static {p2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-nez p1, :cond_1

    const-string p0, "StkAppService onStart args is null so return"

    invoke-static {p2, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    const-string v0, "op"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const-string v3, "SLOT_ID"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart sim id: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", op: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", *****"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    if-ltz v3, :cond_8

    iget v5, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v6, v5, v3

    if-nez v6, :cond_8

    invoke-static {v3}, Lcom/android/internal/telephony/cat/CatService;->getInstance(I)Lcom/android/internal/telephony/cat/AppInterface;

    move-result-object v6

    aput-object v6, v5, v3

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, v3

    if-nez v5, :cond_5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mStkService is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v6, v6, v3

    iget v6, v6, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p2, v5}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, p2, v3

    iput v2, p2, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p2, v3}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;I)V

    :cond_3
    move p2, v2

    :goto_1
    iget v5, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p2, v5, :cond_6

    if-eq p2, v3, :cond_4

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object v5, v5, p2

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v5, v5, p2

    iget v5, v5, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    if-ne v5, v4, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, p2, v3

    iput v4, p2, Lcom/android/stk/StkAppService$StkContext;->mStkServiceState:I

    move p2, v2

    :cond_6
    :goto_2
    iget v5, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ne p2, v5, :cond_8

    invoke-virtual {p0}, Lcom/android/stk/StkAppService;->isShowDoubleApp()Z

    move-result p1

    if-nez p1, :cond_7

    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f040004

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/stk/StkAppInstaller;->unInstall(Landroid/content/Context;)V

    :cond_7
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void

    :cond_8
    invoke-direct {p0}, Lcom/android/stk/StkAppService;->waitForLooper()V

    iget-object p2, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p2, v0, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p2

    if-eq v0, v4, :cond_a

    const/4 v2, 0x2

    if-eq v0, v2, :cond_9

    const/4 v2, 0x3

    if-eq v0, v2, :cond_b

    const/4 v2, 0x4

    if-eq v0, v2, :cond_b

    if-eq v0, v1, :cond_b

    const/4 v1, 0x7

    if-eq v0, v1, :cond_9

    const/16 v1, 0x11

    if-eq v0, v1, :cond_9

    packed-switch v0, :pswitch_data_0

    return-void

    :cond_9
    :pswitch_0
    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_3

    :cond_a
    const-string v0, "cmd message"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    :cond_b
    :goto_3
    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public processNetworkAbnormalResponse(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processNetworkAbnormalResponse, sim id : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StkAppService"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/android/stk/StkAppService$StkContext;->mCmdInProgress:Z

    const/16 v2, 0x10

    iput v2, p0, Lcom/android/stk/StkAppService;->mCallState:I

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processNetworkAbnormalResponse cmdName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v0

    sget-object v1, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->SET_UP_CALL:Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->value()I

    move-result v1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/internal/telephony/cat/CatResponseMessage;

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/stk/StkAppService$StkContext;->mCurrentCmd:Lcom/android/internal/telephony/cat/CatCmdMessage;

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    sget-object v1, Lcom/android/internal/telephony/cat/ResultCode;->NETWORK_CRNTLY_UNABLE_TO_PROCESS:Lcom/android/internal/telephony/cat/ResultCode;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/CatResponseMessage;->setResultCode(Lcom/android/internal/telephony/cat/ResultCode;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mStkService:[Lcom/android/internal/telephony/cat/AppInterface;

    aget-object p0, p0, p1

    invoke-interface {p0, v0}, Lcom/android/internal/telephony/cat/AppInterface;->onCmdResponse(Lcom/android/internal/telephony/cat/CatResponseMessage;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string p0, "processNetworkAbnormalResponse mCurrentCmd is null or cmdType is null"

    invoke-static {v1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public run()V
    .locals 2

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->prepare()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceLooper:Landroid/os/Looper;

    new-instance v0, Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/stk/StkAppService$ServiceHandler;-><init>(Lcom/android/stk/StkAppService;Lcom/android/stk/StkAppService$ServiceHandler-IA;)V

    iput-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/16 v0, 0x15

    invoke-static {p0, v0, v1}, Lcom/android/internal/telephony/PhoneConfigurationManager;->registerForMultiSimConfigChange(Landroid/os/Handler;ILjava/lang/Object;)V

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "run Exceptio: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StkAppService"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public sendResponse(Landroid/os/Bundle;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2, p1}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mServiceHandler:Lcom/android/stk/StkAppService$ServiceHandler;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method declared-synchronized setDisplayTextDlgVisibility(ZI)V
    .locals 1

    monitor-enter p0

    if-ltz p2, :cond_0

    :try_start_0
    iget v0, p0, Lcom/android/stk/StkAppService;->mSimCount:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object p2, v0, p2

    invoke-static {p2, p1}, Lcom/android/stk/StkAppService$StkContext;->-$$Nest$fputmDisplayTextDlgIsVisibile(Lcom/android/stk/StkAppService$StkContext;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public setPreciseCallStateListener(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/stk/StkAppService;->mCallStateListener:[Z

    aget-boolean v0, v0, p1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v0

    if-eqz v0, :cond_1

    array-length v1, v0

    if-lez v1, :cond_1

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    const-class v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/android/stk/StkAppService;->getPhoneStateListener(I)Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0x800

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mCallStateListener:[Z

    const/4 v1, 0x1

    aput-boolean v1, p0, p1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getPhoneStateListener subId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StkAppService"

    invoke-static {p1, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method setmHomeKeyEvent(Z)V
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setmHomeKeyEvent : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "StkAppService"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/stk/StkAppService;->mHomePressedFlg:Z

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3

    const-string v0, "SLOT_ID"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mStkContext:[Lcom/android/stk/StkAppService$StkContext;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/android/stk/StkAppService$StkContext;->getImmediateDialogInstance()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "StkAppService"

    const-string v2, "finish dialog for immediate response."

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public tryRegisterIms(I)V
    .locals 5

    const-string v0, "StkAppService"

    iget-object v1, p0, Lcom/android/stk/StkAppService;->mRegisterIms:[Z

    aget-boolean v1, v1, p1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v1

    if-eqz v1, :cond_1

    array-length v2, v1

    if-lez v2, :cond_1

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lcom/android/stk/StkAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/stk/StkAppService;->mImsRegistrationCallback:Landroid/telephony/ims/RegistrationManager$RegistrationCallback;

    invoke-virtual {v2, v3, v4}, Landroid/telephony/ims/ImsMmTelManager;->registerImsRegistrationCallback(Ljava/util/concurrent/Executor;Landroid/telephony/ims/RegistrationManager$RegistrationCallback;)V

    iget-object p0, p0, Lcom/android/stk/StkAppService;->mRegisterIms:[Z

    const/4 v2, 0x1

    aput-boolean v2, p0, p1

    const-string p0, "registerImsRegistrationCallback succeeded"

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "tryRegisterIms subId: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
