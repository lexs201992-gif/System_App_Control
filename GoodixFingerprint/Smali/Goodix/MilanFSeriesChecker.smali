.class public Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;
.super Lcom/goodix/gftest/utils/checker/Checker;
.source "MilanFSeriesChecker.java"


# static fields
.field private static mchipType:I = 0x31


# instance fields
.field private final TEST_ITEM_DUBAI_A_SERIES_TWILL:[I

.field private final TEST_ITEM_MILAN_F_SERIES:[I

.field private final TEST_ITEM_MILAN_F_SERIES_FLAT_TWILL:[I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/Checker;-><init>()V

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->TEST_ITEM_MILAN_F_SERIES:[I

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_1

    iput-object v1, p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->TEST_ITEM_MILAN_F_SERIES_FLAT_TWILL:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->TEST_ITEM_DUBAI_A_SERIES_TWILL:[I

    const-string p0, "MilanFSeriesChecker"

    const-string v0, "MilanFSeriesChecker Constructor"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :array_0
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x5
        0x7
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x18
        0x5
        0x7
    .end array-data

    :array_2
    .array-data 4
        0x1
        0x2
        0x3
        0x4
        0x18
        0x7
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

    iget-short p1, p1, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mLocalWorst:S

    iget-short p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

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

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSingular:I

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
    const/16 v2, 0x137

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;->mSingular:I

    :cond_3
    invoke-virtual {p0, v0}, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->checkBadPointTestResult(Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    return v1
.end method

.method public checkSpiTestResult(ILjava/lang/String;II)Z
    .locals 0

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/Checker;->mThresHold:Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    if-eq p3, p1, :cond_1

    iget p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId1:I

    if-ne p3, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId2:I

    if-ne p3, p0, :cond_2

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
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

    const/16 v0, 0xcd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v2, 0x4

    if-lt v0, v2, :cond_0

    invoke-static {p1, v1}, Lcom/goodix/fingerprint/utils/TestResultParser;->decodeInt32([BI)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0, p1, v1}, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->checkSpiTestResult(ILjava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public getTestItemsByStatus(I)[I
    .locals 1

    sget p1, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->mchipType:I

    const/16 v0, 0x2c

    if-ne v0, p1, :cond_0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->TEST_ITEM_MILAN_F_SERIES_FLAT_TWILL:[I

    return-object p0

    :cond_0
    const/16 v0, 0x2d

    if-eq v0, p1, :cond_2

    const/16 v0, 0x2e

    if-eq v0, p1, :cond_2

    const/16 v0, 0x30

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->TEST_ITEM_MILAN_F_SERIES:[I

    return-object p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;->TEST_ITEM_DUBAI_A_SERIES_TWILL:[I

    return-object p0
.end method
