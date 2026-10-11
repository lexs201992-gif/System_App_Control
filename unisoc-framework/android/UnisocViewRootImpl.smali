.class public Landroid/view/UnisocViewRootImpl;
.super Landroid/view/ViewRootImpl;
.source "UnisocViewRootImpl.java"


# static fields
.field static final blacklist HEIGHT_TO_SKIP:I = 0x14

.field private static final blacklist PROPERTY_DEBUG_EVENT_DROP:Ljava/lang/String; = "debug.enable.event.drop"

.field private static final blacklist TAG:Ljava/lang/String; = "UnisocViewRootImpl"


# instance fields
.field private blacklist mHasCompatScaleIsr:[Ljava/lang/String;

.field blacklist mIsSupportDynamicNavbar:Z

.field blacklist mSwipeFromBottom:Z

.field private blacklist sDebugEventDrop:Z


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->mIsSupportDynamicNavbar:Z

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->sDebugEventDrop:Z

    iget-object v1, p0, Landroid/view/UnisocViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v1

    iput v1, p0, Landroid/view/UnisocViewRootImpl;->mDisplayHeight:I

    invoke-virtual {p0}, Landroid/view/UnisocViewRootImpl;->isSupportDynamicNavbar()Z

    move-result v1

    iput-boolean v1, p0, Landroid/view/UnisocViewRootImpl;->mIsSupportDynamicNavbar:Z

    const-string v1, "debug.enable.event.drop"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->sDebugEventDrop:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x801002c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/UnisocViewRootImpl;->mHasCompatScaleIsr:[Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowlessWindowLayout;)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/ViewRootImpl;-><init>(Landroid/content/Context;Landroid/view/Display;Landroid/view/IWindowSession;Landroid/view/WindowLayout;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->mIsSupportDynamicNavbar:Z

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    iput-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->sDebugEventDrop:Z

    return-void
.end method


# virtual methods
.method blacklist dropIfNeeded(Landroid/view/InputEvent;)Z
    .locals 11

    const-string v0, "throw exception, "

    const/4 v1, 0x0

    iget-boolean v2, p0, Landroid/view/UnisocViewRootImpl;->mIsSupportDynamicNavbar:Z

    const-string v3, "UnisocViewRootImpl"

    if-eqz v2, :cond_0

    instance-of v2, p1, Landroid/view/MotionEvent;

    if-eqz v2, :cond_0

    move-object v2, p1

    check-cast v2, Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v4, :pswitch_data_0

    iget-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    if-ne v0, v6, :cond_0

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_0
    iget-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    if-ne v0, v6, :cond_0

    iput-boolean v5, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_1
    iput-boolean v5, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    const/4 v4, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/IWindowManager;->canNavigationBarMove()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v5, p0, Landroid/view/UnisocViewRootImpl;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getOrientation()I

    move-result v5

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0, v5, v4, v2}, Landroid/view/UnisocViewRootImpl;->shouldDropPoint(IZLandroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_0

    :try_start_1
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/IWindowManager;->isKeyguardShowingAndNotOccluded()Z

    move-result v9

    move v7, v9

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v9

    invoke-interface {v9}, Landroid/view/IWindowManager;->isNavigationBarShowing()Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move v8, v0

    goto :goto_1

    :catch_1
    move-exception v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-nez v7, :cond_0

    if-nez v8, :cond_0

    iput-boolean v6, p0, Landroid/view/UnisocViewRootImpl;->mSwipeFromBottom:Z

    const/4 v1, 0x1

    :cond_0
    :goto_2
    iget-boolean v0, p0, Landroid/view/UnisocViewRootImpl;->sDebugEventDrop:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dropIfNeeded isDrop = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method blacklist hasCompatScaleIsr(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Landroid/view/UnisocViewRootImpl;->mHasCompatScaleIsr:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    if-eqz v4, :cond_1

    invoke-virtual {v4, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "android"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method blacklist isSupportDynamicNavbar()Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iget-object v2, p0, Landroid/view/UnisocViewRootImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/IWindowManager;->hasNavigationBar(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "UnisocViewRootImpl"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    return v2
.end method

.method blacklist removeAccessibilityListener()V
    .locals 2

    iget-object v0, p0, Landroid/view/UnisocViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0}, Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;->ensureNoConnection()V

    iget-object v0, p0, Landroid/view/UnisocViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/UnisocViewRootImpl;->mAccessibilityInteractionConnectionManager:Landroid/view/ViewRootImpl$AccessibilityInteractionConnectionManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeAccessibilityStateChangeListener(Landroid/view/accessibility/AccessibilityManager$AccessibilityStateChangeListener;)Z

    iget-object v0, p0, Landroid/view/UnisocViewRootImpl;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    iget-object v1, p0, Landroid/view/UnisocViewRootImpl;->mHighContrastTextManager:Landroid/view/ViewRootImpl$HighContrastTextManager;

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->removeHighTextContrastStateChangeListener(Landroid/view/accessibility/AccessibilityManager$HighTextContrastChangeListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/view/UnisocViewRootImpl;->setAccessibilityFocus(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    return-void
.end method

.method blacklist shouldDropPoint(IZLandroid/view/MotionEvent;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_3

    rem-int/lit8 v2, p1, 0x2

    if-nez v2, :cond_0

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Landroid/view/UnisocViewRootImpl;->mDisplayHeight:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_0
    rem-int/lit8 v2, p1, 0x4

    if-ne v2, v1, :cond_1

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v3, p0, Landroid/view/UnisocViewRootImpl;->mDisplayHeight:I

    add-int/lit8 v3, v3, -0x14

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-gtz v2, :cond_2

    :cond_1
    rem-int/lit8 v2, p1, 0x4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    const/high16 v3, 0x41a00000    # 20.0f

    cmpg-float v2, v2, v3

    if-gez v2, :cond_3

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v2, v0

    :goto_0
    if-nez p2, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    iget v4, p0, Landroid/view/UnisocViewRootImpl;->mDisplayHeight:I

    add-int/lit8 v4, v4, -0x14

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_4

    move v3, v1

    goto :goto_1

    :cond_4
    move v3, v0

    :goto_1
    if-nez v2, :cond_5

    if-eqz v3, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    return v0
.end method
