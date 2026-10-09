.class public final Lcom/glance/bridge/sdk/ui/TappableTagline;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"

# interfaces
.implements Landroidx/lifecycle/LifecycleOwner;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public backImageBitmap:Landroid/graphics/Bitmap;

.field public backImageUri:Landroid/net/Uri;

.field public ctaBgColor:I

.field public downX:F

.field public downY:F

.field public glanceBundle:Landroid/os/Bundle;

.field public glanceId:Ljava/lang/String;

.field public glanceLogo:Landroid/widget/ImageView;

.field public i:I

.field public iconLockscreen2:Landroid/widget/ImageView;

.field public isAOD:Z

.field public final mContext:Landroid/content/Context;

.field public mCtaText:Landroid/widget/TextView;

.field public mExec:Lkotlin/jvm/functions/Function0;

.field public mFetchingNextGlance:Z

.field public mGlanceContextHolder:Landroid/widget/LinearLayout;

.field public mGlanceContextIcon:Landroid/widget/ImageView;

.field public mGlanceContextText:Landroid/widget/TextView;

.field public mIsFaceEnrolled:Z

.field public mIsUdfpsEnrolled:Z

.field public mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

.field public mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public mPendingGsEvent:Z

.field public final mReactivationNudgeContentObserver:Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

.field public mRibbonIcon:Landroid/widget/ImageView;

.field public mRibbonSubText:Landroid/widget/TextView;

.field public mStoryTitle:Landroid/widget/TextView;

.field public misUnlocked:Z

.field public mrFlowCount:I

.field public nudgeFrameLayout:Landroid/widget/FrameLayout;

.field public reactivationWidgetRemoteView:Landroid/widget/RemoteViews;

.field public realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public storyBtnAction2:Landroid/widget/TextView;

.field public storyCategoryText2:Landroid/widget/TextView;

.field public storyDotIcon2:Landroid/widget/ImageView;

.field public storySourceIcon2:Landroid/widget/ImageView;

.field public storySourceText2:Landroid/widget/TextView;

.field public storyTitle2:Landroid/widget/TextView;

.field public taglineState:Ljava/lang/Integer;

.field public tappableTaglineY:I

.field public textBgColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    invoke-direct {v1, p0, v0}, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mReactivationNudgeContentObserver:Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    const/4 v0, -0x1

    iput v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    const-string v0, "#00ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->ctaBgColor:I

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->textBgColor:I

    iput-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/glance/bridge/sdk/ui/TappableTagline;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v0, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    invoke-direct {v0, p0, p2}, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mReactivationNudgeContentObserver:Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    const/4 p2, -0x1

    iput p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    const-string p2, "#00ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->ctaBgColor:I

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->textBgColor:I

    iput-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/glance/bridge/sdk/ui/TappableTagline;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    invoke-direct {p3, p0, p2}, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mReactivationNudgeContentObserver:Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    const/4 p2, -0x1

    iput p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    const-string p2, "#00ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->ctaBgColor:I

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->textBgColor:I

    iput-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/glance/bridge/sdk/ui/TappableTagline;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iput-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    new-instance p2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p3, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    invoke-direct {p3, p0, p2}, Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mReactivationNudgeContentObserver:Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    const/4 p2, -0x1

    iput p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    const-string p2, "#00ffffff"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p3

    iput p3, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->ctaBgColor:I

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->textBgColor:I

    iput-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/glance/bridge/sdk/ui/TappableTagline;->init()V

    return-void
.end method


# virtual methods
.method public final getLifecycle()Landroidx/lifecycle/LifecycleRegistry;
    .locals 0

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    return-object p0
.end method

