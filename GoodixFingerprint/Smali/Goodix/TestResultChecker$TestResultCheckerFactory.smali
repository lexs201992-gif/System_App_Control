.class public Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;
.super Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;
.source "TestResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/utils/checker/TestResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TestResultCheckerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;


# direct methods
.method public constructor <init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;->this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    invoke-direct {p0, p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V

    return-void
.end method


# virtual methods
.method public createCheckerByChip(II)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "chipSeries = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TestResultChecker"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "chipType = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;->createMilanANSeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;->createMilanHVSeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0, p2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;->createMilanASeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;->createMilanFSeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-virtual {p0, p2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;->createOswegoMChecker(I)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    return-object p0
.end method

.method public createMilanANSeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 2

    const-string v0, "TestResultChecker"

    const-string v1, "createMilanANSeriesChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanANSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-super {p0, v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;->createChecker(Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->setChipTypeAndInitThreshold(I)V

    :cond_0
    return-object p0
.end method

.method public createMilanASeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 2

    const-string v0, "TestResultChecker"

    const-string v1, "createMilanASeriesChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanASeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-super {p0, v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;->createChecker(Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->setChipTypeAndInitThreshold(I)V

    :cond_0
    return-object p0
.end method

.method public createMilanFSeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 2

    const-string v0, "TestResultChecker"

    const-string v1, "createMilanFSeriesChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanFSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-super {p0, v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;->createChecker(Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->setChipTypeAndInitThreshold(I)V

    :cond_0
    return-object p0
.end method

.method public createMilanHVSeriesChecker(I)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 2

    const-string v0, "TestResultChecker"

    const-string v1, "createMilanHVSeriesChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanHVSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-super {p0, v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;->createChecker(Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->setChipTypeAndInitThreshold(I)V

    :cond_0
    return-object p0
.end method

.method public createOswegoMChecker(I)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 2

    const-string v0, "TestResultChecker"

    const-string v1, "createOswegoMChecker"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->OswegoMChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-super {p0, v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;->createChecker(Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;)Lcom/goodix/gftest/utils/checker/Checker;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/goodix/gftest/utils/checker/Checker;->setChipTypeAndInitThreshold(I)V

    :cond_0
    return-object p0
.end method
