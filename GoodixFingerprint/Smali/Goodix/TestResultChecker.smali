.class public Lcom/goodix/gftest/utils/checker/TestResultChecker;
.super Ljava/lang/Object;
.source "TestResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;,
        Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;,
        Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;,
        Lcom/goodix/gftest/utils/checker/TestResultChecker$CheckPoint;,
        Lcom/goodix/gftest/utils/checker/TestResultChecker$AbstractTestResultCheckerFactory;,
        Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;
    }
.end annotation


# static fields
.field private static mInstance:Lcom/goodix/gftest/utils/checker/TestResultChecker;


# instance fields
.field private mTestResultCheckerFactory:Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

.field private mThresMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mTestResultCheckerFactory:Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mThresMap:Ljava/util/HashMap;

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mTestResultCheckerFactory:Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

    return-void
.end method

.method public static getInstance()Lcom/goodix/gftest/utils/checker/TestResultChecker;
    .locals 1

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mInstance:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker;

    invoke-direct {v0}, Lcom/goodix/gftest/utils/checker/TestResultChecker;-><init>()V

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mInstance:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    :cond_0
    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mInstance:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    return-object v0
.end method


# virtual methods
.method public getTestResultCheckerFactory()Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;
    .locals 2

    const-string v0, "TestResultChecker"

    const-string v1, "getTestResultCheckerFactory"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mTestResultCheckerFactory:Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

    if-nez v0, :cond_0

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;

    invoke-direct {v0, p0}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerFactory;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mTestResultCheckerFactory:Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

    :cond_0
    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mTestResultCheckerFactory:Lcom/goodix/gftest/utils/checker/TestResultChecker$ITestResultCheckerFactory;

    return-object p0
.end method

.method public getThreshold(I)Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;
    .locals 2

    iget-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mThresMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mThresMap:Ljava/util/HashMap;

    :cond_0
    iget-object v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mThresMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    if-nez v0, :cond_1

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;ILcom/goodix/gftest/utils/checker/TestResultChecker$1;)V

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker;->mThresMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
