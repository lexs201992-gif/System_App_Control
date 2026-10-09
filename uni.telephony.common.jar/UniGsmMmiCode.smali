.class public final Lcom/android/internal/telephony/gsm/UniGsmMmiCode;
.super Landroid/os/Handler;
.source "UniGsmMmiCode.java"

# interfaces
.implements Lcom/android/internal/telephony/MmiCode;


# static fields
.field static final ACTION_ACTIVATE:Ljava/lang/String; = "*"

.field static final ACTION_DEACTIVATE:Ljava/lang/String; = "#"

.field static final ACTION_ERASURE:Ljava/lang/String; = "##"

.field static final ACTION_INTERROGATE:Ljava/lang/String; = "*#"

.field static final ACTION_REGISTER:Ljava/lang/String; = "**"

.field static final CLIP_DISABLE:I = 0x0

.field static final CLIP_ENABLE:I = 0x1

.field static final END_OF_USSD_COMMAND:C = '#'

.field static final EVENT_GET_CLIR_COMPLETE:I = 0x2

.field static final EVENT_GET_CNAP_COMPLETE:I = 0x8

.field static final EVENT_QUERY_CF_COMPLETE:I = 0x3

.field static final EVENT_QUERY_COLP_COMPLETE:I = 0x9

.field static final EVENT_QUERY_COLR_COMPLETE:I = 0xa

.field static final EVENT_QUERY_COMPLETE:I = 0x5

.field static final EVENT_SET_CFF_COMPLETE:I = 0x6

.field static final EVENT_SET_COMPLETE:I = 0x1

.field static final EVENT_UPDATE_CLIP_COMPLETE:I = 0xb

.field static final EVENT_USSD_CANCEL_COMPLETE:I = 0x7

.field static final EVENT_USSD_COMPLETE:I = 0x4

.field static final LOG_TAG:Ljava/lang/String; = "UniGsmMmiCode"

.field static final MATCH_GROUP_ACTION:I = 0x2

.field static final MATCH_GROUP_DIALING_NUMBER:I = 0xc

.field static final MATCH_GROUP_POUND_STRING:I = 0x1

.field static final MATCH_GROUP_PWD_CONFIRM:I = 0xb

.field static final MATCH_GROUP_SERVICE_CODE:I = 0x3

.field static final MATCH_GROUP_SIA:I = 0x5

.field static final MATCH_GROUP_SIB:I = 0x7

.field static final MATCH_GROUP_SIC:I = 0x9

.field static final MAX_LENGTH_SHORT_CODE:I = 0x2

.field private static final MIN_REMAINTIMES:I = 0x0

