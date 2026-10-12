.class public abstract Lcom/ape/setupwizard/utils/TouchableRippleSpan;
.super Landroid/text/style/ClickableSpan;
.source "TouchableRippleSpan.java"


# instance fields
.field private mIsPressed:Z

.field private mNormalBackgroundColor:I

.field private mNormalTextColor:I

.field private mPressedBackgroundColor:I

.field private mPressedTextColor:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput p1, p0, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->mNormalTextColor:I

    iput p2, p0, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->mNormalBackgroundColor:I

    iput p3, p0, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->mPressedTextColor:I

    iput p4, p0, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->mPressedBackgroundColor:I

    return-void
.end method


# virtual methods
.method public setPressed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ape/setupwizard/utils/TouchableRippleSpan;->mIsPressed:Z

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method
