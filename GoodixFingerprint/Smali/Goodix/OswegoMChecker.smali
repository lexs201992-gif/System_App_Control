.class public Lcom/goodix/gftest/utils/checker/OswegoMChecker;
.super Lcom/goodix/gftest/utils/checker/Checker;
.source "OswegoMChecker.java"


# instance fields
.field private final TEST_ITEM_OSWEGO:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/Checker;-><init>()V

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/OswegoMChecker;->TEST_ITEM_OSWEGO:[I

    const-string p0, "OswegoMChecker"

    const-string v0, "OswegoMChecker Constructor"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0xf
        0x7
        0x8
        0x9
        0x10
        0x11
        0xa
    .end array-data
.end method


# virtual methods
.method public checkBadPointTestResult(Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPoint:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OswegoMChecker"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mErrorCode:I

    if-nez v1, :cond_1

    iget v1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    if-ge v1, v2, :cond_1

    iget v1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSmallBadPixel:I

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localSmallBadPixel:I

    if-ge v1, v2, :cond_1

    iget v1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBigBadPixel:I

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBigBadPixel:I

    if-ge v1, v2, :cond_1

    iget-short v1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAvgDiffVal:S

    iget-short v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->avgDiffVal:S

    if-le v1, v2, :cond_1

    iget v1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAllTiltAngle:F

    iget v2, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->allTiltAngle:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    iget p1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBlockTiltAngleMax:F

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->blockTiltAngleMax:F

    cmpg-float p0, p1, p0

    if-gez p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public checkBadPointTestResult(Ljava/util/HashMap;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBadPointTestResult(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;

    invoke-static {}, Lcom/goodix/gftest/utils/checker/TestResultChecker;->getInstance()Lcom/goodix/gftest/utils/checker/TestResultChecker;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAvgDiffVal:S

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    const/4 v2, 0x0

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAllTiltAngle:F

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBlockTiltAngleMax:F

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBigBadPixel:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSmallBadPixel:I

    const/16 v2, 0x12c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput-short v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAvgDiffVal:S

    :cond_0
    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    :cond_1
    const/16 v2, 0x130

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    :cond_2
    const/16 v2, 0x134

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mAllTiltAngle:F

    :cond_3
    const/16 v2, 0x135

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBlockTiltAngleMax:F

    :cond_4
    const/16 v2, 0x13b

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSmallBadPixel:I

    :cond_5
    const/16 v2, 0x13c

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBigBadPixel:I

    :cond_6
    invoke-virtual {p0, v0}, Lcom/goodix/gftest/utils/checker/OswegoMChecker;->checkBadPointTestResult(Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    return v1
.end method

.method public checkFwVersionTestResult(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkFwVersionTestResult(Ljava/util/HashMap;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkFwVersionTestResult(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, ""

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v0, v3

    :goto_0
    const/16 v2, 0xd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codeFwVersion: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OswegoMChecker"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0, v3}, Lcom/goodix/gftest/utils/checker/OswegoMChecker;->checkFwVersionTestResult(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public checkSpiTestResult(ILjava/lang/String;II)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkSpiTestResult(Ljava/util/HashMap;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkSpiTestResult(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v1, p1, v1, v1}, Lcom/goodix/gftest/utils/checker/OswegoMChecker;->checkSpiTestResult(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getTestItemsByStatus(I)[I
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/OswegoMChecker;->TEST_ITEM_OSWEGO:[I

    return-object p0
.end method
