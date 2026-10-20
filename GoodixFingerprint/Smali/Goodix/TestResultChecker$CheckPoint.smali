.class public Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;
.super Ljava/lang/Object;
.source "TestResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/utils/checker/TestResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckPoint"
.end annotation


# instance fields
.field public mAllTiltAngle:F

.field public mAvgDiffVal:S

.field public mBadPixelNum:I

.field public mBigBadPixel:I

.field public mBlockTiltAngleMax:F

.field public mErrorCode:I

.field public mInCircle:S

.field public mLocalBadPixelNum:I

.field public mLocalWorst:S

.field public mSingular:I

.field public mSmallBadPixel:I

.field final synthetic this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;


# direct methods
.method public constructor <init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V
    .locals 1

    iput-object p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mErrorCode:I

    iput-short p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAvgDiffVal:S

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAllTiltAngle:F

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBlockTiltAngleMax:F

    iput-short p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalWorst:S

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSingular:I

    iput-short p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mInCircle:S

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSmallBadPixel:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBigBadPixel:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "error code:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mErrorCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "avgDiffVal:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAvgDiffVal:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "badPixelNum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "localBadPixelNum:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "allTiltAngle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAllTiltAngle:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "blockTiltAngleMax:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBlockTiltAngleMax:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "localWorst:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalWorst:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "singular:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSingular:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "inCircle:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-short v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mInCircle:S

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "smallBadPixel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSmallBadPixel:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bigBadPixel:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBigBadPixel:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
