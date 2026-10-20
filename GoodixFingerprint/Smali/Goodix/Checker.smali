.class public abstract Lcom/goodix/gftest/utils/checker/Checker;
.super Ljava/lang/Object;
.source "Checker.java"


# instance fields
.field protected mChipType:I

.field protected mProductId:I

.field protected mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkErrcode(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    const/16 p0, 0x64

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_0

    :cond_0
    const/16 p0, 0x3e8

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return p0
.end method


# virtual methods
.method public checkAlgoTestResult(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkBadPointTestResult(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkBioTestResultWithTouched(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkBioTestResultWithoutTouched(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkCaptureTestResult(III)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->imageQuality:I

    if-lt p2, p1, :cond_0

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->validArea:I

    if-lt p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkCaptureTestResult(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x1f5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "image quality: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", validArea: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Checker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkCaptureTestResult(III)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public checkFwVersionTestResult(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkHBDTestResultWithTouched(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkInterruptPinTestReuslt(Ljava/util/HashMap;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e8

    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/goodix/gftest/utils/checker/Checker;->checkResetPinTestReuslt(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public checkPerformanceTestResult(II)Z
    .locals 0

    if-nez p1, :cond_0

    const/16 p0, 0x3e8

    if-ge p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkPerformanceTestResult(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x203

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPerformanceTestResult(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public checkPixelShortStreakTestResult(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelShortStreakNum:I

    if-gt p2, p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    and-int p0, p1, v0

    return p0
.end method

.method public checkPixelShortStreakTestResult(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x150

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e7

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPixelShortStreakTestResult(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public checkPixelTestResult(II)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    if-gt p2, p0, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    and-int p0, p1, v0

    return p0
.end method

.method public checkPixelTestResult(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x12e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x3e7

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPixelTestResult(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public checkRawdataSaturatedTestResult(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkResetPinTestReuslt(II)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-lez p2, :cond_1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    and-int/2addr p0, p1

    return p0
.end method

.method public checkResetPinTestReuslt(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x258

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const-string v0, "reset_flag"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkResetPinTestReuslt(II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public checkSensorFineTestResult(II)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->averagePixelDiff:I

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkSensorFineTestResult(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x387

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, 0x7d0

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkSensorFineTestResult(II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public checkSnrTestResult(IF)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkSnrTestResult(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    const/16 v0, 0x143

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0x67

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    const/16 v3, 0x65

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/goodix/gftest/utils/checker/Checker;->mChipType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/goodix/gftest/utils/checker/Checker;->mProductId:I

    const v2, 0xe000

    and-int/2addr p1, v2

    shr-int/lit8 p1, p1, 0xd

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mProductId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/goodix/gftest/utils/checker/Checker;->mProductId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Checker"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package_type:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/goodix/gftest/utils/checker/Checker;->mChipType:I

    const/16 v5, 0x2e

    if-eq v5, v2, :cond_1

    const/16 v5, 0x2d

    if-eq v5, v2, :cond_1

    const/16 v5, 0x30

    if-ne v5, v2, :cond_6

    :cond_1
    const-string v2, " HDK set snr min value2"

    if-nez p1, :cond_4

    iget p1, p0, Lcom/goodix/gftest/utils/checker/Checker;->mProductId:I

    const/16 v5, 0x623

    if-eq v5, p1, :cond_3

    const/16 v5, 0x624

    if-ne v5, p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, " NDK set snr min value"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget v5, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue2:F

    iput v5, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    if-ne p1, v4, :cond_5

    iget-object p1, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget v5, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue2:F

    iput v5, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    const-string p1, "other type ,to be determined"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    invoke-virtual {p0, v1, v0}, Lcom/goodix/gftest/utils/checker/Checker;->checkSnrTestResult(IF)Z

    move-result p0

    if-eqz p0, :cond_7

    return v4

    :cond_7
    return v1
.end method

.method public checkSpiTestResult(Ljava/util/HashMap;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkStableFactorTestResult(IF)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    cmpg-float p0, p2, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkStableFactorTestResult(Ljava/util/HashMap;)Z
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

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/16 v0, 0x149

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, v1, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkStableFactorTestResult(IF)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public checkTwillBadpointResult(III)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    if-ge p2, p1, :cond_0

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    if-ge p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkTwillBadpointResult(Ljava/util/HashMap;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkErrcode(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v0, 0x14a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x14b

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

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/16 v3, 0x14c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    goto :goto_2

    :cond_2
    move v3, v1

    :goto_2
    const/16 v4, 0x14d

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_3

    :cond_3
    move p1, v1

    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "maxValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", localValue "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", numLocalValue: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", lineValue "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "Checker"

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0, v2}, Lcom/goodix/gftest/utils/checker/Checker;->checkTwillBadpointResult(III)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public abstract getTestItemsByStatus(I)[I
.end method

.method public setChipTypeAndInitThreshold(I)V
    .locals 1

    iput p1, p0, Lcom/goodix/gftest/utils/checker/Checker;->mChipType:I

    invoke-static {}, Lcom/goodix/gftest/utils/checker/TestResultChecker;->getInstance()Lcom/goodix/gftest/utils/checker/TestResultChecker;

    move-result-object p1

    iget v0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mChipType:I

    invoke-virtual {p1, v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker;->getThreshold(I)Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    move-result-object p1

    iput-object p1, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    return-void
.end method
