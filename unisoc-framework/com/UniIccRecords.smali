.class public Lcom/android/internal/telephony/uicc/UniIccRecords;
.super Landroid/os/Handler;
.source "UniIccRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UniUiccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;
    }
.end annotation


# static fields
.field private static final blacklist EVENT_GET_AD_DONE:I = 0x6

.field private static final blacklist EVENT_GET_ALL_OPLNR_LOAD_DONE:I = 0x8

.field private static final blacklist EVENT_GET_ALL_OPL_DONE:I = 0x2

.field private static final blacklist EVENT_GET_ALL_PNN_DONE:I = 0x3

.field private static final blacklist EVENT_GET_CPHS_SPN_DONE:I = 0x0

.field private static final blacklist EVENT_GET_EHPLMN_DONE:I = 0x4

.field private static final blacklist EVENT_GET_PERSO_DONE:I = 0x9

.field private static final blacklist EVENT_GET_PS_DATA_OFF_DONE:I = 0x7

.field private static final blacklist EVENT_GET_SPDI_DONE:I = 0x5

.field private static final blacklist EVENT_GET_SST_DONE:I = 0x1

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "UniIccRecords"

.field private static final blacklist TAG_SPDI:I = 0xa3

.field private static final blacklist TAG_SPDI_PLMN_LIST:I = 0x80


# instance fields
.field private blacklist mAppType:I

.field private blacklist mContext:Landroid/content/Context;

.field private blacklist mEfAd:Ljava/lang/String;

