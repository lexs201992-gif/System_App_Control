.class public Lcom/android/internal/telephony/uicc/UniSIMRecords;
.super Lcom/android/internal/telephony/uicc/SIMRecords;
.source "UniSIMRecords.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UniSIMRecords$EfUsimLiLoaded;,
        Lcom/android/internal/telephony/uicc/UniSIMRecords$EfPlLoaded;
    }
.end annotation


# static fields
.field private static final EVENT_GET_AD_DONE:I = 0x9

.field private static final EVENT_GET_ALL_ICC_FILE:I = 0x1f6

.field private static final EVENT_GET_CFF_DONE:I = 0x18

.field private static final EVENT_GET_CFIS_DONE:I = 0x20

.field private static final EVENT_GET_CPHS_MAILBOX_DONE:I = 0xb

.field private static final EVENT_GET_CSP_CPHS_DONE:I = 0x21

.field private static final EVENT_GET_EHPLMN_DONE:I = 0x28

.field private static final EVENT_GET_EXTENDED_ICCID_DONE:I = 0x1f5

.field private static final EVENT_GET_FPLMN_DONE:I = 0x29

.field private static final EVENT_GET_GID1_DONE:I = 0x22

.field private static final EVENT_GET_GID2_DONE:I = 0x24

.field private static final EVENT_GET_HPLMN_W_ACT_DONE:I = 0x27

.field private static final EVENT_GET_ICCID_DONE:I = 0x4

.field private static final EVENT_GET_IMSI_DONE:I = 0x3

.field private static final EVENT_GET_INFO_CPHS_DONE:I = 0x1a

.field private static final EVENT_GET_MBDN_DONE:I = 0x6

.field private static final EVENT_GET_MBI_DONE:I = 0x5

.field private static final EVENT_GET_MSISDN_DONE:I = 0xa

.field private static final EVENT_GET_MWIS_DONE:I = 0x7

.field private static final EVENT_GET_OPLMN_W_ACT_DONE:I = 0x26

.field private static final EVENT_GET_PLMN_W_ACT_DONE:I = 0x25

.field private static final EVENT_GET_SPDI_DONE:I = 0xd

.field private static final EVENT_GET_SPN_DONE:I = 0xc

.field private static final EVENT_GET_VOICE_MAIL_INDICATOR_CPHS_DONE:I = 0x8

.field private static final EVENT_SET_CPHS_MAILBOX_DONE:I = 0x19

.field private static final EVENT_SET_MBDN_DONE:I = 0x14

.field private static final EVENT_UPDATE_DONE:I = 0xe

.field private static final LOG_TAG:Ljava/lang/String; = "UniSIMRecords"

.field private static final RESPONSE_DATA_FILE_SIZE_1:I = 0x2

.field private static final RESPONSE_DATA_FILE_SIZE_2:I = 0x3

.field private static final RESPONSE_DATA_RECORD_LENGTH:I = 0xe

.field private static final SIM_RECORD_EVENT_BASE:I = 0x0

.field private static final SIM_RECORD_EXTENDED_EVENT_BASE:I = 0x1f4

.field private static mIsSupportUiccOptimization:Z

.field private static mMockModem:Z

.field private static mModemSimulator:Z


# instance fields
.field private mDealAllSimFiles:Z

