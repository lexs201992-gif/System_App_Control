.class public Lcom/android/keyguard/glance/GlanceView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    xor-int/lit8 v0, v0, 0x1

    sput-boolean v0, Lcom/android/keyguard/glance/GlanceView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/glance/GlanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/glance/GlanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/glance/GlanceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceView;->inflate()V

    return-void
.end method


# virtual methods
.method public final getRect()Landroid/graphics/Rect;
    .locals 6

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Rect;

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v4, v1, v3

    iget-object v5, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getWidth()I

    move-result v5

    add-int/2addr v5, v2

    aget v1, v1, v3

    iget-object p0, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result p0

    add-int/2addr p0, v1

    invoke-direct {v0, v2, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public final inflate()V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d02c0

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/glance/bridge/sdk/ui/TappableTagline;

    iput-object v0, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "GlanceView"

    const-string v1, "Error Inflating Glance Tagline"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public final setAlpha(F)V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/keyguard/glance/GlanceView;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Alpha "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Glance"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setAlpha(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_2

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method
