.class public Lcom/goodix/fingerprint/GFConfig;
.super Ljava/lang/Object;
.source "GFConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/goodix/fingerprint/GFConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mAuthenticateOrder:I

.field public mBadPointLocalGradient:I

.field public mBadPointLocalWorstGradient:I

.field public mBadPointTestMaxFrameNumber:I

.field public mBadPointTotalGradient:I

.field public mBrokenPixelThresholdForDisableSensor:I

.field public mBrokenPixelThresholdForDisableStudy:I

.field public mChipSeries:I

.field public mChipType:I

.field public mDuplicateFingerOverlayScore:I

.field public mEnrollingMinTemplates:I

.field public mForbiddenEnrollDuplicateFingers:I

.field public mForbiddenUntrustedEnroll:I

.field public mImageQualityThresholdForMistakeTouch:I

.field public mIncreaseRateBetweenStitchInfo:I

.field public mMaxFingers:I

.field public mMaxFingersPerUser:I

.field public mNavDoubleClickTime:I

.field public mNavLongPressTime:I

.field public mProductId:I

.field public mReissueKeyDownWhenEntryFfMode:I

.field public mReissueKeyDownWhenEntryImageMode:I

.field public mReportKeyEventOnlyEnrollAuthenticate:I

.field public mRequireDownAndUpInPairsForFFMode:I

.field public mRequireDownAndUpInPairsForImageMode:I

.field public mRequireDownAndUpInPairsForKeyMode:I

.field public mRequireDownAndUpInPairsForNavMode:I

.field public mRescanImageAreaThreshold:I

.field public mRescanImageQualityThreshold:I

.field public mRescanRetryCount:I

.field public mScreenOffAuthenticateFailRetryCount:I

.field public mScreenOffValidTouchFrameThreshold:I

.field public mScreenOnAuthenticateFailRetryCount:I

.field public mScreenOnValidTouchFrameThreshold:I

.field public mSupportBioAssay:I

.field public mSupportFFMode:I

.field public mSupportFrrAnalysis:I

.field public mSupportImageRescan:I

.field public mSupportKeyMode:I

.field public mSupportNavMode:I

.field public mSupportPerformanceDump:I

.field public mSupportPowerKeyFeature:I

.field public mSupportSensorBrokenCheck:I

.field public mSupportSetSpiSpeedInTEE:I

.field public mSupportSwipeEnroll:I

.field public mTemplateUpateSaveThreshold:I

.field public mValidImageAreaThreshold:I

.field public mValidImageQualityThreshold:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/goodix/fingerprint/GFConfig$1;

    invoke-direct {v0}, Lcom/goodix/fingerprint/GFConfig$1;-><init>()V

    sput-object v0, Lcom/goodix/fingerprint/GFConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x31

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    const/16 v2, 0xf

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    const/16 v3, 0x41

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    const/16 v3, 0x46

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    const/16 v3, 0x3c

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    const/16 v2, 0x258

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x31

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    const/16 v2, 0xf

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    const/16 v3, 0x41

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    const/16 v3, 0x46

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    const/16 v3, 0x3c

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    const/16 v2, 0x258

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/goodix/fingerprint/GFConfig$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/fingerprint/GFConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/goodix/fingerprint/GFConfig;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x31

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    const/4 v0, 0x6

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    const/16 v1, 0x20

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    const/4 v1, 0x1

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    const/16 v2, 0x8

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    const/16 v2, 0xf

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    const/16 v3, 0x41

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    const/16 v3, 0x46

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    const/16 v2, 0xa

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    const/16 v3, 0x3c

    iput v3, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    const/16 v2, 0x258

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    const/16 v2, 0x12c

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    const/16 v1, 0x14

    iput v1, p0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    const/16 v0, 0x10

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    const/16 v0, 0x1a

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    iget v0, p1, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    iput v0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    iget p1, p1, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    iput p1, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mProductId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mMaxFingersPerUser:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportKeyMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFFMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPowerKeyFeature:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenUntrustedEnroll:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mForbiddenEnrollDuplicateFingers:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportPerformanceDump:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportNavMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mNavDoubleClickTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mNavLongPressTime:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mEnrollingMinTemplates:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageQualityThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mValidImageAreaThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mDuplicateFingerOverlayScore:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mIncreaseRateBetweenStitchInfo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportImageRescan:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageQualityThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanImageAreaThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRescanRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnAuthenticateFailRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffAuthenticateFailRetryCount:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOnValidTouchFrameThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mScreenOffValidTouchFrameThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mImageQualityThresholdForMistakeTouch:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mAuthenticateOrder:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryFfMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mReissueKeyDownWhenEntryImageMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSensorBrokenCheck:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableSensor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mBrokenPixelThresholdForDisableStudy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTestMaxFrameNumber:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mReportKeyEventOnlyEnrollAuthenticate:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForImageMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForFFMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForKeyMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mRequireDownAndUpInPairsForNavMode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSetSpiSpeedInTEE:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportFrrAnalysis:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mTemplateUpateSaveThreshold:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mSupportSwipeEnroll:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointTotalGradient:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p2, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalGradient:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget p0, p0, Lcom/goodix/fingerprint/GFConfig;->mBadPointLocalWorstGradient:I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
