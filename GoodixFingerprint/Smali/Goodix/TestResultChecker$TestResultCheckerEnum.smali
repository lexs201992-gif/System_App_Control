.class public final enum Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;
.super Ljava/lang/Enum;
.source "TestResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/utils/checker/TestResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TestResultCheckerEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

.field public static final enum MilanANSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

.field public static final enum MilanASeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

.field public static final enum MilanFSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

.field public static final enum MilanHVSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

.field public static final enum OswegoMChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;
    .locals 5

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->OswegoMChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    sget-object v1, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanASeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    sget-object v2, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanFSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    sget-object v3, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanHVSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    sget-object v4, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanANSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    const/4 v1, 0x0

    const-string v2, "com.goodix.gftest.utils.checker.OswegoMChecker"

    const-string v3, "OswegoMChecker"

    invoke-direct {v0, v3, v1, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->OswegoMChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    const/4 v1, 0x1

    const-string v2, "com.goodix.gftest.utils.checker.MilanASeriesChecker"

    const-string v3, "MilanASeriesChecker"

    invoke-direct {v0, v3, v1, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanASeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    const/4 v1, 0x2

    const-string v2, "com.goodix.gftest.utils.checker.MilanFSeriesChecker"

    const-string v3, "MilanFSeriesChecker"

    invoke-direct {v0, v3, v1, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanFSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    const/4 v1, 0x3

    const-string v2, "com.goodix.gftest.utils.checker.MilanHVSeriesChecker"

    const-string v3, "MilanHVSeriesChecker"

    invoke-direct {v0, v3, v1, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanHVSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    new-instance v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    const/4 v1, 0x4

    const-string v2, "com.goodix.gftest.utils.checker.MilanANSeriesChecker"

    const-string v3, "MilanANSeriesChecker"

    invoke-direct {v0, v3, v1, v2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->MilanANSeriesChecker:Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-static {}, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->$values()[Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    move-result-object v0

    sput-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->$VALUES:[Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;
    .locals 1

    const-class v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    return-object p0
.end method

.method public static values()[Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;
    .locals 1

    sget-object v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->$VALUES:[Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    invoke-virtual {v0}, [Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$TestResultCheckerEnum;->value:Ljava/lang/String;

    return-object p0
.end method