.field private static final PROP_SIM_PIN_PUK_REMAINTIMES:[Ljava/lang/String;

.field static final QUERY_LI_RESPONSE_DISABLE:I = 0x0

.field static final QUERY_LI_RESPONSE_ENABLE:I = 0x1

.field static final QUERY_LI_RESPONSE_ERROR:I = -0x1

.field private static final REFRESH_VIDEO_CF_NOTIFICATION_ACTION:Ljava/lang/String; = "android.intent.action.REFRESH_VIDEO_CF_NOTIFICATION"

.field static final SC_BAIC:Ljava/lang/String; = "35"

.field static final SC_BAICr:Ljava/lang/String; = "351"

.field static final SC_BAOC:Ljava/lang/String; = "33"

.field static final SC_BAOIC:Ljava/lang/String; = "331"

.field static final SC_BAOICxH:Ljava/lang/String; = "332"

.field static final SC_BA_ALL:Ljava/lang/String; = "330"

.field static final SC_BA_MO:Ljava/lang/String; = "333"

.field static final SC_BA_MT:Ljava/lang/String; = "353"

.field static final SC_CFB:Ljava/lang/String; = "67"

.field static final SC_CFNR:Ljava/lang/String; = "62"

.field static final SC_CFNRy:Ljava/lang/String; = "61"

.field static final SC_CFU:Ljava/lang/String; = "21"

.field static final SC_CF_All:Ljava/lang/String; = "002"

.field static final SC_CF_All_Conditional:Ljava/lang/String; = "004"

.field static final SC_CLIP:Ljava/lang/String; = "30"

.field static final SC_CLIR:Ljava/lang/String; = "31"

.field static final SC_CNAP:Ljava/lang/String; = "300"

.field static final SC_COLP:Ljava/lang/String; = "76"

.field static final SC_COLR:Ljava/lang/String; = "77"

.field static final SC_PIN:Ljava/lang/String; = "04"

.field static final SC_PIN2:Ljava/lang/String; = "042"

.field static final SC_PUK:Ljava/lang/String; = "05"

.field static final SC_PUK2:Ljava/lang/String; = "052"

.field static final SC_PWD:Ljava/lang/String; = "03"

.field static final SC_WAIT:Ljava/lang/String; = "43"

.field static final UNLOCK_PIN:I = 0x0

.field static final UNLOCK_PIN2:I = 0x1

.field static final UNLOCK_PUK:I = 0x2

.field static final UNLOCK_PUK2:I = 0x3

.field private static final VIDEO_CF_STATUS:Ljava/lang/String; = "video_cf_status"

.field private static final VIDEO_CF_SUB_ID:Ljava/lang/String; = "video_cf_flag_with_subid"

.field static sPatternSuppService:Ljava/util/regex/Pattern;

.field private static sTwoDigitNumberPattern:[Ljava/lang/String;


# instance fields
.field mAction:Ljava/lang/String;

.field private mCallbackReceiver:Landroid/os/ResultReceiver;

.field mContext:Landroid/content/Context;

.field public mDialingNumber:Ljava/lang/String;

.field mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mIsCallFwdReg:Z

.field private mIsNetworkInitiatedUSSD:Z

.field private mIsPendingUSSD:Z

.field private mIsSsInfo:Z

.field private mIsUssdRequest:Z

.field mMessage:Ljava/lang/CharSequence;

.field private mMessenger:Landroid/os/Messenger;

.field mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

.field mPoundString:Ljava/lang/String;

.field mPwd:Ljava/lang/String;

.field private mRi:Lcom/android/unisoc/telephony/RadioInteractor;

.field mSc:Ljava/lang/String;

.field mSia:Ljava/lang/String;

.field mSib:Ljava/lang/String;

.field mSic:Ljava/lang/String;

.field mState:Lcom/android/internal/telephony/MmiCode$State;

.field mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;


# direct methods
.method static bridge synthetic -$$Nest$monQueryLiComplete(Lcom/android/internal/telephony/gsm/UniGsmMmiCode;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onQueryLiComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSetClipComplete(Lcom/android/internal/telephony/gsm/UniGsmMmiCode;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onSetClipComplete(Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "vendor.sim.puk.remaintimes"

    const-string v1, "vendor.sim.puk2.remaintimes"

    const-string v2, "vendor.sim.pin.remaintimes"

    const-string v3, "vendor.sim.pin2.remaintimes"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->PROP_SIM_PIN_PUK_REMAINTIMES:[Ljava/lang/String;

    const-string v0, "((\\*|#|\\*#|\\*\\*|##)(\\d{2,3})(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*)(\\*([^*#]*))?)?)?)?#)(.*)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsSsInfo:Z

    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    :cond_0
    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$1;-><init>(Lcom/android/internal/telephony/gsm/UniGsmMmiCode;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method public static cbFacilityToServiceType(Ljava/lang/String;)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "OX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_1
    const-string v0, "OI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :sswitch_2
    const-string v0, "IR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_3
    const-string v0, "AO"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "AI"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_5
    const-string v0, "AG"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "AC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_7
    const-string v0, "AB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_INCOMING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_OUTGOING_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_ALL_BARRING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC_ROAMING:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC_EXC_HOME:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_6
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOIC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_7
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_BAOC:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x821 -> :sswitch_7
        0x822 -> :sswitch_6
        0x826 -> :sswitch_5
        0x828 -> :sswitch_4
        0x82e -> :sswitch_3
        0x929 -> :sswitch_2
        0x9da -> :sswitch_1
        0x9e9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static cfActionToRequestType(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    const/4 v0, 0x0

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ERASURE:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static cfReasonToServiceType(I)Lcom/android/internal/telephony/gsm/SsData$ServiceType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL_CONDITIONAL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_ALL:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NOT_REACHABLE:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_NO_REPLY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CF_BUSY:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->SS_CFU:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static clirModeToRequestType(I)Lcom/android/internal/telephony/gsm/SsData$RequestType;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0

    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_DEACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sPatternCdmaMmiCodeWhileRoaming:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "67"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#31#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string v4, "82"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "*31#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method private createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104089c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x80

    if-gt v1, v2, :cond_1

    and-int v2, v1, p1

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v2, v1, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104089c

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    :goto_0
    const/16 v2, 0x80

    if-gt v1, v2, :cond_1

    and-int v2, v1, p1

    if-eqz v2, :cond_0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int v2, v1, p1

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_0
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private formatLtr(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    if-nez p1, :cond_0

    move-object v1, p1

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;Z)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private static getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$2;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "*#"

    return-object v0

    :pswitch_1
    const-string v0, "##"

    return-object v0

    :pswitch_2
    const-string v0, "**"

    return-object v0

    :pswitch_3
    const-string v0, "#"

    return-object v0

    :pswitch_4
    const-string v0, "*"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCfType(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    const v0, 0x104004e

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x8030002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getScString needShowCfType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniGsmMmiCode"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v2, "67"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string v2, "62"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "61"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v2, "21"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :goto_0
    const/4 v2, -0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0x80c000e

    goto :goto_2

    :pswitch_1
    const v0, 0x80c000f

    goto :goto_2

    :pswitch_2
    const v0, 0x80c000d

    goto :goto_2

    :pswitch_3
    const v0, 0x80c0010

    nop

    :cond_1
    :goto_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2

    :sswitch_data_0
    .sparse-switch
        0x63f -> :sswitch_3
        0x6bb -> :sswitch_2
        0x6bc -> :sswitch_1
        0x6c1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getControlStrings(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
            "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$2;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const-string v3, "353"

    const-string v4, "333"

    const-string v5, "004"

    const-string v6, "002"

    const-string v7, "330"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "351"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "35"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "332"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "331"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "33"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "43"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "31"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "30"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "62"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "61"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "67"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :pswitch_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "21"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :goto_0
    return-object v0

    :cond_1
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method public static getControlStringsForPwd(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SsData$RequestType;",
            "Lcom/android/internal/telephony/gsm/SsData$ServiceType;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v1, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getControlStrings(Lcom/android/internal/telephony/gsm/SsData$RequestType;Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "03"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getIntCarrierConfig(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2

    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method private getRemainTimes(Landroid/content/Context;II)I
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->PROP_SIM_PIN_PUK_REMAINTIMES:[Ljava/lang/String;

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v0, v2, p2

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    const-string v2, ""

    invoke-static {p3, v0, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v3

    goto :goto_0

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number format exception in getRemainTimes : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UniGsmMmiCode"

    invoke-static {v5, v4}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v1
.end method

.method private getScString()Ljava/lang/CharSequence;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_b

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040048

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getCfType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040053

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040054

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "03"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400cf

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "43"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x104005a

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isPinPukCommand()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10400ce

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const/high16 v1, 0x80c0000

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x80c0002

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x80c0001

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "76"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040058

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "77"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040059

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, ""

    return-object v0
.end method

.method private getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$2;->$SwitchMap$com$android$internal$telephony$gsm$SsData$ServiceType:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    return-object v0

    :pswitch_0
    const-string v0, "353"

    return-object v0

    :pswitch_1
    const-string v0, "333"

    return-object v0

    :pswitch_2
    const-string v0, "330"

    return-object v0

    :pswitch_3
    const-string v0, "351"

    return-object v0

    :pswitch_4
    const-string v0, "35"

    return-object v0

    :pswitch_5
    const-string v0, "332"

    return-object v0

    :pswitch_6
    const-string v0, "331"

    return-object v0

    :pswitch_7
    const-string v0, "33"

    return-object v0

    :pswitch_8
    const-string v0, "43"

    return-object v0

    :pswitch_9
    const-string v0, "31"

    return-object v0

    :pswitch_a
    const-string v0, "30"

    return-object v0

    :pswitch_b
    const-string v0, "004"

    return-object v0

    :pswitch_c
    const-string v0, "002"

    return-object v0

    :pswitch_d
    const-string v0, "62"

    return-object v0

    :pswitch_e
    const-string v0, "61"

    return-object v0

    :pswitch_f
    const-string v0, "67"

    return-object v0

    :pswitch_10
    const-string v0, "21"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
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

.method private static getTwoDigitNumberPattern(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Get two digit number pattern: subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniGsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    nop

    const-string v2, "carrier_config"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "Two Digit Number Pattern from carrir config"

    invoke-static {v1, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "mmi_two_digit_number_pattern_string_array"

    invoke-virtual {v3, v1}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x0

    new-array v0, v1, [Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method private handlePasswordError(I)V
    .locals 2

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method public static isCarrierSupportCallerIdVerticalServiceCodes(Lcom/android/internal/telephony/Phone;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "carrier_supports_caller_id_vertical_service_codes_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :goto_0
    return v2
.end method

.method public static isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method private static isEmptyOrNull(Ljava/lang/CharSequence;)Z
    .locals 1

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method private isFacToDial()Z
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v3, "feature_access_codes_string_array"

    invoke-virtual {v1, v3}, Landroid/os/PersistableBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    array-length v4, v3

    move v5, v2

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private isServiceClassVoiceorNone(I)Z
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_1

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

.method static isServiceCodeCallBarring(Ljava/lang/String;)Z
    .locals 7

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    const v2, 0x107002f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    array-length v3, v2

    move v4, v1

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method static isServiceCodeCallForwarding(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_1

    const-string v0, "21"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "67"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "61"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "62"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "002"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "004"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v0

    return v0
.end method

.method private static isShortCodeUSSD(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isInCall()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    return v3

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x31

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    return v0
.end method

.method public static isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z
    .locals 8

    const-string v0, "isTwoDigitShortCode"

    const-string v1, "UniGsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    if-nez v2, :cond_1

    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getTwoDigitNumberPattern(Landroid/content/Context;I)[Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    :cond_1
    sget-object v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sTwoDigitNumberPattern:[Ljava/lang/String;

    array-length v3, v2

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v2, v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Two Digit Number Pattern "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v0, "Two Digit Number Pattern -true"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    const-string v2, "Two Digit Number Pattern -false"

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_4
    :goto_1
    return v0
.end method

.method public static isVoiceUnconditionalForwarding(II)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    :cond_0
    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_2

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;
    .locals 9

    const-string v0, "{1}"

    const-string v1, "{2}"

    const-string v2, "{0}"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/CharSequence;

    iget v2, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v6, v4, :cond_2

    if-eqz v2, :cond_1

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_1
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_2
    iget v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-nez v6, :cond_3

    iget-object v6, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_3
    if-eqz v2, :cond_4

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v7, 0x10401c3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    :goto_1
    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, p2

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->serviceClassToCFString(I)Ljava/lang/CharSequence;

    move-result-object v7

    aput-object v7, v1, v3

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    invoke-static {v7, v8}, Landroid/telephony/PhoneNumberUtils;->stringFromStringAndTOA(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->formatLtr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v4

    iget v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v1, v5

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v5, :cond_6

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v5, p2

    if-ne v5, v4, :cond_6

    iget v5, p1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v5, v4, :cond_5

    move v3, v4

    :cond_5
    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v7, p1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v5, v4, v3, v7}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :cond_6
    invoke-static {v6, v0, v1}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    return-object v3
.end method

.method private static makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    return-object p0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/UniGsmMmiCode;
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    move-result-object v0

    return-object v0
.end method

.method public static newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/os/ResultReceiver;)Lcom/android/internal/telephony/gsm/UniGsmMmiCode;
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->supportsConversionOfCdmaCallerIdMmiCodesWhileRoaming()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-static {p1, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isEmergencyNumber(Lcom/android/internal/telephony/Phone;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isCarrierSupportCallerIdVerticalServiceCodes(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->convertCdmaMmiCodesTo3gppMmiCodes(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sPatternSuppService:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    const-string v3, "#"

    if-eqz v2, :cond_4

    new-instance v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v2

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    const/16 v2, 0x9

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSic:Ljava/lang/String;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPwd:Ljava/lang/String;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeEmptyNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v2

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_0

    :cond_3
    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isFacToDial()Z

    move-result v2

    if-eqz v2, :cond_7

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    new-instance v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v2

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v3

    invoke-static {v2, v3, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isTwoDigitShortCode(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v0, 0x0

    goto :goto_0

    :cond_6
    invoke-static {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isShortCode(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;)Z

    move-result v2

    if-eqz v2, :cond_7

    new-instance v2, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v2, p1, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    move-object v0, v2

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    :cond_7
    :goto_0
    if-eqz v0, :cond_8

    iput-object p3, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    :cond_8
    return-object v0
.end method

.method public static newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/UniGsmMmiCode;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsPendingUSSD:Z

    return-object v0
.end method

.method public static newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/UniGsmMmiCode;
    .locals 2

    new-instance v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    iput-object p0, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsUssdRequest:Z

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsNetworkInitiatedUSSD:Z

    if-eqz p1, :cond_0

    iput-boolean v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsPendingUSSD:Z

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :goto_0
    return-object v0
.end method

.method public static newNetworkInitiatedUssdError(Ljava/lang/String;ZLcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/UniGsmMmiCode;
    .locals 3

    new-instance v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;

    invoke-direct {v0, p2, p3}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;-><init>(Lcom/android/internal/telephony/GsmCdmaPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10405c7

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iput-object p0, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    iput-boolean p1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsUssdRequest:Z

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, v0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method private onGetClirComplete(Landroid/os/AsyncResult;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    const/4 v2, 0x1

    aget v2, v1, v2

    const/4 v3, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    aget v2, v1, v3

    const v3, 0x1040049

    packed-switch v2, :pswitch_data_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104004a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_2

    :pswitch_3
    aget v2, v1, v3

    const v3, 0x104004c

    packed-switch v2, :pswitch_data_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104004b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    nop

    :goto_1
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_2

    :pswitch_6
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10405c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_2

    :pswitch_7
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104004d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    goto :goto_2

    :pswitch_8
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089e

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    nop

    :goto_2
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGetClirComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniGsmMmiCode"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method private onQueryCfComplete(Landroid/os/AsyncResult;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v2, :cond_5

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v4, 0x1

    :goto_0
    const/16 v5, 0x80

    if-gt v4, v5, :cond_4

    const/4 v5, 0x0

    array-length v6, v2

    :goto_1
    if-ge v5, v6, :cond_3

    aget-object v7, v2, v5

    iget v7, v7, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/2addr v7, v4

    if-eqz v7, :cond_2

    aget-object v7, v2, v5

    invoke-direct {p0, v7, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->makeCFQueryResultMessage(Lcom/android/internal/telephony/CallForwardInfo;I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    shl-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_5
    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089a

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v3, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :goto_3
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :goto_4
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryCfComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniGsmMmiCode"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private onQueryComplete(Landroid/os/AsyncResult;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    array-length v2, v1

    const v3, 0x10405c7

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    aget v4, v1, v2

    if-nez v4, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v5, "43"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    aget v2, v1, v5

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->createQueryCallWaitingResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    aget v2, v1, v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->createQueryCallBarringResultMessage(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    aget v2, v1, v2

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQueryComplete: mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniGsmMmiCode"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private onQueryLiComplete(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "result"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onQueryLiComplete result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniGsmMmiCode"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    const v3, 0x10405c7

    if-ne v2, v1, :cond_0

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    if-ne v2, v1, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private onSetClipComplete(Landroid/os/Bundle;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "hasException"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetClipComplete exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UniGsmMmiCode"

    invoke-static {v3, v2}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const v2, 0x10405c7

    if-eqz v1, :cond_0

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104089b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_0
    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :goto_1
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method private onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V
    .locals 12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v3, 0x2

    const v4, 0x10405c7

    const/4 v5, 0x1

    const-string v6, "UniGsmMmiCode"

    if-eqz v2, :cond_12

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v2, v2, Lcom/android/internal/telephony/CommandException;

    if-eqz v2, :cond_11

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v2, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v2

    sget-object v4, Lcom/android/internal/telephony/CommandException$Error;->PASSWORD_INCORRECT:Lcom/android/internal/telephony/CommandException$Error;

    const-string v7, "04"

    const v8, 0x10405db

    const v9, 0x1040182

    if-ne v2, v4, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isPinPukCommand()Z

    move-result v4

    if-eqz v4, :cond_9

    const/4 v4, 0x0

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v11, "05"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x1040183

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x2

    goto :goto_0

    :cond_0
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v11, "052"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x80c000b

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x3

    goto :goto_0

    :cond_1
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v9, "042"

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v9, 0x80c000a

    invoke-virtual {v7, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    :cond_3
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v9

    invoke-direct {p0, v7, v4, v9}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getRemainTimes(Landroid/content/Context;II)I

    move-result v7

    if-gtz v7, :cond_7

    const-string v9, "onSetComplete: PUK locked, cancel as lock screen will handle this"

    invoke-static {v6, v9}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v9, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v9, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    if-nez v7, :cond_8

    if-eqz v4, :cond_4

    if-eq v4, v5, :cond_4

    if-eq v4, v3, :cond_4

    const/4 v3, 0x3

    if-ne v4, v3, :cond_8

    :cond_4
    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScString()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object v0, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v4, :cond_5

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10405da

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    if-ne v4, v5, :cond_6

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x80c004d

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSetComplete: attemptsRemaining="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const/high16 v5, 0x1150000

    invoke-virtual {v1, v5, v7, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    :goto_1
    goto/16 :goto_2

    :cond_9
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x1040645

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    :cond_a
    sget-object v3, Lcom/android/internal/telephony/CommandException$Error;->SIM_PUK2:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v3, :cond_b

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v9}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_b
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x104034b

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_c
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v1, :cond_d

    const-string v1, "FDN_CHECK_FAILURE"

    invoke-static {v6, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10405ca

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_d
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->MODEM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v2, v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->supports3gppCallForwardingWhileRoaming()Z

    move-result v1

    if-nez v1, :cond_e

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10405c9

    invoke-virtual {v1, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_e
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_10
    :goto_2
    goto/16 :goto_4

    :cond_11
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto/16 :goto_4

    :cond_12
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v1

    const v2, 0x104089f

    const-string v7, "31"

    if-eqz v1, :cond_14

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsCallFwdReg:Z

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104089b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :goto_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->saveClirSetting(I)V

    goto :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_15

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104089a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->saveClirSetting(I)V

    goto :goto_4

    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isRegister()Z

    move-result v1

    if-eqz v1, :cond_16

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isErasure()Z

    move-result v1

    if-eqz v1, :cond_17

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104089d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_17
    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    :cond_18
    :goto_4
    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSetComplete mmi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    return-void
.end method

.method static scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "invalid call barring sc"

    if-eqz p0, :cond_8

    const-string v1, "33"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "AO"

    return-object v0

    :cond_0
    const-string v1, "331"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "OI"

    return-object v0

    :cond_1
    const-string v1, "332"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "OX"

    return-object v0

    :cond_2
    const-string v1, "35"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "AI"

    return-object v0

    :cond_3
    const-string v1, "351"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "IR"

    return-object v0

    :cond_4
    const-string v1, "330"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v0, "AB"

    return-object v0

    :cond_5
    const-string v1, "333"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v0, "AG"

    return-object v0

    :cond_6
    const-string v1, "353"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v0, "AC"

    return-object v0

    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static scToCallForwardReason(Ljava/lang/String;)I
    .locals 2

    const-string v0, "invalid call forward sc"

    if-eqz p0, :cond_6

    const-string v1, "002"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x4

    return v0

    :cond_0
    const-string v1, "21"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const-string v1, "67"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v1, "62"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x3

    return v0

    :cond_3
    const-string v1, "61"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x2

    return v0

    :cond_4
    const-string v1, "004"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v0, 0x5

    return v0

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private serviceClassToCFString(I)Ljava/lang/CharSequence;
    .locals 2

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x0

    return-object v0

    :sswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040896

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040897

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040893

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040894

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040898

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040895

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040892

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    :sswitch_7
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x1040899

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_7
        0x2 -> :sswitch_6
        0x4 -> :sswitch_5
        0x8 -> :sswitch_4
        0x10 -> :sswitch_3
        0x20 -> :sswitch_2
        0x40 -> :sswitch_1
        0x80 -> :sswitch_0
    .end sparse-switch
.end method

.method private static siToServiceClass(Ljava/lang/String;)I
    .locals 4

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported MMI service code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_0
    const/16 v1, 0x40

    return v1

    :sswitch_1
    const/16 v1, 0x11

    return v1

    :sswitch_2
    const/16 v1, 0x20

    return v1

    :sswitch_3
    const/16 v1, 0x10

    return v1

    :sswitch_4
    const/16 v1, 0x50

    return v1

    :sswitch_5
    const/16 v1, 0xa0

    return v1

    :sswitch_6
    const/16 v1, 0x30

    return v1

    :sswitch_7
    const/4 v1, 0x5

    return v1

    :sswitch_8
    const/16 v1, 0x8

    return v1

    :sswitch_9
    const/4 v1, 0x4

    return v1

    :sswitch_a
    const/16 v1, 0xc

    return v1

    :sswitch_b
    const/4 v1, 0x1

    return v1

    :sswitch_c
    const/16 v1, 0xd

    return v1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_c
        0xb -> :sswitch_b
        0xc -> :sswitch_a
        0xd -> :sswitch_9
        0x10 -> :sswitch_8
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x18 -> :sswitch_3
        0x19 -> :sswitch_2
        0x1a -> :sswitch_1
        0x63 -> :sswitch_0
    .end sparse-switch
.end method

.method private static siToTime(Ljava/lang/String;)I
    .locals 1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    invoke-static {p0, v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateVideoCFNotification(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REFRESH_VIDEO_CF_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "video_cf_status"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    const-string v2, "video_cf_flag_with_subid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "com.android.phone"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refresh notification for video cf subid : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; enable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniGsmMmiCode"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->CANCELLED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsPendingUSSD:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->cancelPendingUssd(Landroid/os/Message;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public getCLIRMode()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getDialString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;
    .locals 3

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    instance-of v0, v0, Lcom/android/internal/telephony/CommandException;

    if-eqz v0, :cond_9

    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    check-cast v0, Lcom/android/internal/telephony/CommandException;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->FDN_CHECK_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    const-string v2, "UniGsmMmiCode"

    if-ne v0, v1, :cond_0

    const-string v1, "FDN_CHECK_FAILURE"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10405ca

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_0
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_1

    const-string v1, "USSD_MODIFIED_TO_DIAL"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040908

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_1
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_2

    const-string v1, "USSD_MODIFIED_TO_SS"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104090a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_2
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->USSD_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_3

    const-string v1, "USSD_MODIFIED_TO_USSD"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x104090b

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_3
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_DIAL:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_4

    const-string v1, "SS_MODIFIED_TO_DIAL"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040904

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_4
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_USSD:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_5

    const-string v1, "SS_MODIFIED_TO_USSD"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040907

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_5
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->SS_MODIFIED_TO_SS:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_6

    const-string v1, "SS_MODIFIED_TO_SS"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040906

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_6
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OEM_ERROR_1:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_7

    const-string v1, "OEM_ERROR_1 USSD_MODIFIED_TO_DIAL_VIDEO"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x1040909

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_7
    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->REQUEST_NOT_SUPPORTED:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v1, :cond_8

    sget-object v1, Lcom/android/internal/telephony/CommandException$Error;->OPERATION_NOT_ALLOWED:Lcom/android/internal/telephony/CommandException$Error;

    if-ne v0, v1, :cond_9

    :cond_8
    const-string v1, "REQUEST_NOT_SUPPORTED/OPERATION_NOT_ALLOWED"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10405c8

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10405c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    return-object v0
.end method

.method getResourcesForSubId()Landroid/content/res/Resources;
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->getResourcesForSubId(Landroid/content/Context;I)Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/MmiCode$State;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    return-object v0
.end method

.method public getUssdCallbackReceiver()Landroid/os/ResultReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    iget v1, p1, Landroid/os/Message;->arg2:I

    if-ne v1, v3, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v4, v3, v1, v5}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :cond_1
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isErasure()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "erase video call forward sc : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "UniGsmMmiCode"

    invoke-static {v3, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "21"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "002"

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->updateVideoCFNotification(Z)V

    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_5

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getErrorMessage(Landroid/os/AsyncResult;)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    goto :goto_1

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-direct {p0, p1, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    nop

    :cond_5
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isActivate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isCancelable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method isDeactivate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isErasure()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "##"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isInterrogate()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "*#"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMMI()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isNetworkInitiatedUssd()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsNetworkInitiatedUSSD:Z

    return v0
.end method

.method public isPendingUSSD()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsPendingUSSD:Z

    return v0
.end method

.method public isPinPukCommand()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "04"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "042"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "05"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const-string v1, "052"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isRegister()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "**"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isShortCode()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSsInfo()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsSsInfo:Z

    return v0
.end method

.method public isTemporaryModeCLIR()Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v0, :cond_1

    const-string v1, "31"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUssdRequest()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsUssdRequest:Z

    return v0
.end method

.method public onUssdFinished(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "UniGsmMmiCode"

    if-eqz v0, :cond_0

    const-string v0, "onUssdFinished: no network provided message; using default."

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v2, 0x10405c6

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    :goto_0
    iput-boolean p2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsUssdRequest:Z

    if-nez p2, :cond_1

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUssdFinished: ussdMessage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_2
    return-void
.end method

.method public onUssdFinishedError()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v1, 0x10405c7

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    :cond_0
    const-string v0, "UniGsmMmiCode"

    const-string v1, "onUssdFinishedError"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_1
    return-void
.end method

.method public onUssdRelease()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    sget-object v1, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/internal/telephony/MmiCode$State;->COMPLETE:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    const-string v0, "UniGsmMmiCode"

    const-string v1, "onUssdRelease"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :cond_0
    return-void
.end method

.method parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    .locals 7

    iget v0, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    invoke-static {v0}, Lcom/android/internal/telephony/CommandException;->fromRilErrno(I)Lcom/android/internal/telephony/CommandException;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getScStringFromScType(Lcom/android/internal/telephony/gsm/SsData$ServiceType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getActionStringFromReqType(Lcom/android/internal/telephony/gsm/SsData$RequestType;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parseSsData msc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", action = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", ex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UniGsmMmiCode"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/android/internal/telephony/gsm/UniGsmMmiCode$2;->$SwitchMap$com$android$internal$telephony$gsm$SsData$RequestType:[I

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/SsData$RequestType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invaid requestType in SSData : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_0
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeClir()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CLIR INTERROGATION"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v1, v3, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onGetClirComplete(Landroid/os/AsyncResult;)V

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeCF()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "CALL FORWARD INTERROGATION"

    invoke-static {v2, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v3, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onQueryCfComplete(Landroid/os/AsyncResult;)V

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->ssInfo:[I

    invoke-direct {v1, v3, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onQueryComplete(Landroid/os/AsyncResult;)V

    goto :goto_1

    :pswitch_1
    iget v1, p1, Lcom/android/internal/telephony/gsm/SsData;->result:I

    if-nez v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceType:Lcom/android/internal/telephony/gsm/SsData$ServiceType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/SsData$ServiceType;->isTypeUnConditional()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v4, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_ACTIVATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    const/4 v5, 0x1

    if-eq v1, v4, :cond_2

    iget-object v1, p1, Lcom/android/internal/telephony/gsm/SsData;->requestType:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    sget-object v4, Lcom/android/internal/telephony/gsm/SsData$RequestType;->SS_REGISTRATION:Lcom/android/internal/telephony/gsm/SsData$RequestType;

    if-ne v1, v4, :cond_3

    :cond_2
    iget v1, p1, Lcom/android/internal/telephony/gsm/SsData;->serviceClass:I

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceClassVoiceorNone(I)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setVoiceCallForwardingFlag cffEnabled: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v5, v1, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    :cond_4
    new-instance v1, Landroid/os/AsyncResult;

    iget-object v2, p1, Lcom/android/internal/telephony/gsm/SsData;->cfInfo:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v1, v3, v2, v0}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->onSetComplete(Landroid/os/Message;Landroid/os/AsyncResult;)V

    nop

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processCode()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    const-string v0, "UniGsmMmiCode"

    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isShortCode()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "processCode: isShortCode"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto/16 :goto_11

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "Invalid or Unsupported MMI Code"

    if-nez v1, :cond_48

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v3, 0x0

    const-string v4, "RadioInteractor is null"

    const/4 v5, 0x5

    const/4 v6, 0x1

    if-eqz v1, :cond_6

    :try_start_2
    const-string v7, "30"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "processCode: is CLIP"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->queryCLIP(Landroid/os/Message;)V

    goto/16 :goto_11

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v2

    if-eqz v2, :cond_4

    move v3, v6

    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessenger:Landroid/os/Messenger;

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v4

    const/16 v5, 0xb

    invoke-virtual {v1, v3, v2, v5, v4}, Lcom/android/unisoc/telephony/RadioInteractor;->updateCLIP(ILandroid/os/Messenger;II)V

    goto/16 :goto_11

    :cond_5
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_a

    const-string v7, "31"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "processCode: is CLIR"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isClirActivationAndDeactivationPrevented()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v6, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_11

    :cond_7
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v1

    const/4 v3, 0x2

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/GsmCdmaPhone;->isClirActivationAndDeactivationPrevented()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    goto/16 :goto_11

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v1, v1, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v3, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    goto/16 :goto_11

    :cond_9
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_d

    const-string v7, "76"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "processCode: is COLP"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessenger:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const/16 v4, 0x9

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->queryCOLP(Landroid/os/Messenger;II)V

    goto/16 :goto_11

    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_c
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_10

    const-string v7, "77"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "processCode: is COLR"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessenger:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    const/16 v4, 0xa

    invoke-virtual {v1, v2, v4, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->queryCOLR(Landroid/os/Messenger;II)V

    goto/16 :goto_11

    :cond_e
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_f
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_10
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    const/16 v7, 0x8

    if-eqz v1, :cond_13

    const-string v8, "300"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "processCode: is CNAP"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mRi:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v1, :cond_11

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessenger:Landroid/os/Messenger;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v2, v7, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->getCNAP(Landroid/os/Messenger;II)V

    goto/16 :goto_11

    :cond_11
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceCodeCallForwarding(Ljava/lang/String;)Z

    move-result v1

    const/4 v4, 0x3

    if-eqz v1, :cond_1d

    const-string v1, "processCode: is CF"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v2

    iget-object v5, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->scToCallForwardReason(Ljava/lang/String;)I

    move-result v5

    invoke-static {}, Lcom/android/internal/telephony/UnisocSsManager;->getInstance()Lcom/android/internal/telephony/UnisocSsManager;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v9}, Lcom/android/internal/telephony/GsmCdmaPhone;->getSubId()I

    move-result v9

    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v10}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->siToTime(Ljava/lang/String;)I

    move-result v10

    invoke-virtual {v7, v8, v9, v10, v6}, Lcom/android/internal/telephony/UnisocSsManager;->getCfnrNoReplyTime(Landroid/content/Context;IIZ)I

    move-result v12

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v3, v3, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v4, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v3, v5, v2, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_4

    :cond_14
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_15

    const/4 v7, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsCallFwdReg:Z

    move v14, v7

    goto :goto_1

    :cond_15
    const/4 v7, 0x3

    iput-boolean v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsCallFwdReg:Z

    move v14, v7

    goto :goto_1

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v7

    if-eqz v7, :cond_17

    const/4 v7, 0x0

    move v14, v7

    goto :goto_1

    :cond_17
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isRegister()Z

    move-result v7

    if-eqz v7, :cond_18

    const/4 v7, 0x3

    move v14, v7

    goto :goto_1

    :cond_18
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isErasure()Z

    move-result v7

    if-eqz v7, :cond_1c

    const/4 v7, 0x4

    move v14, v7

    :goto_1
    if-eq v14, v6, :cond_1a

    if-ne v14, v4, :cond_19

    goto :goto_2

    :cond_19
    move v4, v3

    goto :goto_3

    :cond_1a
    :goto_2
    move v4, v6

    :goto_3
    const-string v7, "processCode: is CF setCallForward"

    invoke-static {v0, v7}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v7, v7, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-static {v5, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isVoiceUnconditionalForwarding(II)Z

    move-result v8

    if-eqz v8, :cond_1b

    move v3, v6

    :cond_1b
    const/4 v6, 0x6

    invoke-virtual {p0, v6, v3, v4, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move v8, v14

    move v9, v5

    move v10, v2

    move-object v11, v1

    invoke-interface/range {v7 .. v13}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    :goto_4
    goto/16 :goto_11

    :cond_1c
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "invalid action"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1d
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isServiceCodeCallBarring(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v7

    if-eqz v7, :cond_1e

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v2, v4, v1, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    goto :goto_6

    :cond_1e
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v5

    if-nez v5, :cond_20

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v5

    if-eqz v5, :cond_1f

    goto :goto_5

    :cond_1f
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_20
    :goto_5
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v7, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v9

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    move-object v8, v4

    move-object v10, v1

    move v11, v3

    invoke-interface/range {v7 .. v12}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    :goto_6
    goto/16 :goto_11

    :cond_21
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_26

    const-string v3, "03"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_22

    goto :goto_7

    :cond_22
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_23
    :goto_7
    const-string v2, "**"

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    if-nez v2, :cond_24

    const-string v2, "AB"

    goto :goto_8

    :cond_24
    invoke-static {v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->scToBarringFacility(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_8
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v4, v4, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v2, v1, v3, v5}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_9

    :cond_25
    const v4, 0x1040645

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    :goto_9
    goto/16 :goto_11

    :cond_26
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_2d

    const-string v3, "43"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->siToServiceClass(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v3

    const/4 v4, -0x1

    if-nez v3, :cond_2a

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isDeactivate()Z

    move-result v3

    if-eqz v3, :cond_27

    goto :goto_a

    :cond_27
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isInterrogate()Z

    move-result v3

    if-eqz v3, :cond_29

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v2

    if-eq v2, v4, :cond_28

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/GsmCdmaPhone;->getCallWaiting(Landroid/os/Message;)V

    goto :goto_b

    :cond_28
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0, v5, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    goto :goto_b

    :cond_29
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2a
    :goto_a
    if-eqz v1, :cond_2b

    and-int/lit8 v2, v1, 0x1

    if-ne v2, v6, :cond_2c

    :cond_2b
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v2, v6}, Lcom/android/internal/telephony/GsmCdmaPhone;->getTerminalBasedCallWaitingState(Z)I

    move-result v2

    if-eq v2, v4, :cond_2c

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v3

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v3, v1, v4}, Lcom/android/internal/telephony/GsmCdmaPhone;->setCallWaiting(ZILandroid/os/Message;)V

    return-void

    :cond_2c
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v2, v2, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isActivate()Z

    move-result v3

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v2, v3, v1, v4}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    :goto_b
    goto/16 :goto_11

    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_44

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->isRegister()Z

    move-result v4

    if-eqz v4, :cond_43

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    const-string v5, "052"

    const-string v8, "05"

    const-string v9, "042"

    const-string v10, "04"

    if-nez v4, :cond_31

    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2e

    const v4, 0x10405bd

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_10

    :cond_2e
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2f

    const v4, 0x80c0052

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_10

    :cond_2f
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    const v4, 0x80c0053

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_10

    :cond_30
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_42

    const v4, 0x80c0054

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_10

    :cond_31
    const v4, 0x1040473

    const/4 v11, 0x4

    if-lt v3, v11, :cond_41

    if-le v3, v7, :cond_32

    goto/16 :goto_f

    :cond_32
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_33

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v12, :cond_33

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v12

    sget-object v13, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PUK:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v12, v13, :cond_33

    const v4, 0x10405da

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_10

    :cond_33
    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v12, :cond_40

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "processCode: process mmi service code using UiccApp sc="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v12, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_38

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_37

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_34

    goto :goto_d

    :cond_34
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v4

    if-nez v4, :cond_36

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v4, v5, :cond_35

    goto :goto_c

    :cond_35
    const v4, 0x104034b

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    goto/16 :goto_10

    :cond_36
    :goto_c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_10

    :cond_37
    :goto_d
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    return-void

    :cond_38
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lt v5, v11, :cond_3a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v7, :cond_39

    goto :goto_e

    :cond_39
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_10

    :cond_3a
    :goto_e
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    return-void

    :cond_3b
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v7, :cond_3c

    const v4, 0x1040474

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    return-void

    :cond_3c
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_10

    :cond_3d
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3f

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v4, v7, :cond_3e

    const v4, 0x80c005f

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    return-void

    :cond_3e
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {p0, v6, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v1, v2, v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_10

    :cond_3f
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uicc unsupported service code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_40
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No application mUiccApplicaiton is null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_41
    :goto_f
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->handlePasswordError(I)V

    :cond_42
    :goto_10
    goto :goto_11

    :cond_43
    new-instance v4, Ljava/lang/RuntimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ivalid register/action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_44
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_47

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getResourcesForSubId()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110029

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_46

    const-string v1, "carrier_ussd_method_int"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getIntCarrierConfig(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v4, :cond_45

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    goto :goto_11

    :cond_45
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "The USSD request is not allowed over CS"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_46
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->sendUssd(Ljava/lang/String;)V

    :goto_11
    goto :goto_12

    :cond_47
    const-string v1, "processCode: Invalid or Unsupported MMI Code"

    invoke-static {v0, v1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_48
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/internal/telephony/MmiCode$State;->FAILED:Lcom/android/internal/telephony/MmiCode$State;

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mState:Lcom/android/internal/telephony/MmiCode$State;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mContext:Landroid/content/Context;

    const v3, 0x10405c7

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mMessage:Ljava/lang/CharSequence;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processCode: RuntimeException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/GsmCdmaPhone;->onMMIDone(Lcom/android/internal/telephony/MmiCode;)V

    :goto_12
    return-void
.end method

.method public processSsData(Landroid/os/AsyncResult;)V
    .locals 4

    const-string v0, "In processSsData"

    const-string v1, "UniGsmMmiCode"

    invoke-static {v1, v0}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsSsInfo:Z

    :try_start_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/gsm/SsData;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->parseSsData(Lcom/android/internal/telephony/gsm/SsData;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Null Pointer Exception in parsing SS Data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class Cast Exception in parsing SS Data : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public sendUssd(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mIsPendingUSSD:Z

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPhone:Lcom/android/internal/telephony/GsmCdmaPhone;

    iget-object v0, v0, Lcom/android/internal/telephony/GsmCdmaPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendUSSD(Ljava/lang/String;Landroid/os/Message;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UniGsmMmiCode {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " sc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    const-string v2, "UniGsmMmiCode"

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sia="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSia:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sib="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSib:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSic:Ljava/lang/String;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " sic="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mSic:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " poundString="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPoundString:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " dialingNumber="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPwd:Ljava/lang/String;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pwd="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mPwd:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UniGsmMmiCode;->mCallbackReceiver:Landroid/os/ResultReceiver;

    if-eqz v1, :cond_8

    const-string v1, " hasReceiver"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
