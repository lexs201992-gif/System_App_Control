.class public abstract Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;
.super Ljava/lang/Object;
.source "TestResultChecker.java"

# interfaces
.implements Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/utils/checker/TestResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "AbstractTestResultCheckerFactory"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;


# direct methods
.method public constructor <init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V
    .locals 0

    iput-object p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;->this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected createChecker(Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;)Lcom/goodix/gftest/utils/checker/Checker;
    .locals 2

    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_4

    :try_start_0
    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.goodix.gftest.utils.checker.OswegoMChecker"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/goodix/gftest/utils/checker/OswegoMChecker;

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/OswegoMChecker;-><init>()V

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.goodix.gftest.utils.checker.MilanASeriesChecker"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/MilanASeriesChecker;-><init>()V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.goodix.gftest.utils.checker.MilanFSeriesChecker"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/MilanFSeriesChecker;-><init>()V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string v1, "com.goodix.gftest.utils.checker.MilanHVSeriesChecker"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    new-instance p0, Lcom/goodix/gftest/utils/checker/MilanHVSeriesChecker;

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/MilanHVSeriesChecker;-><init>()V

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->getValue()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.goodix.gftest.utils.checker.MilanANSeriesChecker"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    new-instance p0, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;

    invoke-direct {p0}, Lcom/goodix/gftest/utils/checker/MilanANSeriesChecker;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_1
    return-object v0
.end method
