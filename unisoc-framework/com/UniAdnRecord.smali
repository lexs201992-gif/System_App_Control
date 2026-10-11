.class public Lcom/android/internal/telephony/phonebook/UniAdnRecord;
.super Ljava/lang/Object;
.source "UniAdnRecord.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final blacklist ADN_BCD_NUMBER_LENGTH:I = 0x0

.field static final blacklist ADN_CAPABILITY_ID:I = 0xc

.field static final blacklist ADN_DIALING_NUMBER_END:I = 0xb

.field static final blacklist ADN_DIALING_NUMBER_START:I = 0x2

.field static final blacklist ADN_EXTENSION_ID:I = 0xd

.field static final blacklist ADN_REC_ID:I = 0x1

.field static final blacklist ADN_SFI:I = 0x0

.field static final blacklist ADN_TON_AND_NPI:I = 0x1

.field public static final blacklist ANR_SPLIT_FLG:Ljava/lang/String; = ";"

.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist EXT_RECORD_LENGTH_BYTES:I = 0xd

.field static final blacklist EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field static final blacklist EXT_RECORD_TYPE_MASK:I = 0x3

.field static final blacklist FOOTER_SIZE_BYTES:I = 0xe

.field static final blacklist MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field public static final blacklist MAX_LENTH_ADN:I = 0x14

.field public static final blacklist MAX_LENTH_NUMBER:I = 0x28

.field static final blacklist MAX_NUMBER_SIZE_BYTES:I = 0xb

.field private static final blacklist TAG:Ljava/lang/String; = "UniAdnRecord"

.field static final blacklist TYPE1_DATA_LENGTH:I = 0xf


# instance fields
.field public greylist mAas:Ljava/lang/String;

.field public greylist mAlphaTag:Ljava/lang/String;

.field public greylist mAnr:Ljava/lang/String;

.field public greylist mEfid:I

