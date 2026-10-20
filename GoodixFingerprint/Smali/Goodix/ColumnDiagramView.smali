.class public Lcom/goodix/gftest/widget/ColumnDiagramView;
.super Landroid/view/View;
.source "ColumnDiagramView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;,
        Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;,
        Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;
    }
.end annotation


# instance fields
.field private mAxisPaint:Landroid/graphics/Paint;

.field private mAxisStrokeWidth:F

.field private mColorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mColumnPaint:Landroid/graphics/Paint;

.field private mData:Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

.field private mDefaultColumnColor:I

.field private mMaxValue:I

.field private mMaxXAxisScale:I

.field private mMaxYAxisScale:I

.field private mMinXAxisLength:F

.field private mMinYAxisLength:F

.field private mScaleLength:F

.field private mShowColumnText:Z

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mXAxisTextGap:F

.field private mYAxisTextGap:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/gftest/widget/ColumnDiagramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/goodix/gftest/widget/ColumnDiagramView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

    invoke-direct {v0}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mData:Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColorList:Ljava/util/List;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mShowColumnText:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColumnPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/goodix/gftest/R$styleable;->GFColumnDiagram:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/16 p2, 0x64

    :try_start_0
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setMaxValue(I)V

    const/high16 p2, -0x10000

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setDefaultColumnColor(I)V

    const/4 p2, 0x2

    const/4 p3, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setMaxXAxisScale(I)V

    const/4 p2, 0x3

    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setMaxYAxisScale(I)V

    const/high16 p2, 0x43a00000    # 320.0f

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setMinYAxisLength(F)V

    const/high16 p2, 0x435c0000    # 220.0f

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setMinXAxisLength(F)V

    const/4 p2, 0x6

    const/high16 p3, 0x41200000    # 10.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setScaleLength(F)V

    const/4 p2, 0x7

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setAxisStrokeWidth(F)V

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-virtual {p1, v1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setTextSize(F)V

    const/16 p2, 0x8

    const/high16 p3, 0x41400000    # 12.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setXAxisTextGap(F)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/ColumnDiagramView;->setYAxisTextGap(F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p0

    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/goodix/gftest/widget/ColumnDiagramView;->updateColumnColor()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/ColumnDiagramView;->updateAxisPaint()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/ColumnDiagramView;->updateTextPaint()V

    return-void
.end method

.method private drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    add-float/2addr p3, v0

    iget-object p0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updateAxisPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisStrokeWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateColumnColor()V
    .locals 3

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColorList:Ljava/util/List;

    iget v1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mDefaultColumnColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColorList:Ljava/util/List;

    const v1, -0xff0100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColorList:Ljava/util/List;

    const/16 v1, -0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/ColumnDiagramView;->updateColumnPaint()V

    return-void
.end method

.method private updateColumnDiagram(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxValue:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mScaleLength:F

    sub-float/2addr v2, v1

    iget v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mYAxisTextGap:F

    sub-float v8, v2, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextSize:F

    const/high16 v9, 0x40000000    # 2.0f

    mul-float/2addr v2, v9

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mXAxisTextGap:F

    mul-float/2addr v2, v9

    sub-float v10, v1, v2

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float v11, v1, v8

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextSize:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mXAxisTextGap:F

    sub-float v12, v1, v2

    add-float v4, v11, v8

    iget-object v6, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move v3, v12

    move v5, v12

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v5, v12, v10

    iget-object v6, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    move v4, v11

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxValue:I

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxYAxisScale:I

    div-int v13, v1, v2

    int-to-float v3, v13

    mul-float/2addr v3, v10

    int-to-float v4, v1

    div-float v14, v3, v4

    rem-int/2addr v1, v2

    if-nez v1, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    move v15, v2

    const/16 v16, 0x0

    move/from16 v6, v16

    :goto_0
    if-ge v6, v15, :cond_1

    int-to-float v1, v6

    mul-float/2addr v1, v14

    sub-float v5, v12, v1

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    mul-int v17, v6, v13

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    sub-float v1, v11, v1

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mYAxisTextGap:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mScaleLength:F

    sub-float v4, v1, v2

    sub-float v18, v11, v2

    iget-object v3, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v11

    move-object/from16 v19, v3

    move v3, v5

    move v9, v4

    move/from16 v4, v18

    move/from16 v18, v5

    move/from16 v20, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    move/from16 v2, v18

    invoke-direct {v0, v1, v9, v2, v7}, Lcom/goodix/gftest/widget/ColumnDiagramView;->drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    add-int/lit8 v6, v20, 0x1

    const/high16 v9, 0x40000000    # 2.0f

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mData:Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

    invoke-virtual {v1}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->getSize()I

    move-result v9

    int-to-float v1, v9

    div-float/2addr v8, v1

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mData:Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

    invoke-virtual {v1}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->getGroupSize()I

    move-result v1

    const v2, 0x3f19999a    # 0.6f

    const/4 v3, 0x1

    mul-float/2addr v2, v8

    if-le v1, v3, :cond_2

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mData:Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

    invoke-virtual {v1}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->getGroupSize()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v2, v1

    :cond_2
    move v13, v2

    move/from16 v14, v16

    :goto_1
    if-ge v14, v9, :cond_5

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mData:Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;

    invoke-virtual {v1, v14}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnData;->getColumnGroup(I)Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;

    move-result-object v15

    int-to-float v1, v14

    mul-float/2addr v1, v8

    add-float v17, v11, v1

    iget v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mScaleLength:F

    add-float v5, v12, v1

    iget-object v6, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v17

    move v3, v12

    move/from16 v4, v17

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v15}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v15}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->getDescription()Ljava/lang/String;

    move-result-object v2

    sub-float v1, v8, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v1, v3

    add-float v1, v17, v1

    iget v4, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mXAxisTextGap:F

    add-float/2addr v4, v12

    iget v5, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextSize:F

    div-float/2addr v5, v3

    add-float/2addr v4, v5

    invoke-direct {v0, v2, v1, v4, v7}, Lcom/goodix/gftest/widget/ColumnDiagramView;->drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    move/from16 v6, v16

    :goto_2
    invoke-virtual {v15}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->getUnitSize()I

    move-result v1

    if-ge v6, v1, :cond_4

    const v1, 0x3e4ccccd    # 0.2f

    mul-float/2addr v1, v8

    add-float v1, v17, v1

    int-to-float v2, v6

    mul-float/2addr v2, v13

    add-float v18, v1, v2

    invoke-virtual {v15, v6}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnGroup;->getColumnUnitData(I)Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;

    move-result-object v19

    iget-object v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColumnPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v19 .. v19}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;->getColor()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {v19 .. v19}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;->getValue()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v10

    iget v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxValue:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    sub-float v20, v12, v1

    add-float v4, v18, v13

    iget-object v5, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColumnPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v3, v20

    move-object/from16 v21, v5

    move v5, v12

    move/from16 v22, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v1, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mShowColumnText:Z

    if-eqz v1, :cond_3

    invoke-virtual/range {v19 .. v19}, Lcom/goodix/gftest/widget/ColumnDiagramView$ColumnUnitData;->getValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v2, v13, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    add-float v2, v18, v2

    iget v4, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mYAxisTextGap:F

    sub-float v20, v20, v4

    iget v4, v0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextSize:F

    div-float/2addr v4, v3

    sub-float v4, v20, v4

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/goodix/gftest/widget/ColumnDiagramView;->drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    goto :goto_3

    :cond_3
    const/high16 v3, 0x40000000    # 2.0f

    :goto_3
    add-int/lit8 v6, v22, 0x1

    goto :goto_2

    :cond_4
    const/high16 v3, 0x40000000    # 2.0f

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_1

    :cond_5
    return-void
.end method

.method private updateColumnPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColumnPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mColumnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateTextPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/goodix/gftest/widget/ColumnDiagramView;->updateColumnDiagram(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public setAxisStrokeWidth(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mAxisStrokeWidth:F

    return-void
.end method

.method public setDefaultColumnColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mDefaultColumnColor:I

    return-void
.end method

.method public setMaxValue(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxValue:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setMaxXAxisScale(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxXAxisScale:I

    return-void
.end method

.method public setMaxYAxisScale(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMaxYAxisScale:I

    return-void
.end method

.method public setMinXAxisLength(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMinXAxisLength:F

    return-void
.end method

.method public setMinYAxisLength(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mMinYAxisLength:F

    return-void
.end method

.method public setScaleLength(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mScaleLength:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mTextSize:F

    return-void
.end method

.method public setXAxisTextGap(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mXAxisTextGap:F

    return-void
.end method

.method public setYAxisTextGap(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/ColumnDiagramView;->mYAxisTextGap:F

    return-void
.end method
