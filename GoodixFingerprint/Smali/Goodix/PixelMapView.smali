.class public Lcom/goodix/gftest/widget/PixelMapView;
.super Landroid/view/View;
.source "PixelMapView.java"


# instance fields
.field private mDefaultPixelColor:I

.field private mMaxPixel:I

.field private mMaxPixelPerLine:I

.field private mMaxPixelWidth:F

.field private mPixelBorderColor:I

.field private mPixelBorderWidth:F

.field private mPixelFillPaint:Landroid/graphics/Paint;

.field private mPixelMapWidth:F

.field private mPixelStatus:[B

.field private mPixelStrokePaint:Landroid/graphics/Paint;

.field private mScaleLength:F

.field private mShowScales:Z

.field private mTextGap:F

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTextSize:F

.field private mUnusedPixelColor:I

.field private mUsedPixelColor:I

.field private mXPixelsPerScale:F

.field private mYPixelsPerScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/gftest/widget/PixelMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/goodix/gftest/widget/PixelMapView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mShowScales:Z

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Lcom/goodix/gftest/R$styleable;->PixelMapView:[I

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    const/16 p3, 0x1000

    :try_start_0
    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setMaxPixel(I)V

    const/16 p2, 0x40

    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setMaxPixelPerLine(I)V

    const/4 p2, 0x2

    const/16 p3, 0x14

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setMaxPixelWidth(I)V

    const/4 p2, 0x7

    const/high16 p3, 0x40000000    # 2.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    float-to-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setPixelBorderWidth(F)V

    const/4 p2, 0x6

    const/high16 p3, -0x1000000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setPixelBorderColor(I)V

    const p2, -0x777778

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setDefaultPixelColor(I)V

    const/16 p2, 0xd

    const/high16 p3, -0x10000

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setUsedPixelColor(I)V

    const/16 p2, 0xc

    const p3, -0xff0100

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setUnusedPixelColor(I)V

    const/16 p2, 0xb

    const/high16 p3, 0x41f00000    # 30.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setTextSize(F)V

    const/16 p2, 0xa

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setTextGap(F)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setScaleLength(F)V

    const/4 p2, 0x4

    const/16 p3, 0x10

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setXPixelsPerScale(F)V

    const/4 p2, 0x5

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setYPixelsPerScale(F)V

    const/16 p2, 0x9

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/goodix/gftest/widget/PixelMapView;->setShowScales(Z)V
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
    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelPaint()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updateTextPaint()V

    return-void
.end method

.method private drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V
    .locals 3

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v1, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float v0, v1, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    sub-float/2addr v0, v1

    add-float/2addr p3, v0

    iget-object p0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p4, p1, p2, p3, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private updatePixelPaint()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelBorderWidth:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updatePixelsMap(Landroid/graphics/Canvas;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget v1, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelMapWidth:F

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixelPerLine:I

    int-to-float v3, v2

    div-float v3, v1, v3

    iget v4, v0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixelWidth:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    int-to-float v2, v2

    div-float v4, v1, v2

    :cond_0
    move v8, v4

    div-float/2addr v1, v8

    float-to-int v9, v1

    iget v1, v0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    div-int v10, v1, v9

    rem-int v11, v1, v9

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelMapWidth:F

    sub-float/2addr v1, v2

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v1, v12

    iget-boolean v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mShowScales:Z

    const/4 v13, 0x0

    const/4 v14, 0x0

    if-eqz v2, :cond_5

    iget-object v1, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    div-int/lit16 v3, v3, 0x400

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " MB"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v1, v14

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextGap:F

    add-float/2addr v1, v2

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    add-float v16, v1, v3

    iget v1, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextSize:F

    add-float/2addr v1, v14

    add-float/2addr v1, v2

    add-float v17, v1, v3

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v2

    sub-float v2, v16, v2

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextGap:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    sub-float/2addr v2, v3

    sub-float v3, v17, v3

    invoke-direct {v0, v1, v2, v3, v7}, Lcom/goodix/gftest/widget/PixelMapView;->drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    const/4 v5, 0x1

    :goto_0
    const/high16 v18, 0x3f800000    # 1.0f

    if-gt v5, v9, :cond_2

    int-to-float v1, v5

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mXPixelsPerScale:F

    rem-float v2, v1, v2

    cmpl-float v2, v2, v14

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    sub-float v2, v16, v18

    mul-float/2addr v1, v8

    add-float v18, v2, v1

    iget v1, v0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    sub-float v20, v17, v1

    iget-object v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v21, v3

    move/from16 v3, v17

    move-object v13, v4

    move/from16 v4, v18

    move/from16 v22, v5

    move/from16 v5, v20

    move-object v15, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    div-float v19, v19, v12

    sub-float v1, v18, v19

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    sub-float v2, v17, v2

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextGap:F

    sub-float/2addr v2, v3

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextSize:F

    div-float/2addr v3, v12

    sub-float/2addr v2, v3

    invoke-direct {v0, v13, v1, v2, v7}, Lcom/goodix/gftest/widget/PixelMapView;->drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    goto :goto_1

    :cond_1
    move/from16 v22, v5

    move-object v15, v6

    :goto_1
    add-int/lit8 v5, v22, 0x1

    move-object v6, v15

    const/4 v13, 0x0

    goto :goto_0

    :cond_2
    move-object v15, v6

    const/4 v12, 0x1

    :goto_2
    if-gt v12, v10, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    mul-int v2, v12, v9

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    iget-object v1, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v19

    int-to-float v1, v12

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mYPixelsPerScale:F

    rem-float v2, v1, v2

    cmpl-float v2, v2, v14

    if-nez v2, :cond_3

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    sub-float v2, v16, v2

    sub-float v3, v17, v18

    mul-float/2addr v1, v8

    add-float v6, v3, v1

    iget-object v5, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v6

    move/from16 v4, v16

    move-object/from16 v21, v5

    move v5, v6

    move v14, v6

    move-object/from16 v6, v21

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    sub-float v1, v16, v19

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mTextGap:F

    sub-float/2addr v1, v2

    iget v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    sub-float/2addr v1, v2

    invoke-direct {v0, v13, v1, v14, v7}, Lcom/goodix/gftest/widget/PixelMapView;->drawTextCenter(Ljava/lang/String;FFLandroid/graphics/Canvas;)V

    :cond_3
    add-int/lit8 v12, v12, 0x1

    const/4 v14, 0x0

    goto :goto_2

    :cond_4
    move/from16 v14, v17

    goto :goto_3

    :cond_5
    move/from16 v16, v1

    const/4 v14, 0x0

    :goto_3
    const/4 v12, 0x0

    :goto_4
    if-ge v12, v10, :cond_b

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v9, :cond_a

    iget-object v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStatus:[B

    if-eqz v2, :cond_8

    mul-int v3, v12, v9

    add-int/2addr v3, v1

    array-length v4, v2

    if-lt v3, v4, :cond_6

    iget v4, v0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    if-ge v3, v4, :cond_6

    goto :goto_6

    :cond_6
    array-length v4, v2

    if-ge v3, v4, :cond_9

    aget-byte v2, v2, v3

    if-lez v2, :cond_7

    iget-object v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mUsedPixelColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_7
    iget-object v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mUnusedPixelColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_7

    :cond_8
    :goto_6
    iget-object v2, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    iget v3, v0, Lcom/goodix/gftest/widget/PixelMapView;->mDefaultPixelColor:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    :cond_9
    :goto_7
    int-to-float v2, v1

    mul-float/2addr v2, v8

    add-float v13, v16, v2

    int-to-float v2, v12

    mul-float/2addr v2, v8

    add-float v15, v14, v2

    add-int/lit8 v6, v1, 0x1

    int-to-float v1, v6

    mul-float/2addr v1, v8

    add-float v17, v16, v1

    add-int/lit8 v1, v12, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float v18, v14, v1

    iget-object v5, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v13

    move v3, v15

    move/from16 v4, v17

    move-object/from16 v19, v5

    move/from16 v5, v18

    move/from16 v21, v6

    move-object/from16 v6, v19

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    move/from16 v1, v21

    goto :goto_5

    :cond_a
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_b
    if-lez v11, :cond_c

    const/4 v13, 0x0

    :goto_8
    if-ge v13, v11, :cond_c

    int-to-float v1, v13

    mul-float/2addr v1, v8

    add-float v9, v16, v1

    int-to-float v1, v10

    mul-float/2addr v1, v8

    add-float v12, v14, v1

    add-int/lit8 v13, v13, 0x1

    int-to-float v1, v13

    mul-float/2addr v1, v8

    add-float v15, v16, v1

    const/16 v17, 0x1

    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v8

    add-float v18, v14, v1

    iget-object v6, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelFillPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v9

    move v3, v12

    move v4, v15

    move/from16 v5, v18

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-object v6, v0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelStrokePaint:Landroid/graphics/Paint;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_8

    :cond_c
    return-void
.end method

.method private updateTextPaint()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextSize:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0, p1}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelsMap(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/4 v2, 0x0

    const/high16 v3, 0x40000000    # 2.0f

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iget v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixelPerLine:I

    div-int v4, p1, v0

    int-to-float v4, v4

    iget v5, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixelWidth:F

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    div-int v0, p1, v0

    int-to-float v5, v0

    :cond_1
    float-to-int v0, v5

    div-int v0, p1, v0

    iget v4, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    div-int v6, v4, v0

    rem-int v0, v4, v0

    if-lez v0, :cond_2

    add-int/lit8 v6, v6, 0x1

    :cond_2
    int-to-float v0, v6

    mul-float/2addr v0, v5

    float-to-int v0, v0

    if-ne v1, v3, :cond_3

    goto :goto_2

    :cond_3
    const/high16 v3, -0x80000000

    if-ne v1, v3, :cond_4

    if-ge v0, p2, :cond_6

    goto :goto_1

    :cond_4
    if-nez v1, :cond_5

    :goto_1
    move p2, v0

    goto :goto_2

    :cond_5
    move p2, v2

    :cond_6
    :goto_2
    iget-boolean v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mShowScales:Z

    if-eqz v0, :cond_7

    int-to-float v0, p1

    iget-object v1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextPaint:Landroid/graphics/Paint;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget v2, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextGap:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelMapWidth:F

    goto :goto_3

    :cond_7
    int-to-float v0, p1

    iput v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelMapWidth:F

    :goto_3
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public setDefaultPixelColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mDefaultPixelColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelPaint()V

    return-void
.end method

.method public setMaxPixel(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    :cond_0
    iget v0, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixel:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setMaxPixelPerLine(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixelPerLine:I

    return-void
.end method

.method public setMaxPixelWidth(I)V
    .locals 0

    int-to-float p1, p1

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mMaxPixelWidth:F

    return-void
.end method

.method public setPixelBorderColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelBorderColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelPaint()V

    return-void
.end method

.method public setPixelBorderWidth(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mPixelBorderWidth:F

    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelPaint()V

    return-void
.end method

.method public setScaleLength(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mScaleLength:F

    return-void
.end method

.method public setShowScales(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mShowScales:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public setTextGap(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextGap:F

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mTextSize:F

    return-void
.end method

.method public setUnusedPixelColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mUnusedPixelColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelPaint()V

    return-void
.end method

.method public setUsedPixelColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mUsedPixelColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/PixelMapView;->updatePixelPaint()V

    return-void
.end method

.method public setXPixelsPerScale(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mXPixelsPerScale:F

    return-void
.end method

.method public setYPixelsPerScale(F)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/PixelMapView;->mYPixelsPerScale:F

    return-void
.end method
