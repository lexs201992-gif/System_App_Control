.class public Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;
.super Ljava/lang/Object;
.source "TestResultChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/goodix/gftest/utils/checker/TestResultChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Threshold"
.end annotation


# instance fields
.field public allTiltAngle:F

.field public averagePixelDiff:I

.field public avgDiffVal:S

.field public badBointDummyNum:I

.field public badBointNum:I

.field public badPixelNum:I

.field public badPixelShortStreakNum:I

.field public blockTiltAngleMax:F

.field public chipId:I

.field public chipId1:I

.field public chipId2:I

.field public fpcBackCancelationMaxVal:I

.field public fpcBackCancelationMinVal:I

.field public fpcBackRawdataMaxVal:I

.field public fpcBackRawdataMinVal:I

.field public fpcMenuCancelationMaxVal:I

.field public fpcMenuCancelationMinVal:I

.field public fpcMenuRawdataMaxVal:I

.field public fpcMenuRawdataMinVal:I

.field public fpcRingCancelationMaxVal:I

.field public fpcRingCancelationMinVal:I

.field public fpcRingRawdataMaxVal:I

.field public fpcRingRawdataMinVal:I

.field public hbdAvgMax:I

.field public hbdAvgMin:I

.field public hbdElectricityMax:I

.field public hbdElectricityMin:I

.field public imageQuality:I

.field public inCircle:I

.field public localBadBointNum:I

.field public localBadPixelNum:I

.field public localBigBadPixel:I

.field public localSmallBadPixel:I

.field public localWorst:S

.field public osdTouchedMax:I

.field public osdTouchedMin:I

.field public osdUntouched:I

.field public singular:I

.field public snrMaxValue:F

.field public snrMinValue:F

.field public snrMinValue2:F

.field public spiFwVersion:Ljava/lang/String;

.field public stableValue:F

.field final synthetic this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;

.field public totalTime:J

.field public twillBadpointLocalValue:I

.field public twillBadpointMaxValue:I

.field public validArea:I


# direct methods
.method private constructor <init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V
    .locals 2

    iput-object p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->this$0:Lcom/goodix/gftest/utils/checker/TestResultChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId1:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId2:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointDummyNum:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelShortStreakNum:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->allTiltAngle:F

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->blockTiltAngleMax:F

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue2:F

    iput v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    iput-short p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->singular:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->inCircle:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdUntouched:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMin:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMax:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMax:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMin:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMin:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMax:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localSmallBadPixel:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBigBadPixel:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->averagePixelDiff:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuRawdataMinVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuRawdataMaxVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackRawdataMinVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackRawdataMaxVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingRawdataMinVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingRawdataMaxVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuCancelationMinVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuCancelationMaxVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackCancelationMinVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackCancelationMaxVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingCancelationMinVal:I

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingCancelationMaxVal:I

    const/16 p1, 0x19

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->imageQuality:I

    const/16 p1, 0x41

    iput p1, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->validArea:I

    const-wide/16 v0, 0x190

    iput-wide v0, p0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->totalTime:J

    return-void
.end method

