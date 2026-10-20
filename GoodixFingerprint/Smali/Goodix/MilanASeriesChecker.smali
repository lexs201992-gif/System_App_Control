.class public Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;
.super Lcom/goodix/gftest/utils/checker/Checker;
.source "MilanASeriesChecker.java"


# instance fields
.field private final TEST_ITEM_MILANA:[I

.field private final TEST_ITEM_MILANA_1:[I

.field private final TEST_ITEM_MILANB:[I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/Checker;-><init>()V

    const/16 v0, 0xb

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANA:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANA_1:[I

    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANB:[I

    const-string p0, "MilanASeriesChecker"

    const-string v0, "MilanASeriesChecker Constructor"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0xc
        0xd
        0x7
        0x8
        0x9
        0x10
        0x11
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x7
        0x8
        0x9
        0x10
        0x11
        0xc
        0xd
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x4
        0x2
        0x3
        0x7
        0x8
        0x9
    .end array-data
.end method


# virtual methods
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
    invoke-virtual {p0, v0}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->checkBadPointTestResult(Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public checkBioTestResultWithTouched(III)Z
    .locals 0

    if-nez p1, :cond_0

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p3, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p3, p3, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMin:I

    if-lt p1, p3, :cond_0

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMax:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkBioTestResultWithTouched(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBioTestResultWithTouched(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x2c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p0, v1, v0, p1}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->checkBioTestResultWithTouched(III)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public checkBioTestResultWithoutTouched(III)Z
    .locals 0

    if-nez p1, :cond_0

    sub-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdUntouched:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkBioTestResultWithoutTouched(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkBioTestResultWithTouched(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x2c3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p1}, Ljava/lang/Short;->shortValue()S

    move-result p1

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    invoke-virtual {p0, v1, v0, p1}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->checkBioTestResultWithoutTouched(III)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public checkFwVersionTestResult(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "errCode= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fwVersion.trim()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", codeFwVersion.trim()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MilanASeriesChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_1

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    :cond_1
    :goto_0
    return p0
.end method

.method public checkFwVersionTestResult(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkFwVersionTestResult(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

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
    const/16 v2, 0xd1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    const/16 v4, 0xd2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v3, p1

    check-cast v3, Ljava/lang/String;

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sensorOtpType= "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "MilanASeriesChecker"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1, v0, v3}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->checkFwVersionTestResult(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x1

    return p0

    :cond_3
    return v1
.end method

.method public checkHBDTestResultWithTouched(III)Z
    .locals 0

    if-nez p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMax:I

    if-gt p2, p1, :cond_0

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMin:I

    if-lt p2, p1, :cond_0

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMin:I

    if-lt p3, p1, :cond_0

    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMax:I

    if-gt p3, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public checkHBDTestResultWithTouched(Ljava/util/HashMap;)Z
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

    invoke-super {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->checkHBDTestResultWithTouched(Ljava/util/HashMap;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Short;

    invoke-virtual {v0}, Ljava/lang/Short;->shortValue()S

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/16 v2, 0x2c5

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
    invoke-virtual {p0, v1, v0, p1}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->checkHBDTestResultWithTouched(III)Z

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
    invoke-virtual {p0, v1, v0, v1, p1}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->checkSpiTestResult(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v1
.end method

.method public getTestItemsByStatus(I)[I
    .locals 1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANA:[I

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANB:[I

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANA_1:[I

    return-object p0

    :cond_2
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;->TEST_ITEM_MILANA:[I

    return-object p0
.end method