.method public final getTaglineY()Ljava/lang/Integer;
    .locals 7

    iget v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget v2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    rem-int/lit8 v2, v2, 0x14

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    :try_start_0
    sget-object v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, v0, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->contentProviderWrapper:Lcom/glance/bridge/sdk/ContentProviderWrapper;

    sget-object v3, Lcom/glance/bridge/sdk/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    const-string v4, "GET_TAGLINE_Y"

    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    const-string v6, "UDFPS_Y"
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    if-eqz v2, :cond_2

    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v5, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_2
    invoke-virtual {v0, v3, v4, v5}, Lcom/glance/bridge/sdk/ContentProviderWrapper;->call(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_0
    :try_start_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    :cond_4
    iget v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GLANCEDEBUG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->tappableTaglineY:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final init()V
    .locals 6

    new-instance v0, Landroidx/lifecycle/LifecycleRegistry;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/LifecycleRegistry;-><init>(Landroidx/lifecycle/LifecycleOwner;Z)V

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v2, Landroidx/lifecycle/Lifecycle$State;->CREATED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v2}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    const-class v2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;

    monitor-enter v2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v4, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    new-instance v5, Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-direct {v5, v0}, Lcom/glance/bridge/sdk/ContentProviderWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v5}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;-><init>(Landroid/content/Context;Lcom/glance/bridge/sdk/ContentProviderWrapper;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    sput-object v4, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    const-string v3, "oem_glance_setting"

    invoke-virtual {v0, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :cond_1
    sput-object v3, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->oemDataStore:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "glance_triggered"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "Glance"

    const-string v2, "Launching Glance for the first time after OOBE"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "state_glance_lockscreen"

    invoke-static {v0, v2, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    if-nez v0, :cond_3

    const-string v0, "Glance"

    const-string v2, "EULA NOT ACCEPTED"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz v0, :cond_4

    sget-object v2, Lcom/glance/bridge/sdk/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eula"

    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->contentProviderWrapper:Lcom/glance/bridge/sdk/ContentProviderWrapper;

    const-string v4, "SET_EULA_STATE"

    invoke-virtual {v0, v2, v4, v3}, Lcom/glance/bridge/sdk/ContentProviderWrapper;->call(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->eulaAccepted()V

    :cond_4
    :goto_2
    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "glance_triggered"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "GLANCEDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2

    throw p0
.end method

.method public final onDozeAmountChanged(FF)V
    .locals 7

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "onDozeAmountChanged "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "GLANCEDEBUG"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    cmpg-float p2, p1, p2

    const-string v0, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    const v1, 0x7f080670

    const/4 v2, 0x1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez p2, :cond_8

    iput-boolean v4, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->isAOD:Z

    iget-object v6, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_2
    if-eqz v5, :cond_5

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    iget v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->ctaBgColor:I

    invoke-virtual {v5, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_3
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iget v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->textBgColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v1, v3, [F

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v1, :cond_4

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_d

    const-string v0, "#991232"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_0
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz p0, :cond_d

    invoke-virtual {p0, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    :cond_8
    iput-boolean v2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->isAOD:Z

    iget-object v6, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v6, :cond_9

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_9
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    :cond_a
    if-eqz v5, :cond_11

    check-cast v5, Landroid/graphics/drawable/GradientDrawable;

    const-string v0, "#00ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz v1, :cond_b

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_b
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v1, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    new-array v3, v3, [F

    fill-array-data v3, :array_1

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    iget-object v3, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v3, :cond_c

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_d

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    :cond_d
    :goto_1
    const/high16 p0, 0x3f800000    # 1.0f

    cmpg-float p0, p1, p0

    if-eqz p0, :cond_e

    if-nez p2, :cond_10

    :cond_e
    sget-object p1, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p1, :cond_10

    if-nez p0, :cond_f

    goto :goto_2

    :cond_f
    move v2, v4

    :goto_2
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->isUdfpsEnrolled(Ljava/lang/Boolean;)Z

    :cond_10
    return-void

    :cond_11
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x42480000    # 50.0f
        0x0
        0x0
    .end array-data
.end method

.method public final onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    const v0, 0x7f0a0567

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a06ef

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mStoryTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0771

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextText:Landroid/widget/TextView;

    const v0, 0x7f0a033b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02e0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0203

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    const v0, 0x7f0a05e4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a06fa

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonSubText:Landroid/widget/TextView;

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceLogo:Landroid/widget/ImageView;

    const v0, 0x7f0a05bf

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0a06f0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyTitle2:Landroid/widget/TextView;

    const v0, 0x7f0a06f5

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceText2:Landroid/widget/TextView;

    const v0, 0x7f0a06f3

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyDotIcon2:Landroid/widget/ImageView;

    const v0, 0x7f0a06f2

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyCategoryText2:Landroid/widget/TextView;

    const v0, 0x7f0a06f1

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyBtnAction2:Landroid/widget/TextView;

    const v0, 0x7f0a06f4

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceIcon2:Landroid/widget/ImageView;

    const v0, 0x7f0a0340

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->iconLockscreen2:Landroid/widget/ImageView;

    const v0, 0x7f0a052b

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->nudgeFrameLayout:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mLifecycle:Landroidx/lifecycle/LifecycleRegistry;

    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->STARTED:Landroidx/lifecycle/Lifecycle$State;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LifecycleRegistry;->setCurrentState(Landroidx/lifecycle/Lifecycle$State;)V

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "show_reactivation_nudge"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mReactivationNudgeContentObserver:Lcom/glance/bridge/sdk/ui/TappableTagline$mReactivationNudgeContentObserver$1;

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public final sendGlanceStartedEvent()V
    .locals 5

    const-string v0, "GLANCEDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sendGlanceStartedEvent => fetchingNextGlance: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mFetchingNextGlance:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pendingGsEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPendingGsEvent:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", glanceId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    sget-object v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mFetchingNextGlance:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->glanceStartedEvent(Ljava/lang/String;)V

    :cond_0
    iput-boolean v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPendingGsEvent:Z

    goto :goto_2

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPendingGsEvent:Z

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    const-class v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x0

    if-eqz p0, :cond_3

    :try_start_1
    new-instance v3, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    new-instance v4, Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-direct {v4, p0}, Lcom/glance/bridge/sdk/ContentProviderWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p0, v4}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;-><init>(Landroid/content/Context;Lcom/glance/bridge/sdk/ContentProviderWrapper;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_3
    move-object v3, v2

    :goto_0
    sput-object v3, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p0, :cond_4

    const-string v2, "oem_glance_setting"

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    :cond_4
    sput-object v2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->oemDataStore:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0

    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string v0, "GLANCEDEBUG"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public final setRealmeTaglineVisibility()V
    .locals 4

    iget v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyTitle2:Landroid/widget/TextView;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceText2:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyDotIcon2:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyCategoryText2:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyBtnAction2:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_4
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceIcon2:Landroid/widget/ImageView;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_5
    const-string v0, "Glance"

    const-string v3, "condition 12"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v2, v1}, Lcom/glance/bridge/sdk/ui/TappableTagline;->setTaglineVisibility(IZ)V

    return-void
.end method

.method public final setTaglineVisibility(IZ)V
    .locals 6

    iget v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    rem-int/lit8 v0, v0, 0x14

    const/4 v1, 0x0

    if-nez v0, :cond_2

    :try_start_0
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    const-class v2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;

    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v4, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    new-instance v5, Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-direct {v5, v0}, Lcom/glance/bridge/sdk/ContentProviderWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v4, v0, v5}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;-><init>(Landroid/content/Context;Lcom/glance/bridge/sdk/ContentProviderWrapper;)V

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    sput-object v4, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz v0, :cond_1

    const-string v3, "oem_glance_setting"

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    :cond_1
    sput-object v3, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->oemDataStore:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    const-string v2, "GLANCEDEBUG"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const/16 v2, 0x8

    if-eqz v0, :cond_d

    const-string/jumbo v3, "wallpaper"

    const/4 v4, 0x1

    invoke-static {v0, v3, v4}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    if-nez v0, :cond_d

    if-eqz p2, :cond_d

    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "state_glance_lockscreen"

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, v4, :cond_3

    move v1, v4

    :cond_3
    if-nez v1, :cond_4

    goto :goto_5

    :cond_4
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    if-nez p2, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-eqz p2, :cond_a

    :goto_2
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->taglineState:Ljava/lang/Integer;

    if-nez p2, :cond_6

    goto :goto_3

    :cond_6
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v4, :cond_7

    goto :goto_4

    :cond_7
    :goto_3
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_8

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_8
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_9

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_9
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/glance/bridge/sdk/ui/TappableTagline;->updateMargins(Landroid/view/ViewGroup;)V

    goto :goto_6

    :cond_a
    :goto_4
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_b

    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_b
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_c

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_c
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p0, p1}, Lcom/glance/bridge/sdk/ui/TappableTagline;->updateMargins(Landroid/view/ViewGroup;)V

    goto :goto_6

    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p1, :cond_e

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_e
    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p0, :cond_f

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_f
    :goto_6
    return-void
.end method

.method public final setUpGlanceTagline(Lglance/content/sdk/model/GlanceContent;Ljava/lang/Boolean;)V
    .locals 16

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/GlanceContext;->getText()Lglance/content/sdk/model/RichText;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/RichText;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v2

    invoke-virtual {v2}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v2

    invoke-virtual {v2}, Lglance/content/sdk/model/GlanceContext;->getText()Lglance/content/sdk/model/RichText;

    move-result-object v2

    invoke-virtual {v2}, Lglance/content/sdk/model/RichText;->getColor()Ljava/lang/String;

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v2

    invoke-virtual {v2}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v2

    invoke-virtual {v2}, Lglance/content/sdk/model/GlanceContext;->getBgColor()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v3

    invoke-virtual {v3}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v3

    invoke-virtual {v3}, Lglance/content/sdk/model/GlanceContext;->getIcon()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    move-object v3, v2

    move-object v2, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v2, v0

    move-object v3, v2

    move-object v4, v3

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getRibbonBgColor()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getCtaBgColor()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getIconUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v8

    invoke-virtual {v8}, Lglance/content/sdk/model/PeekData;->getSubText()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v9

    invoke-virtual {v9}, Lglance/content/sdk/model/PeekData;->getCtaText()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz p2, :cond_a

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Boolean;->booleanValue()Z

    iget v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    const v13, 0x7fffffff

    if-ne v12, v13, :cond_1

    iput v11, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    :cond_1
    iget v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    add-int/2addr v12, v10

    iput v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->i:I

    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextText:Landroid/widget/TextView;

    if-eqz v12, :cond_2

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mStoryTitle:Landroid/widget/TextView;

    if-eqz v12, :cond_3

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_3
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextIcon:Landroid/widget/ImageView;

    if-eqz v12, :cond_4

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_5

    invoke-virtual {v12, v11}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_5
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v12, :cond_6

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_6
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonIcon:Landroid/widget/ImageView;

    if-eqz v12, :cond_7

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_7
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonSubText:Landroid/widget/TextView;

    if-eqz v12, :cond_8

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_8
    iget-object v12, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceLogo:Landroid/widget/ImageView;

    if-eqz v12, :cond_9

    invoke-virtual {v12, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_9
    invoke-virtual {v1, v11, v10}, Lcom/glance/bridge/sdk/ui/TappableTagline;->setTaglineVisibility(IZ)V

    :cond_a
    const-string v12, ""

    const-string v13, "GLANCEDEBUG"

    const/16 v14, 0x8

    if-eqz v0, :cond_e

    :try_start_0
    iget-object v15, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    const-string v10, "connectivity"

    invoke-virtual {v15, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_d

    check-cast v10, Landroid/net/ConnectivityManager;

    invoke-virtual {v10}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v10

    if-eqz v10, :cond_b

    invoke-virtual {v10}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    goto :goto_1

    :cond_b
    move v10, v11

    :goto_1
    if-eqz v10, :cond_e

    iget-object v10, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonIcon:Landroid/widget/ImageView;

    if-eqz v10, :cond_c

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_c
    new-instance v10, Lcom/glance/bridge/sdk/ui/TappableTagline$IconUrlTask;

    invoke-direct {v10, v1}, Lcom/glance/bridge/sdk/ui/TappableTagline$IconUrlTask;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_d
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v10, "null cannot be cast to non-null type android.net.ConnectivityManager"

    invoke-direct {v0, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_f

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v13, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_f
    :goto_2
    if-eqz v9, :cond_12

    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v0, :cond_10

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_10
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_11
    invoke-static {v7}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->ctaBgColor:I

    goto :goto_3

    :cond_12
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v0, :cond_13

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_13
    :goto_3
    if-eqz v8, :cond_14

    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_14
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mRibbonSubText:Landroid/widget/TextView;

    if-eqz v0, :cond_15

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_15
    :goto_4
    if-eqz v4, :cond_16

    :try_start_1
    invoke-static {v4, v11}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    array-length v4, v0

    invoke-static {v0, v11, v4}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v4, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextIcon:Landroid/widget/ImageView;

    if-eqz v4, :cond_17

    invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v4, "Glance"

    const-string v7, "Error in processing the base64 encoding of icon"

    invoke-static {v4, v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_16
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_17

    invoke-virtual {v0, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_17
    :goto_5
    if-eqz v2, :cond_19

    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextText:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    if-eqz v3, :cond_1b

    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1b

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6

    :cond_19
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextHolder:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1a

    invoke-virtual {v0, v14}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_1a
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mGlanceContextText:Landroid/widget/TextView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v14}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1b
    :goto_6
    :try_start_2
    invoke-static {v6}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    :catch_2
    move-exception v0

    move-object v2, v0

    const-string v0, "#00FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :goto_7
    iput v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->textBgColor:I

    if-eqz v5, :cond_1c

    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mStoryTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1c

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1c
    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz v0, :cond_1d

    new-instance v2, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpGlanceTagline$1;

    invoke-direct {v2, v1}, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpGlanceTagline$1;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->mCtaText:Landroid/widget/TextView;

    if-eqz v0, :cond_1d

    new-instance v2, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpGlanceTagline$2;

    invoke-direct {v2, v1}, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpGlanceTagline$2;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1d
    iget-boolean v0, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->isAOD:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v0}, Lcom/glance/bridge/sdk/ui/TappableTagline;->onDozeAmountChanged(FF)V

    :cond_1e
    return-void
.end method

.method public final setUpRealmeTagline(Lglance/content/sdk/model/GlanceContent;)V
    .locals 9

    :try_start_0
    invoke-virtual {p0}, Lcom/glance/bridge/sdk/ui/TappableTagline;->setRealmeTaglineVisibility()V

    invoke-virtual {p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lglance/content/sdk/model/GlanceContent;->getPeek()Lglance/content/sdk/model/Peek;

    move-result-object v1

    invoke-virtual {v1}, Lglance/content/sdk/model/Peek;->getType()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    const/4 v5, 0x4

    if-eq v1, v5, :cond_1

    const/4 v5, 0x5

    if-eq v1, v5, :cond_0

    const/4 v5, 0x6

    if-eq v1, v5, :cond_1

    const/4 v5, 0x7

    if-eq v1, v5, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_5

    if-eq v1, v3, :cond_4

    if-eq v1, v4, :cond_3

    const/4 v4, 0x3

    if-eq v1, v4, :cond_2

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceIcon2:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const v4, 0x7f080671

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceIcon2:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const v4, 0x7f08066d

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceIcon2:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const v4, 0x7f080673

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceIcon2:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    const v4, 0x7f08066b

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyTitle2:Landroid/widget/TextView;

    if-eqz v1, :cond_7

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_7
    invoke-virtual {p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getSubText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceText2:Landroid/widget/TextView;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v2

    move v6, v5

    :goto_2
    if-gt v5, v4, :cond_f

    if-nez v6, :cond_8

    move v7, v5

    goto :goto_3

    :cond_8
    move v7, v4

    :goto_3
    invoke-virtual {v0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ge v7, v8, :cond_9

    const/4 v7, -0x1

    goto :goto_4

    :cond_9
    if-ne v7, v8, :cond_a

    move v7, v2

    goto :goto_4

    :cond_a
    move v7, v3

    :goto_4
    if-gtz v7, :cond_b

    move v7, v3

    goto :goto_5

    :cond_b
    move v7, v2

    :goto_5
    if-nez v6, :cond_d

    if-nez v7, :cond_c

    move v6, v3

    goto :goto_2

    :cond_c
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_d
    if-nez v7, :cond_e

    goto :goto_6

    :cond_e
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    :cond_f
    :goto_6
    add-int/2addr v4, v3

    invoke-virtual {v0, v5, v4}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceText2:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_11
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyDotIcon2:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    :cond_12
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceText2:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_13
    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyDotIcon2:Landroid/widget/ImageView;

    if-eqz v0, :cond_14

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_14
    :goto_7
    const-string v0, ""

    invoke-virtual {p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v1

    invoke-virtual {v1}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-virtual {p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/PeekData;->getGlanceContext()Lglance/content/sdk/model/GlanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/GlanceContext;->getText()Lglance/content/sdk/model/RichText;

    move-result-object v0

    invoke-virtual {v0}, Lglance/content/sdk/model/RichText;->getText()Ljava/lang/String;

    move-result-object v0

    :cond_15
    iget-object v1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyCategoryText2:Landroid/widget/TextView;

    if-eqz v1, :cond_17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    const-string v0, "GLANCE"

    :cond_16
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_17
    invoke-virtual {p1}, Lglance/content/sdk/model/GlanceContent;->getPeekData()Lglance/content/sdk/model/PeekData;

    move-result-object p1

    invoke-virtual {p1}, Lglance/content/sdk/model/PeekData;->getCtaText()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyBtnAction2:Landroid/widget/TextView;

    if-eqz v0, :cond_18

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_18
    sget-object p1, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p1, :cond_1c

    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyTitle2:Landroid/widget/TextView;

    if-eqz p1, :cond_19

    new-instance v0, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$2;

    invoke-direct {v0, p0}, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$2;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_19
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storySourceText2:Landroid/widget/TextView;

    if-eqz p1, :cond_1a

    new-instance v0, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$3;

    invoke-direct {v0, p0}, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$3;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1a
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->storyBtnAction2:Landroid/widget/TextView;

    if-eqz p1, :cond_1b

    new-instance v0, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$4;

    invoke-direct {v0, p0}, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$4;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1b
    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->iconLockscreen2:Landroid/widget/ImageView;

    if-eqz p1, :cond_1c

    new-instance v0, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$5;

    invoke-direct {v0, p0}, Lcom/glance/bridge/sdk/ui/TappableTagline$setUpRealmeTagline$5;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_8

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1c
    :goto_8
    return-void
.end method

.method public final startPeeking(FZ)V
    .locals 5

    const-string v0, "GLANCEDEBUG"

    const-string/jumbo v1, "startPeeking "

    invoke-static {v1, p2, v0}, Lcom/android/keyguard/CarrierTextManager$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    const/4 v0, 0x0

    int-to-float v1, v0

    cmpl-float p1, p1, v1

    if-lez p1, :cond_e

    sget-object p1, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    const/4 v1, 0x0

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    const-class v2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;

    monitor-enter v2

    if-eqz p1, :cond_0

    :try_start_0
    new-instance v3, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    new-instance v4, Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-direct {v4, p1}, Lcom/glance/bridge/sdk/ContentProviderWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v3, p1, v4}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;-><init>(Landroid/content/Context;Lcom/glance/bridge/sdk/ContentProviderWrapper;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    move-object v3, v1

    :goto_0
    sput-object v3, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p1, :cond_1

    const-string v3, "oem_glance_setting"

    invoke-virtual {p1, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    goto :goto_1

    :cond_1
    move-object p1, v1

    :goto_1
    sput-object p1, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->oemDataStore:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    goto :goto_3

    :goto_2
    monitor-exit v2

    throw p0

    :cond_2
    :goto_3
    const/4 p1, 0x1

    if-eqz p2, :cond_c

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result p2

    const/4 v1, 0x0

    cmpg-float p2, p2, v1

    if-nez p2, :cond_6

    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "should_show_glance_wallpaper"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_3

    move p2, p1

    goto :goto_4

    :cond_3
    move p2, v0

    :goto_4
    if-nez p2, :cond_4

    sget-object p2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const-string v0, "ls"

    invoke-virtual {p2, p0, v0, p1}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->startPeek(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_4
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v1, "wallpaper"

    invoke-static {p2, v1, p1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const-string v0, "ls"

    invoke-virtual {p2, p0, v0, p1}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->startPeek(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_5
    sget-object p1, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const-string p2, "ls"

    invoke-virtual {p1, p0, p2, v0}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->startPeek(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_6
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mPeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_7

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->realmePeekRibbon:Landroidx/constraintlayout/widget/ConstraintLayout;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_9

    :cond_8
    sget-object p2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const-string v0, "ls"

    invoke-virtual {p2, p0, v0, p1}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->startPeek(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_6

    :cond_9
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v1, "should_show_glance_wallpaper"

    invoke-static {p2, v1, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-ne p2, p1, :cond_a

    move v0, p1

    :cond_a
    if-nez v0, :cond_b

    sget-object p2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const-string v0, "ls"

    invoke-virtual {p2, p0, v0, p1}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->startPeek(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_b
    iget-object p2, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "wallpaper"

    invoke-static {p2, v0, p1}, Lkotlin/text/StringsKt__StringsKt;->contains(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result p2

    if-eqz p2, :cond_e

    sget-object p2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p2, :cond_e

    iget-object p0, p0, Lcom/glance/bridge/sdk/ui/TappableTagline;->glanceId:Ljava/lang/String;

    const-string v0, "ls"

    invoke-virtual {p2, p0, v0, p1}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->startPeek(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_6

    :cond_c
    sget-object p0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p0, :cond_e

    :try_start_1
    iget-object p0, p0, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->contentProviderWrapper:Lcom/glance/bridge/sdk/ContentProviderWrapper;

    sget-object p2, Lcom/glance/bridge/sdk/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    const-string v0, "IS_SWIPE_REACTIVATION_ENABLED"

    invoke-virtual {p0, p2, v0, v1}, Lcom/glance/bridge/sdk/ContentProviderWrapper;->call(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_d

    const-string p2, "KEY_SWIPE_REACTIVATION_ENABLED"

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception p0

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "isReactivationOnSwipeEnabled exception - "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Glance"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    move p0, p1

    :goto_5
    if-ne p0, p1, :cond_e

    sget-object p0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p0, :cond_e

    const-string p1, "ls"

    sget-object p2, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->TAG:Ljava/lang/String;

    const-string v0, "Launching DiscoveryScreen"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, "com.glance.action.discovery"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "referrer"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x14000000

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_e
    :goto_6
    return-void
.end method

.method public final updateMargins(Landroid/view/ViewGroup;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-eqz p0, :cond_2

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    sget-object v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v2, Lcom/glance/bridge/sdk/utils/Constants;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "GET_TAGLINE_MARGIN"

    iget-object v0, v0, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->contentProviderWrapper:Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-virtual {v0, v2, v3, v1}, Lcom/glance/bridge/sdk/ContentProviderWrapper;->call(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1

    :cond_0
    if-eqz v1, :cond_1

    const-string v0, "KEY_MARGIN_BOTTOM"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method