.method private constructor <init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct/range {p0 .. p1}, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;)V

    const/high16 v3, 0x40800000    # 4.0f

    const/high16 v4, 0x42c80000    # 100.0f

    const/16 v8, 0x2503

    const/16 v10, 0x34

    const/16 v11, 0x2504

    const/16 v14, 0x37

    const/high16 v15, 0x40a00000    # 5.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/16 v13, 0x14

    const/16 v9, 0x1e

    const/16 v12, 0xf

    const/16 v5, 0x23

    const/16 v6, 0x2d

    const/16 v7, 0x8

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_1

    :pswitch_1
    const v1, 0x2010503

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    iput v15, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    iput v3, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue2:F

    const/high16 v1, 0x42840000    # 66.0f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    iput v14, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    iput v10, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelShortStreakNum:I

    goto/16 :goto_1

    :pswitch_2
    iput v8, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_3
    const v1, 0x2010502

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    iput v15, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    iput v3, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue2:F

    const/high16 v1, 0x42840000    # 66.0f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    iput v14, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    iput v10, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelShortStreakNum:I

    goto/16 :goto_1

    :pswitch_4
    const v1, 0x2010501

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    iput v15, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    iput v3, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue2:F

    iput v4, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    iput v14, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    iput v10, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelShortStreakNum:I

    goto/16 :goto_1

    :pswitch_5
    const/16 v1, 0x2506

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    iput v15, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    iput v4, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    iput v14, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    iput v10, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelShortStreakNum:I

    goto/16 :goto_1

    :pswitch_6
    const/16 v1, 0x2507

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    const/16 v1, 0x2508

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId1:I

    const/16 v1, 0x2510

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId2:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->stableValue:F

    iput v15, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMinValue:F

    iput v4, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->snrMaxValue:F

    iput v14, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointMaxValue:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->twillBadpointLocalValue:I

    goto/16 :goto_1

    :pswitch_7
    iput v11, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_8
    iput v8, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_9
    const-string v1, "GF5236"

    iput-object v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    const/4 v1, 0x0

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointDummyNum:I

    const-wide/16 v1, 0x1f4

    iput-wide v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->totalTime:J

    const/16 v1, 0x32

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->inCircle:I

    const/16 v1, 0x5dc

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuRawdataMinVal:I

    const/16 v2, 0xed8

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuRawdataMaxVal:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackRawdataMinVal:I

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackRawdataMaxVal:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingRawdataMinVal:I

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingRawdataMaxVal:I

    const/16 v1, 0x5a

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuCancelationMinVal:I

    const/16 v1, 0x348

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcMenuCancelationMaxVal:I

    const/16 v1, 0x5a

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackCancelationMinVal:I

    const/16 v1, 0x348

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcBackCancelationMaxVal:I

    const/16 v1, 0x1c2

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingCancelationMinVal:I

    const/16 v1, 0x280

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->fpcRingCancelationMaxVal:I

    goto/16 :goto_1

    :pswitch_a
    const/16 v1, 0x220e

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_b
    const/16 v1, 0x220f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    const/4 v1, 0x6

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_c
    const/16 v1, 0x220c

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_d
    const/16 v1, 0x2207

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_e
    const-string v2, "GF52X8"

    iput-object v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->totalTime:J

    const/16 v2, 0x32

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->inCircle:I

    const/16 v2, 0x19

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc8

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdUntouched:I

    const/16 v2, 0x320

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMin:I

    const/16 v2, 0x9c4

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMax:I

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMin:I

    const/16 v2, 0xdac

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMax:I

    const/16 v2, 0xa

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMin:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMax:I

    goto/16 :goto_1

    :pswitch_f
    const/16 v2, 0x17

    if-ne v1, v2, :cond_0

    const-string v2, "GF5206"

    iput-object v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v2, "GF5216"

    iput-object v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    :goto_0
    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    const-wide/16 v2, 0x1f4

    iput-wide v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->totalTime:J

    const/16 v2, 0x32

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->inCircle:I

    const/16 v2, 0x17

    if-ne v1, v2, :cond_1

    const/16 v1, 0xc8

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdUntouched:I

    const/16 v2, 0x320

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMin:I

    const/16 v2, 0x9c4

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->osdTouchedMax:I

    const/16 v2, 0x1f4

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMin:I

    const/16 v2, 0xdac

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdAvgMax:I

    const/16 v2, 0xa

    iput v2, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMin:I

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->hbdElectricityMax:I

    goto/16 :goto_1

    :pswitch_10
    const/16 v1, 0x2502

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_11
    iput v11, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_12
    iput v11, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_13
    iput v11, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_14
    iput v8, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_15
    const/16 v1, 0x2501

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_16
    const/16 v1, 0x2215

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_17
    const/16 v1, 0x220f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v13, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    const/16 v1, 0xa

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    const/4 v1, 0x6

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_18
    const/16 v1, 0x220d

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_19
    const/16 v1, 0x220e

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_1a
    const/16 v1, 0x2208

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_1b
    const/16 v1, 0x2205

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    const/16 v1, 0x41

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto/16 :goto_1

    :pswitch_1c
    const/16 v1, 0x220a

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto :goto_1

    :pswitch_1d
    const/16 v1, 0x220c

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto :goto_1

    :pswitch_1e
    const/16 v1, 0x2202

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto :goto_1

    :pswitch_1f
    const/16 v1, 0x2207

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->chipId:I

    iput v5, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    iput v12, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBadPixelNum:I

    iput-short v7, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localWorst:S

    goto :goto_1

    :pswitch_20
    const-string v1, "GFx18M"

    iput-object v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    const/16 v1, 0x320

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->avgDiffVal:S

    const v1, 0x3e379a6b    # 0.1793f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->allTiltAngle:F

    const v1, 0x3ef52546    # 0.4788f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->blockTiltAngleMax:F

    const/16 v1, 0xc

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localSmallBadPixel:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBigBadPixel:I

    const/16 v1, 0x4b0

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->averagePixelDiff:I

    goto :goto_1

    :pswitch_21
    const-string v1, "GFx16M"

    iput-object v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->spiFwVersion:Ljava/lang/String;

    iput v9, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badBointNum:I

    iput v6, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->badPixelNum:I

    const/16 v1, 0x320

    iput-short v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->avgDiffVal:S

    const v1, 0x3e379a6b    # 0.1793f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->allTiltAngle:F

    const v1, 0x3ef52546    # 0.4788f

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->blockTiltAngleMax:F

    const/16 v1, 0xc

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localSmallBadPixel:I

    const/4 v1, 0x5

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->localBigBadPixel:I

    const/16 v1, 0x4b0

    iput v1, v0, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;->averagePixelDiff:I

    :cond_1
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_20
        :pswitch_20
        :pswitch_21
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_c
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_b
        :pswitch_b
        :pswitch_a
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method synthetic constructor <init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;ILcom/goodix/gftest/utils/checker/TestResultChecker$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/goodix/gftest/utils/checker/TestResultChecker$Threshold;-><init>(Lcom/goodix/gftest/utils/checker/TestResultChecker;I)V

    return-void
.end method
