.class public Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;
.super Landroid/os/Handler;
.source "UniUsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/UniIccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;,
        Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;,
        Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;
    }
.end annotation


# static fields
.field static final ANR_BCD_NUMBER_LENGTH:I = 0x1

.field private static final EVENT_AAS_LOAD_DONE:I = 0x6

.field private static final EVENT_ANR_LOAD_DONE:I = 0xa

.field private static final EVENT_ANR_RECORD_LOAD_DONE:I = 0x14

.field public static final EVENT_EF_CC_LOAD_DONE:I = 0xc

.field private static final EVENT_EF_PSC_LOAD_DONE:I = 0x11

.field private static final EVENT_EF_PUID_LOAD_DONE:I = 0xf

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_GAS_LOAD_DONE:I = 0x9

.field private static final EVENT_GET_RECORDS_COUNT:I = 0x13

.field private static final EVENT_GRP_LOAD_DONE:I = 0x8

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_LOAD_EF_PBC_RECORD_DONE:I = 0xe

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_SNE_LOAD_DONE:I = 0x7

.field private static final EVENT_SNE_RECORD_COUNT:I = 0x15

.field private static final EVENT_UPDATE_CC_DONE:I = 0x12

.field private static final EVENT_UPDATE_RECORD_DONE:I = 0xd

.field private static final EVENT_UPDATE_UID_DONE:I = 0x10

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field static final FOOTER_SIZE_BYTES:I = 0xe

.field private static final INVALID_BYTE:B = -0x1t

.field private static final INVALID_SFI:I = -0x1

.field private static final TAG:Ljava/lang/String; = "UniUsimPhoneBookManager"

.field public static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field public static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field public static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field public static final USIM_EFGAS_TAG:I = 0xc8

.field public static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field public static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field public static final USIM_SUBJCET_AAS:I = 0x3

.field public static final USIM_SUBJCET_ANR:I = 0x1

.field public static final USIM_SUBJCET_EMAIL:I = 0x0

.field public static final USIM_SUBJCET_GRP:I = 0x2

.field public static final USIM_SUBJCET_SNE:I = 0x4

.field public static final USIM_TYPE1_TAG:I = 0xa8

.field public static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa


# instance fields
.field private changedCounter:I

.field private mAasFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mAasInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mAasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