.field private blacklist mEhplmns:[Ljava/lang/String;

.field private blacklist mFdnActivated:I

.field private blacklist mHomeExceptService:I

.field private blacklist mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

.field private blacklist mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

.field private blacklist mLac:I

.field private blacklist mONSRecordsLoadedRegistrants:Landroid/os/RegistrantList;

.field private blacklist mONSRecordsToLoad:I

.field private blacklist mOns:Ljava/lang/String;

.field private blacklist mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

.field private blacklist mOplNrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/UniOplNrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mOplRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/UniOplRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPersoBit:I

.field private blacklist mPhoneId:I

.field private blacklist mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private blacklist mPnnRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/UniPnnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPsDataOffStateValue:I

.field private blacklist mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private blacklist mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

.field private blacklist mRomingExceptService:I

.field private blacklist mSimOplNrPnnEnabled:Z

.field private blacklist mSpdi:[Ljava/lang/String;

.field private blacklist mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmContext(Lcom/android/internal/telephony/uicc/UniIccRecords;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLac(Lcom/android/internal/telephony/uicc/UniIccRecords;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mLac:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmPhoneId(Lcom/android/internal/telephony/uicc/UniIccRecords;)I
    .locals 0

    iget p0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmRadioInteractor(Lcom/android/internal/telephony/uicc/UniIccRecords;)Lcom/android/unisoc/telephony/RadioInteractor;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmTelephonyManager(Lcom/android/internal/telephony/uicc/UniIccRecords;)Landroid/telephony/TelephonyManager;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fputmLac(Lcom/android/internal/telephony/uicc/UniIccRecords;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mLac:I

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$fputmRadioInteractor(Lcom/android/internal/telephony/uicc/UniIccRecords;Lcom/android/unisoc/telephony/RadioInteractor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSimRefresh(Lcom/android/internal/telephony/uicc/UniIccRecords;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleSimRefresh()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mlog(Lcom/android/internal/telephony/uicc/UniIccRecords;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;I)V
    .locals 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplRecords:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPnnRecords:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEfAd:Ljava/lang/String;

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPsDataOffStateValue:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mHomeExceptService:I

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRomingExceptService:I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplNrRecords:Ljava/util/ArrayList;

    iput-boolean v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mSimOplNrPnnEnabled:Z

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPersoBit:I

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mFdnActivated:I

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const-string v0, "Create UniIccRecords"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist getCPHSSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    return-void

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    :cond_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$3;->$SwitchMap$com$android$internal$telephony$uicc$UniIccRecords$GetCPHSSpnFsmState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-string v1, "UniIccRecords"

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    goto/16 :goto_4

    :pswitch_0
    if-eqz p2, :cond_3

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_3

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    array-length v4, v0

    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->isInvalidONS(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Drop invalid SPN_SHORT_CPHS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v0, "Load EF_SPN_SHORT_CPHS Failure"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :goto_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    goto/16 :goto_4

    :pswitch_1
    if-eqz p2, :cond_6

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_4

    goto :goto_2

    :cond_4
    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    array-length v4, v0

    invoke-static {v0, v3, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/uicc/UniIccRecords;->isInvalidONS(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Drop invalid SPN_CPHS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    sget-object v1, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Load EF_SPN_CPHS: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    sget-object v1, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    goto :goto_3

    :cond_6
    :goto_2
    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    :goto_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f18

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    goto :goto_4

    :pswitch_2
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f14

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    sget-object v0, Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOnsState:Lcom/android/internal/telephony/uicc/UniIccRecords$GetCPHSSpnFsmState;

    nop

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private blacklist getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccRecords$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/uicc/UniIccRecords$1;-><init>(Lcom/android/internal/telephony/uicc/UniIccRecords;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-object v0
.end method

.method private blacklist getServiceProviderDisplayInformation()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mSpdi:[Ljava/lang/String;

    return-object v0
.end method

.method private blacklist handleGetOplNrResponse(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplNrRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/android/internal/telephony/uicc/UniOplNrRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UniOplNrRecord;-><init>([B)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplNrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPLNr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist handleGetOplResponse(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/android/internal/telephony/uicc/UniOplRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UniOplRecord;-><init>([B)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "OPL"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist handleGetPersoResponse(Landroid/os/AsyncResult;)V
    .locals 3

    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    if-nez v0, :cond_0

    const-string v1, "get perso data is null."

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_1

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPersoBit:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPersoBit is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPersoBit:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private blacklist handleGetPnnResponse(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPnnRecords:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    new-instance v2, Lcom/android/internal/telephony/uicc/UniPnnRecord;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/UniPnnRecord;-><init>([B)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPnnRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PNN"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blacklist handleGetPsDataOffResponse([B)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPsDataOffStateValue:I

    const-string v1, " mRomingExceptService: "

    const-string v2, " mHomeExceptService: "

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    array-length v0, p1

    const/4 v4, 0x2

    if-le v0, v4, :cond_2

    aget-byte v0, p1, v3

    shr-int/lit8 v0, v0, 0x5

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mHomeExceptService:I

    aget-byte v0, p1, v4

    shr-int/lit8 v0, v0, 0x5

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRomingExceptService:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mHomeExceptService:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRomingExceptService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    array-length v0, p1

    if-le v0, v3, :cond_2

    aget-byte v0, p1, v3

    shr-int/lit8 v0, v0, 0x5

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mHomeExceptService:I

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRomingExceptService:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mHomeExceptService:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRomingExceptService:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private blacklist handleSimRefresh()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->fetchUniIccRecords()V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.stkintent.action.ACTION_SIM_REFRESH_FILEUPDATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "phone_id"

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private blacklist handleSstData([B)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mAppType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->oplNrAvaliable()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mSimOplNrPnnEnabled:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mSimOplNrPnnEnabled:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    if-eqz v0, :cond_2

    nop

    const/16 v2, 0x8

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x4f08

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->psDataOffAvaliable()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->psDataOffInfoAvaliable()Z

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPsDataOffStateValue:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    if-eqz v0, :cond_3

    nop

    const/4 v1, 0x7

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6ff9

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;->fdnAvaliable()Z

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mFdnActivated:I

    :cond_4
    return-void
.end method

.method private blacklist isInvalidONS(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "@"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private blacklist loadEfAdFiles()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6fad

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist loadOperatorNameFiles()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6f38

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fc6

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fc5

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fd9

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const/16 v3, 0x6fcd

    invoke-virtual {v0, v3, v2}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getCPHSSpnFsm(ZLandroid/os/AsyncResult;)V

    return-void
.end method

.method private blacklist loadPersoFiles()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x6f02

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    return-void
.end method

.method private blacklist log(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UniIccRecords"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniIccRecords"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UniIccRecords"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniIccRecords"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UniIccRecords"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UniIccRecords"

    invoke-static {v1, v0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private blacklist onONSRecordLoaded()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mONSRecordsToLoad "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_0

    :cond_0
    if-gez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mONSRecordsToLoad:I

    :cond_1
    :goto_0
    return-void
.end method

.method private blacklist parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v0, 0x3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PLMNs, raw="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    array-length v1, p1

    if-eqz v1, :cond_4

    array-length v1, p1

    rem-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    array-length v1, p1

    div-int/lit8 v1, v1, 0x3

    const/4 v2, 0x0

    new-array v3, v1, [Ljava/lang/String;

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v1, :cond_2

    mul-int/lit8 v5, v4, 0x3

    invoke-static {p1, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    aget-object v5, v3, v2

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v2, v2, 0x1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    sget-boolean v5, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " PLMNs: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :cond_3
    return-object v4

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received invalid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " PLMN list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    return-object v1
.end method

.method private blacklist parseEfSpdi([B)V
    .locals 7

    new-instance v0, Lcom/android/internal/telephony/uicc/UniSimTlv;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/UniSimTlv;-><init>([BII)V

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->isValidObject()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getTag()I

    move-result v3

    const/16 v4, 0xa3

    if-ne v3, v4, :cond_0

    new-instance v3, Lcom/android/internal/telephony/uicc/UniSimTlv;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v5

    array-length v5, v5

    invoke-direct {v3, v4, v2, v5}, Lcom/android/internal/telephony/uicc/UniSimTlv;-><init>([BII)V

    move-object v0, v3

    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getTag()I

    move-result v3

    const/16 v4, 0x80

    if-ne v3, v4, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->getData()[B

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniSimTlv;->nextObject()Z

    goto :goto_0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    array-length v3, v1

    div-int/lit8 v3, v3, 0x3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v3, 0x0

    :goto_2
    add-int/lit8 v4, v3, 0x2

    array-length v5, v1

    if-ge v4, v5, :cond_6

    invoke-static {v1, v3}, Lcom/android/internal/telephony/uicc/IccUtils;->bcdPlmnToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    sget-boolean v5, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EF_SPDI PLMN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :cond_4
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mSpdi:[Ljava/lang/String;

    return-void
.end method

.method private blacklist updatePlmn()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v1, v0, v2}, Lcom/android/unisoc/telephony/RadioInteractor;->updateOperatorName(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public blacklist fetchUniIccRecords()V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-virtual {v0, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->getIccAppType(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mAppType:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fetchUniIccRecords mAppType = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mAppType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    const/high16 v2, 0x400000

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mAppType:I

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-direct {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/UniIccFileHandler;-><init>(ILandroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loadOperatorNameFiles()V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loadEfAdFiles()V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loadPersoFiles()V

    return-void
.end method

.method public blacklist getEfAd()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEfAd:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEhplmns()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEhplmns:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getHomeExceptService()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mHomeExceptService:I

    return v0
.end method

.method public blacklist getHomePlmns()[Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getEhplmns()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getServiceProviderDisplayInformation()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    :cond_0
    invoke-static {v2}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-class v3, Ljava/lang/String;

    filled-new-array {v1, v2}, [[Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/util/ArrayUtils;->concatElements(Ljava/lang/Class;[[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    :cond_1
    const-class v3, Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/android/internal/telephony/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, [Ljava/lang/String;

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHomePlmns: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :cond_2
    return-object v1
.end method

.method public blacklist getIccmServiceTable()Lcom/android/internal/telephony/uicc/UniIccServiceTable;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    return-object v0
.end method

.method public blacklist getLac()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mLac:I

    return v0
.end method

.method public blacklist getOplNrRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/UniOplNrRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplNrRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getOplRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/UniOplRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public blacklist getPayType()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prePay or postPay according to mPersoBit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPersoBit:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mFdnActivated: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mFdnActivated:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPersoBit:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mFdnActivated:I

    :goto_0
    return v0
.end method

.method public blacklist getPnnRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/uicc/UniPnnRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPnnRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method blacklist getRadioInteractorListener(I)Lcom/android/unisoc/telephony/RadioInteractorListener;
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/uicc/UniIccRecords$2;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/uicc/UniIccRecords$2;-><init>(Lcom/android/internal/telephony/uicc/UniIccRecords;I)V

    return-object v0
.end method

.method public blacklist getRomingExceptService()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRomingExceptService:I

    return v0
.end method

.method public blacklist getSimOns()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in fetching Perso Records : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    :cond_0
    return-void

    :cond_1
    :try_start_1
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleGetPersoResponse(Landroid/os/AsyncResult;)V

    goto/16 :goto_4

    :pswitch_1
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_3

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleGetOplNrResponse(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    goto/16 :goto_4

    :cond_3
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching OPLNR Records "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    :cond_4
    return-void

    :pswitch_2
    :try_start_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed getting ps data off: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    :cond_5
    return-void

    :cond_6
    :try_start_3
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleGetPsDataOffResponse([B)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    if-nez v1, :cond_7

    const-string v2, "EVENT_GET_AD_DONE ar is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_7
    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_13

    if-nez v2, :cond_8

    goto/16 :goto_4

    :cond_8
    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEfAd:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_AD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEfAd:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_4
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_13

    if-nez v2, :cond_9

    goto/16 :goto_4

    :cond_9
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->parseEfSpdi([B)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    goto/16 :goto_4

    :pswitch_5
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_b

    if-nez v2, :cond_a

    goto :goto_1

    :cond_a
    const-string v3, "Equivalent Home"

    invoke-direct {p0, v2, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEhplmns:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    goto/16 :goto_4

    :cond_b
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed getting Equivalent Home PLMNs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_4

    :pswitch_6
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_d

    if-nez v2, :cond_c

    goto :goto_2

    :cond_c
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleGetPnnResponse(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    goto/16 :goto_4

    :cond_d
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching Pnn Records "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v0, :cond_e

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    :cond_e
    return-void

    :pswitch_7
    const/4 v0, 0x1

    :try_start_4
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    if-nez v2, :cond_f

    goto :goto_3

    :cond_f
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleGetOplResponse(Ljava/util/ArrayList;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    goto :goto_4

    :cond_10
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in fetching OPL Records "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->loge(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_11

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    :cond_11
    return-void

    :pswitch_8
    const/4 v0, 0x1

    :try_start_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [B

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_13

    if-nez v2, :cond_12

    goto :goto_4

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_SST data = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    iget v4, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mAppType:I

    invoke-direct {v3, v2, v4}, Lcom/android/internal/telephony/uicc/UniIccServiceTable;-><init>([BI)V

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccServiceTable:Lcom/android/internal/telephony/uicc/UniIccServiceTable;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->updatePlmn()V

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniIccRecords;->handleSstData([B)V

    goto :goto_4

    :pswitch_9
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getCPHSSpnFsm(ZLandroid/os/AsyncResult;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :cond_13
    :goto_4
    if-eqz v0, :cond_14

    :goto_5
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    goto :goto_6

    :catchall_0
    move-exception v1

    goto :goto_7

    :catch_0
    move-exception v1

    :try_start_6
    const-string v2, "Exception parsing SIM record ex"

    invoke-direct {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->logw(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v0, :cond_14

    goto :goto_5

    :cond_14
    :goto_6
    return-void

    :goto_7
    if-eqz v0, :cond_15

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->onONSRecordLoaded()V

    :cond_15
    throw v1

    :pswitch_data_0
    .packed-switch 0x0
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

.method public blacklist registerForCellLocationChanged()V
    .locals 4

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPhoneId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSubscriptionId(I)I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "LISTEN_CELL_LOCATION"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v1, v2, v3}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method blacklist resetRecords()V
    .locals 4

    const-string v0, "reset records"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplRecords:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mPnnRecords:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOns:Ljava/lang/String;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mAppType:I

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mEhplmns:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mSpdi:[Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mIccFileHandler:Lcom/android/internal/telephony/uicc/UniIccFileHandler;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniIccRecords;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    if-eqz v2, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractorListener:Lcom/android/unisoc/telephony/RadioInteractorListener;

    invoke-virtual {v2, v3, v1, v1}, Lcom/android/unisoc/telephony/RadioInteractor;->listen(Lcom/android/unisoc/telephony/RadioInteractorListener;IZ)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    :cond_0
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniIccRecords;->mOplNrRecords:Ljava/util/ArrayList;

    return-void
.end method
