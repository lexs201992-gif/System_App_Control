.class public Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;
.super Landroid/text/method/LinkMovementMethod;
.source "LinkTouchRippleMovementMethod.java"


# instance fields
.field private mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/text/method/LinkMovementMethod;-><init>()V

    return-void
.end method

.method private getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/ape/setupwizard/utils/TouchableRippleSpan;
    .locals 2

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result p1

    const-class p3, Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    invoke-interface {p2, p1, p1, p3}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    array-length v0, p3

    if-lez v0, :cond_0

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-direct {p0, p1, p2, v1}, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    aget-object p0, p3, v0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private positionWithinTag(ILandroid/text/Spannable;Ljava/lang/Object;)Z
    .locals 0

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p0

    if-lt p1, p0, :cond_0

    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    move-result-object p1

    iput-object p1, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    if-eqz p1, :cond_3

    invoke-virtual {p1, v1}, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->setPressed(Z)V

    iget-object p1, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    invoke-interface {p2, p1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    iget-object p0, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    invoke-interface {p2, p0}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p2, p1, p0}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ne v0, v2, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->getPressedSpan(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    move-result-object p1

    iget-object p3, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    if-eqz p3, :cond_3

    if-eq p1, p3, :cond_3

    invoke-virtual {p3, v3}, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->setPressed(Z)V

    iput-object v4, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v3}, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->setPressed(Z)V

    invoke-super {p0, p1, p2, p3}, Landroid/text/method/LinkMovementMethod;->onTouchEvent(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z

    :cond_2
    iput-object v4, p0, Lcom/ape/setupwizard/utils/LinkTouchRippleMovementMethod;->mPressedSpan:Lcom/ape/setupwizard/utils/TouchableRippleSpan;

    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    :cond_3
    :goto_0
    return v1
.end method