.field private mAdnRecordSize:[I

.field public mAdnRecordSizeArray:[I

.field public mAnrFileCount:I

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mAnrInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrRecordSizeArray:[I

.field private mDoneAdnCount:I

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mEmailInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mEmailPresentInIap:Z

.field private mEmailRecordSizeArray:[I

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mGasFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mGasList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mGrpCount:I

.field private mGrpFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mIapFileRecordArray:[Ljava/lang/Object;

.field private mIapRecordSizeArray:[I

.field private mIsContainAdnInPbr:Z

.field private mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsPbrFileExisting:Z

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mMaxPbrNum:I

.field private mPbcFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mPbrRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingAnrLoads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPendingGrpLoads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPendingIapLoads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPendingPbcLoads:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mRecordsSize:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private mSfiEfidTable:Landroid/util/SparseIntArray;

.field private mSneEfSize:I

.field private mSneFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mSneInfoFromPBR:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;"
        }
    .end annotation
.end field

.field private mSnePresentInIap:Z

.field private mSneTagNumberInIap:I

.field protected sneRecordSize:[I


# direct methods
.method static bridge synthetic -$$Nest$fgetmAasInfoFromPBR(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnrInfoFromPBR(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEmailInfoFromPBR(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPhoneBookRecords(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSneInfoFromPBR(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnrPresentInIap(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrPresentInIap:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEmailPresentInIap(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEmailTagNumberInIap(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailTagNumberInIap:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSneEfSize(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneEfSize:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSnePresentInIap(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSnePresentInIap:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSneTagNumberInIap(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;I)V
    .locals 0

    iput p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneTagNumberInIap:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mlogd(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;)V
    .locals 4

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailTagNumberInIap:I

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneEfSize:I

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSnePresentInIap:Z

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneTagNumberInIap:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->sneRecordSize:[I

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRefreshCache:Z

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpCount:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrPresentInIap:Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingIapLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingGrpLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingAnrLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingPbcLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mMaxPbrNum:I

    iput-object p1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    return-void
.end method

.method private CheckRepeatType2Ef()V
    .locals 4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getType2Ef(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->SetMapOfRepeatEfid(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getType2Ef(I)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->SetMapOfRepeatEfid(II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private SetMapOfRepeatEfid(II)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    nop

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v1, v4

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SetMapOfRepeatEfid count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p2, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v5

    if-ltz v5, :cond_0

    iget-object v6, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v6, v6, v5

    check-cast v6, Ljava/util/Set;

    if-eqz v6, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SetMapOfRepeatEfid size = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-virtual {p0, v2, v6, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSet(Ljava/util/Set;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetMapOfRepeatEfid  size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_2
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->SetRepeatUsedNumSet(IILjava/util/Set;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private SetRepeatUsedNumSet(IILjava/util/Set;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    nop

    :goto_0
    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    if-eqz v0, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    if-eqz v3, :cond_1

    invoke-direct {p0, p2, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v3

    if-ltz v3, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " SetRepeatUsedNumSet efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", num = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", totalSet.size = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p3}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v4, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object p3, v4, v3

    invoke-direct {p0, p1, v2, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private buildType1EmailList(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmMasterFileRecordNum(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move v0, v1

    nop

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_9

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-eqz v2, :cond_8

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    array-length v3, v2

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    const-string v3, "buildType1EmailList, emailRec is abnormal"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_1
    array-length v3, v2

    sub-int/2addr v3, v4

    aget-byte v3, v2, v3

    array-length v4, v2

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v2, v4

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v3, v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    if-nez v7, :cond_3

    goto :goto_1

    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v7

    const/16 v8, 0xc0

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v6

    nop

    :goto_2
    const v7, 0xffff

    and-int/2addr v7, v6

    shl-int/lit8 v7, v7, 0x8

    add-int/lit8 v8, v4, -0x1

    and-int/lit16 v8, v8, 0xff

    or-int/2addr v7, v8

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/ArrayList;

    if-nez v8, :cond_6

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v9

    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Adding email #"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " list to index 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v9, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v9, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_7
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    :try_start_2
    const-string v2, "buildType1EmailList, mEmailFileRecord is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v2

    const-string v3, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    nop

    :cond_9
    return-void

    :catch_1
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "buildType1EmailList IndexOutOfBoundsException, recNum is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_4
    return-void
.end method

.method private buildType2EmailList(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;I)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v4, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    move/from16 v11, p3

    goto/16 :goto_6

    :cond_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmMasterFileRecordNum(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    move v5, v0

    nop

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    const/16 v6, 0xc0

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    if-nez v6, :cond_1

    const-string v0, "Error: Improper ICC card: EF_ADN does not exist in PBR files"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v4

    :cond_1
    invoke-virtual {v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v7

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    iget-object v8, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    aput-object v8, v0, v2

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    if-ge v8, v5, :cond_d

    if-eqz v3, :cond_c

    iget-object v0, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v0, :cond_b

    iget-object v0, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-nez v0, :cond_2

    move/from16 v11, p3

    goto/16 :goto_4

    :cond_2
    :try_start_1
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v9, v0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0

    const/16 v10, 0xca

    invoke-virtual {v0, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getIndex()I

    move-result v0

    aget-byte v0, v9, v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move v10, v0

    nop

    const/4 v0, -0x1

    move/from16 v11, p3

    invoke-direct {v1, v11, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v12

    const/4 v13, -0x1

    if-ne v12, v13, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailTagNumberInIap:I

    iget-object v0, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_4

    goto/16 :goto_5

    :cond_4
    const/16 v14, 0xff

    const/16 v15, 0xff

    :try_start_2
    iget v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v0, v9, v0
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    and-int/lit16 v14, v0, 0xff

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "ex :"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :goto_1
    if-ne v14, v15, :cond_5

    const/4 v0, -0x1

    goto :goto_2

    :cond_5
    move v0, v14

    :goto_2
    add-int/lit8 v4, v10, -0x1

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readEmailRecord(I)Ljava/lang/String;

    move-result-object v4

    const/4 v13, -0x1

    if-eq v0, v13, :cond_7

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_6

    iget v14, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailTagNumberInIap:I

    invoke-virtual {v1, v2, v8, v13, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setIapFileRecord(IIBI)V

    goto/16 :goto_5

    :cond_6
    iget-object v13, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v13, v13, v12

    check-cast v13, Ljava/util/Set;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getType2Email size(0) = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", emailIndex = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v13, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v14, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v13, v14, v12

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "getType2Email size(1) = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v13}, Ljava/util/Set;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v1, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v14, 0x0

    invoke-direct {v1, v14, v2, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    :cond_7
    if-eqz v4, :cond_9

    const-string v13, ""

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_9

    const v13, 0xffff

    and-int/2addr v13, v7

    shl-int/lit8 v13, v13, 0x8

    and-int/lit16 v14, v8, 0xff

    or-int/2addr v13, v14

    iget-object v14, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v14, v13}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    if-nez v14, :cond_8

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    move-object v14, v15

    :cond_8
    invoke-virtual {v14, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v0

    const-string v0, "Adding email list to index 0x"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_9
    move/from16 v16, v0

    goto :goto_5

    :cond_a
    move/from16 v11, p3

    :try_start_3
    const-string v0, "Error: mIapFileRecord is null"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_1

    const/4 v4, 0x0

    return v4

    :catch_1
    move-exception v0

    goto :goto_3

    :catch_2
    move-exception v0

    move/from16 v11, p3

    :goto_3
    const-string v4, "Error: Improper ICC card: Corrupted EF_IAP"

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_5

    :cond_b
    move/from16 v11, p3

    :goto_4
    const-string v0, "getEmail emailInfo.efids == null || emailInfo.efids.length == 0"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move/from16 v11, p3

    :goto_5
    add-int/lit8 v8, v8, 0x1

    const/4 v4, 0x0

    goto/16 :goto_0

    :cond_d
    move/from16 v11, p3

    const/4 v0, 0x1

    return v0

    :catch_3
    move-exception v0

    move/from16 v11, p3

    const-string v4, "buildType2EmailList IndexOutOfBoundsException"

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v4, 0x0

    return v4

    :cond_e
    move/from16 v11, p3

    :goto_6
    return v4
.end method

.method private composeGrpString([B)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    array-length v1, p1

    iput v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpCount:I

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpCount:I

    if-ge v1, v2, :cond_3

    aget-byte v2, p1, v1

    const/16 v3, 0xff

    and-int/2addr v2, v3

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_0

    goto :goto_1

    :cond_0
    if-nez v0, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    return-void

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, -0x1

    if-ge v1, v2, :cond_2

    iget v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mMaxPbrNum:I

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    aget-byte v2, v2, v0

    if-eq v2, v3, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [B

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;-><init>(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;[B)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v5

    const/16 v6, 0xc0

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getSfi()I

    move-result v7

    if-eq v7, v3, :cond_4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "sfi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", efid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v7, v6}, Landroid/util/SparseIntArray;->put(II)V

    :cond_4
    goto :goto_1

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mAdnEfids: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "extPbrRecords.size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    :cond_6
    return-void
.end method

.method private getAas(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAas adnNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    add-int/lit8 p2, p2, -0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v2, v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aasInfo.efids is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v1, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getTypeAas(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const-string v2, "getAas aasInfo.efids == null || aasInfo.efids.length == 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v1
.end method

.method private getAnr(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;I[BI)Ljava/lang/String;
    .locals 16

    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget-object v4, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v4, :cond_7

    iget-object v4, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v4, v4

    if-nez v4, :cond_0

    move/from16 v4, p4

    goto/16 :goto_5

    :cond_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v10, v4

    const/4 v4, 0x0

    move-object v11, v0

    move-object v6, v1

    move-object v12, v2

    move-object v13, v3

    move v14, v4

    :goto_0
    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-ge v14, v0, :cond_5

    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v14

    const/16 v1, 0xa8

    if-ne v0, v1, :cond_1

    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v0, v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p6

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getType1Anr(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;IILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v6

    move-object v15, v6

    goto :goto_1

    :cond_1
    move-object v15, v6

    :goto_1
    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v14

    const/16 v1, 0xa9

    if-ne v0, v1, :cond_2

    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v0, :cond_2

    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v0, v14

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p5

    move/from16 v4, p6

    move-object v6, v10

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getType2Anr(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;[BIILjava/util/ArrayList;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    goto :goto_2

    :cond_2
    move-object v6, v15

    :goto_2
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v14, v0, :cond_3

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v0

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v7, v9, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAas(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    :cond_3
    if-nez v14, :cond_4

    move-object v0, v6

    move-object v1, v13

    move-object v11, v0

    move-object v12, v1

    goto :goto_3

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v11, v0

    move-object v12, v1

    :goto_3
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_0

    :cond_5
    if-eqz v9, :cond_6

    if-eqz v12, :cond_6

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v0

    if-eqz v0, :cond_6

    move/from16 v4, p4

    invoke-direct {v7, v4, v12}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setAas(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    move/from16 v4, p4

    :goto_4
    return-object v11

    :cond_7
    move/from16 v4, p4

    :goto_5
    const-string v5, "getAnr anrInfo.efids == null || anrInfo.efids.length == 0"

    invoke-direct {v7, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v5, 0x0

    return-object v5
.end method

.method private getAvalibleAdnCount()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private getFileSupportNum(IZ)I
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectEfids(II)[I

    move-result-object v2

    if-nez v2, :cond_0

    const-string v3, "getFileSupportNum: efids == null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :cond_0
    array-length v0, v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    aget v5, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    goto :goto_1

    :cond_1
    aget v4, v2, v3

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_3

    array-length v5, v4

    const/4 v6, 0x3

    if-ge v5, v6, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const-string v5, "getFileSupportNum: get file size error"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->isIapFileExist()Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "getFileSupportNum: iap file does not exist!"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFileSupportNum: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private getGrp(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->composeGrpString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSne(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;[BI)Ljava/lang/String;
    .locals 10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSne sneNum "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " num "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_7

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v3, :cond_6

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    const/4 v2, 0x0

    :goto_0
    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v3, v3, v2

    const/16 v4, 0xa8

    if-ne v3, v4, :cond_2

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v2

    invoke-direct {p0, p1, p2, p4, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getType1Sne(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v3, v3, v2

    const/16 v4, 0xa9

    if-ne v3, v4, :cond_3

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v3, :cond_3

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v9, v3, v2

    move-object v4, p0

    move v5, p1

    move-object v6, p2

    move-object v7, p3

    move v8, p4

    invoke-direct/range {v4 .. v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getType2Sne(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;[BII)Ljava/lang/String;

    move-result-object v1

    :cond_3
    if-nez v2, :cond_4

    move-object v0, v1

    goto :goto_1

    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0

    :cond_6
    :goto_2
    const-string v3, "getSne sneInfo.efids == null || sneInfo.efids.length == 0"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v2

    :cond_7
    :goto_3
    return-object v2
.end method

.method private getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    nop

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    return-object v1

    :cond_0
    const/4 v2, 0x0

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getType1Anr(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;IILjava/util/ArrayList;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            "II",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, ""

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p3, v2, :cond_1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    array-length v3, v2

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    aget-byte v3, v2, v4

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x2

    invoke-static {v2, v4, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-object v0
.end method

.method private getType1Sne(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType1Sne size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readSneRecord(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getType1Sne, snes "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "getType1Sne, snes is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v2

    :cond_1
    return-object v0
.end method

.method private getType2Anr(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;[BIILjava/util/ArrayList;)Ljava/lang/String;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            "[BII",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    const-string v4, ""

    const/4 v5, 0x0

    if-nez v3, :cond_0

    return-object v4

    :cond_0
    move/from16 v6, p5

    invoke-direct {v0, v6, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v5

    const/4 v7, -0x1

    if-ne v5, v7, :cond_1

    return-object v4

    :cond_1
    iget-object v8, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    iget-object v9, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ArrayList;

    if-eqz v9, :cond_7

    array-length v10, v3

    if-gt v10, v8, :cond_2

    move/from16 v11, p4

    move-object/from16 v13, p6

    goto/16 :goto_3

    :cond_2
    aget-byte v10, v3, v8

    const/16 v11, 0xff

    and-int/2addr v10, v11

    if-ne v10, v11, :cond_3

    move v12, v7

    goto :goto_0

    :cond_3
    move v12, v10

    :goto_0
    move v10, v12

    if-lez v10, :cond_6

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-gt v10, v12, :cond_6

    add-int/lit8 v12, v10, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, [B

    array-length v13, v12

    const/4 v14, 0x1

    if-le v13, v14, :cond_4

    aget-byte v13, v12, v14

    and-int/2addr v11, v13

    const/4 v13, 0x2

    invoke-static {v12, v13, v11}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x0

    aget-byte v11, v12, v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v13, p6

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object/from16 v13, p6

    :goto_1
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    const-string v11, "getAnrInIap anr is emtry"

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    move/from16 v11, p4

    invoke-virtual {v0, v1, v11, v7, v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setIapFileRecord(IIBI)V

    return-object v4

    :cond_5
    move/from16 v11, p4

    iget-object v7, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Ljava/util/Set;

    new-instance v15, Ljava/lang/Integer;

    invoke-direct {v15, v10}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v7, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v15, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v7, v15, v5

    invoke-direct {v0, v14, v1, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_2

    :cond_6
    move/from16 v11, p4

    move-object/from16 v13, p6

    :goto_2
    return-object v4

    :cond_7
    move/from16 v11, p4

    move-object/from16 v13, p6

    :goto_3
    return-object v4
.end method

.method private getType2Ef(I)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    nop

    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v2, v5

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    if-eqz v2, :cond_3

    iget-object v5, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v5, :cond_3

    iget-object v5, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    if-eqz v5, :cond_3

    const/4 v5, 0x0

    :goto_2
    iget-object v6, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v6, v6

    if-ge v5, v6, :cond_3

    iget-object v6, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v6, v6, v5

    const/16 v7, 0xa9

    if-ne v6, v7, :cond_2

    const/4 v3, 0x1

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v8, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v8, v8, v5

    if-ne v7, v8, :cond_0

    const/4 v3, 0x0

    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    if-eqz v3, :cond_2

    iget-object v6, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Ef  type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " efs "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getType2Sne(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;[BII)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, -0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " getType2Sne begin, sneInfo.recordNumInIap.size() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adnNum "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " efid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-nez p3, :cond_0

    return-object v0

    :cond_0
    invoke-direct {p0, p5, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneTagNumberInIap:I

    iget-object v3, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    iget v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneTagNumberInIap:I

    aget-byte v3, p3, v3

    const/16 v4, 0xff

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_3

    move v4, v2

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Sne  iap recNum == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-eq v3, v2, :cond_5

    add-int/lit8 v4, v3, -0x1

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readSneRecord(I)Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Sne, snes "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "getType2Sne, snes is null"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneTagNumberInIap:I

    invoke-virtual {p0, p1, p4, v2, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setIapFileRecord(IIBI)V

    const/4 v2, 0x0

    return-object v2

    :cond_4
    iget-object v2, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v2, v2, v1

    check-cast v2, Ljava/util/Set;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Sne  size (0)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " index "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v4, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v2, v4, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getType2Sne  size (1)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v4, 0x4

    invoke-direct {p0, v4, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    :cond_5
    return-object v0
.end method

.method private getTypeAas(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;II)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iput-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypeAas size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readAasRecord(I)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTypeAas, aas "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    return-object v0

    :cond_3
    :goto_0
    return-object v1
.end method

.method private getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I
    .locals 4

    const/4 v0, -0x1

    if-eqz p2, :cond_1

    iget-object v1, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v2, v2, v1

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    iget-object v2, p2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v2, v2, v1

    if-ne v2, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private handleReadFileResult(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V
    .locals 4

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_5

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-nez v2, :cond_0

    goto :goto_3

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v2, v2

    if-ge v0, v2, :cond_3

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v2, v2, v0

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v2, v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    iget-object v3, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    const/4 v0, 0x0

    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    iput-object v2, p1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    return-void

    :cond_5
    :goto_3
    const-string v2, "handleReadFileResult records == null || records.efids == null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private initArraylist(II)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-array v1, p1, [B

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-byte v4, v1, v3

    nop

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, p2, :cond_1

    invoke-virtual {v0, v2, v1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private isIapFileExist()Z
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isIapFileExist: iapEfid = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-gtz v1, :cond_0

    const-string v2, "isIapFileExist: iap file does not exist"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v2, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    const-string v3, "isIapFileExist: get file size error"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v0
.end method

.method private isPbrFilesSpecial(I)Z
    .locals 6

    const/4 v0, 0x0

    if-lez p1, :cond_0

    const-string v1, "Not first Pbr file"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :try_start_1
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v1, v3

    nop

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0xc0

    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v3}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getEFAdnRecordSize()[I

    move-result-object v3

    if-eqz v3, :cond_5

    array-length v4, v3

    const/4 v5, 0x2

    if-le v4, v5, :cond_5

    aget v4, v3, v5

    if-lez v4, :cond_5

    return v2

    :cond_5
    return v0

    :cond_6
    :goto_0
    return v2

    :catch_0
    move-exception v0

    const-string v3, "isPbrFilesSpecial IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v2

    :cond_7
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniUsimPhoneBookManager"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniUsimPhoneBookManager"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UniUsimPhoneBookManager"

    invoke-static {v0, p1}, Lcom/android/internal/telephony/phonebook/UniPhoneBookLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private readAasRecord(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, v2}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "readAasRecord IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v2, 0x0

    return-object v2
.end method

.method private readAdnFileAndWait(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    nop

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto/16 :goto_1

    :cond_3
    const/4 v2, 0x0

    const/16 v3, 0xc2

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    :cond_4
    const/16 v3, 0xc0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_6

    if-nez p1, :cond_5

    iput-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    :cond_5
    return-void

    :cond_6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readAdnFileAndWait: efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extEf ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v3, v2, v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v5, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    if-nez p1, :cond_7

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ne v3, v4, :cond_7

    iput-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    :cond_7
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_8

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-static {v1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fputmMasterFileRecordNum(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;I)V

    :cond_8
    return-void

    :cond_9
    :goto_1
    if-nez p1, :cond_a

    iput-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    :cond_a
    return-void

    :catch_1
    move-exception v1

    const-string v2, "readAdnFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_b
    :goto_2
    iput-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    const-string v0, "Pbr file is empty, and set mIsPbrFileExisting false"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private readAdnFileSizeAndWait(I)[I
    .locals 7

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_3

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    const/4 v2, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v3, 0xc0

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_5

    if-nez p1, :cond_4

    iput-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    :cond_4
    return-object v1

    :cond_5
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v5, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v4, v5

    check-cast v4, [I

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_8

    array-length v5, v4

    const/4 v6, 0x3

    if-lt v5, v6, :cond_8

    aget v5, v4, v2

    const/16 v6, 0xe

    if-ge v5, v6, :cond_7

    goto :goto_1

    :cond_7
    return-object v4

    :cond_8
    :goto_1
    if-nez p1, :cond_9

    iput-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    :cond_9
    return-object v1

    :cond_a
    :goto_2
    if-nez p1, :cond_b

    iput-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    :cond_b
    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "readAdnFileSizeAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_c
    :goto_3
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private readAnrFileAndWait(II)V
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_a

    :cond_2
    const/4 v4, 0x0

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v4, v0

    nop

    if-eqz v4, :cond_15

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_9

    :cond_3
    const/16 v0, 0xc4

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v6

    if-nez v6, :cond_4

    const-string v0, "readAnrFileAndWait  records == null "

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v0, :cond_13

    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    if-nez v0, :cond_5

    goto/16 :goto_7

    :cond_5
    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    iput v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    const/4 v0, 0x0

    const/4 v7, 0x0

    move v8, v7

    move v7, v0

    :goto_0
    iget v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    if-ge v8, v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "readAnrFileAndWait type "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v9, v9, v8

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v9, " offSet = "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v8

    const/16 v9, 0xa8

    const/4 v10, 0x0

    if-ne v0, v9, :cond_f

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    :cond_6
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    iget-object v9, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    iget-object v9, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v9, v9, v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v9, v0

    goto :goto_1

    :cond_7
    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v0, v0, v8

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v0

    move-object v9, v0

    :goto_1
    if-eqz v9, :cond_e

    array-length v0, v9

    const/4 v11, 0x3

    if-ge v0, v11, :cond_8

    goto/16 :goto_3

    :cond_8
    aget v0, v9, v10

    const/4 v11, 0x2

    aget v12, v9, v11

    invoke-direct {v1, v0, v12}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->initArraylist(II)Ljava/util/ArrayList;

    move-result-object v12

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0, v10, v12}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move/from16 v0, p2

    :goto_2
    iget-object v13, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v0, v13, :cond_b

    aget v13, v9, v11

    add-int/2addr v13, v3

    if-ge v0, v13, :cond_b

    iget-object v13, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v13}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_9

    iget-object v13, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v13}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_a

    :cond_9
    iget-object v13, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingAnrLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13, v5}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v13, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v13, :cond_a

    instance-of v14, v13, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    if-eqz v14, :cond_a

    check-cast v13, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    iget-object v14, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v14, v14, v8

    add-int/lit8 v15, v0, 0x1

    sub-int/2addr v15, v3

    aget v11, v9, v10

    sub-int v5, v0, v3

    const/16 v10, 0x14

    invoke-virtual {v1, v10, v5, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v13, v14, v15, v11, v5}, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    :cond_a
    add-int/lit8 v0, v0, 0x1

    const/4 v5, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x2

    goto :goto_2

    :cond_b
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingAnrLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_4

    :cond_c
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_2
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v5, "Interrupted Exception in readEmailFileAndWait"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const-string v0, "readAnrFileAndWait, mAnrFileRecord is null"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_3
    return-void

    :cond_f
    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v0, v0, v8

    const/16 v5, 0xa9

    if-ne v0, v5, :cond_10

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v5, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v5, v8

    const/16 v9, 0xa

    invoke-virtual {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v0, v5, v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_3
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v5, "Interrupted Exception in readEmailFileAndWait"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_5

    :cond_10
    :goto_4
    nop

    :goto_5
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_11

    const-string v0, "Error: ANR file is empty"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    const/4 v5, 0x0

    aput v5, v0, v8

    const/4 v0, 0x1

    move v7, v0

    goto :goto_6

    :cond_11
    iget-object v0, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v5, v6, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v5, v8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v9, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-interface {v0, v5, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    :goto_6
    add-int/lit8 v8, v8, 0x1

    const/4 v5, 0x1

    goto/16 :goto_0

    :cond_12
    invoke-direct {v1, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->handleReadFileResult(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    const/4 v5, 0x1

    invoke-direct {v1, v5, v2, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    invoke-direct {v1, v5, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectUsedNum(II)V

    goto :goto_8

    :cond_13
    :goto_7
    const-string v0, "readAnrFileAndWait  records.efids == null || records.efids.length == 0"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_14
    :goto_8
    return-void

    :cond_15
    :goto_9
    const-string v0, "readAnrFileAndWait  fileIds == null"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v0

    const-string v5, "readAnrFileAndWait IndexOutOfBoundsException"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_16
    :goto_a
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method private readAnrRecord(I)Ljava/lang/String;
    .locals 16

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    const/4 v10, 0x0

    if-nez v0, :cond_0

    return-object v10

    :cond_0
    iget-object v11, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrRecordSizeArray:[I

    const/4 v12, 0x0

    aget v11, v11, v12

    iget v13, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    div-int/2addr v11, v13

    const/4 v14, 0x1

    const/4 v15, 0x2

    if-ne v13, v14, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    aget-byte v3, v0, v15

    and-int/lit16 v3, v3, 0xff

    invoke-static {v0, v15, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAnrRecord anr: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v3

    :cond_1
    const-string v13, "readAnrRecord anr:"

    const-string v14, ";"

    if-ge v2, v11, :cond_3

    :try_start_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v3, v0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    add-int v12, v2, v11

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v4, v0

    iget v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    if-le v0, v15, :cond_2

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    mul-int/lit8 v12, v11, 0x2

    add-int/2addr v12, v2

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v0

    :cond_2
    nop

    aget-byte v0, v3, v15

    and-int/lit16 v0, v0, 0xff

    invoke-static {v3, v15, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    aget-byte v0, v4, v15

    and-int/lit16 v0, v0, 0xff

    invoke-static {v4, v15, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v7

    iget v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    if-le v0, v15, :cond_7

    aget-byte v0, v5, v15

    and-int/lit16 v0, v0, 0xff

    invoke-static {v5, v15, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v8

    :catch_0
    move-exception v0

    return-object v10

    :cond_3
    if-lt v2, v11, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    div-int/2addr v0, v10

    if-ge v2, v0, :cond_6

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrRecordSizeArray:[I

    aget v10, v10, v12

    sub-int/2addr v0, v10

    iget v12, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    div-int v12, v0, v12

    :try_start_1
    rem-int v0, v2, v11

    add-int/2addr v10, v0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v3, v0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    add-int v15, v10, v12

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    move-object v4, v0

    iget v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    const/4 v15, 0x2

    if-le v0, v15, :cond_4

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    mul-int/lit8 v15, v12, 0x2

    add-int/2addr v15, v10

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v5, v0

    :cond_4
    nop

    const/4 v0, 0x2

    aget-byte v10, v3, v0

    and-int/lit16 v10, v10, 0xff

    invoke-static {v3, v0, v10}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v6

    aget-byte v10, v4, v0

    and-int/lit16 v10, v10, 0xff

    invoke-static {v4, v0, v10}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v7

    iget v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    if-le v10, v0, :cond_5

    aget-byte v10, v5, v0

    and-int/lit16 v10, v10, 0xff

    invoke-static {v5, v0, v10}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v8

    :cond_5
    goto :goto_0

    :catch_1
    move-exception v0

    const/4 v10, 0x0

    return-object v10

    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "the total anr size is exceed mAnrFileRecord.size() "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_7
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "readAnrRecord anr "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v0
.end method

.method private readEmailFileAndWait(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v0, v1

    nop

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v3

    const/4 v4, 0x0

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v5

    if-nez v5, :cond_4

    const-string v1, "readEmailFileAndWait  records is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v6, :cond_5

    const-string v1, "Error: IAP file is empty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v4, p1, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    return-void

    :cond_5
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p1, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v7, :cond_7

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7

    const/4 v7, 0x0

    :try_start_2
    iget-object v8, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v8
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v7, v8

    nop

    if-eqz v7, :cond_6

    invoke-virtual {v7, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    if-eqz v8, :cond_6

    invoke-virtual {v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v9

    if-ne v9, v3, :cond_6

    const-string v1, "Skipped this EF_EMAIL which was loaded earlier"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_6
    nop

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v8, "readEmailFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-void

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x4

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v3, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v6, "Interrupted Exception in readEmailFileAndWait"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v1, :cond_9

    const-string v1, "Error: Email file is empty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-direct {p0, v4, p1, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    return-void

    :cond_9
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v1, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, v4, p1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectUsedNum(II)V

    invoke-virtual {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getParentTag()I

    move-result v1

    const/16 v6, 0xa9

    if-ne v1, v6, :cond_a

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v1, :cond_a

    invoke-direct {p0, v4, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v1

    invoke-direct {p0, p1, v1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->buildType2EmailList(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;I)Z

    goto :goto_3

    :cond_a
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->buildType1EmailList(I)V

    :goto_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    :cond_b
    return-void

    :cond_c
    :goto_4
    const-string v1, "email file is null or size is 0"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catch_2
    move-exception v1

    const-string v2, "readEmailFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_5
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1
.end method

.method private readEmailRecord(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_1

    const-string v2, "readEmailRecord, emailRec is abnormal"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    return-object v1
.end method

.method private readGasFileAndWait(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    nop

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_4

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    const/16 v4, 0x9

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    const-string v1, "readGasFileAndWait wait for notify"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_4
    const-string v3, "Interrupted Exception in readGasFileAndWait"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    :cond_4
    :goto_1
    const-string v1, "files is null or size is 0 or files donot contain gas"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    const-string v2, "readGasFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method private readGrpFileAndWait(II)V
    .locals 12

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    nop

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    const/16 v1, 0xc6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-nez v2, :cond_5

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v2, :cond_6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_0

    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readGrpFileAndWait offSet "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-eqz v2, :cond_d

    array-length v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_7

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x0

    aget v4, v2, v3

    const/4 v5, 0x2

    aget v6, v2, v5

    invoke-direct {p0, v4, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->initArraylist(II)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ne v6, p2, :cond_c

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6, p2, v4}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move v6, p2

    :goto_1
    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v6, v7, :cond_a

    aget v7, v2, v5

    add-int/2addr v7, p2

    if-ge v6, v7, :cond_a

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v7}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingGrpLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v7, :cond_9

    instance-of v8, v7, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    if-eqz v8, :cond_9

    check-cast v7, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    add-int/lit8 v8, v6, 0x1

    sub-int/2addr v8, p2

    aget v9, v2, v3

    sub-int v10, v6, p2

    const/16 v11, 0x8

    invoke-virtual {p0, v11, v10, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v7, v1, v8, v9, v10}, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_a
    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingGrpLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v5

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_b
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_2
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    const-string v5, "Interrupted Exception in readGrpFileAndWait"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_c
    const-string v3, "readGrpFileAndWait mGrpFileRecord is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_3
    const-string v3, "readGrpFileAndWait size is error"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_e
    :goto_4
    return-void

    :catch_1
    move-exception v1

    const-string v2, "readGrpFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_5
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private readIapFile(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v1

    nop

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0xc1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readIapFile mAnrPresentInIap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrPresentInIap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mEmailPresentInIap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mSnePresentInIap = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSnePresentInIap:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", offSet = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrPresentInIap:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSnePresentInIap:Z

    if-eqz v2, :cond_5

    :cond_4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    invoke-direct {p0, v1, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readIapFileAndWait(III)V

    :cond_5
    return-void

    :cond_6
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "readIapFile IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_7
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private readIapFileAndWait(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted Exception in readIapFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private readIapFileAndWait(III)V
    .locals 10

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_8

    array-length v1, v0

    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    :cond_2
    const/4 v1, 0x0

    aget v3, v0, v1

    const/4 v4, 0x2

    aget v5, v0, v4

    invoke-direct {p0, v3, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->initArraylist(II)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v5, :cond_7

    invoke-virtual {v5, v1, v3}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    move v5, p3

    :goto_1
    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_5

    aget v6, v0, v4

    add-int/2addr v6, p3

    if-ge v5, v6, :cond_5

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingIapLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v6, :cond_4

    instance-of v7, v6, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    if-eqz v7, :cond_4

    check-cast v6, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    add-int/lit8 v7, v5, 0x1

    sub-int/2addr v7, p3

    aget v8, v0, v1

    sub-int v9, v5, p3

    invoke-virtual {p0, v2, v9, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v6, p1, v7, v8, v9}, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingIapLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v2, "Interrupted Exception in readIapFileAndWait"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_2
    return-void

    :cond_7
    const-string v1, "readIapFileAndWait: mIapFileRecord is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    return-void
.end method

.method private readPbrFileAndWait()V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f30

    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Interrupted Exception in readPbrFileAndWait"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private readSneFileAndWait(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readSnelFileAndWait recNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    nop

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EF_SNE exists in PBR. efid = 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v4

    if-nez v4, :cond_4

    const-string v3, "readSnelFileAndWait  records == null "

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v6, 0x7

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v6, "Interrupted Exception in readSneFileAndWait"

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    if-nez v5, :cond_5

    const-string v5, "Error: sne file is empty"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-direct {p0, v3, p1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    return-void

    :cond_5
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v5, v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readSnelFileAndWait recNum "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "  mSneFileRecord  size "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v3, p1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    invoke-direct {p0, v3, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectUsedNum(II)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    :cond_6
    return-void

    :cond_7
    :goto_1
    return-void

    :catch_1
    move-exception v1

    const-string v2, "readSneFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method private readSneFileSizeAndWait()[I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_1

    :cond_3
    const/16 v2, 0xc3

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    goto :goto_0

    :cond_5
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v2

    :goto_0
    return-object v2

    :cond_6
    :goto_1
    return-object v1

    :catch_0
    move-exception v2

    const-string v3, "readSneFileSizeAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-object v1

    :cond_7
    :goto_2
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private readSneRecord(I)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    array-length v2, v0

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    const-string v2, "readSneRecord, sneRec is abnormal"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v1

    :cond_0
    array-length v1, v0

    sub-int/2addr v1, v3

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v2

    return-object v1
.end method

.method private setAas(ILjava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAas, adnNum: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setAas(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAas, rec name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", num: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", aas = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "setEmailandAnr IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setAnrIapFileRecord(IIBI)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAnrIapFileRecord, num:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numInIap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    aput-byte p3, v1, p4

    invoke-virtual {v0, p2, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aput-object v0, v2, p1

    return-void
.end method

.method private setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    if-nez p2, :cond_1

    if-eqz p3, :cond_2

    :cond_1
    new-instance v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_2
    if-eqz p2, :cond_3

    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setEmails([Ljava/lang/String;)V

    :cond_3
    if-eqz p3, :cond_4

    invoke-virtual {v0, p3}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setAnr(Ljava/lang/String;)V

    :cond_4
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "setEmailandAnr IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setSne(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const-string v2, ""

    invoke-direct {v1, v2, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setSne(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "setSne IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V
    .locals 2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneInfoFromPBR:Ljava/util/LinkedList;

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_2
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasInfoFromPBR:Ljava/util/LinkedList;

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    if-nez v1, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :pswitch_4
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    if-nez v1, :cond_3

    return-void

    :cond_3
    invoke-virtual {v1, p2, p3}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setSubjectUsedNum(II)V
    .locals 5

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v1, v1

    new-array v2, v1, [Ljava/lang/Object;

    iput-object v2, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private setUsedNumOfEfid(IIILjava/lang/Object;)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    nop

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    if-eqz v1, :cond_1

    iget-object v3, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v3, :cond_1

    const/4 v3, 0x0

    :goto_2
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v3

    if-ne v4, p3, :cond_0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object p4, v4, p2

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    goto :goto_3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateAdnRecord(I)V
    .locals 23

    move-object/from16 v8, p0

    move/from16 v9, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    const/4 v6, 0x0

    const/4 v7, 0x0

    if-nez v10, :cond_0

    const-string v11, "mPhoneBookRecords size is 0"

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v11, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aput v10, v11, v9

    const/4 v11, 0x0

    :goto_0
    if-ge v11, v9, :cond_1

    iget-object v12, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSizeArray:[I

    aget v13, v12, v9

    aget v14, v12, v11

    sub-int/2addr v13, v14

    aput v13, v12, v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    const/4 v11, 0x0

    invoke-direct {v8, v11, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v12

    const/4 v0, 0x1

    invoke-direct {v8, v0, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v13

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    invoke-direct {v8, v0, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    const/4 v0, 0x4

    invoke-direct {v8, v0, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v3

    move-object v14, v2

    move-object v15, v3

    goto :goto_1

    :cond_2
    move-object v14, v2

    move-object v15, v3

    :goto_1
    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    iget-object v2, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    aput-object v2, v1, v9

    iget-object v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapRecordSizeArray:[I

    aput v0, v1, v9

    iget v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v2, v10, v1

    if-le v2, v0, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    sub-int v1, v10, v1

    :goto_2
    move v0, v1

    move v6, v0

    goto :goto_3

    :cond_4
    iget v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v0, v10, v0

    move v6, v0

    :goto_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecord, numIapRec "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mDoneAdnCount "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    move-object/from16 v22, v7

    move v7, v0

    move-object/from16 v0, v22

    :goto_4
    iget v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    add-int v2, v1, v6

    if-ge v7, v2, :cond_b

    const/4 v2, 0x0

    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    sub-int v1, v7, v1

    :try_start_0
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "Improper ICC card, No IAP record for ADN, continuing"

    invoke-direct {v8, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    move-object v0, v2

    move/from16 v18, v6

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    const/4 v12, 0x0

    goto/16 :goto_9

    :cond_5
    move-object v4, v2

    :goto_5
    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    if-eqz v0, :cond_7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniAdnRecord;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v1, v0

    nop

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getEfid()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getRecId()I

    move-result v3

    const v0, 0xffff

    and-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v5, v3, -0x1

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v5, v0

    const/16 v19, 0x0

    :try_start_2
    iget-object v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    move-object/from16 v19, v0

    goto :goto_6

    :catch_1
    move-exception v0

    const-string v11, "Improper ICC card, No Email record for ADN, continuing"

    invoke-direct {v8, v11}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_6
    if-eqz v19, :cond_6

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v11

    move-object/from16 v20, v1

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v1

    move-object/from16 v21, v12

    const/4 v12, 0x0

    invoke-static {v11, v12, v0, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 v11, 0x0

    invoke-direct {v8, v7, v0, v11}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    move-object/from16 v20, v1

    move-object/from16 v21, v12

    const/4 v11, 0x0

    const/4 v12, 0x0

    goto :goto_7

    :catch_2
    move-exception v0

    move-object/from16 v21, v12

    const/4 v11, 0x0

    const-string v2, "updateAdnRecord IndexOutOfBoundsException"

    invoke-direct {v8, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    move-object v0, v4

    move/from16 v18, v6

    move-object v12, v11

    move-object/from16 v19, v13

    goto/16 :goto_9

    :cond_7
    move-object/from16 v21, v12

    move v12, v11

    const/4 v11, 0x0

    :goto_7
    if-eqz v13, :cond_8

    iget v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v0, v7, v0

    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object v3, v13

    move-object v5, v4

    move-object v4, v14

    move-object v12, v11

    move-object v11, v5

    move v5, v7

    move/from16 v18, v6

    move-object v6, v11

    move-object/from16 v19, v13

    move v13, v7

    move v7, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAnr(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;I[BI)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v13, v12, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setEmailandAnr(I[Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v17, v0

    goto :goto_8

    :cond_8
    move-object v11, v4

    move/from16 v18, v6

    move-object/from16 v19, v13

    move v13, v7

    :goto_8
    if-eqz v15, :cond_a

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v0

    if-eqz v0, :cond_a

    iget v0, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    sub-int v7, v13, v0

    invoke-direct {v8, v9, v15, v11, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSne(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;[BI)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-direct {v8, v13, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSne(ILjava/lang/String;)V

    :cond_9
    move-object/from16 v16, v0

    :cond_a
    add-int/lit8 v7, v13, 0x1

    move-object v0, v11

    move/from16 v6, v18

    move-object/from16 v13, v19

    move-object/from16 v12, v21

    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_b
    move/from16 v18, v6

    move-object/from16 v21, v12

    move-object/from16 v19, v13

    const/4 v12, 0x0

    move v13, v7

    :goto_9
    iput-object v12, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    iget v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    add-int/2addr v1, v10

    iput v1, v8, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    return-void
.end method

.method private updateAdnRecordNum()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setRecordNumber(I)V

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getGrp(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->setGrp(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updatePbcAndCc()V
    .locals 20

    move-object/from16 v1, p0

    const/4 v2, 0x0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const-string v0, "updatePbcAndCc, mPbrRecords is null"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v3, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-nez v3, :cond_1

    const-string v0, "updatePbcAndCc, mPhoneBookRecords is null"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v0

    nop

    if-eqz v2, :cond_10

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_10

    const/16 v0, 0xc5

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    goto/16 :goto_6

    :cond_2
    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v10

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " USIM_EFPBC_TAG = 0x"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    :cond_3
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v0, :cond_4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    move-object v11, v0

    goto :goto_0

    :cond_4
    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v0

    move-object v11, v0

    :goto_0
    if-eqz v11, :cond_f

    array-length v0, v11

    const/4 v5, 0x3

    if-ge v0, v5, :cond_5

    goto/16 :goto_5

    :cond_5
    aget v0, v11, v3

    const/4 v12, 0x2

    aget v5, v11, v12

    invoke-direct {v1, v0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->initArraylist(II)Ljava/util/ArrayList;

    move-result-object v13

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    const-string v14, "readIapFileAndWait: mPbcFileRecord is null"

    if-eqz v0, :cond_e

    invoke-virtual {v0, v3, v13}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    const/4 v0, 0x0

    :goto_1
    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    const/4 v15, 0x1

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v5, :cond_8

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_8

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v5}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_7

    :cond_6
    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingPbcLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5, v15}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    if-eqz v5, :cond_7

    instance-of v6, v5, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    if-eqz v6, :cond_7

    check-cast v5, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;

    add-int/lit8 v6, v0, 0x1

    aget v7, v11, v3

    const/16 v8, 0xe

    invoke-virtual {v1, v8, v0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v5, v10, v6, v7, v8}, Lcom/android/internal/telephony/uicc/UniUsimFileHandler;->loadEFLinearFixed(IIILandroid/os/Message;)V

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_8
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingPbcLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto :goto_2

    :cond_9
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :try_start_1
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    const-string v5, "Interrupted Exception in updatePbcAndCc"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x0

    :goto_3
    aget v5, v11, v12

    if-ge v0, v5, :cond_c

    const/4 v5, 0x0

    iget-object v6, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    if-eqz v6, :cond_b

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [B

    if-eqz v9, :cond_a

    array-length v5, v9

    if-lez v5, :cond_a

    aget-byte v5, v9, v3

    and-int/lit16 v5, v5, 0xff

    if-ne v5, v15, :cond_a

    add-int/lit8 v16, v4, 0x1

    new-array v8, v12, [B

    aput-byte v3, v8, v3

    aput-byte v3, v8, v15

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    add-int/lit8 v6, v0, 0x1

    const/16 v17, 0x0

    const/16 v5, 0xd

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v18

    move v5, v10

    move-object v7, v8

    move-object/from16 v19, v8

    move-object/from16 v8, v17

    move-object/from16 v17, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v4 .. v9}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    move/from16 v4, v16

    goto :goto_4

    :cond_a
    move-object/from16 v17, v9

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_b
    invoke-direct {v1, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update EFpbc end, changeCounter "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-lez v4, :cond_d

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v5, 0xc

    invoke-virtual {v1, v5, v4, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    const/16 v5, 0x4f23

    invoke-virtual {v0, v5, v12, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    :cond_d
    return-void

    :cond_e
    invoke-direct {v1, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_f
    :goto_5
    return-void

    :cond_10
    :goto_6
    const-string v0, "files is null or size is 0 or files donot contain pbc"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    const-string v3, "updatePbcAndCc IndexOutOfBoundsException"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public findEFAasInfo()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    return v3

    :cond_5
    :goto_0
    const-string v2, "findEFAasInfo fileIds == null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFAasInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findEFAnrInfo(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEFAnrInfo index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    :goto_0
    const-string v2, "findEFAnrInfo, files is null or size is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFAnrInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findEFEmailInfo(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEFEmailInfo index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    :goto_0
    const-string v2, "findEFEmailInfo fileIds is null or size is 0"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFEmailInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findEFGasInfo()I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    return v3

    :cond_5
    :goto_0
    const-string v2, "findEFGasInfo fileIds == null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFGasInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findEFIapInfo(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEFIapInfo index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    :goto_0
    const-string v2, "findEFIapInfo fileIds == null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFIapInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findEFInfo(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findEFInfo index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v2, 0xc0

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_4

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    const-string v2, "Error: files is empty"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findEFSneInfo(I)I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xc3

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    :goto_0
    const-string v2, "findEFSNEInfo  fileIds is null"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findEFSneInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public findExtensionEFInfo(I)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "findExtensionEFInfo index "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findExtensionEFInfo files "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/16 v1, 0xc2

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_4
    const/4 v1, 0x0

    return v1

    :cond_5
    :goto_0
    const-string v2, "Error: files is empty"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "findExtensionEFInfo IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_6
    :goto_1
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public getAdnRecordSizeArray()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSizeArray:[I

    return-object v0
.end method

.method public declared-synchronized getAdnRecordsSize()[I
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I

    if-eqz v1, :cond_0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_0
    :try_start_2
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    :try_start_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x3

    new-array v4, v3, [I

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    if-ge v4, v3, :cond_4

    :try_start_4
    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I

    aput v5, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_9

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readAdnFileSizeAndWait(I)[I

    move-result-object v4

    if-eqz v4, :cond_7

    iget-object v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I

    if-eqz v6, :cond_6

    aget v7, v6, v5

    if-lez v7, :cond_5

    aget v8, v4, v5

    if-le v8, v7, :cond_5

    goto :goto_2

    :cond_5
    aget v7, v4, v5

    :goto_2
    aput v7, v6, v5

    const/4 v7, 0x1

    aget v8, v6, v7

    aget v9, v4, v7

    add-int/2addr v8, v9

    aput v8, v6, v7

    const/4 v7, 0x2

    aget v8, v6, v7

    aget v9, v4, v7

    add-int/2addr v8, v9

    aput v8, v6, v7

    goto :goto_3

    :cond_6
    const-string v5, "getAdnRecordsSize mAdnRecordSize is null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_7
    if-nez v3, :cond_8

    :try_start_5
    const-string v5, "getAdnRecordsSize size is null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-object v2

    :cond_8
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_9
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_a
    :goto_4
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception v1

    :goto_5
    :try_start_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_1
    move-exception v1

    goto :goto_5

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAnrNum()I
    .locals 2

    const-string v0, "getAnrNum"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrPresentInIap:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getFileSupportNum(IZ)I

    move-result v0

    return v0
.end method

.method public getAnrTagNumberInIap(I)[[I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v0, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v0, v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v1, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v3, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v3, v3, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-ge v2, v3, :cond_0

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v4, v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v2

    const/4 v5, 0x0

    aput v4, v3, v5

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    invoke-virtual {v4, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    iget-object v4, v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    aput v4, v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getAvalibleAnrCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 10

    new-instance v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getValidNumToMatch(Lcom/android/internal/telephony/phonebook/UniAdnRecord;I[I)[I

    move-result-object v1

    return-object v1
.end method

.method public getAvalibleEmailCount(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[I)[I
    .locals 10

    new-instance v9, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1, p5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getValidNumToMatch(Lcom/android/internal/telephony/phonebook/UniAdnRecord;I[I)[I

    move-result-object v1

    return-object v1
.end method

.method public getAvalibleSubjectCount(IIII[I)[I
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getAvalibleSubjectCount efid "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", num "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", type "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", adnNum "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move/from16 v11, p4

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v12, ", subjectNums "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v5

    if-nez v5, :cond_0

    const/4 v10, 0x0

    return-object v10

    :cond_0
    array-length v10, v4

    new-array v8, v10, [I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount adnEfid = "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v12, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->adnEfid:I

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-eqz v5, :cond_4

    iget v10, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->adnEfid:I

    if-ne v10, v3, :cond_4

    iget-object v10, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v10, :cond_4

    iget-object v10, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v10, :cond_4

    iget-object v10, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    if-eqz v10, :cond_4

    const/4 v10, 0x0

    :goto_0
    iget-object v12, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v12, v12

    if-ge v10, v12, :cond_4

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getAvalibleSubjectCount efid = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v14, v14, v10

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v0, v12}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v12, 0x0

    :goto_1
    array-length v14, v4

    if-ge v12, v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    aget v15, v4, v12

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v0, v14}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    aget v14, v4, v12

    const/4 v15, 0x1

    if-ne v14, v15, :cond_2

    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v15, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v15, v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v15, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v15, v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_2

    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v15, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v15, v15, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v6

    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v14, v14, v10

    const/16 v15, 0xa8

    if-ne v14, v15, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAvalibleAdnCount()I

    move-result v13

    aput v13, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v14, v14, v10

    const/16 v15, 0xa9

    if-ne v14, v15, :cond_2

    iget-object v14, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v14, v14, v10

    invoke-direct {v0, v14, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAvalibleSubjectCount idx = "

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-ltz v14, :cond_2

    iget-object v1, v5, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v1, v1, v14

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v13

    sub-int v7, v6, v13

    aput v7, v8, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v1, p1

    goto/16 :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v10, v10, 0x1

    move/from16 v1, p1

    goto/16 :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAvalibleSubjectCount  n "

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-nez v9, :cond_5

    const/4 v1, 0x0

    return-object v1

    :cond_5
    const/4 v1, 0x0

    :goto_3
    array-length v10, v8

    if-ge v1, v10, :cond_6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getAvalibleSubjectCount  ret[] "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    aget v12, v8, v1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    return-object v8
.end method

.method public getEfFilesFromUsim()[I
    .locals 6

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    nop

    const/16 v4, 0xc0

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v4

    aput v4, v1, v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getEfFilesFromUsim "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "getEfFilesFromUsim IndexOutOfBoundsException"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    nop

    :cond_0
    return-object v1
.end method

.method public getEfIdByTag(II)I
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEfIdByTag, recordNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fileTag = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    nop

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1

    :cond_3
    :goto_0
    const-string v2, "getEfIdByTag error, files is empty"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :catch_0
    move-exception v2

    const-string v3, "getEfIdByTag IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1

    :cond_4
    :goto_1
    const-string v0, "getEfIdByTag error, Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return v1
.end method

.method public getEmailMaxLen()I
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFEmailInfo(I)I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v2, v3

    check-cast v2, [I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_2

    array-length v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    aget v0, v2, v0

    add-int/lit8 v0, v0, -0x2

    return v0

    :cond_2
    :goto_1
    const-string v3, "getEmailMaxLen recordSizeEmail == null || recordSizeEmail.length == 0"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v0
.end method

.method public getEmailNum()I
    .locals 2

    const-string v0, "getEmailNum"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    invoke-direct {p0, v0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getFileSupportNum(IZ)I

    move-result v0

    return v0
.end method

.method public getEmailRecordSizeArray()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailRecordSizeArray:[I

    return-object v0
.end method

.method public getEmailRecordsSize()[I
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x3

    new-array v2, v1, [I

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v4

    if-ge v3, v4, :cond_3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFEmailInfo(I)I

    move-result v4

    if-lez v4, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v5, :cond_1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v5

    :goto_1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    if-eqz v5, :cond_2

    array-length v6, v5

    if-ne v6, v1, :cond_2

    const/4 v6, 0x0

    aget v7, v5, v6

    aput v7, v2, v6

    const/4 v6, 0x1

    aget v7, v2, v6

    aget v8, v5, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    const/4 v6, 0x2

    aget v7, v2, v6

    aget v8, v5, v6

    add-int/2addr v7, v8

    aput v7, v2, v6

    :cond_2
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public getEmailType()I
    .locals 2

    iget-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailPresentInIap:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x2

    return v0

    :cond_0
    return v1
.end method

.method public getGroupNum()I
    .locals 6

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "getGroupNum, IndexOutOfBoundsException"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_1

    goto :goto_3

    :cond_1
    const/16 v1, 0xc6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;

    invoke-virtual {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$File;->getEfid()I

    move-result v1

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readFileSizeAndWait(I)[I

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_5

    array-length v4, v3

    const/4 v5, 0x3

    if-ge v4, v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    return v2

    :cond_5
    :goto_2
    const-string v4, "recordSizeGrp is null, getGroupNum is 0"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v2

    :cond_6
    :goto_3
    return v2

    :cond_7
    :goto_4
    return v2
.end method

.method public getGrpCount()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpCount:I

    return v0
.end method

.method public getIapFileRecord(I)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFIapInfo(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v1, v1, p1

    check-cast v1, Ljava/util/ArrayList;

    return-object v1
.end method

.method public getIapRecordSizeArray()[I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapRecordSizeArray:[I

    return-object v0
.end method

.method public getNewSubjectNumber(IIIIIZ)I
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getNewSubjectNumber:  adnNum = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isInIap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", efid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", index = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x1

    if-nez v0, :cond_0

    return v2

    :cond_0
    iget-object v3, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    if-eqz v3, :cond_6

    iget-object v3, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getNewSubjectNumber: count = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-eqz p6, :cond_4

    iget-object v3, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v3, v3, p4

    check-cast v3, Ljava/util/Set;

    const/4 v4, 0x1

    :goto_0
    if-gt v4, v2, :cond_3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNewSubjectNumber: subjectNum = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v6, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v3, v6, p4

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    invoke-direct {p0, p1, p3, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->SetRepeatUsedNumSet(IILjava/util/Set;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    nop

    return v1

    :cond_4
    if-le p5, v2, :cond_5

    const-string v3, "adnNum > count"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v1

    :cond_5
    return p5

    :cond_6
    :goto_2
    const-string v3, "getNewSubjectNumber idx.record == null || !idx.record.containsKey(efid)"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return v2
.end method

.method public getNumRecs()I
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_3
    :goto_0
    :try_start_1
    const-string v1, "Error: Pbr file is empty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getPhoneBookRecordsNum()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPhoneNumMaxLen()I
    .locals 1

    const/16 v0, 0x28

    return v0
.end method

.method public getRecordsSize()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    return-object v0
.end method

.method public getRepeatUsedNumSet(Ljava/util/LinkedList;IILjava/util/Set;I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;",
            ">;II",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, p4

    add-int/lit8 v2, p2, 0x1

    :goto_0
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    if-eqz v0, :cond_0

    invoke-direct {p0, p3, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSetIndex(ILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)I

    move-result v3

    if-ltz v3, :cond_0

    iget-object v4, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v4, v4, v3

    check-cast v4, Ljava/util/Set;

    invoke-virtual {p0, v4, v1, p5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getUsedNumSet(Ljava/util/Set;Ljava/util/Set;I)Ljava/util/Set;

    move-result-object v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getSneLength()[I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readSneFileSizeAndWait()[I

    move-result-object v2

    move-object v0, v2

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getSneSize()I
    .locals 1

    iget v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneEfSize:I

    return v0
.end method

.method public getSubjectEfids(II)[I
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v1, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSubjectEfids  length = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public getSubjectTagNumberInIap(II)[[I
    .locals 8

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    return-object v3

    :cond_0
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v4, v4

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_0
    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v5, v5

    if-ge v3, v5, :cond_3

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v5, v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget-object v5, v4, v3

    iget-object v6, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x1

    aput v6, v5, v7

    aget-object v5, v4, v3

    iget-object v6, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v6, v6, v3

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v2, 0x1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const/4 v4, 0x0

    const-string v3, "getSubjectTagNumberInIap isInIap == false"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_4
    return-object v4

    :cond_5
    :goto_1
    const-string v5, "getSubjectTagNumberInIap recordNumInIap == null"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-object v3
.end method

.method public getUsedNumSet(Ljava/util/Set;Ljava/util/Set;I)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    move-object v0, p1

    const/4 v1, 0x1

    :goto_0
    if-gt v1, p3, :cond_1

    new-instance v2, Ljava/lang/Integer;

    invoke-direct {v2, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-interface {p2, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getUsedNumSet  subjectNum(1) "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getValidNumToMatch(Lcom/android/internal/telephony/phonebook/UniAdnRecord;I[I)[I
    .locals 12

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v8, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v2

    const/4 v3, 0x0

    if-ge v8, v2, :cond_5

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->findEFInfo(I)I

    move-result v1

    if-gtz v1, :cond_0

    return-object v3

    :cond_0
    const-string v2, "getEfIdToMatch "

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "efid is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnCache:Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/phonebook/UniAdnRecordCache;->getRecordsIfLoadedEx(I)Ljava/util/ArrayList;

    move-result-object v9

    if-nez v9, :cond_1

    return-object v3

    :cond_1
    const-string v2, "getEfIdToMatch (2)"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v9}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move v11, v2

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {p1, v2}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEqual(Lcom/android/internal/telephony/phonebook/UniAdnRecord;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "we got the index "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    move v6, v11

    move-object v2, p0

    move v3, v8

    move v4, p2

    move v5, v1

    move-object v7, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAvalibleSubjectCount(IIII[I)[I

    move-result-object v0

    if-eqz v0, :cond_2

    return-object v0

    :cond_2
    move v3, v6

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_5
    return-object v3
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 29

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget v0, v2, Landroid/os/Message;->what:I

    const/16 v3, 0x4f22

    const v4, 0xff00

    const v5, 0xffff

    const/16 v6, 0x4f24

    const/4 v7, 0x4

    const/16 v8, 0xd

    const/4 v9, -0x1

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_e

    :pswitch_1
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading USIM ANR record done, index is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingAnrLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingAnrLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "Loading USIM ANR records done notify"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading EVENT_GET_RECORDS_COUNT, Efid is "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_2
    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_2

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_GET_RECORDS_COUNT, Size is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-nez v5, :cond_1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    :cond_1
    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    iget v6, v2, Landroid/os/Message;->arg1:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    nop

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "get EF record size failed, "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :goto_0
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto/16 :goto_e

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :pswitch_3
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v3, 0xf

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v6, v10, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    goto/16 :goto_e

    :pswitch_4
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [B

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v5, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_EF_PSC_LOAD_DONE has exception "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "EVENT_EF_PSC_LOAD_DONE data "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    new-array v5, v7, [B

    invoke-static {v4}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->bytesToInt([B)I

    move-result v6

    if-eq v6, v9, :cond_5

    if-ne v6, v9, :cond_4

    invoke-static {v12, v7}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->intToBytes(II)[B

    move-result-object v5

    goto :goto_1

    :cond_4
    add-int/lit8 v9, v6, 0x1

    invoke-static {v9, v7}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->intToBytes(II)[B

    move-result-object v5

    :cond_5
    :goto_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "update psc data "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v5}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v7, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    invoke-virtual {v7, v3, v5, v8}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_e

    :pswitch_5
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_UPDATE_UID_DONE newPuid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-eq v3, v9, :cond_25

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v3, v10}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->intToBytes(II)[B

    move-result-object v5

    invoke-virtual {v1, v8}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_e

    :pswitch_6
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v13, v0

    check-cast v13, Landroid/os/AsyncResult;

    iget-object v0, v13, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, [B

    iget v15, v2, Landroid/os/Message;->arg1:I

    iget v6, v2, Landroid/os/Message;->arg2:I

    iget-object v0, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_EF_PUID_LOAD_DONE has exception "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v13, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_6
    new-array v8, v10, [B

    new-array v9, v10, [B

    aget-byte v18, v14, v11

    shl-int/lit8 v18, v18, 0x8

    and-int v4, v18, v4

    aget-byte v0, v14, v12

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v4, v0

    iget v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->changedCounter:I

    const/16 v10, 0x10

    const/16 v3, 0xc9

    if-eq v0, v5, :cond_8

    if-ne v4, v5, :cond_7

    goto :goto_2

    :cond_7
    add-int/lit8 v0, v4, 0x1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v8, v12

    add-int/lit8 v0, v4, 0x1

    shr-int/lit8 v0, v0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, v8, v11

    aget-byte v0, v8, v11

    aput-byte v0, v9, v11

    aget-byte v0, v8, v12

    aput-byte v0, v9, v12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateEFPuid newPuid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_3
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v15, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEfIdByTag(II)I

    move-result v17

    const/16 v20, 0x0

    add-int/lit8 v3, v4, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v10, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v21

    move-object/from16 v16, v0

    move/from16 v18, v6

    move-object/from16 v19, v8

    invoke-virtual/range {v16 .. v21}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    monitor-exit v5

    goto/16 :goto_e

    :catchall_2
    move-exception v0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw v0

    :cond_8
    :goto_2
    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v11, 0x11

    invoke-virtual {v1, v11}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v11

    const/16 v12, 0x4f22

    invoke-virtual {v0, v12, v7, v11}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    const/4 v0, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getAdnRecordSizeArray()[I

    move-result-object v5

    const/4 v7, 0x0

    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getNumRecs()I

    move-result v11

    if-ge v7, v11, :cond_e

    const/4 v11, 0x0

    :goto_4
    aget v12, v5, v7

    if-ge v11, v12, :cond_d

    move v12, v11

    const/16 v20, 0x0

    move/from16 v10, v20

    :goto_5
    if-ge v10, v7, :cond_9

    aget v21, v5, v10

    add-int v12, v12, v21

    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    :cond_9
    iget-object v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v12, v10, :cond_c

    iget-object v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_b

    iget-object v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/telephony/phonebook/UniAdnRecord;

    invoke-virtual {v10}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_a

    goto :goto_6

    :cond_a
    move/from16 v28, v4

    const/16 v4, 0x10

    const/16 v17, -0x1

    goto :goto_8

    :cond_b
    :goto_6
    add-int/lit8 v10, v0, 0x1

    const/4 v0, 0x2

    invoke-static {v10, v0}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->intToBytes(II)[B

    move-result-object v27

    iget-object v8, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    :try_start_5
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-virtual {v1, v7, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEfIdByTag(II)I

    move-result v22

    add-int/lit8 v23, v11, 0x1

    const/16 v25, 0x0

    const/16 v17, -0x1

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    move/from16 v28, v4

    const/16 v4, 0x10

    :try_start_6
    invoke-virtual {v1, v4, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v26

    move-object/from16 v21, v0

    move-object/from16 v24, v27

    invoke-virtual/range {v21 .. v26}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    monitor-exit v8

    move v0, v10

    move-object/from16 v8, v27

    goto :goto_8

    :catchall_3
    move-exception v0

    move/from16 v28, v4

    :goto_7
    monitor-exit v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    throw v0

    :catchall_4
    move-exception v0

    goto :goto_7

    :cond_c
    move/from16 v28, v4

    const/16 v4, 0x10

    const/16 v17, -0x1

    :goto_8
    add-int/lit8 v11, v11, 0x1

    move v10, v4

    move/from16 v4, v28

    const/16 v3, 0xc9

    goto/16 :goto_4

    :cond_d
    move/from16 v28, v4

    move v4, v10

    const/16 v17, -0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v28

    const/16 v3, 0xc9

    goto/16 :goto_3

    :cond_e
    move/from16 v28, v4

    const/4 v3, 0x2

    invoke-static {v0, v3}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->intToBytes(II)[B

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "update puid "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v7, 0xd

    invoke-virtual {v1, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    const/16 v9, 0x4f24

    invoke-virtual {v4, v9, v3, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_e

    :catchall_5
    move-exception v0

    move/from16 v28, v4

    :goto_9
    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    throw v0

    :catchall_6
    move-exception v0

    goto :goto_9

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading EVENT_LOAD_EF_PBC_RECORD_DONE, msg.arg1 = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, v2, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_f

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Loading USIM PBC record done"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto :goto_a

    :cond_f
    const-string v0, "Loading USIM PBC records failed"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :goto_a
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingPbcLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingPbcLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_8
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    const-string v0, "Loading USIM Pbc records done notify"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_7
    move-exception v0

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    throw v0

    :pswitch_8
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_10

    const-string v3, "update_record_success"

    invoke-direct {v1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_10
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "update EF records failed"

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v3, v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :pswitch_9
    iget-object v3, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v6, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v6, [B

    iget v7, v2, Landroid/os/Message;->arg1:I

    iget v8, v2, Landroid/os/Message;->arg2:I

    iget-object v9, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v9, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EVENT_EF_CC_LOAD_DONE has exception "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_11
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_EF_CC_LOAD_DONE data "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v6}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-nez v6, :cond_12

    const-string v0, "EVENT_EF_CC_LOAD_DONE data is null"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :cond_12
    const/4 v9, 0x2

    new-array v9, v9, [B

    aget-byte v10, v6, v11

    shl-int/lit8 v10, v10, 0x8

    and-int/2addr v4, v10

    aget-byte v10, v6, v12

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v4, v10

    iput v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->changedCounter:I

    add-int/2addr v4, v7

    if-le v4, v5, :cond_13

    aput-byte v11, v9, v11

    aput-byte v12, v9, v12

    goto :goto_b

    :cond_13
    and-int/lit16 v5, v4, 0xff

    int-to-byte v5, v5

    aput-byte v5, v9, v12

    shr-int/lit8 v5, v4, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v9, v11

    :goto_b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "EVENT_EF_CC_LOAD_DONE counter "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v9}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/16 v5, 0x4f23

    if-ne v8, v12, :cond_14

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v10, 0x12

    invoke-virtual {v1, v10}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    invoke-virtual {v0, v5, v9, v10}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_e

    :cond_14
    iget-object v10, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v10, v5, v9, v0}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_e

    :pswitch_a
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_16

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_15

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    :cond_15
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_16
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_a
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto/16 :goto_e

    :catchall_8
    move-exception v0

    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw v0

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loading USIM Gas records done, mGasFileRecord: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading USIM Gas records done, size is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_17
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_b
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto/16 :goto_e

    :catchall_9
    move-exception v0

    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    throw v0

    :pswitch_c
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_18

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    :cond_18
    iget v0, v2, Landroid/os/Message;->arg1:I

    iget v4, v2, Landroid/os/Message;->arg2:I

    add-int/2addr v4, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading USIM Grp record done, i is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :try_start_c
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_c

    :catch_0
    move-exception v0

    const-string v5, "IndexOutOfBoundsException readGrpFileAndWait"

    invoke-direct {v1, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_19
    :goto_c
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingGrpLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingGrpLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_d
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_a

    const-string v0, "Loading USIM Grp records done notify"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto/16 :goto_e

    :catchall_a
    move-exception v0

    :try_start_e
    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    throw v0

    :pswitch_d
    const-string v0, "Loading USIM SNE records done"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1b

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    :cond_1a
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSneFileRecord.size() is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSneFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_1b
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_f
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto/16 :goto_e

    :catchall_b
    move-exception v0

    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    throw v0

    :pswitch_e
    const-string v0, "Loading USIM AAS records done"

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1d

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_1c

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    :cond_1c
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mAasFileRecord.size() is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_1d
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_10
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto/16 :goto_e

    :catchall_c
    move-exception v0

    monitor-exit v4
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_c

    throw v0

    :pswitch_f
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_1f

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_1e

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    :cond_1e
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Loading USIM Email records done, size is "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_1f
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_11
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto/16 :goto_e

    :catchall_d
    move-exception v0

    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_d

    throw v0

    :pswitch_10
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget v4, v2, Landroid/os/Message;->arg1:I

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_20

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v0, :cond_20

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, [B

    invoke-virtual {v0, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Loading USIM IAP records done, index is "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    :cond_20
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingIapLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPendingIapLoads:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsNotify:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_12
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v5

    goto/16 :goto_e

    :catchall_e
    move-exception v0

    monitor-exit v5
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    throw v0

    :pswitch_11
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    const/4 v0, 0x0

    if-eqz v3, :cond_23

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_21

    iget-object v4, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    :cond_21
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EVENT_USIM_ADN_LOAD_DONE size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    if-lez v0, :cond_22

    iget-object v4, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_22

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    iget-object v5, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_22
    move v4, v0

    goto :goto_d

    :cond_23
    move v4, v0

    :goto_d
    iget-object v5, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_13
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v5

    goto :goto_e

    :catchall_f
    move-exception v0

    monitor-exit v5
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_f

    throw v0

    :pswitch_12
    iget-object v0, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v3, v0

    check-cast v3, Landroid/os/AsyncResult;

    iget-object v0, v3, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v0, :cond_24

    iget-object v0, v3, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    :cond_24
    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_14
    iget-object v0, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v4

    goto :goto_e

    :catchall_10
    move-exception v0

    monitor-exit v4
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_10

    throw v0

    :cond_25
    :goto_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_0
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

.method public isContainAdnInPbr()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isContainAdnInPbr "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    return v0
.end method

.method public isPbrFileExisting()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mIsPbrFileExisting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    return v0
.end method

.method public isSubjectRecordInIap(III)Z
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v2, v2, p3

    const/16 v3, 0xa9

    if-ne v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->recordNumInIap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    iget-object v2, v0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->type:[I

    aget v2, v2, p3

    return v1
.end method

.method public loadAasFromUsim()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "loadAasFromUsim"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readAasFileAndWait(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    const-string v0, "Error: mAasFileRecord file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAas size "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, [B

    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    array-length v5, v2

    invoke-static {v2, v1, v5}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAasFromUsim mAasList: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    return-object v1
.end method

.method public loadEfFilesFromUsimEx()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/internal/telephony/phonebook/UniAdnRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    monitor-exit v0

    return-object v2

    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_3
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_4

    goto/16 :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v4, v1, [Ljava/lang/Object;

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSizeArray:[I

    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailRecordSizeArray:[I

    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapRecordSizeArray:[I

    new-array v4, v1, [I

    iput-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrRecordSizeArray:[I

    iput v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mDoneAdnCount:I

    const/4 v4, 0x3

    new-array v4, v4, [I

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v1, :cond_a

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadEfFilesFromUsim, the current record num is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->isPbrFilesSpecial(I)Z

    move-result v6

    if-eqz v6, :cond_5

    iput-boolean v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    const-string v3, "Special pbr in this card"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_5
    const/4 v6, 0x2

    aget v7, v4, v6

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readAdnFileSizeAndWait(I)[I

    move-result-object v8

    if-eqz v8, :cond_6

    aget v9, v8, v3

    aput v9, v4, v3

    const/4 v9, 0x1

    aget v10, v4, v9

    aget v11, v8, v9

    add-int/2addr v10, v11

    aput v10, v4, v9

    aget v9, v4, v6

    aget v10, v8, v6

    add-int/2addr v9, v10

    aput v9, v4, v6

    goto :goto_1

    :cond_6
    if-nez v5, :cond_7

    const-string v3, "First pbr special in this card, adn size is null"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_7
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readAdnFileAndWait(I)V

    iget-boolean v6, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsContainAdnInPbr:Z

    if-nez v6, :cond_8

    const-string v3, "First pbr special in this card, adn record abnormal"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :cond_8
    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readIapFile(II)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readEmailFileAndWait(I)V

    invoke-static {}, Lcom/android/internal/telephony/phonebook/UniPhonebookUtils;->isSupportOrange()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readSneFileAndWait(I)V

    :cond_9
    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readAnrFileAndWait(II)V

    invoke-direct {p0, v5, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readGrpFileAndWait(II)V

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateAdnRecord(I)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->CheckRepeatType2Ef()V

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updateAdnRecordNum()V

    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->updatePbcAndCc()V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0

    :cond_b
    :goto_2
    :try_start_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrFileExisting:Z

    const-string v1, "Error: Pbr file is empty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public loadGasFromUsim()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readGasFileAndWait(I)V

    :cond_1
    const/4 v0, 0x0

    iget-object v2, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_4

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    goto :goto_1

    :cond_2
    move-object v5, v3

    :goto_1
    move-object v2, v5

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    array-length v6, v2

    invoke-static {v2, v1, v6}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadGasFromUsim mGasList: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", Gas size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    return-object v1

    :cond_5
    const-string v1, "Error: mGasFileRecord file is empty"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-object v3
.end method

.method public readAasFileAndWait(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readAasFileAndWait recNum is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->readPbrFileAndWait()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_5

    :cond_2
    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;

    invoke-static {v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;->-$$Nest$fgetmFileIds(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    nop

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-nez v1, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAasFileAndWait mAasInfoFromPBR !=null fileIds.size()  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v2

    if-nez v2, :cond_4

    const-string v1, "readAasFileAndWait, records is null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v3, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    if-eqz v3, :cond_7

    iget-object v3, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    array-length v3, v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    iget-object v5, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v7, 0x6

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v4, v5, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    const-string v4, "readAasFileAndWait wait for notify"

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_4
    const-string v5, "Interrupted Exception in readAasFileAndWait"

    invoke-direct {p0, v5}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    if-nez v3, :cond_6

    const-string v3, "Error: Aas file is empty"

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aput v6, v3, v6

    goto :goto_1

    :cond_6
    iget-object v3, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->efids:[I

    aget v4, v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasFileRecord:Ljava/util/ArrayList;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->handleReadFileResult(Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    invoke-direct {p0, v1, p1, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectUsedNum(II)V

    goto :goto_3

    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v1

    :cond_7
    :goto_2
    const-string v1, "readAasFileAndWait  records.efids == null || records.efids.length == 0"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_3
    return-void

    :cond_9
    :goto_4
    const-string v1, "readAasFileAndWait  fileIds == null"

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v1

    const-string v2, "readAasFileAndWait IndexOutOfBoundsException"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :cond_a
    :goto_5
    const-string v0, "Error: Pbr file is empty"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw v1
.end method

.method public readFileSizeAndWait(I)[I
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x13

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "Interrupted Exception in readAdnFileAndWait"

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->loge(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRecordsSize:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_1
    return-object v0

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1
.end method

.method public removeSubjectNumFromSet(IIIII)V
    .locals 6

    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, p5}, Ljava/lang/Integer;-><init>(I)V

    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getSubjectIndex(II)Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-object v2, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->record:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    iget-object v3, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aget-object v3, v3, p4

    check-cast v3, Ljava/util/Set;

    invoke-interface {v3, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "removeSubjectNumFromSet  delnum(1) = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;->usedSet:[Ljava/lang/Object;

    aput-object v3, v4, p4

    invoke-direct {p0, p1, p2, v1}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->setSubjectIndex(IILcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager$SubjectIndexOfAdn;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const-string v0, "UniUsimPhoneBookManager reset"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbrRecords:Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mRefreshCache:Z

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGrpFileRecord:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasFileRecord:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPbcFileRecord:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAdnRecordSize:[I

    iput v1, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrFileCount:I

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAnrInfoFromPBR:Ljava/util/LinkedList;

    iput-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailInfoFromPBR:Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mEmailsForAdnRec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mSfiEfidTable:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    return-void
.end method

.method public setIapFileRecord(IIBI)V
    .locals 5

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    array-length v2, v1

    new-array v2, v2, [B

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    aget-byte v4, v1, v3

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aput-byte p3, v2, p4

    invoke-virtual {v0, p2, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mIapFileRecordArray:[Ljava/lang/Object;

    aput-object v0, v3, p1

    return-void
.end method

.method public setPhoneBookRecords(ILcom/android/internal/telephony/phonebook/UniAdnRecord;)V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public updateAasList(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mAasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAasList aasStr== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateGasList(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mGasList:Ljava/util/ArrayList;

    add-int/lit8 v1, p2, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public updateUidForAdn(IIILcom/android/internal/telephony/phonebook/UniAdnRecord;)V
    .locals 4

    invoke-virtual {p4}, Lcom/android/internal/telephony/phonebook/UniAdnRecord;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0xc9

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->getEfIdByTag(II)I

    move-result v0

    if-gtz v0, :cond_0

    const-string v0, "get EfUID failed,EFUID is not exist"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->logd(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xc

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/internal/telephony/phonebook/UniUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x4f23

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(IILandroid/os/Message;)V

    :cond_1
    return-void
.end method