.field public greylist mEmails:[Ljava/lang/String;

.field public greylist mExtRecord:I

.field public greylist mGas:Ljava/lang/String;

.field public greylist mGrp:Ljava/lang/String;

.field blacklist mIndex:I

.field public greylist mNumber:Ljava/lang/String;

.field public greylist mRecordNumber:I

.field public greylist mSne:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(IILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mIndex:I

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mRecordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mIndex:I

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mRecordNumber:I

    iput-object p3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p6, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    iput-object p7, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    iput-object p10, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    iput-object p8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    return-void
.end method

.method public constructor greylist <init>(II[B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v1, 0xff

    iput v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mIndex:I

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEfid:I

    iput p2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mRecordNumber:I

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->parseRecord([B)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 6

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor greylist <init>([B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(II[B)V

    return-void
.end method

.method private blacklist isSupportOrange()Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x8030021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniAdnRecord"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniAdnRecord"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist logw(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniAdnRecord"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private blacklist parseRecord([B)V
    .locals 6

    const-string v0, ""

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/internal/telephony/UniIccUtils;->isSupportKscLanguage()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    const/4 v4, 0x2

    if-lt v2, v4, :cond_0

    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    invoke-static {p1, v3, v2}, Lcom/android/internal/telephony/UniIccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    goto :goto_0

    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    invoke-static {p1, v3, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0xe

    aget-byte v3, p1, v2

    and-int/lit16 v3, v3, 0xff

    const/16 v4, 0xb

    if-le v3, v4, :cond_1

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    return-void

    :cond_1
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x1

    invoke-static {p1, v4, v3, v5}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BIII)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    array-length v4, p1

    sub-int/2addr v4, v5

    aget-byte v4, p1, v4

    and-int/lit16 v4, v4, 0xff

    iput v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error parsing UniAdnRecord:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    :goto_1
    return-void
.end method

.method private static blacklist stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    if-nez p0, :cond_1

    const-string p0, ""

    :cond_1
    if-nez p1, :cond_2

    const-string p1, ""

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public blacklist appendExtRecord([B)V
    .locals 4

    :try_start_0
    array-length v0, p1

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit8 v0, v0, 0x3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x1

    aget-byte v2, p1, v0

    and-int/lit16 v2, v2, 0xff

    const/16 v3, 0xa

    if-le v2, v3, :cond_2

    return-void

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-byte v3, p1, v0

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v1, v3, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error parsing UniAdnRecord ext record:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public greylist buildAdnString(I)[B
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    add-int/lit8 v3, v2, -0xe

    const/4 v4, 0x0

    new-array v5, v2, [B

    const/4 v0, 0x0

    :goto_0
    const/4 v6, -0x1

    if-ge v0, v2, :cond_0

    aput-byte v6, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/16 v8, 0x2b

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v7, :cond_1

    iget-object v7, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v7, v10}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_1

    invoke-virtual {v0, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_1

    :cond_1
    move-object v7, v0

    :goto_1
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    const-string v11, "UniAdnRecord"

    invoke-static {v11, v0}, Lcom/android/internal/telephony/UniIccUtils;->getPrintableId(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "buildAdnString mAlphaTag : "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, ", numberNoplus = "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v0, :cond_3

    array-length v0, v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    const-string v8, "number and alphaTag is null but emails is not null "

    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_3
    :goto_2
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    const-string v8, "number and alphaTag is null but grp is not null "

    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_5
    :goto_3
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    const-string v8, "number and alphaTag is null but anr is not null "

    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_7
    :goto_4
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_5

    :cond_8
    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    const-string v8, "number and alphaTag is null but sne is not null "

    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_9
    :goto_5
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "buildAdnString Empty dialing mNumber"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    return-object v5

    :cond_a
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v12, 0x28

    if-nez v0, :cond_c

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v12, :cond_b

    goto :goto_6

    :cond_b
    const-string v0, "[buildAdnString] Max length of dialing mNumber is: 40"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    const/4 v6, -0x5

    const-string v8, "Max length of dialing mNumber is 40"

    invoke-direct {v0, v6, v8}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v13, "[buildAdnString] Max length of tag is "

    const-string v14, "Max length of name is "

    const/4 v15, -0x4

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v3, :cond_d

    goto :goto_7

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v15, v6}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_e
    :goto_7
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v15, 0x14

    if-nez v0, :cond_f

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v15, :cond_f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNumber.length is: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v9}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v0

    add-int/lit8 v8, v3, 0x1

    array-length v11, v0

    invoke-static {v0, v10, v5, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v8, v3, 0x0

    array-length v11, v0

    int-to-byte v11, v11

    aput-byte v11, v5, v8

    add-int/lit8 v8, v3, 0xc

    aput-byte v6, v5, v8

    add-int/lit8 v8, v3, 0xd

    aput-byte v6, v5, v8

    goto :goto_9

    :cond_f
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_12

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-gt v0, v12, :cond_12

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v10}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v8, :cond_10

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v8, 0x15

    invoke-virtual {v0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_8

    :cond_10
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v10, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_8
    invoke-static {v11, v0}, Lcom/android/internal/telephony/UniIccUtils;->getPrintableId(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_11

    nop

    invoke-static {v0, v9}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v8

    add-int/lit8 v11, v3, 0x1

    array-length v12, v8

    invoke-static {v8, v10, v5, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v11, v3, 0x0

    array-length v12, v8

    int-to-byte v12, v12

    aput-byte v12, v5, v11

    :cond_11
    add-int/lit8 v8, v3, 0xc

    aput-byte v6, v5, v8

    add-int/lit8 v6, v3, 0xd

    iget v8, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    int-to-byte v8, v8

    aput-byte v8, v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "mNumber.length >20 , mExtRecord = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logd(Ljava/lang/String;)V

    :cond_12
    :goto_9
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/internal/telephony/UniGsmAlphabet;->stringToGsmAlphaSS(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v0

    array-length v0, v4

    invoke-static {v4, v10, v5, v10, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_b

    :catch_0
    move-exception v0

    move-object v6, v0

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v8, "utf-16be"

    invoke-virtual {v0, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    move-object v4, v0

    if-eqz v4, :cond_14

    array-length v0, v4

    if-ge v0, v3, :cond_13

    goto :goto_a

    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[buildAdnString] Max length of tag is:"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, -0x4

    invoke-direct {v0, v9, v8}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_14
    :goto_a
    if-eqz v4, :cond_15

    array-length v0, v4

    array-length v8, v5

    if-ge v0, v8, :cond_15

    array-length v0, v4

    invoke-static {v4, v10, v5, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_15
    const/16 v0, -0x80

    aput-byte v0, v5, v10
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_b

    :catch_1
    move-exception v0

    const-string v8, "[AdnRecord]mAlphaTag convert byte excepiton"

    invoke-direct {v1, v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAlphaTag length = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-eqz v4, :cond_16

    array-length v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    goto :goto_c

    :cond_16
    const-string v6, "null,"

    :goto_c
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " footoffset = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    if-eqz v4, :cond_18

    array-length v0, v4

    if-gt v0, v3, :cond_17

    goto :goto_d

    :cond_17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logw(Ljava/lang/String;)V

    new-instance v0, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v8, -0x4

    invoke-direct {v0, v8, v6}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_18
    :goto_d
    return-object v5
.end method

.method public blacklist buildAnrString(IIIII)[B
    .locals 9

    const-string v0, "buildAnrString"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, p1, [B

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, p1, :cond_0

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    const-string v5, ";;"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_3

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anr = "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "1"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v4, v2

    sub-int/2addr v4, v7

    array-length v5, v2

    sub-int/2addr v5, v7

    aget-object v5, v2, v5

    array-length v8, v2

    sub-int/2addr v8, v7

    aget-object v8, v2, v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-virtual {v5, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    :cond_2
    array-length v4, v2

    if-lt p2, v4, :cond_3

    return-object v1

    :cond_3
    aget-object v0, v2, p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "anrRecord = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v3, "[buildAnrString] anrRecord is empty. "

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x14

    if-gt v4, v5, :cond_8

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isSupportOrange()Z

    move-result v4

    if-eqz v4, :cond_5

    int-to-byte v4, p5

    aput-byte v4, v1, v6

    goto :goto_1

    :cond_5
    aput-byte v7, v1, v6

    :goto_1
    invoke-static {v0, v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v4

    if-nez v4, :cond_6

    return-object v1

    :cond_6
    array-length v5, v4

    int-to-byte v5, v5

    aput-byte v5, v1, v7

    array-length v5, v4

    const/4 v7, 0x2

    invoke-static {v4, v6, v1, v7, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v5, 0xf

    if-le p1, v5, :cond_7

    add-int/lit8 v5, p1, -0x4

    aput-byte v3, v1, v5

    add-int/lit8 v5, p1, -0x3

    aput-byte v3, v1, v5

    add-int/lit8 v3, p1, -0x2

    int-to-byte v5, p3

    aput-byte v5, v1, v3

    add-int/lit8 v3, p1, -0x1

    int-to-byte v5, p4

    aput-byte v5, v1, v3

    goto :goto_2

    :cond_7
    add-int/lit8 v5, p1, -0x2

    aput-byte v3, v1, v5

    add-int/lit8 v5, p1, -0x1

    aput-byte v3, v1, v5

    :goto_2
    return-object v1

    :cond_8
    const-string v3, "[buildAnrString] Max length of dailingmNumber is 20,throw exception"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    new-instance v3, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;

    const/4 v4, -0x5

    const-string v5, "Max length of dialing mNumber is 20"

    invoke-direct {v3, v4, v5}, Lcom/android/internal/telephony/phonebook/UniIccPBForOperationException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_9
    :goto_3
    const-string v2, "[buildAnrString] anr mNumber is empty. "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v1
.end method

.method public blacklist buildEmailString(IIII)[B
    .locals 10

    const-string v0, "emailRecord is overlength"

    add-int/lit8 v1, p1, -0x2

    new-array v2, p1, [B

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_0

    const/4 v4, -0x1

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v3, v1, 0x0

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    add-int/lit8 v3, v1, 0x1

    int-to-byte v4, p4

    aput-byte v4, v2, v3

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v3, :cond_5

    aget-object v4, v3, p2

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    aget-object v3, v3, p2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    nop

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v3}, Lcom/android/internal/telephony/UniGsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v6

    array-length v7, v6

    if-le v7, v1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v4

    :cond_2
    array-length v7, v6

    invoke-static {v6, v5, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v6

    :try_start_1
    const-string v7, "utf-16be"

    invoke-virtual {v3, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    array-length v8, v7

    add-int/lit8 v9, v1, -0x1

    if-le v8, v9, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v4

    :cond_3
    array-length v0, v7

    const/4 v4, 0x1

    invoke-static {v7, v5, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, -0x80

    aput-byte v0, v2, v5
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v4, "[AdnRecord]emailRecord convert byte exception"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    :cond_4
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "emailRecord for adn["

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "]=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v2

    :cond_5
    :goto_2
    return-object v2
.end method

.method public blacklist buildExtString()[B
    .locals 8

    const-string v0, ""

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x14

    if-le v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    const/16 v3, 0x15

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    :goto_0
    const-string v1, "UniAdnRecord"

    invoke-static {v1, v0}, Lcom/android/internal/telephony/UniIccUtils;->getPrintableId(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;I)[B

    move-result-object v3

    const/16 v4, 0xd

    new-array v5, v4, [B

    const/4 v6, 0x0

    :goto_1
    const/4 v7, -0x1

    if-ge v6, v4, :cond_2

    aput-byte v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x2

    aput-byte v4, v5, v2

    array-length v4, v3

    sub-int/2addr v4, v1

    int-to-byte v4, v4

    aput-byte v4, v3, v2

    array-length v4, v3

    const/16 v6, 0xb

    if-gt v4, v6, :cond_3

    array-length v4, v3

    invoke-static {v3, v2, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    const/16 v1, 0xc

    aput-byte v7, v5, v1

    :cond_4
    return-object v5
.end method

.method public blacklist buildIapString(II)[B
    .locals 3

    const/4 v0, 0x0

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    const/4 v2, -0x1

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    int-to-byte v2, p2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method public blacklist buildSneString(IIII)[B
    .locals 11

    const-string v0, "sneRecord is overlength"

    const-string v1, "over the length of aas"

    new-array v2, p1, [B

    add-int/lit8 v3, p1, -0x2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, p1, :cond_0

    const/4 v5, -0x1

    aput-byte v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v4, v3, 0x0

    int-to-byte v5, p3

    aput-byte v5, v2, v4

    add-int/lit8 v4, v3, 0x1

    int-to-byte v5, p4

    aput-byte v5, v2, v4

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    if-nez v4, :cond_1

    return-object v2

    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    nop

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    invoke-static {v4}, Lcom/android/internal/telephony/UniGsmAlphabet;->isAsciiStringToGsm8BitUnpackedField(Ljava/lang/String;)[B

    move-result-object v7

    array-length v8, v7

    if-le v8, v3, :cond_2

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v5

    :cond_2
    array-length v8, v7

    invoke-static {v7, v6, v2, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_0
    .catch Lcom/android/internal/telephony/EncodeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v5

    :catch_1
    move-exception v7

    :try_start_1
    const-string v8, "utf-16be"

    invoke-virtual {v4, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v8

    array-length v9, v8

    add-int/lit8 v10, v3, -0x1

    if-le v9, v10, :cond_3

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v5

    :cond_3
    array-length v0, v8

    const/4 v9, 0x1

    invoke-static {v8, v6, v2, v9, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v0, -0x80

    aput-byte v0, v2, v6
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    nop

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v5

    :catch_3
    move-exception v0

    const-string v1, "[AdnRecord]sneRecord convert byte exception"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->loge(Ljava/lang/String;)V

    return-object v5

    :cond_4
    :goto_1
    return-object v2
.end method

.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public blacklist extRecord4DisplayIsNeeded()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x14

    if-ne v1, v4, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public blacklist extRecordIsNeeded()Z
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v4, 0x2b

    if-ne v1, v4, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x28

    if-gt v1, v4, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x14

    if-le v1, v4, :cond_1

    return v2

    :cond_1
    return v3
.end method

.method public greylist getAas()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getAlphaTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getAnr()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getEfid()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEfid:I

    return v0
.end method

.method public greylist getEmails()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExtRecord()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    return v0
.end method

.method public greylist getGas()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    return-object v0
.end method

.method public greylist getGrp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getIndex()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mIndex:I

    return v0
.end method

.method public greylist getNumber()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getRecId()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mRecordNumber:I

    return v0
.end method

.method public greylist getSne()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist hasExtendedRecord()Z
    .locals 2

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mExtRecord:I

    if-eqz v0, :cond_0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public greylist isEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEmptyAnr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isEmptyAnr(Ljava/lang/String;)Z
    .locals 4

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x3b

    if-eq v2, v3, :cond_1

    const/4 v1, 0x0

    return v1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public blacklist isEqual(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist setAas(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    return-void
.end method

.method public blacklist setAnr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    return-void
.end method

.method public greylist setEmails([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    return-void
.end method

.method public blacklist setGas(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    return-void
.end method

.method public blacklist setGrp(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    return-void
.end method

.method public blacklist setIndex(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mIndex:I

    return-void
.end method

.method public blacklist setNumber(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    return-void
.end method

.method public blacklist setRecordNumber(I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mRecordNumber:I

    return-void
.end method

.method public blacklist setSne(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    return-void
.end method

.method public blacklist stringCompareAnr(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEmptyAnr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, ""

    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEmptyAnr(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string p2, ""

    :cond_3
    invoke-static {p1, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public blacklist stringCompareEmails([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const-string v0, ""

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-array p1, v1, [Ljava/lang/String;

    aput-object v0, p1, v2

    :cond_0
    if-nez p2, :cond_1

    new-array p2, v1, [Ljava/lang/String;

    aput-object v0, p2, v2

    :cond_1
    aget-object v1, p1, v2

    aget-object v2, p2, v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->stringCompareNullEqualsEmpty(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ADN Record \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\' \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEfid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mRecordNumber:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mEmails:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAnr:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mAas:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mSne:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGrp:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->mGas:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
