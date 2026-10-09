.class public final Lcom/android/keyguard/glance/GlanceViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# static fields
.field public static final DEBUG:Z


# instance fields
.field public isTouchWithinGlanceView:Z

.field public final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final mConfigurationListener:Lcom/android/keyguard/glance/GlanceViewController$5;

.field public mGlanceFullyEnabled:Z

.field public mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mKeyguardStateCallback:Lcom/android/keyguard/glance/GlanceViewController$3;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardVisible:Z

.field public final mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

.field public mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public mPulsing:Z

.field public mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field public mShouldResetWallpaper:Z

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/keyguard/glance/GlanceViewController$2;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/keyguard/glance/GlanceViewController$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/keyguard/glance/GlanceView;->DEBUG:Z

    sput-boolean v0, Lcom/android/keyguard/glance/GlanceViewController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/glance/GlanceView;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/LockIconViewController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mShouldResetWallpaper:Z

    iput-boolean p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardVisible:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->isTouchWithinGlanceView:Z

    new-instance p1, Lcom/android/keyguard/glance/GlanceViewController$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/glance/GlanceViewController$1;-><init>(Lcom/android/keyguard/glance/GlanceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessObserver:Lcom/android/keyguard/glance/GlanceViewController$1;

    new-instance p1, Lcom/android/keyguard/glance/GlanceViewController$2;

    invoke-direct {p1, p0}, Lcom/android/keyguard/glance/GlanceViewController$2;-><init>(Lcom/android/keyguard/glance/GlanceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateListener:Lcom/android/keyguard/glance/GlanceViewController$2;

    new-instance p1, Lcom/android/keyguard/glance/GlanceViewController$3;

    invoke-direct {p1, p0}, Lcom/android/keyguard/glance/GlanceViewController$3;-><init>(Lcom/android/keyguard/glance/GlanceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardStateCallback:Lcom/android/keyguard/glance/GlanceViewController$3;

    new-instance p1, Lcom/android/keyguard/glance/GlanceViewController$4;

    invoke-direct {p1, p0}, Lcom/android/keyguard/glance/GlanceViewController$4;-><init>(Lcom/android/keyguard/glance/GlanceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance p1, Lcom/android/keyguard/glance/GlanceViewController$5;

    invoke-direct {p1, p0}, Lcom/android/keyguard/glance/GlanceViewController$5;-><init>(Lcom/android/keyguard/glance/GlanceViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mConfigurationListener:Lcom/android/keyguard/glance/GlanceViewController$5;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p3, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p4, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p5, p0, Lcom/android/keyguard/glance/GlanceViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    iput-object p6, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p7, p0, Lcom/android/keyguard/glance/GlanceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-void
.end method


# virtual methods
.method public final canShowGlance()Z
    .locals 4

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    sget-object v1, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->sInstance:Lcom/android/systemui/shared/system/ActivityManagerWrapper;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lcom/android/systemui/shared/system/ActivityManagerWrapper;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "should_show_glance_wallpaper"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean p0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardVisible:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    return v1
.end method

.method public final checkGlanceState()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->isSupportGlance()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->isGlanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mGlanceFullyEnabled:Z

    if-eq v1, v0, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mLockIconViewController:Lcom/android/keyguard/LockIconViewController;

    iput-boolean v0, v1, Lcom/android/keyguard/LockIconViewController;->mGlanceEnabled:Z

    invoke-virtual {v1}, Lcom/android/keyguard/LockIconViewController;->updateConfiguration()V

    iput-boolean v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mGlanceFullyEnabled:Z

    :cond_1
    return-void
.end method

.method public final getWallpaper()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->canShowGlance()Z

    move-result p0

    iget-object v1, v0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    iget-object v3, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->backImageBitmap:Landroid/graphics/Bitmap;

    if-nez v3, :cond_2

    iget-object v3, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->backImageUri:Landroid/net/Uri;

    if-eqz v3, :cond_1

    :try_start_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    move-object v3, v2

    :goto_0
    iput-object v3, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->backImageBitmap:Landroid/graphics/Bitmap;

    :cond_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "state_glance_lockscreen"

    const/4 v4, 0x0

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_3

    move v4, v3

    :cond_3
    if-ne v4, v3, :cond_4

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    iget-object v2, v1, Lcom/glance/bridge/sdk/ui/TappableTagline;->backImageBitmap:Landroid/graphics/Bitmap;

    :cond_4
    :goto_1
    return-object v2
.end method

.method public final isGlanceEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "state_glance_lockscreen"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public final isGlanceStateActive()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string/jumbo v1, "state_glance_lockscreen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public final isSupportGlance()Z
    .locals 4

    const-string v0, "com.glance.lockscreenM"

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object v1, p0

    check-cast v1, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_0

    :catch_0
    move v1, v3

    :goto_0
    if-eqz v1, :cond_0

    check-cast p0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget-boolean p0, p0, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move p0, v3

    :goto_1
    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    move v2, v3

    :goto_2
    return v2
.end method

.method public final onViewAttached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessObserver:Lcom/android/keyguard/glance/GlanceViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardStateCallback:Lcom/android/keyguard/glance/GlanceViewController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateListener:Lcom/android/keyguard/glance/GlanceViewController$2;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mConfigurationListener:Lcom/android/keyguard/glance/GlanceViewController$5;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->checkGlanceState()V

    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessObserver:Lcom/android/keyguard/glance/GlanceViewController$1;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardStateCallback:Lcom/android/keyguard/glance/GlanceViewController$3;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateListener:Lcom/android/keyguard/glance/GlanceViewController$2;

    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    iget-object p0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mConfigurationListener:Lcom/android/keyguard/glance/GlanceViewController$5;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPersonalWallpaper()V
    .locals 4

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;

    monitor-enter v0

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    new-instance v2, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    new-instance v3, Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-direct {v3, p0}, Lcom/glance/bridge/sdk/ContentProviderWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, p0, v3}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;-><init>(Landroid/content/Context;Lcom/glance/bridge/sdk/ContentProviderWrapper;)V

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    sput-object v2, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz p0, :cond_1

    const-string v1, "oem_glance_setting"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    :cond_1
    sput-object v1, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->oemDataStore:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    sget-object p0, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "Glance"

    const-string v1, "personalWallpaperSet"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.glance.action.wallpapermix"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x14000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;->context:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final shouldChangeTaglineSize()Z
    .locals 3

    iget-object p0, p0, Lcom/android/keyguard/glance/GlanceViewController;->mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->binding:Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;

    const/4 v1, 0x1

    if-eqz p0, :cond_3

    iget-object v2, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$startButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    if-nez v2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/binder/KeyguardBottomAreaViewBinder$bind$2;->$endButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p0

    if-nez p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v0

    :goto_1
    if-eqz p0, :cond_3

    :cond_2
    move p0, v1

    goto :goto_2

    :cond_3
    move p0, v0

    :goto_2
    if-eqz p0, :cond_4

    move v0, v1

    :cond_4
    return v0
.end method

.method public final updateTagline()V
    .locals 14

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->isGlanceEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->isGlanceStateActive()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->canShowGlance()Z

    move-result v1

    iget-object v2, p0, Lcom/android/keyguard/glance/GlanceViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget v2, v2, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-class v6, Lcom/android/systemui/keyguard/ScreenLifecycle;

    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget v6, v6, Lcom/android/systemui/keyguard/ScreenLifecycle;->mScreenState:I

    if-ne v6, v5, :cond_1

    move v6, v4

    goto :goto_1

    :cond_1
    move v6, v3

    :goto_1
    iget-object v7, p0, Lcom/android/keyguard/glance/GlanceViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v7, v7, Lcom/android/systemui/statusbar/phone/ScrimController;->mState:Lcom/android/systemui/statusbar/phone/ScrimState;

    sget-object v8, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq v7, v8, :cond_4

    iget-object v7, p0, Lcom/android/keyguard/glance/GlanceViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isPulsing()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_2
    if-eqz v2, :cond_3

    if-eqz v6, :cond_3

    goto :goto_2

    :cond_3
    move v2, v3

    goto :goto_3

    :cond_4
    :goto_2
    move v2, v4

    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceViewController;->shouldChangeTaglineSize()Z

    move-result v6

    iget-object v7, p0, Lcom/android/keyguard/glance/GlanceViewController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    iget-object v0, v0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    if-nez v0, :cond_5

    goto/16 :goto_9

    :cond_5
    new-instance v8, Lcom/android/keyguard/glance/GlanceView$$ExternalSyntheticLambda0;

    invoke-direct {v8, v7}, Lcom/android/keyguard/glance/GlanceView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    const-string v7, ""

    iput-object v8, v0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mExec:Lkotlin/jvm/functions/Function0;

    const/16 v8, 0x8

    :try_start_0
    sget-object v9, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-nez v9, :cond_8

    iget-object v9, v0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    const-class v10, Lcom/glance/bridge/sdk/GlanceBridgeSdk;

    monitor-enter v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v11, 0x0

    if-eqz v9, :cond_6

    :try_start_1
    new-instance v12, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    new-instance v13, Lcom/glance/bridge/sdk/ContentProviderWrapper;

    invoke-direct {v13, v9}, Lcom/glance/bridge/sdk/ContentProviderWrapper;-><init>(Landroid/content/Context;)V

    invoke-direct {v12, v9, v13}, Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;-><init>(Landroid/content/Context;Lcom/glance/bridge/sdk/ContentProviderWrapper;)V

    goto :goto_4

    :cond_6
    move-object v12, v11

    :goto_4
    sput-object v12, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->bridgeApi:Lcom/glance/bridge/sdk/GlanceBridgeApiImpl;

    if-eqz v9, :cond_7

    const-string v11, "oem_glance_setting"

    invoke-virtual {v9, v11, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    :cond_7
    sput-object v11, Lcom/glance/bridge/sdk/GlanceBridgeSdk;->oemDataStore:Landroid/content/SharedPreferences;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v10

    goto :goto_5

    :catchall_0
    move-exception v2

    monitor-exit v10

    throw v2

    :cond_8
    :goto_5
    iget-object v9, v0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "state_glance_lockscreen"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v4, :cond_9

    move v9, v4

    goto :goto_6

    :cond_9
    move v9, v3

    :goto_6
    if-eqz v9, :cond_a

    if-eqz v1, :cond_a

    iget-object v9, v0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :try_start_3
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.glance.lockscreenM"

    invoke-virtual {v9, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move v9, v4

    goto :goto_7

    :catch_0
    move v9, v3

    :goto_7
    if-eqz v9, :cond_a

    :try_start_4
    iget-object v9, v0, Lcom/glance/bridge/sdk/ui/TappableTagline;->mContext:Landroid/content/Context;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :try_start_5
    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-string v10, "com.glance.lockscreenM"

    invoke-virtual {v9, v10, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget-boolean v9, v9, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_8

    :catch_1
    move v9, v3

    :goto_8
    if-eqz v9, :cond_a

    :try_start_6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v9
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :try_start_7
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "show_reactivation_nudge"

    invoke-static {v9, v10, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :catch_2
    :try_start_8
    new-instance v9, Lcom/glance/bridge/sdk/ui/TappableTagline$NextGlanceTask;

    invoke-direct {v9, v0}, Lcom/glance/bridge/sdk/ui/TappableTagline$NextGlanceTask;-><init>(Lcom/glance/bridge/sdk/ui/TappableTagline;)V

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    aput-object v11, v10, v3

    sget-object v11, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v11, v10, v4

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v10, v4

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v10, v5

    invoke-virtual {v9, v10}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_9

    :catch_3
    move-exception v2

    :try_start_9
    const-string v4, "GLANCEDEBUG"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8, v3}, Lcom/glance/bridge/sdk/ui/TappableTagline;->setTaglineVisibility(IZ)V

    goto :goto_9

    :cond_a
    const-string v2, "GLANCEDEBUG"

    const-string v3, "Its GONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8, v1}, Lcom/glance/bridge/sdk/ui/TappableTagline;->setTaglineVisibility(IZ)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_9

    :catch_4
    move-exception v2

    const-string v3, "GLANCEDEBUG"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v8, v1}, Lcom/glance/bridge/sdk/ui/TappableTagline;->setTaglineVisibility(IZ)V

    :goto_9
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/glance/GlanceView;

    invoke-virtual {p0}, Lcom/android/keyguard/glance/GlanceView;->getRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_b

    :cond_b
    iget-object v1, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    const/4 v2, -0x1

    if-nez v1, :cond_c

    move v1, v2

    goto :goto_a

    :cond_c
    invoke-virtual {v1}, Lcom/glance/bridge/sdk/ui/TappableTagline;->getTaglineY()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :goto_a
    if-eq v1, v2, :cond_e

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-eq v1, v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/glance/GlanceView;->mTappableTagline:Lcom/glance/bridge/sdk/ui/TappableTagline;

    if-nez v0, :cond_d

    goto :goto_b

    :cond_d
    if-eq v1, v2, :cond_e

    int-to-float v0, v1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setY(F)V

    :cond_e
    :goto_b
    return-void
.end method
