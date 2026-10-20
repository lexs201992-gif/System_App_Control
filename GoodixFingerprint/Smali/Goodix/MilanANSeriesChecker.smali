.class public Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;
.super Lcom/goodix/gftest/utils/checker/Checker;
.source "MilanANSeriesChecker.java"


# static fields
.field public static final TEST_ITEM_MILAN_BN:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;->TEST_ITEM_MILAN_BN:[I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x7
        0x8
        0x9
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/Checker;-><init>()V

    return-void
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkAlgoTestResult(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkBadPointTestResult(Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;)Z
    .locals 2

    if-eqz p1, :cond_0

    iget v0, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mErrorCode:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget v1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    if-ge v0, v1, :cond_0

    iget v0, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    iget v1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    if-ge v0, v1, :cond_0

    iget-short v0, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalWorst:S

    iget-short v1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    if-ge v0, v1, :cond_0

    iget-short p1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mInCircle:S

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->inCircle:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
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

    if-eqz v0, :cond_4

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;

    invoke-static {}, Lcom/goodix/gftest/utils/checker/TestResultChecker;->getInstance()Lcom/goodix/gftest/utils/checker/TestResultChecker;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {v0, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalWorst:S

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mInCircle:S

    const/16 v2, 0x12e

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mBadPixelNum:I

    :cond_0
    const/16 v2, 0x130

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

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalBadPixelNum:I

    :cond_1
    const/16 v2, 0x136

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Short;

    invoke-virtual {v2}, Ljava/lang/Short;->shortValue()S

    move-result v2

    iput-short v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalWorst:S

    :cond_2
    const/16 v2, 0x138

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    iput-short p1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mInCircle:S

    :cond_3
    invoke-virtual {p0, v0}, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;->checkBadPointTestResult(Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public checkCaptureTestResult(III)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lcom/goodix/gftest/utils/checker/Checker;->checkCaptureTestResult(III)Z

    move-result p0

    return p0
.end method

.method public checkCaptureTestResult(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkCaptureTestResult(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkFwVersionTestResult(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

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

    const/4 v3, 0x0

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
    invoke-virtual {p0, v1, v0, v3}, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;->checkFwVersionTestResult(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public checkInterruptPinTestReuslt(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkInterruptPinTestReuslt(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkPerformanceTestResult(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/goodix/gftest/utils/checker/Checker;->checkPerformanceTestResult(II)Z

    move-result p0

    return p0
.end method

.method public checkPerformanceTestResult(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPerformanceTestResult(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkPixelTestResult(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/goodix/gftest/utils/checker/Checker;->checkPixelTestResult(II)Z

    move-result p0

    return p0
.end method

.method public checkPixelTestResult(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkPixelTestResult(Ljava/util/HashMap;)Z

    move-result p0

    return p0
.end method

.method public checkResetPinTestReuslt(II)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/goodix/gftest/utils/checker/Checker;->checkResetPinTestReuslt(II)Z

    move-result p0

    return p0
.end method

.method public checkResetPinTestReuslt(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkResetPinTestReuslt(Ljava/util/HashMap;)Z

    move-result p0

    return p0
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkSpiTestResult(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xca

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;->checkSpiTestResult(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public getTestItemsByStatus(I)[I
    .locals 0

    sget-object p0, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;->TEST_ITEM_MILAN_BN:[I

    return-object p0
.end method
