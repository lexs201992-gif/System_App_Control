.class public Lcom/goodix/gftest/AutoTestActivity;
.super Landroid/app/Activity;
.source "AutoTestActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/gftest/AutoTestActivity$MyAdapter;
    }
.end annotation


# static fields
.field private static TEST_ITEM:[I


# instance fields
.field private final TEST_ITEM_DUBAI_A_SERIES_AUTO:[I

.field private intTestR:I

.field private mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

.field private mAuthCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

.field private mAuthenticationCancel:Landroid/os/CancellationSignal;

.field private mAutoTest:Z

.field private mAutoTestPosition:I

.field private mAutoTestPrevTestEndTime:J

.field private mAutoTestRunnable:Ljava/lang/Runnable;

.field private mAutoTestStartTime:J

.field private mAutoTestTimeout:J

.field private mAutoTestingTitleView:Landroid/widget/TextView;

.field private mAutoTestingView:Landroid/widget/TextView;

.field private mCheckFingerDownRunnable:Ljava/lang/Runnable;

.field private mCheckFingerupRunnable:Ljava/lang/Runnable;

.field private mConfig:Lcom/goodix/fingerprint/GFConfig;

.field private mCountDownDialog:Landroid/app/AlertDialog;

.field private mDetailBtn:Landroid/widget/Button;

.field private mDialog:Landroid/app/ProgressDialog;

.field private mEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

.field private mEnrollmentCancel:Landroid/os/CancellationSignal;

.field private mEnrollmentRemaining:I

.field private mEnrollmentSteps:I

.field private mFailedAttempts:I

.field private mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsPrevStablePassed:Z

.field private mIsSensorValidityTested:Z

.field private mListView:Landroid/widget/ListView;

.field private mMillisStart:J

.field private mPendingBioDetail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mSensorValidityTestFlag:I

.field private mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

.field private mTestR:I

.field private mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

.field private mTestStatus:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeoutRunnable:Ljava/lang/Runnable;

.field private mToast:Landroid/widget/Toast;

.field private pixelShortTestR:I

.field private pixelTestR:I

.field private resetTestR:I

.field private spiTestR:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mListView:Landroid/widget/ListView;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDetailBtn:Landroid/widget/Button;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCountDownDialog:Landroid/app/AlertDialog;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-direct {v1, p0, v0}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;-><init>(Lcom/goodix/gftest/AutoTestActivity;Lcom/goodix/gftest/AutoTestActivity$1;)V

    iput-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mIsSensorValidityTested:Z

    iput v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mSensorValidityTestFlag:I

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingView:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingTitleView:Landroid/widget/TextView;

    const-wide/16 v3, 0x7530

    iput-wide v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestTimeout:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mMillisStart:J

    iput-wide v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestStartTime:J

    iput-wide v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPrevTestEndTime:J

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    const/16 v3, 0x8

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentSteps:I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentRemaining:I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mFailedAttempts:I

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    iput-boolean v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mIsPrevStablePassed:Z

    const/4 v0, 0x4

    const/16 v3, 0x18

    const/4 v4, 0x2

    const/4 v5, 0x3

    filled-new-array {v1, v4, v5, v0, v3}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM_DUBAI_A_SERIES_AUTO:[I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->spiTestR:I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->resetTestR:I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->intTestR:I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelTestR:I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelShortTestR:I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$6;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$6;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerupRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$7;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$7;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerDownRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$8;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$8;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$9;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$9;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$10;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$10;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$11;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$11;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    new-instance v0, Lcom/goodix/gftest/AutoTestActivity$12;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/AutoTestActivity$12;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    return-void
.end method

.method static synthetic access$100(Lcom/goodix/gftest/AutoTestActivity;)I
    .locals 0

    iget p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mSensorValidityTestFlag:I

    return p0
.end method

.method static synthetic access$1000(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/GFConfig;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/goodix/gftest/AutoTestActivity;Lcom/goodix/fingerprint/GFConfig;)Lcom/goodix/fingerprint/GFConfig;
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    return-object p1
.end method

.method static synthetic access$102(Lcom/goodix/gftest/AutoTestActivity;I)I
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mSensorValidityTestFlag:I

    return p1
.end method

.method static synthetic access$1100(Lcom/goodix/gftest/AutoTestActivity;)I
    .locals 0

    iget p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentRemaining:I

    return p0
.end method

.method static synthetic access$1102(Lcom/goodix/gftest/AutoTestActivity;I)I
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentRemaining:I

    return p1
.end method

.method static synthetic access$1200(Lcom/goodix/gftest/AutoTestActivity;)I
    .locals 0

    iget p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentSteps:I

    return p0
.end method

.method static synthetic access$1202(Lcom/goodix/gftest/AutoTestActivity;I)I
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentSteps:I

    return p1
.end method

.method static synthetic access$1300(Lcom/goodix/gftest/AutoTestActivity;)I
    .locals 0

    iget p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mFailedAttempts:I

    return p0
.end method

.method static synthetic access$1308(Lcom/goodix/gftest/AutoTestActivity;)I
    .locals 2

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mFailedAttempts:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mFailedAttempts:I

    return v0
.end method

.method static synthetic access$1400(Lcom/goodix/gftest/AutoTestActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->getSystemPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/goodix/gftest/AutoTestActivity;)J
    .locals 2

    iget-wide v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mMillisStart:J

    return-wide v0
.end method

.method static synthetic access$1502(Lcom/goodix/gftest/AutoTestActivity;J)J
    .locals 0

    iput-wide p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mMillisStart:J

    return-wide p1
.end method

.method static synthetic access$1514(Lcom/goodix/gftest/AutoTestActivity;J)J
    .locals 2

    iget-wide v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mMillisStart:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mMillisStart:J

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/goodix/gftest/AutoTestActivity;)Landroid/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCountDownDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/goodix/gftest/AutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->stopCountDownForSwitchFinger()V

    return-void
.end method

.method static synthetic access$1800(Lcom/goodix/gftest/AutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->startTestBioCalibration()V

    return-void
.end method

.method static synthetic access$1900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerupRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/goodix/gftest/AutoTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    return p0
.end method

.method static synthetic access$2000(Lcom/goodix/gftest/AutoTestActivity;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$202(Lcom/goodix/gftest/AutoTestActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/goodix/gftest/AutoTestActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerDownRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/goodix/gftest/AutoTestActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->stopTest(I)V

    return-void
.end method

.method static synthetic access$2300(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/goodix/gftest/AutoTestActivity;Lcom/goodix/gftest/utils/checker/Checker;)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestSpi(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestFWVersion(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestSensor(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestSensorShortStreak(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestResetPin(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestSensorFine(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/goodix/gftest/AutoTestActivity;)Landroid/widget/Toast;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestInterruptPin(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$302(Lcom/goodix/gftest/AutoTestActivity;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestBadPoint(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$3200(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestAlgo(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$3300(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestCapture(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestPerformance(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/goodix/gftest/AutoTestActivity;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/goodix/gftest/AutoTestActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/goodix/gftest/AutoTestActivity;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mIsSensorValidityTested:Z

    return p0
.end method

.method static synthetic access$3602(Lcom/goodix/gftest/AutoTestActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mIsSensorValidityTested:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/goodix/gftest/AutoTestActivity;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingTitleView:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/gftest/AutoTestActivity$MyAdapter;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    return-object p0
.end method

.method static synthetic access$3900(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestBioCalibrationWithFingerUntouch(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$400(Lcom/goodix/gftest/AutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->startAutoTest()V

    return-void
.end method

.method static synthetic access$4000(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestBioCalibrationWithFingerTouch(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestHbdCalibrationStep1(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4200(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestHbdCalibrationStep2(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestRawdataSaturated(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4400(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestFpcKeyEnStatus(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestFpcKeyEvent(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestStableFactor(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestTwillBadpoint(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/goodix/gftest/AutoTestActivity;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->onTestSnr(Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$4900(Lcom/goodix/gftest/AutoTestActivity;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    return-object p0
.end method

.method static synthetic access$500()[I
    .locals 1

    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    return-object v0
.end method

.method static synthetic access$5000(Lcom/goodix/gftest/AutoTestActivity;)[I
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM_DUBAI_A_SERIES_AUTO:[I

    return-object p0
.end method

.method static synthetic access$502([I)[I
    .locals 0

    sput-object p0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    return-object p0
.end method

.method static synthetic access$5100(Lcom/goodix/gftest/AutoTestActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5202(Lcom/goodix/gftest/AutoTestActivity;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/goodix/gftest/AutoTestActivity;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void
.end method

.method static synthetic access$5400(Lcom/goodix/gftest/AutoTestActivity;ILjava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/goodix/gftest/AutoTestActivity;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/goodix/gftest/AutoTestActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    return-void
.end method

.method static synthetic access$5700(Lcom/goodix/gftest/AutoTestActivity;)Landroid/os/CancellationSignal;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/goodix/gftest/AutoTestActivity;Landroid/os/CancellationSignal;)Landroid/os/CancellationSignal;
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    return-object p1
.end method

.method static synthetic access$602(Lcom/goodix/gftest/AutoTestActivity;I)I
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    return p1
.end method

.method static synthetic access$700(Lcom/goodix/gftest/AutoTestActivity;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/goodix/gftest/AutoTestActivity;->startTest(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Lcom/goodix/gftest/AutoTestActivity;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    return-object p0
.end method

.method private autoNextTest()V
    .locals 8

    iget-boolean v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    const/4 v1, 0x0

    const/16 v2, 0x19

    const/4 v3, 0x1

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    const/4 v4, 0x0

    if-lez v0, :cond_0

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    sget-object v6, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    sub-int/2addr v0, v3

    aget v0, v6, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    iget v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    iget-object v6, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v6}, Lcom/goodix/gftest/AutoTestActivity$MyAdapter;->getCount()I

    move-result v6

    const-string v7, "AutoTestActivityLog"

    if-ge v5, v6, :cond_3

    if-nez v0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPrevTestEndTime:J

    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    iget v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    aget v0, v0, v1

    const/16 v1, 0x11

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->hasEnrolledUntrustedFingerprint()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    iget v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lcom/goodix/gftest/AutoTestActivity;->startTest(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mListView:Landroid/widget/ListView;

    iget v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoNextTest mAutoTestPosition = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v0, v2, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->checkResult()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iput-boolean v4, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "autoNextTest mAutoTest = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingView:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDetailBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p0, v2, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    :goto_2
    return-void
.end method

.method private checkResult()V
    .locals 6

    iget-boolean v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    const-string v0, "pass"

    invoke-static {v0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v0, "fail"

    invoke-static {v0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "total time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestStartTime:J

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    return-void
.end method

.method private disableBioAssay()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/goodix/gftest/AutoTestActivity;->toggleBioAssay(Z)V

    :cond_1
    return-void
.end method

.method private downLoadCfgForFPCKey()V
    .locals 5

    const-string v0, "GF5236_FpcEn.cfg"

    invoke-virtual {p0, v0}, Lcom/goodix/gftest/AutoTestActivity;->readFwCfgFile(Ljava/lang/String;)[B

    move-result-object v0

    const-string v1, "AutoTestActivityLog"

    if-nez v0, :cond_0

    const-string p0, "fail to read FW cfg file"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    array-length v2, v0

    const/16 v3, 0x100

    if-eq v2, v3, :cond_1

    array-length v2, v0

    const/16 v3, 0x1a2

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid cfg file, length err, len "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/goodix/gftest/AutoTestActivity;->showInvalidFileDialog(I)V

    return-void

    :cond_1
    array-length v1, v0

    invoke-static {v1}, Lcom/goodix/fingerprint/utils/TestParamEncoder;->testEncodeSizeOfArray(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    new-array v1, v1, [B

    const/16 v2, 0x2d6

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v3}, Lcom/goodix/fingerprint/utils/TestParamEncoder;->encodeInt32([BIII)I

    move-result v2

    const/16 v3, 0x1389

    array-length v4, v0

    invoke-static {v1, v2, v3, v0, v4}, Lcom/goodix/fingerprint/utils/TestParamEncoder;->encodeArray([BII[BI)I

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v0, 0x38

    invoke-virtual {p0, v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    return-void
.end method

.method private enableBioAssay()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipType:I

    const/16 v1, 0x17

    if-eq v0, v1, :cond_0

    const/16 v1, 0x19

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/goodix/gftest/AutoTestActivity;->toggleBioAssay(Z)V

    :cond_1
    return-void
.end method

.method private getSystemPropertyAsString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 p0, 0x0

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "get"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p0, p1

    :catch_0
    return-object p0
.end method

.method private getTestR()I
    .locals 7

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    const-string v1, "AutoTestActivityLog"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const-string p0, "test time out"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string p0, "test cancel"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x4

    return p0

    :cond_1
    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->spiTestR:I

    if-eq v0, v3, :cond_6

    iget v4, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelTestR:I

    if-eq v4, v3, :cond_6

    iget v5, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelShortTestR:I

    if-eq v5, v3, :cond_6

    iget v6, p0, Lcom/goodix/gftest/AutoTestActivity;->resetTestR:I

    if-eq v6, v3, :cond_6

    iget p0, p0, Lcom/goodix/gftest/AutoTestActivity;->intTestR:I

    if-ne p0, v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    if-eqz v0, :cond_5

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    if-eqz v6, :cond_5

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    if-ne v4, v2, :cond_4

    if-ne v5, v2, :cond_4

    if-ne v6, v2, :cond_4

    if-ne p0, v2, :cond_4

    const-string p0, "all test success"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_4
    return v3

    :cond_5
    :goto_0
    const-string p0, "test not finish"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_6
    :goto_1
    const-string p0, "all test fail"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private onTestAlgo(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_ALGO end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->resetBioAssay()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_ALGO failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkAlgoTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_ALGO succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_ALGO failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    iget-boolean p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    if-eqz p1, :cond_3

    const-string p1, "fingerup"

    invoke-static {p1}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    :cond_3
    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onTestBadPoint(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_BAD_POINT end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_BAD_POINT failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBadPointTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_BAD_POINT succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_BAD_POINT failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestBioCalibrationWithFingerTouch(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->resetBioAssay()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    const/4 v0, 0x3

    const-string v1, "AutoTestActivityLog"

    const/16 v2, 0xc

    if-nez p1, :cond_0

    const-string p1, "TEST_BIO_CALIBRATION failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBioTestResultWithTouched(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "TEST_BIO_CALIBRATION step 2 failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestBioCalibrationWithFingerUntouch(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "AutoTestActivityLog"

    const/16 v2, 0xc

    if-nez p1, :cond_0

    const-string p1, "TEST_BIO_CALIBRATION failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBioTestResultWithoutTouched(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TEST_BIO_CALIBRATION step 1 failed1"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, p1, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->startCheckFingerDownStatus()V

    :goto_0
    iget-boolean p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    if-eqz p0, :cond_2

    const-string p0, "finger down 2"

    invoke-static {p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method private onTestCapture(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_CAPTURE end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->resetBioAssay()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_CAPTURE failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkCaptureTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_CAPTURE succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_CAPTURE failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onTestFWVersion(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_FW_VERSION end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_FW_VERSION failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkFwVersionTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_FW_VERSION succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_FW_VERSION failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestFpcKeyEnStatus(Ljava/util/HashMap;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sget-object v2, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    array-length v2, v2

    const-string v3, "AutoTestActivityLog"

    if-gt v0, v2, :cond_9

    if-gez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    const/16 v2, 0x2d2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "test fpcKey fail status: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const/16 v4, 0x2d3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    and-int/lit16 v4, v4, 0xff

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "test fpcCanTest: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move v4, v5

    :goto_1
    const/16 v6, 0x2d1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Byte;

    invoke-virtual {v6}, Ljava/lang/Byte;->byteValue()B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test fpc key en: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "cmd index="

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v6, 0x2d4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, " "

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v9, v6, v1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    int-to-short v7, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "test fpcKeyRawData: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v5

    :goto_2
    array-length v9, v6

    if-ge v7, v9, :cond_4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v10, v6, v7

    and-int/lit16 v10, v10, 0xff

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_4
    const/16 v6, 0x2d5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [B

    aget-byte v7, v6, v5

    and-int/lit16 v7, v7, 0xff

    aget-byte v9, v6, v1

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v7, v9

    int-to-short v7, v7

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "test canceldata: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    array-length v7, v6

    if-ge v5, v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-byte v9, v6, v5

    and-int/lit16 v9, v9, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_5
    if-eqz v4, :cond_6

    if-ne v2, v1, :cond_8

    :cond_6
    sget-object v1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget v1, v1, v0

    if-nez v4, :cond_7

    const/16 v2, 0xf

    goto :goto_4

    :cond_7
    const/4 v2, 0x3

    :goto_4
    invoke-direct {p0, v1, v2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x39

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v1, v2, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    :cond_8
    sget-object v1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget v0, v1, v0

    invoke-direct {p0, v0, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_9
    :goto_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[onTestFpcKeyEnStatus] currentCmd out = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTestFpcKeyEvent(Ljava/util/HashMap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iget v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    sget-object v2, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    array-length v2, v2

    const-string v3, "AutoTestActivityLog"

    if-gt v0, v2, :cond_6

    if-gez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    const/16 v2, 0x2cf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    :cond_1
    move v2, v5

    :goto_0
    const/16 v4, 0x2d0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onTestFpcKey event: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " currentcmd: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " test item: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget v4, v4, v0

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    const/16 v3, 0x19

    const/16 v4, 0x39

    const/4 v6, 0x2

    const/4 v7, 0x0

    if-ne v2, p1, :cond_3

    sget-object p1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget p1, p1, v0

    const/16 v8, 0x12

    if-ne p1, v8, :cond_3

    if-ne v5, v1, :cond_5

    invoke-direct {p0, p1, v6}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p1, v4, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p1, v3, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    goto :goto_1

    :cond_3
    const/4 p1, 0x4

    if-ne v2, p1, :cond_4

    sget-object p1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget p1, p1, v0

    const/16 v8, 0x13

    if-ne p1, v8, :cond_4

    if-ne v5, v1, :cond_5

    invoke-direct {p0, p1, v6}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p1, v4, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p1, v3, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    goto :goto_1

    :cond_4
    if-ne v2, v1, :cond_5

    sget-object p1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget p1, p1, v0

    const/16 v0, 0x14

    if-ne p1, v0, :cond_5

    if-ne v5, v1, :cond_5

    invoke-direct {p0, p1, v6}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p1, v4, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {p1, v3, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void

    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[onTestFpcKeyEvent] currentCmd out = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onTestHbdCalibrationStep1(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    const-string v1, "AutoTestActivityLog"

    const/16 v2, 0xd

    if-nez p1, :cond_0

    const-string p1, "TEST_HBD_CALIBRATION failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_0
    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBioTestResultWithTouched(Ljava/util/HashMap;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "TEST_HBD_CALIBRATION step 1 failed1"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    const/4 v0, 0x0

    invoke-direct {p0, v2, p1, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;Ljava/util/HashMap;)V

    goto :goto_0

    :cond_1
    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->startTestHbdCalibrationStep2()V

    :goto_0
    return-void
.end method

.method private onTestHbdCalibrationStep2(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->resetBioAssay()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    const/4 v0, 0x3

    const-string v1, "AutoTestActivityLog"

    const/16 v2, 0xd

    if-nez p1, :cond_0

    const-string p1, "TEST_HBD_CALIBRATION failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    return-void

    :cond_0
    const-string v3, "onTestHbdCalibrationStep2 -------------------------------"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    invoke-direct {p0, v2, v3, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;Ljava/util/HashMap;)V

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mPendingBioDetail:Ljava/util/HashMap;

    iget-boolean v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    if-eqz v3, :cond_1

    const-string v3, "fingerup"

    invoke-static {v3}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    :cond_1
    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkHBDTestResultWithTouched(Ljava/util/HashMap;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "TEST_HBD_CALIBRATION step 2 failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestInterruptPin(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_INTERRUPT_PIN end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x2

    if-nez p1, :cond_1

    const-string p1, "TEST_INTERRUPT_PIN failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->intTestR:I

    invoke-direct {p0, v2, v2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v4, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v4, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkInterruptPinTestReuslt(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_INTERRUPT_PIN succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->intTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_INTERRUPT_PIN failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->intTestR:I

    invoke-direct {p0, v2, v2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestPerformance(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_PERFORMANCE end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->resetBioAssay()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_PERFORMANCE failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPerformanceTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_PERFORMANCE succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_PERFORMANCE failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onTestRawdataSaturated(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_RAWDATA_SATURATED end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x6

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_RAWDATA_SATURATED failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkRawdataSaturatedTestResult(Ljava/util/HashMap;)Z

    move-result v3

    if-eqz v3, :cond_7

    const/16 v3, 0x514

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_0

    :cond_2
    move v3, v5

    :goto_0
    const/16 v4, 0x515

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    goto :goto_1

    :cond_3
    move v4, v5

    :goto_1
    const/16 v6, 0x516

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {p1, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    :cond_4
    if-gt v3, v5, :cond_6

    if-le v4, v5, :cond_5

    goto :goto_2

    :cond_5
    const-string p1, "TEST_RAWDATA_CHECK succeed!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_3

    :cond_6
    :goto_2
    const-string p1, "TEST_RAWDATA_CHECK failed2!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_3

    :cond_7
    const-string p1, "TEST_RAWDATA_CHECK failed3!"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_3
    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private onTestResetPin(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_RESET_PIN end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_RESET_PIN failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->resetTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v4, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v4, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkResetPinTestReuslt(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_RESET_PIN succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->resetTestR:I

    invoke-direct {p0, v2, v2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_RESET_PIN failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->resetTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestSensor(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_PIXEL end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v4, 0x2

    if-nez p1, :cond_1

    const-string p1, "TEST_PIXEL failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v5, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPixelTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_PIXEL succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelTestR:I

    invoke-direct {p0, v2, v4}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_PIXEL failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestSensorFine(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTestSensorFine"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "result is null"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkSensorFineTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "test sensor fine succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "test sensor fine failed"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestSensorShortStreak(Ljava/util/HashMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_PIXEL_SHORT_STREAK end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v4, 0x2

    if-nez p1, :cond_1

    const-string p1, "TEST_PIXEL_SHORT_STREAK failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelShortTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v5, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPixelShortStreakTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_PIXEL_SHORT_STREAK succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelShortTestR:I

    invoke-direct {p0, v2, v4}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_PIXEL_SHORT_STREAK failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v4, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelShortTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestSnr(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_SNR end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    const/4 v0, 0x3

    const/16 v2, 0x17

    if-nez p1, :cond_0

    const-string p1, "TEST_SNR failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkSnrTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TEST_SNR succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_1
    const-string p1, "TEST_SNR failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestSpi(Ljava/util/HashMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_SPI end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v3, 0x2

    if-nez p1, :cond_1

    const-string p1, "TEST_SPI failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->spiTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v4, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v4, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkSpiTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_SPI succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Lcom/goodix/gftest/AutoTestActivity;->spiTestR:I

    invoke-direct {p0, v2, v3}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_SPI failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->spiTestR:I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestStableFactor(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "TEST_STABLE_FACTOR end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v2, 0x15

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v3, 0xe

    if-eq v0, v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    const-string p1, "TEST_STABLE_FACTOR failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_1
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkStableFactorTestResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "TEST_STABLE_FACTOR succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mIsPrevStablePassed:Z

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_2
    const-string p1, "TEST_STABLE_FACTOR failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private onTestTwillBadpoint(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onTestTwillBadpoint end"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    const/4 v0, 0x3

    const/16 v2, 0x16

    if-nez p1, :cond_0

    const-string p1, "TEST_TWILL_BADPOINT failed1"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    return-void

    :cond_0
    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v3, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkTwillBadpointResult(Ljava/util/HashMap;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "TEST_TWILL_BADPOINT succeed"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x2

    invoke-direct {p0, v2, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    goto :goto_0

    :cond_1
    const-string p1, "TEST_TWILL_BADPOINT failed2"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v2, v0}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    :goto_0
    return-void
.end method

.method private resetBioAssay()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "support bio assay : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    iget v1, v1, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mSupportBioAssay:I

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->disableBioAssay()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->enableBioAssay()V

    :goto_0
    return-void
.end method

.method private saveTestDetail(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1, p2}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addDetail(ILjava/util/HashMap;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPrevTestEndTime:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addDetail(Ljava/lang/String;)V

    return-void
.end method

.method private saveTestDetail(ILjava/util/HashMap;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/16 v0, 0xc

    if-eq p1, v0, :cond_0

    const/16 v0, 0xd

    if-ne p1, v0, :cond_1

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addDetail(ILjava/util/HashMap;Ljava/util/HashMap;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    iget-wide v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPrevTestEndTime:J

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addDetail(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private saveTestResult(II)V
    .locals 3

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x4

    if-ne p2, v0, :cond_0

    const-string p2, "result=TIMEOUT"

    invoke-static {p1, p2}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    const/4 p1, 0x1

    iput p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x2

    if-ne p2, v0, :cond_1

    const-string p2, "result=CANCELED"

    invoke-static {p1, p2}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    iput v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_2

    const-string p2, "result=FAILED"

    invoke-static {p1, p2}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    goto :goto_0

    :cond_2
    if-ne p2, v1, :cond_3

    const-string p2, "result=SUCCEED"

    invoke-static {p1, p2}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 v0, 0xf

    if-ne p2, v0, :cond_4

    const-string p2, "result=NO SUPPORT"

    invoke-static {p1, p2}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->setActivityResult()V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    return-void
.end method

.method private saveTestResultOnly(II)V
    .locals 2

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x4

    if-ne p2, p0, :cond_0

    const-string p0, "result=TIMEOUT"

    invoke-static {p1, p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    if-ne p2, p0, :cond_1

    const-string p0, "result=CANCELED"

    invoke-static {p1, p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    if-ne p2, p0, :cond_2

    const-string p0, "result=FAILED"

    invoke-static {p1, p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 p0, 0x2

    if-ne p2, p0, :cond_3

    const-string p0, "result=SUCCEED"

    invoke-static {p1, p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    const/16 p0, 0xf

    if-ne p2, p0, :cond_4

    const-string p0, "result=NO SUPPORT"

    invoke-static {p1, p0}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(ILjava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private setActivityResult()V
    .locals 3

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->getTestR()I

    move-result v0

    const-string v1, "AutoTestActivityLog"

    if-nez v0, :cond_0

    const-string p0, "test not finish2"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "test exit,result = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->getTestR()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v1, 0x19

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->unregisterTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "AutoTest"

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->getTestR()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p0, 0x0

    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private showInvalidFileDialog(I)V
    .locals 2

    const v0, 0x7f0d00a1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f0d00a0

    :cond_1
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d013d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f0d00f7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$13;

    invoke-direct {v1, p0}, Lcom/goodix/gftest/AutoTestActivity$13;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private startAutoTest()V
    .locals 8

    const-string v0, "startAutoTest"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAutoTest mAutoTest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/goodix/gftest/utils/TestHistoryUtils;->clearHistory()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    const-string v2, "testtool.txt"

    const-string v3, "testdetail.txt"

    invoke-static {v1, v2, v3}, Lcom/goodix/gftest/utils/TestHistoryUtils;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget v5, v1, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestStartTime:J

    iput-wide v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPrevTestEndTime:J

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    sget-object v1, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    aget v1, v1, v3

    invoke-direct {p0, v1}, Lcom/goodix/gftest/AutoTestActivity;->startTest(I)Z

    iget v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPosition:I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->spiTestR:I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->resetTestR:I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->intTestR:I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelTestR:I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->pixelShortTestR:I

    iput v3, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    return-void
.end method

.method private startCheckFingerDownStatus()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v1, 0x25

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startCountDownForSwitchFinger()V
    .locals 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d013d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x1388

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const v3, 0x7f0d0157

    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0d0155

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCountDownDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCountDownDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private startTest(I)Z
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [B

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startTest cmd: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutoTestActivityLog"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    array-length v7, v5

    const/4 v9, 0x0

    :goto_0
    const/16 v10, 0xb

    const/16 v12, 0xa

    const/16 v13, 0x9

    const/4 v14, 0x7

    const/4 v15, 0x6

    if-ge v9, v7, :cond_3

    aget v16, v5, v9

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget-object v11, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v2, :cond_1

    iget-object v11, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v15, :cond_1

    iget-object v11, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v14, :cond_1

    iget-object v11, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v13, :cond_1

    iget-object v11, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v12, :cond_1

    iget-object v11, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v11, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eq v11, v10, :cond_1

    iget-object v10, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v10, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/16 v11, 0xe

    if-ne v10, v11, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_2
    const v1, 0x7f0d0020

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startTest "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " busy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_3
    iget-wide v7, v0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestPrevTestEndTime:J

    const-wide/16 v17, 0x0

    cmp-long v5, v7, v17

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestStartTime:J

    :cond_4
    const v5, 0x7f0d0118

    const/4 v7, 0x4

    const/4 v8, 0x2

    const/16 v9, 0x8

    const/16 v11, 0x37

    const/4 v14, 0x5

    const/16 v18, 0xc

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    const-string v4, "TEST_PIXEL_SHORT_STREAK start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x43

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_2
    const-string v4, "TEST_SNR start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mIsPrevStablePassed:Z

    if-ne v4, v2, :cond_5

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x2e

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :cond_5
    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_6
    const/4 v1, 0x0

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v1

    :pswitch_3
    const-string v4, "TEST_TWILL_BADPOINT start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mIsPrevStablePassed:Z

    if-ne v4, v2, :cond_7

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x42

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :cond_7
    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Landroid/widget/Toast;->cancel()V

    :cond_8
    const/4 v3, 0x0

    invoke-static {v0, v5, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    return v3

    :pswitch_4
    const/4 v3, 0x0

    const-string v4, "TEST_STABLE_FACTOR start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mIsPrevStablePassed:Z

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v5, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v4, 0x41

    invoke-virtual {v1, v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v3, 0x0

    aput-byte v7, v4, v3

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->downLoadCfgForFPCKey()V

    iget-object v5, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v5, v11, v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_6
    const/4 v3, 0x0

    aput-byte v8, v4, v3

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->downLoadCfgForFPCKey()V

    iget-object v5, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v5, v11, v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_7
    const/4 v3, 0x0

    aput-byte v2, v4, v3

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->downLoadCfgForFPCKey()V

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v3, v11, v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    :pswitch_8
    const-string v3, "TEST_UNTRUSTED_AUTHENTICATE start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->hasEnrolledUntrustedFingerprint()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mAuthCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;

    invoke-virtual {v3, v1, v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->untrustedAuthenticate(Landroid/os/CancellationSignal;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedAuthenticationCallback;)V

    const/4 v1, 0x0

    iput v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mFailedAttempts:I

    goto/16 :goto_2

    :cond_9
    const/4 v1, 0x0

    iget-boolean v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    if-nez v3, :cond_d

    iget-object v2, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    if-eqz v2, :cond_a

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    :cond_a
    const v2, 0x7f0d00f6

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, v0, Lcom/goodix/gftest/AutoTestActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    return v1

    :pswitch_9
    const-string v3, "TEST_UNTRUSTED_ENROLL start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/os/CancellationSignal;

    invoke-direct {v1}, Landroid/os/CancellationSignal;-><init>()V

    iput-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;

    invoke-virtual {v3, v1, v4}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->untrustedEnroll(Landroid/os/CancellationSignal;Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedEnrollmentCallback;)V

    iget v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentSteps:I

    iput v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentRemaining:I

    goto/16 :goto_2

    :pswitch_a
    const-string v3, "TEST_RAWDATA_SATURATED start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x2f

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_b
    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->enableBioAssay()V

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->startCheckFingerDownStatus()V

    goto/16 :goto_2

    :pswitch_c
    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->enableBioAssay()V

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestResultChecker:Lcom/goodix/gftest/utils/checker/Checker;

    invoke-virtual {v1, v2}, Lcom/goodix/gftest/utils/checker/Checker;->getTestItemsByStatus(I)[I

    move-result-object v1

    sget-object v3, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    if-ne v1, v3, :cond_b

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->startCountDownForSwitchFinger()V

    goto/16 :goto_2

    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->startTestBioCalibration()V

    goto/16 :goto_2

    :pswitch_d
    const-string v4, "TEST_FW_VERSION start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v9}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_e
    const-string v3, "TEST_ALGO start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->disableBioAssay()V

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v14}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_f
    const-string v3, "TEST_CAPTURE start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->disableBioAssay()V

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v14}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_10
    iget-boolean v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTest:Z

    if-eqz v3, :cond_c

    const-string v3, "fingerdown 0"

    invoke-static {v3}, Lcom/goodix/gftest/utils/TestHistoryUtils;->addResult(Ljava/lang/String;)V

    :cond_c
    const-string v3, "TEST_PERFORMANCE start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/goodix/gftest/AutoTestActivity;->disableBioAssay()V

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v14}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto/16 :goto_2

    :pswitch_11
    const-string v4, "TEST_SENSOR_FINE start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v7}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto :goto_2

    :pswitch_12
    const-string v3, "TEST_BAD_POINT start"

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/4 v3, 0x3

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto :goto_2

    :pswitch_13
    const-string v4, "TEST_PIXEL start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v8}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto :goto_2

    :pswitch_14
    const-string v4, "TEST_INTERRUPT_PIN start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x18

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto :goto_2

    :pswitch_15
    const-string v4, "TEST_RESET_PIN start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x17

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto :goto_2

    :pswitch_16
    const-string v4, "TEST_SPI start"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v4, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v1, v9}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    :cond_d
    :goto_2
    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mDetailBtn:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    iget-wide v4, v0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestTimeout:J

    invoke-virtual {v1, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return v2

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
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

.method private startTestBioCalibration()V
    .locals 2

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerDownRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v0, 0x26

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    return-void
.end method

.method private startTestHbdCalibrationStep2()V
    .locals 1

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v0, 0x27

    invoke-virtual {p0, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    return-void
.end method

.method private stopCountDownForSwitchFinger()V
    .locals 1

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCountDownDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mCheckFingerupRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopTest(I)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopTest reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->stopCountDownForSwitchFinger()V

    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1e

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x6

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v7, 0x7

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0x9

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xa

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xb

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xc

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xd

    if-eq v5, v7, :cond_2

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-virtual {v5, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/16 v7, 0xe

    if-ne v5, v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "timeout"

    const-string v3, "canceled"

    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_18

    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_PIXEL_SHORT_STREAK "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_SNR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_4

    goto :goto_3

    :cond_4
    move-object v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_TWILL_BADPOINT "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_5

    goto :goto_4

    :cond_5
    move-object v2, v3

    :goto_4
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_STABLE_FACTOR "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_6

    goto :goto_5

    :cond_6
    move-object v2, v3

    :goto_5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_FPC_RING_KEY "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_7

    goto :goto_6

    :cond_7
    move-object v2, v3

    :goto_6
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    goto/16 :goto_18

    :pswitch_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_FPC_BACK_KEY "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_8

    goto :goto_7

    :cond_8
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    goto/16 :goto_18

    :pswitch_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_FPC_MENU_KEY "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_9

    goto :goto_8

    :cond_9
    move-object v2, v3

    :goto_8
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResultOnly(II)V

    goto/16 :goto_18

    :pswitch_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_UNTRUSTED_AUTHENTICATE "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_a

    goto :goto_9

    :cond_a
    move-object v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_UNTRUSTED_ENROLL "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_b

    goto :goto_a

    :cond_b
    move-object v2, v3

    :goto_a
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_RAWDATA_SATURATED "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_c

    goto :goto_b

    :cond_c
    move-object v2, v3

    :goto_b
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_HBD_CALIBRATION "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_d

    goto :goto_c

    :cond_d
    move-object v2, v3

    :goto_c
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_BIO_CALIBRATION "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_e

    goto :goto_d

    :cond_e
    move-object v2, v3

    :goto_d
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_FW_VERSION "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_f

    goto :goto_e

    :cond_f
    move-object v2, v3

    :goto_e
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_ALGO "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_10

    goto :goto_f

    :cond_10
    move-object v2, v3

    :goto_f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_CAPTURE "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_11

    goto :goto_10

    :cond_11
    move-object v2, v3

    :goto_10
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_PERFORMANCE "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_12

    goto :goto_11

    :cond_12
    move-object v2, v3

    :goto_11
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_SENSOR_FINE "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_13

    goto :goto_12

    :cond_13
    move-object v2, v3

    :goto_12
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_BAD_POINT "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_14

    goto :goto_13

    :cond_14
    move-object v2, v3

    :goto_13
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_18

    :pswitch_13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_PIXEL "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_15

    goto :goto_14

    :cond_15
    move-object v2, v3

    :goto_14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :pswitch_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_INTERRUPT_PIN "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_16

    goto :goto_15

    :cond_16
    move-object v2, v3

    :goto_15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :pswitch_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_RESET_PIN "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_17

    goto :goto_16

    :cond_17
    move-object v2, v3

    :goto_16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    :pswitch_16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TEST_SPI "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v5, :cond_18

    goto :goto_17

    :cond_18
    move-object v2, v3

    :goto_17
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_18
    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->resetBioAssay()V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-ne v6, v0, :cond_19

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x2d

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    goto :goto_19

    :cond_19
    const/16 v0, 0x10

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1a

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    goto :goto_19

    :cond_1a
    const/16 v0, 0x11

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v0, v2, :cond_1b

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    goto :goto_19

    :cond_1b
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    :cond_1c
    :goto_19
    const/16 v0, 0x12

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1d

    const/16 v0, 0x13

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1d

    const/16 v0, 0x14

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eq v0, v2, :cond_1d

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    goto :goto_1a

    :cond_1d
    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    iget-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->autoNextTest()V

    :cond_1e
    :goto_1a
    return-void

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
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

.method private toggleBioAssay(Z)V
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [B

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v2, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    const/16 p1, 0x327

    invoke-static {v0, v1, p1, v2}, Lcom/goodix/fingerprint/utils/TestParamEncoder;->encodeInt32([BIII)I

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I[B)V

    return-void
.end method


# virtual methods
.method public getTimeout()V
    .locals 8

    const-string v0, "AutoTestActivityLog"

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getLong"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "sys.goodix.timeout"

    aput-object v3, v2, v6

    const-wide/16 v3, 0x7530

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestTimeout:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTimeout mAutoTestTimeout = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestTimeout:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "InvocationTargetException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    const-string p0, "IllegalArgumentException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    const-string p0, "IllegalAccessException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_3
    const-string p0, "NoSuchMethodException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_4
    const-string p0, "ClassNotFoundException"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public initView()V
    .locals 7

    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    if-nez v0, :cond_0

    return-void

    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestStatus:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const v0, 0x7f070098

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$2;

    invoke-direct {v1, p0}, Lcom/goodix/gftest/AutoTestActivity$2;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0a0027

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    if-eqz v0, :cond_2

    const v2, 0x7f07010b

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v2, 0x7f070109

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingTitleView:Landroid/widget/TextView;

    const v3, 0x7f0d0149

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0700ff

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingView:Landroid/widget/TextView;

    const v3, 0x7f0d019f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingView:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v0, 0x7f0700fb

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDetailBtn:Landroid/widget/Button;

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$3;

    invoke-direct {v1, p0}, Lcom/goodix/gftest/AutoTestActivity$3;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 2

    const-string v0, "AutoTestActivityLog"

    const-string v1, "back press"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestR:I

    invoke-direct {p0}, Lcom/goodix/gftest/AutoTestActivity;->setActivityResult()V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0a000c

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    invoke-static {p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->getFingerprintManager(Landroid/content/Context;)Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    invoke-virtual {p1, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->registerTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->unregisterTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V

    return-void
.end method

.method protected onPause()V
    .locals 3

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mEnrollmentCancel:Landroid/os/CancellationSignal;

    const/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    invoke-direct {p0, v0, v2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    invoke-virtual {v0}, Landroid/os/CancellationSignal;->cancel()V

    iput-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mAuthenticationCancel:Landroid/os/CancellationSignal;

    const/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Lcom/goodix/gftest/AutoTestActivity;->saveTestResult(II)V

    invoke-direct {p0, v0, v2}, Lcom/goodix/gftest/AutoTestActivity;->saveTestDetail(ILjava/util/HashMap;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Lcom/goodix/gftest/AutoTestActivity;->stopTest(I)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAdapter:Lcom/goodix/gftest/AutoTestActivity$MyAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :goto_0
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    invoke-virtual {v0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->hasEnrolledUntrustedFingerprint()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$5;

    invoke-direct {v1, p0}, Lcom/goodix/gftest/AutoTestActivity$5;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    invoke-virtual {v0, v1}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->untrustedRemove(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$UntrustedRemovalCallback;)V

    :cond_2
    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    invoke-virtual {v0, p0}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->unregisterTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "onResume start"

    const-string v1, "AutoTestActivityLog"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    iget-object v2, p0, Lcom/goodix/gftest/AutoTestActivity;->mTestCmdCallback:Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;

    invoke-virtual {v0, v2}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->registerTestCmdCallback(Lcom/goodix/fingerprint/service/GoodixFingerprintManager$TestCmdCallback;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mConfig:Lcom/goodix/fingerprint/GFConfig;

    if-eqz v0, :cond_1

    iget v0, v0, Lcom/goodix/fingerprint/GFConfig;->mChipSeries:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x3

    if-eq v3, v0, :cond_0

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    :cond_0
    const-string v0, "TEST_CHECK_SENSOR_TEST_INFO start"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mIsSensorValidityTested:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mSensorValidityTestFlag:I

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestingTitleView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mGoodixFingerprintManager:Lcom/goodix/fingerprint/service/GoodixFingerprintManager;

    const/16 v3, 0x20

    invoke-virtual {v1, v3}, Lcom/goodix/fingerprint/service/GoodixFingerprintManager;->testCmd(I)V

    new-instance v1, Landroid/app/ProgressDialog;

    invoke-direct {v1, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d010d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    new-instance v1, Lcom/goodix/gftest/AutoTestActivity$4;

    invoke-direct {v1, p0}, Lcom/goodix/gftest/AutoTestActivity$4;-><init>(Lcom/goodix/gftest/AutoTestActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    :cond_1
    sget-object v0, Lcom/goodix/gftest/AutoTestActivity;->TEST_ITEM:[I

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/goodix/gftest/AutoTestActivity;->getTimeout()V

    iget-object v0, p0, Lcom/goodix/gftest/AutoTestActivity;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/goodix/gftest/AutoTestActivity;->mAutoTestRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public readFwCfgFile(Ljava/lang/String;)[B
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v0, v1, [B

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-object v2, v0

    move-object v0, p0

    move-object p0, v2

    goto :goto_0

    :catch_1
    move-object p0, v0

    :goto_0
    if-eqz v0, :cond_0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AutoTestActivityLog"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    :goto_2
    return-object v0
.end method
