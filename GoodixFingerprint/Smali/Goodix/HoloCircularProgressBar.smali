.class public Lcom/goodix/gftest/widget/HoloCircularProgressBar;
.super Landroid/view/View;
.source "HoloCircularProgressBar.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBackgroundColorPaint:Landroid/graphics/Paint;

.field private final mCircleBounds:Landroid/graphics/RectF;

.field private mCircleStrokeWidth:I

.field private mGravity:I

.field private mHorizontalInset:I

.field private mIsInitializing:Z

.field private mIsMarkerEnabled:Z

.field private mIsThumbEnabled:Z

.field private mMarkerColorPaint:Landroid/graphics/Paint;

.field private mMarkerProgress:F

.field private mMax:F

.field private mOverrdraw:Z

.field private mProgress:F

.field private mProgressBackgroundColor:I

.field private mProgressColor:I

.field private mProgressColorPaint:Landroid/graphics/Paint;

.field private mRadius:F

.field private final mSquareRect:Landroid/graphics/RectF;

.field private mThumbColorPaint:Landroid/graphics/Paint;

.field private mThumbPosX:F

.field private mThumbPosY:F

.field private mThumbRadius:I

.field private mTranslationOffsetX:F

.field private mTranslationOffsetY:F

.field private mVerticalInset:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/high16 v0, 0x7f030000

    invoke-direct {p0, p1, p2, v0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mSquareRect:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    const/16 v0, 0xa

    iput v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    const/16 v0, 0x11

    iput v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mGravity:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mHorizontalInset:I

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsInitializing:Z

    iput-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    iput-boolean v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsThumbEnabled:Z

    const/4 v3, 0x0

    iput v3, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMarkerProgress:F

    iput-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mOverrdraw:Z

    const v4, 0x3e99999a    # 0.3f

    iput v4, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgress:F

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    iput-object v4, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    const/16 v4, 0x14

    iput v4, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbRadius:I

    iput v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mVerticalInset:I

    sget-object v4, Lcom/goodix/gftest/R$styleable;->HoloCircularProgressBar:[I

    invoke-virtual {p1, p2, v4, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x2

    if-eqz p1, :cond_0

    const/4 p3, 0x5

    const v4, -0xff0001

    :try_start_0
    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setProgressColor(I)V

    const/4 p3, 0x4

    const v4, -0xff0100

    invoke-virtual {p1, p3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setProgressBackgroundColor(I)V

    const/4 p3, 0x3

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setProgress(F)V

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setMarkerProgress(F)V

    const/4 p3, 0x6

    const/high16 v3, 0x41200000    # 10.0f

    invoke-virtual {p1, p3, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setWheelSize(I)V

    const/4 p3, 0x7

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setThumbEnabled(Z)V

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    invoke-virtual {p0, p3}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setMarkerEnabled(Z)V

    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    iput p3, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mGravity:I
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
    iget p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    mul-int/2addr p1, p2

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbRadius:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateBackgroundColor()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateMarkerColor()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateProgressColor()V

    iput-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsInitializing:Z

    return-void
.end method

.method private computeInsets(II)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mGravity:I

    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    invoke-static {v0, v1}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    and-int/lit8 v1, v0, 0x7

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mHorizontalInset:I

    goto :goto_0

    :cond_0
    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mHorizontalInset:I

    goto :goto_0

    :cond_1
    iput v3, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mHorizontalInset:I

    :goto_0
    and-int/lit8 p1, v0, 0x70

    const/16 v0, 0x30

    if-eq p1, v0, :cond_3

    const/16 v0, 0x50

    if-eq p1, v0, :cond_2

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mVerticalInset:I

    goto :goto_1

    :cond_2
    iput p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mVerticalInset:I

    goto :goto_1

    :cond_3
    iput v3, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mVerticalInset:I

    :goto_1
    return-void
.end method

.method private getCurrentRotation()F
    .locals 1

    const/high16 v0, 0x43b40000    # 360.0f

    iget p0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgress:F

    mul-float/2addr p0, v0

    return p0
.end method

.method private updateBackgroundColor()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateMarkerColor()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMarkerColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private updateProgressColor()V
    .locals 3

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbColorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method


# virtual methods
.method public isMarkerEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    return p0
.end method

.method public isThumbEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsThumbEnabled:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mTranslationOffsetX:F

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mTranslationOffsetY:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->getCurrentRotation()F

    move-result v0

    iget-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mOverrdraw:Z

    const/high16 v8, 0x43b40000    # 360.0f

    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    sub-float v1, v8, v0

    neg-float v5, v1

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mBackgroundColorPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :cond_0
    iget-object v3, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    const/high16 v4, 0x43870000    # 270.0f

    iget-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mOverrdraw:Z

    if-eqz v1, :cond_1

    move v5, v8

    goto :goto_0

    :cond_1
    move v5, v0

    :goto_0
    const/4 v6, 0x0

    iget-object v7, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColorPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->isThumbEnabled()Z

    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0, p2}, Landroid/view/View;->getDefaultSize(II)I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/view/View;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v1, p1}, Landroid/view/View;->getDefaultSize(II)I

    move-result v1

    const/4 v2, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, v2, v2}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->computeInsets(II)V

    move v0, v1

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    invoke-direct {p0, v2, v2}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->computeInsets(II)V

    goto :goto_0

    :cond_1
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    sub-int/2addr v1, p1

    sub-int/2addr v0, p1

    invoke-direct {p0, v1, v0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->computeInsets(II)V

    move v0, p1

    :goto_0
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    int-to-float p1, v0

    const/high16 p2, 0x3f000000    # 0.5f

    mul-float/2addr p1, p2

    invoke-virtual {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->isThumbEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbRadius:I

    int-to-float v0, v0

    const v1, 0x3f555555

    :goto_1
    mul-float/2addr v0, v1

    goto :goto_2

    :cond_2
    invoke-virtual {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->isMarkerEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v0, v0

    const v1, 0x3fb33333    # 1.4f

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    :goto_2
    sub-float v0, p1, v0

    sub-float/2addr v0, p2

    iput v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mRadius:F

    iget-object p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleBounds:Landroid/graphics/RectF;

    neg-float v1, v0

    neg-float v2, v0

    invoke-virtual {p2, v1, v2, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mRadius:F

    float-to-double v0, p2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v0, v4

    double-to-float p2, v0

    iput p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbPosX:F

    iget p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mRadius:F

    float-to-double v0, p2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    double-to-float p2, v0

    iput p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mThumbPosY:F

    iget p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mHorizontalInset:I

    int-to-float p2, p2

    add-float/2addr p2, p1

    iput p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mTranslationOffsetX:F

    iget p2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mVerticalInset:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mTranslationOffsetY:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setProgress(F)V

    const-string v0, "marker_progress"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->setMarkerProgress(F)V

    const-string v0, "progress_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColor:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateProgressColor()V

    :cond_0
    const-string v0, "progress_background_color"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressBackgroundColor:I

    if-eq v0, v1, :cond_1

    iput v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateBackgroundColor()V

    :cond_1
    const-string v0, "thumb_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsThumbEnabled:Z

    const-string v0, "marker_visible"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    const-string v0, "saved_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    :cond_2
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "saved_state"

    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "progress"

    iget v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "marker_progress"

    iget v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMarkerProgress:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "progress_color"

    iget v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "progress_background_color"

    iget v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "thumb_visible"

    iget-boolean v2, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsThumbEnabled:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "marker_visible"

    iget-boolean p0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public setMarkerEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    return-void
.end method

.method public setMarkerProgress(F)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsMarkerEnabled:Z

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMarkerProgress:F

    return-void
.end method

.method public setMax(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    :cond_0
    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMax:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMax:F

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method public setProgress(F)V
    .locals 2

    iget v0, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mMax:F

    cmpl-float v1, p1, v0

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mOverrdraw:Z

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgress:F

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mOverrdraw:Z

    :goto_0
    div-float/2addr p1, v0

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgress:F

    iget-boolean p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsInitializing:Z

    if-nez p1, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1
    return-void
.end method

.method public setProgressBackgroundColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressBackgroundColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateMarkerColor()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateBackgroundColor()V

    return-void
.end method

.method public setProgressColor(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mProgressColor:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateProgressColor()V

    return-void
.end method

.method public setThumbEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mIsThumbEnabled:Z

    return-void
.end method

.method public setWheelSize(I)V
    .locals 0

    iput p1, p0, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->mCircleStrokeWidth:I

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateBackgroundColor()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateMarkerColor()V

    invoke-direct {p0}, Lcom/goodix/gftest/widget/HoloCircularProgressBar;->updateProgressColor()V

    return-void
.end method