.field private mExUniIccIoResultList:[Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

.field protected mInitLockedState:Z

.field private mNonKeyRecordsLoaded:Z

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPhoneId:I

.field private mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

.field private mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

.field private mRecordsKeyInfoLoadedRegistrants:Landroid/os/RegistrantList;

.field private mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/SIMRecords;-><init>(Lcom/android/internal/telephony/uicc/UiccCardApplication;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    new-instance v1, Landroid/os/RegistrantList;

    invoke-direct {v1}, Landroid/os/RegistrantList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsKeyInfoLoadedRegistrants:Landroid/os/RegistrantList;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mInitLockedState:Z

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhoneId:I

    invoke-static {v1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->getInstance()Lcom/android/internal/telephony/uicc/UniIccRecordsController;

    move-result-object v1

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isWifiOnlyDevice()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/UniFrameworkTelephonyManager;->isDataOnlyDevice()Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v1, :cond_0

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhoneId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UniIccRecordsController;->getUniRoamingBrokerControllerForPhone(I)Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    :cond_0
    new-instance v2, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    new-instance v2, Lcom/android/unisoc/telephony/RadioInteractor;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    const-string v2, "persist.radio.allow_mock_modem"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMockModem:Z

    const-string v2, "persist.vendor.radio.sim.allfile"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIsSupportUiccOptimization:Z

    const-string v2, "persist.vendor.radio.enable_modem_simulator"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mModemSimulator:Z

    return-void
.end method

.method private dealWithSimFile(I[B)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "[dealWithSimFile] EF_LI="

    const/4 v1, 0x2

    const/16 v2, 0xff

    const/16 v3, 0x6fc7

    const/4 v4, 0x0

    const/16 v5, 0x6f17

    const/4 v6, 0x0

    const-string v7, ", data is null. "

    const-string v8, "dealWithSimFile efid: "

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IMSI data is null, call fetchSimRecords Original"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    iput-boolean v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->fetchSimRecords()V

    goto/16 :goto_6

    :cond_1
    const-string v0, "[dealWithSimFile] imsi obtained, go to setImsi"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->setImsi(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_1
    if-eqz p2, :cond_3

    array-length v0, p2

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_PSISMSC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->parseEfPsiSmsc([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPsiSmsc:Ljava/lang/String;

    goto/16 :goto_6

    :cond_3
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_2
    if-nez p2, :cond_4

    const-string v0, "[dealWithSimFile] Failed getting Equivalent Home PLMNs. "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v0, "Equivalent Home"

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEhplmns:[Ljava/lang/String;

    goto/16 :goto_6

    :sswitch_3
    if-nez p2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->parseEfSpdi([B)V

    goto/16 :goto_6

    :sswitch_4
    if-nez p2, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfCfis:[B

    goto/16 :goto_6

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_CFIS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfCfis:[B

    goto/16 :goto_6

    :sswitch_5
    if-nez p2, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_MWIS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    array-length v0, p2

    if-eqz v0, :cond_8

    aget-byte v0, p2, v6

    and-int/2addr v0, v2

    if-ne v0, v2, :cond_8

    const-string v0, "SIMRecords: Uninitialized record MWIS"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_8
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfMWIS:[B

    goto/16 :goto_6

    :sswitch_6
    const/4 v0, 0x0

    if-eqz p2, :cond_9

    array-length v1, p2

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[dealWithSimFile] EF_MBI: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    aget-byte v1, p2, v6

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMailboxIndex:I

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMailboxIndex:I

    if-eqz v1, :cond_9

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMailboxIndex:I

    if-eq v1, v2, :cond_9

    const-string v1, "Got valid mailbox number for MBDN"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_9
    if-eqz v0, :cond_a

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v3, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto/16 :goto_6

    :cond_a
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto/16 :goto_6

    :sswitch_7
    if-nez p2, :cond_b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    new-instance v0, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v1, p2

    invoke-direct {v0, p2, v6, v1}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    :goto_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->isValidObject()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    const/16 v2, 0x43

    if-ne v1, v2, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_c

    nop

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    array-length v2, v2

    invoke-static {v1, v6, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->networkNameToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPnnHomeName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dealWithSimFile] PNN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPnnHomeName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    goto :goto_1

    :sswitch_8
    if-nez p2, :cond_d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dealWithSimFile] EF_AD: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMncLength:I

    :try_start_0
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_12

    array-length v2, p2

    const/4 v3, 0x3

    if-ge v2, v3, :cond_e

    const-string v1, "Corrupt AD data on SIM"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateOperatorPlmn()V

    goto/16 :goto_6

    :cond_e
    :try_start_1
    array-length v2, p2

    if-ne v2, v3, :cond_f

    const-string v1, "MNC length not present in EF_AD"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateOperatorPlmn()V

    goto/16 :goto_6

    :cond_f
    :try_start_2
    aget-byte v2, p2, v3

    and-int/lit8 v2, v2, 0xf

    if-eq v2, v1, :cond_11

    if-ne v2, v3, :cond_10

    goto :goto_2

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received invalid or unset MNC Length="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_11
    :goto_2
    iput v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMncLength:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_12
    :goto_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateOperatorPlmn()V

    nop

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateOperatorPlmn()V

    throw v0

    :sswitch_9
    if-nez p2, :cond_13

    const-string v0, "[dealWithSimFile] Failed getting Forbidden PLMNs, data is null."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_13
    const-string v0, "Forbidden"

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->parseBcdPlmnList([BLjava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFplmns:[Ljava/lang/String;

    goto/16 :goto_6

    :sswitch_a
    if-nez p2, :cond_14

    const-string v0, "[dealWithSimFile] Failed getting Home PLMN with Access Tech Records"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] Received a PlmnActRecord, raw="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] HplmnActRecord[]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mHplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_b
    if-nez p2, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_15
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mOplmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    goto/16 :goto_6

    :sswitch_c
    if-nez p2, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_16
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/PlmnActRecord;->getRecords([B)[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPlmnActRecords:[Lcom/android/internal/telephony/uicc/PlmnActRecord;

    goto/16 :goto_6

    :sswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_SMSS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSmssValues:[B

    goto/16 :goto_6

    :sswitch_e
    if-nez p2, :cond_17

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_17
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([B)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMsisdn:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMsisdnTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dealWithSimFile] MSISDN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UniSIMRecords"

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMsisdn:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->pii(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_f
    if-nez p2, :cond_18

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_18
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mGid2:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] GID2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_10
    if-nez p2, :cond_19

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_19
    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mGid1:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] GID1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_11
    if-nez p2, :cond_1a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1a
    :try_start_3
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getRecordSize([B)[I

    move-result-object v0

    aget v2, v0, v1

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSmsCountOnIcc:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[dealWithSimFile] EVENT_GET_SMS_RECORD_SIZE_DONE Size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " total "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSmsCountOnIcc:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dealWithSimFile] ArrayIndexOutOfBoundsException in EVENT_GET_SMS_RECORD_SIZE_DONE: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loge(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_12
    if-nez p2, :cond_1b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_1b
    new-instance v0, Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/uicc/UsimServiceTable;-><init>([B)V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] SST: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mUsimServiceTable:Lcom/android/internal/telephony/uicc/UsimServiceTable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_13
    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailNum:Ljava/lang/String;

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    if-nez p2, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] Invalid or missing EF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ne p1, v5, :cond_1c

    const-string v1, "[MAILBOX]"

    goto :goto_4

    :cond_1c
    const-string v1, "[MBDN]"

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    if-ne p1, v3, :cond_28

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    invoke-direct {p0, v5, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto/16 :goto_6

    :cond_1d
    new-instance v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v0, p2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[dealWithSimFile] VM: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-ne p1, v5, :cond_1e

    const-string v2, " EF[MAILBOX]"

    goto :goto_5

    :cond_1e
    const-string v2, " EF[MBDN]"

    :goto_5
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1f

    if-ne p1, v3, :cond_1f

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v5, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto/16 :goto_6

    :cond_1f
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailNum:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    const-string v2, "@*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_28

    :cond_20
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    const-string v1, "[dealWithSimFile] VoiceMailTag reset to display default value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_14
    if-nez p2, :cond_21

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_21
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCphsInfo:[B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] iCPHS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCphsInfo:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_15
    if-nez p2, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_CSP: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->handleEfCspData([B)V

    goto/16 :goto_6

    :sswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] SPN dealWithSimFile efid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    new-instance v0, Landroid/os/AsyncResult;

    invoke-direct {v0, v4, p2, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-direct {p0, v6, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    goto/16 :goto_6

    :sswitch_17
    if-nez p2, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfCff:[B

    goto/16 :goto_6

    :cond_23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_CFF_CPHS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfCff:[B

    goto/16 :goto_6

    :sswitch_18
    if-nez p2, :cond_24

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] EF_CPHS_MWI: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfCPHS_MWI:[B

    goto/16 :goto_6

    :sswitch_19
    new-instance v1, Lcom/android/internal/telephony/uicc/UniSIMRecords$EfUsimLiLoaded;

    invoke-direct {v1, p0, v4}, Lcom/android/internal/telephony/uicc/UniSIMRecords$EfUsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/UniSIMRecords;Lcom/android/internal/telephony/uicc/UniSIMRecords$EfUsimLiLoaded-IA;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {v1}, Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;->getEfName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " LOADED"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_25
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfLi:[B

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfLi:[B

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    :sswitch_1a
    if-nez p2, :cond_26

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_26
    array-length v0, p2

    if-eqz v0, :cond_28

    array-length v0, p2

    invoke-static {p2, v6, v0}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIccId:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[dealWithSimFile] iccid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/internal/telephony/UniTeleUtils;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_6

    :sswitch_1b
    const-string v1, "[dealWithSimFile] EF_PL LOADED"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    if-eqz p2, :cond_27

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto :goto_6

    :cond_27
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfLi:[B

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mEfLi:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    nop

    :cond_28
    :goto_6
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f05 -> :sswitch_1b
        0x2fe2 -> :sswitch_1a
        0x6f05 -> :sswitch_19
        0x6f11 -> :sswitch_18
        0x6f13 -> :sswitch_17
        0x6f14 -> :sswitch_16
        0x6f15 -> :sswitch_15
        0x6f16 -> :sswitch_14
        0x6f17 -> :sswitch_13
        0x6f18 -> :sswitch_16
        0x6f38 -> :sswitch_12
        0x6f3c -> :sswitch_11
        0x6f3e -> :sswitch_10
        0x6f3f -> :sswitch_f
        0x6f40 -> :sswitch_e
        0x6f43 -> :sswitch_d
        0x6f46 -> :sswitch_16
        0x6f60 -> :sswitch_c
        0x6f61 -> :sswitch_b
        0x6f62 -> :sswitch_a
        0x6f7b -> :sswitch_9
        0x6fad -> :sswitch_8
        0x6fc5 -> :sswitch_7
        0x6fc7 -> :sswitch_13
        0x6fc9 -> :sswitch_6
        0x6fca -> :sswitch_5
        0x6fcb -> :sswitch_4
        0x6fcd -> :sswitch_3
        0x6fd9 -> :sswitch_2
        0x6fe5 -> :sswitch_1
        0xffff -> :sswitch_0
    .end sparse-switch
.end method

.method private static getDataFileSize([B)I
    .locals 2

    const/4 v0, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    return v0
.end method

.method private getExtraIccId()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getUiccPortForPhone(I)Lcom/android/internal/telephony/uicc/UiccPort;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccPort;->getIccId()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private getKeyInfoRecordsLoaded()Z
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsRequested:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getRecordSize([B)[I
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/16 v1, 0xe

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getDataFileSize([B)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    aget v1, v0, v3

    aget v2, v0, v2

    div-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method private getResourcesForMccMnc(Ljava/lang/String;)Landroid/content/res/Resources;
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    const/4 v2, 0x0

    const/4 v3, 0x3

    :try_start_0
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->mcc:I

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Landroid/content/res/Configuration;->mnc:I

    iget v2, v1, Landroid/content/res/Configuration;->mnc:I

    if-nez v2, :cond_0

    const v2, 0xffff

    iput v2, v1, Landroid/content/res/Configuration;->mnc:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getResourcesForMccMnc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-virtual {v3, v2}, Landroid/util/DisplayMetrics;->setTo(Landroid/util/DisplayMetrics;)V

    new-instance v4, Landroid/content/res/Resources;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-direct {v4, v5, v3, v1}, Landroid/content/res/Resources;-><init>(Landroid/content/res/AssetManager;Landroid/util/DisplayMetrics;Landroid/content/res/Configuration;)V

    return-object v4
.end method

.method private getSimFileContent(I)[B
    .locals 8

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mExUniIccIoResultList:[Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mExUniIccIoResultList:[Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

    array-length v3, v2

    if-ge v0, v3, :cond_4

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getEfid()I

    move-result v3

    const v4, 0xffff

    if-ne v3, v4, :cond_1

    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getSW1()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getSW2()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getSimResponse()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    goto :goto_1

    :cond_1
    new-instance v4, Lcom/android/internal/telephony/uicc/IccIoResult;

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getSW1()I

    move-result v5

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getSW2()I

    move-result v6

    invoke-virtual {v2}, Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;->getSimResponse()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/android/internal/telephony/uicc/IccIoResult;-><init>(II[B)V

    :goto_1
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccIoResult;->getException()Lcom/android/internal/telephony/uicc/IccException;

    move-result-object v5

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, v4, Lcom/android/internal/telephony/uicc/IccIoResult;->payload:[B

    if-ne v3, p1, :cond_3

    return-object v5

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimFileContent efidNeed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "; data :return null "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    return-object v1
.end method

.method private getSpnFsm(ZLandroid/os/AsyncResult;)V
    .locals 7

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->INIT:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    return-void

    :cond_2
    :goto_1
    sget-object v0, Lcom/android/internal/telephony/uicc/UniSIMRecords$1;->$SwitchMap$com$android$internal$telephony$uicc$SIMRecords$GetSpnFsmState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_c

    :pswitch_0
    const-string v0, "No SPN loaded in either CHPS or 3GPP"

    if-eqz p2, :cond_7

    iget-object v2, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_7

    iget-object v1, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    if-eqz v1, :cond_3

    array-length v2, v1

    if-lez v2, :cond_3

    array-length v2, v1

    invoke-static {v1, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_4

    goto :goto_2

    :cond_4
    iput v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCarrierNameDisplayCondition:I

    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Load EF_SPN_SHORT_CPHS: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v3

    invoke-virtual {v0, v3, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :goto_3
    goto :goto_4

    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :goto_4
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto/16 :goto_c

    :pswitch_1
    if-eqz p2, :cond_c

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_c

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_8

    array-length v1, v0

    if-lez v1, :cond_8

    array-length v1, v0

    invoke-static {v0, v3, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_9

    goto :goto_5

    :cond_9
    iput v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCarrierNameDisplayCondition:I

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Load EF_SPN_CPHS: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_a
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_6

    :cond_b
    :goto_5
    sget-object v3, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    :goto_6
    goto :goto_7

    :cond_c
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    :goto_7
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_SHORT_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->isUsingFetchSimRecordsEx()Z

    move-result v0

    const/16 v1, 0x6f18

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto/16 :goto_c

    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    goto/16 :goto_c

    :pswitch_2
    if-eqz p2, :cond_12

    iget-object v0, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_12

    iget-object v0, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [B

    if-eqz v0, :cond_e

    array-length v1, v0

    if-lt v1, v4, :cond_e

    aget-byte v1, v0, v3

    and-int/lit16 v1, v1, 0xff

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->convertSpnDisplayConditionToBitmask(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCarrierNameDisplayCondition:I

    array-length v1, v0

    sub-int/2addr v1, v4

    invoke-static {v0, v4, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_f

    goto :goto_8

    :cond_f
    sget-boolean v5, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v5, :cond_10

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Load EF_SPN: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " carrierNameDisplayCondition: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCarrierNameDisplayCondition:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_10
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    invoke-virtual {v5, v6, v1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->IDLE:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    goto :goto_9

    :cond_11
    :goto_8
    sget-object v5, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v5, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    :goto_9
    goto :goto_a

    :cond_12
    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    :goto_a
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    sget-object v1, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_CPHS:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    if-ne v0, v1, :cond_15

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->isUsingFetchSimRecordsEx()Z

    move-result v0

    const/16 v1, 0x6f14

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    if-eqz v0, :cond_13

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto :goto_b

    :cond_13
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    :goto_b
    iput v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCarrierNameDisplayCondition:I

    goto :goto_c

    :pswitch_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->setServiceProviderName(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->isUsingFetchSimRecordsEx()Z

    move-result v0

    const/16 v1, 0x6f46

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    if-eqz v0, :cond_14

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    goto :goto_c

    :cond_14
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    sget-object v0, Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;->READ_SPN_3GPP:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mSpnState:Lcom/android/internal/telephony/uicc/SIMRecords$GetSpnFsmState;

    nop

    :cond_15
    :goto_c
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isRoamingBrokerTelus(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getResourcesForMccMnc(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    return v1
.end method

.method private isUsingFetchSimRecordsEx()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIsSupportUiccOptimization:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mModemSimulator:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mMockModem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private onAllFileObtained()V
    .locals 3

    const-string v0, "[iccIOForAllFile] handle IMSI"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    const v0, 0xffff

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x6fad

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x2fe2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fc5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f3e

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f3f

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    const-string v0, "[iccIOForAllFile] Key info has loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateSimNumeric()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsKeyInfoLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    const/16 v0, 0x6f40

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fc9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fca

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f11

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fcb

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f13

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fcd

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fc6

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f38

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f16

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f15

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f60

    const/16 v1, 0x6f62

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f61

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fd9

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f7b    # 3.9992E-41f

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v1, :cond_1

    const/16 v0, 0x6f05

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    const/16 v1, 0x6f05

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x2f05

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    const/16 v1, 0x2f05

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    :cond_1
    const/16 v0, 0x6f3c

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6fe5

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/16 v0, 0x6f43

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSimFileContent(I)[B

    move-result-object v0

    const/16 v1, 0x6f43

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->dealWithSimFile(I[B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    const-string v0, "[iccIOForAllFile] deal with all sim files done."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method private resetImsiforRoamingBroker(Ljava/lang/String;)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->getStateforBroker()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsi:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsi:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsi:Ljava/lang/String;

    sget-boolean v2, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[resetImsiforRoamingBroker]IMSI: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsi:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " for RoamingBroker"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateOperatorPlmn()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mImsiReadyRegistrants:Lcom/android/internal/telephony/RegistrantList;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RegistrantList;->notifyRegistrants()V

    :cond_1
    return-void
.end method

.method private updateSimNumeric()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->updateMccMncs(Ljava/lang/String;)V

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->isRoamingBrokerTelus(Ljava/lang/String;)Z

    move-result v1

    const-string v2, ""

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->getOriginalValue()Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "operator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", oldOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isRoamingBroker = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->getStateforBroker()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->resetImsiforRoamingBroker(Ljava/lang/String;)V

    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v3, :cond_3

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->getStateforBroker()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onAllRecordsLoaded set \'gsm.sim.operator.numeric\' to operator=\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "\'"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v6

    invoke-virtual {v3, v6, v0}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_7

    iget-object v3, v3, Lcom/android/internal/telephony/Phone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()I

    move-result v3

    if-nez v3, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v3, "restart radio"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v5}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    :cond_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->getStateforBroker()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhoneId:I

    invoke-virtual {v3, v6, v2}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    goto :goto_0

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_7

    const-string v3, "turn off radio"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, v4}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0

    :cond_6
    const-string v3, "onAllRecordsLoaded empty \'gsm.sim.operator.numeric\' skipping"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :cond_7
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mobile_icc_operator_numeric"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateSimNumeric operator "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " simOperator "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_a

    :cond_9
    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v9}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, -0x1

    invoke-virtual {v6, v7, v8, v5, v9}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    :cond_a
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getIMSI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_b

    const-string v5, "onAllRecordsLoaded set mcc imsi"

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v7

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v7, v4}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    goto :goto_1

    :cond_b
    const-string v4, "onAllRecordsLoaded empty imsi skipping setting mcc"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->dispose()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->reset()V

    return-void
.end method

.method public fetchSimRecords()V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsRequested:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchSimRecords "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lcom/android/internal/telephony/CommandsInterface;->getIMSIForApp(Ljava/lang/String;Landroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x9

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fad

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    const/16 v1, 0x1f5

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getExtraIccId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->sendMessage(Landroid/os/Message;)Z

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getSpnFsm(ZLandroid/os/AsyncResult;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xf

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc5

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x22

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3e

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x24

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3f

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    goto/16 :goto_0

    :cond_0
    new-instance v1, Lcom/android/internal/telephony/uicc/AdnRecordLoader;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/16 v3, 0x6f40

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getExtFromEf(I)I

    move-result v4

    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v0, v5}, Lcom/android/internal/telephony/uicc/AdnRecordLoader;->loadFromEF(IIILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc9

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x7

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fca

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x8

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f11

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loadCallForwardingRecords()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xd

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fcd

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x10

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fc6

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x11

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f38

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x1a

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f16

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x21

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f15

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x25

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f60

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x26

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f61

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x27

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f62

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x28

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fd9

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const v3, 0x12e500

    const/4 v4, -0x1

    const/16 v5, 0x29

    invoke-virtual {p0, v5, v3, v4}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f7b    # 3.9992E-41f

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loadEfLiAndEfPl()V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x1c

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f3c

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x2f

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6fe5

    invoke-virtual {v1, v4, v0, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0x2e

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x6f43

    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected fetchSimRecordsEx()V
    .locals 4

    const-string v0, "[iccIOForAllFile] fetchSimRecordsEx "

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsRequested:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRadioInteractor:Lcom/android/unisoc/telephony/RadioInteractor;

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mPhoneId:I

    const/16 v3, 0x1f6

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/unisoc/telephony/RadioInteractor;->iccIOForAllFile(ILandroid/os/Message;)V

    iget v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    return-void
.end method

.method public finalize()V
    .locals 0

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->finalize()V

    return-void
.end method

.method public getUniAdnRecordCache()Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    return-object v0
.end method

.method public handleFileUpdate(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mUniAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->resetWithFileUpdate()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleFileUpdate(I)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDestroyed:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]  while being destroyed. Ignoring."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loge(Ljava/lang/String;)V

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    const-string v2, "%020d"

    const-string v3, "(F|f){20}"

    const/4 v4, 0x0

    sparse-switch v1, :sswitch_data_0

    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :sswitch_0
    const/4 v0, 0x1

    const-string v1, "[ALL SIM FILES] handle EVENT_GET_ALL_ICC_FILE"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mExUniIccIoResultList:[Lcom/android/unisoc/telephony/iccIOFileControl/ExUniIccIoResult;

    iget-object v2, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_GET_ALL_ICC_FILE ar.exception :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->fetchSimRecords()V

    goto/16 :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->onAllFileObtained()V

    goto/16 :goto_0

    :sswitch_1
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIccId:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->updateIccIds(Ljava/lang/String;)V

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extend iccid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/internal/telephony/UniTeleUtils;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-super {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords;->handleMessage(Landroid/os/Message;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    const-string v2, "@*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    :cond_4
    const-string v1, ""

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mVoiceMailTag:Ljava/lang/String;

    const-string v1, "VoiceMailTag reset to display default value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_3
    const/4 v0, 0x1

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    iget-object v5, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    iget-object v6, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v6, :cond_6

    const-string v6, "Get iccid occur exception, set default value"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getExtraIccId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIccId:Ljava/lang/String;

    goto :goto_0

    :cond_6
    array-length v6, v5

    invoke-static {v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bchToString([BII)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIccId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRb:Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mIccId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UniRoamingBrokerController;->updateIccIds(Ljava/lang/String;)V

    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFullIccId:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/internal/telephony/UniTeleUtils;->getIccidForLogging(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    nop

    :cond_9
    :goto_0
    if-eqz v0, :cond_a

    const-string v1, "onRecordLoaded !!"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->onRecordLoaded()V

    :cond_a
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_3
        0x6 -> :sswitch_2
        0xb -> :sswitch_2
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_0
    .end sparse-switch
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const-string v1, "UniSIMRecords"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UniSIMRecords-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mParentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[UniSIMRecords] "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onLocked()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mInitLockedState:Z

    if-eqz v0, :cond_0

    const-string v0, "onLocked set before, so return"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "only fetch EF_LI, EF_PL and EF_ICCID in locked state"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsRequested:Z

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->loadEfLiAndEfPl()V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getExtraIccId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const/16 v2, 0x1f5

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->sendMessage(Landroid/os/Message;)Z

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    const/16 v4, 0x2fe2

    invoke-virtual {v2, v4, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mInitLockedState:Z

    return-void
.end method

.method public onReady()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mInitLockedState:Z

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->isUsingFetchSimRecordsEx()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->fetchSimRecordsEx()V

    return-void

    :cond_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onReady()V

    return-void
.end method

.method public onRecordLoaded()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NonKeyRecordsLoaded: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsToLoad:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requested: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsRequested:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->getKeyInfoRecordsLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Key info has loaded"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->updateSimNumeric()V

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsKeyInfoLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->notifyRegistrants()V

    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->fetchSimRecords()V

    :cond_0
    return-void

    :cond_1
    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->onRecordLoaded()V

    return-void
.end method

.method public onRefresh(Z[I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/UniSIMRecords;->fetchSimRecords()V

    :cond_0
    return-void
.end method

.method public registerForKeyInfoRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2

    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsKeyInfoLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    return-void
.end method

.method public resetRecords()V
    .locals 1

    invoke-super {p0}, Lcom/android/internal/telephony/uicc/SIMRecords;->resetRecords()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mNonKeyRecordsLoaded:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mDealAllSimFiles:Z

    return-void
.end method

.method public unregisterForKeyInfoRecordsLoaded(Landroid/os/Handler;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UniSIMRecords;->mRecordsKeyInfoLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    return-void
.end method
