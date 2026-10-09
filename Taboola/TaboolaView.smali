.class public Lcom/android/keyguard/taboola/TaboolaView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public TaboolaAddition:Landroid/widget/TextView;

.field public TaboolaButtonRegion:Landroid/widget/RelativeLayout;

.field public TaboolaContent:Landroid/widget/TextView;

.field public TaboolaHintView:Lcom/android/keyguard/taboola/SwipeHintView;

.field public TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public TaboolaLeft:Landroid/widget/TextView;

.field public TaboolaNotificationCard:Landroid/widget/LinearLayout;

.field public TaboolaRight:Landroid/widget/TextView;

.field public TaboolaTextReion:Landroid/widget/RelativeLayout;

.field public TaboolaXClose:Landroid/widget/TextView;

.field public animX:F

.field public animY:F

.field public final arrayImage:[[Ljava/lang/String;

.field public cardIsShowing:Z

.field public cardNeedShowing:Z

.field public cardVisible:I

.field public carousel:I

.field public cover:I

.field public final isFirstTime:I

.field public isNeedStartOTA:Z

.field public isOnKeyguardSecure:Z

.field public isOnOOBE:Z

.field public isOnceUnlocked:Z

.field public mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

.field public mBitmap:Landroid/graphics/Bitmap;

.field public mClPictureDrawable:Landroid/widget/ImageView;

.field public final mContext:Landroid/content/Context;

.field public mDozing:Z

.field public final mKeyguardManager:Landroid/app/KeyguardManager;

.field public mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

.field public mMultiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

.field public final mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

.field public mTaboolaViewController:Lcom/android/keyguard/taboola/TaboolaViewController;

.field public mainBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public secoundBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field public showLockValue:I

.field public taboolaState:I

.field public temp_peek_source_value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->IS_USER:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/taboola/TaboolaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/taboola/TaboolaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/keyguard/taboola/TaboolaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    const/16 p3, 0xf

    filled-new-array {p2, p3}, [I

    move-result-object p2

    const-class p3, Ljava/lang/String;

    invoke-static {p3, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[Ljava/lang/String;

    iput-object p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->arrayImage:[[Ljava/lang/String;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardNeedShowing:Z

    const/4 p3, 0x0

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->mainBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->secoundBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->isNeedStartOTA:Z

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->isOnOOBE:Z

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->isOnKeyguardSecure:Z

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->isOnceUnlocked:Z

    const/4 p4, -0x1

    iput p4, p0, Lcom/android/keyguard/taboola/TaboolaView;->taboolaState:I

    iput p4, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardVisible:I

    iput p4, p0, Lcom/android/keyguard/taboola/TaboolaView;->showLockValue:I

    iput p4, p0, Lcom/android/keyguard/taboola/TaboolaView;->isFirstTime:I

    const/4 p4, 0x1

    iput p4, p0, Lcom/android/keyguard/taboola/TaboolaView;->cover:I

    iput p4, p0, Lcom/android/keyguard/taboola/TaboolaView;->carousel:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->animX:F

    iput v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->animY:F

    iput-boolean p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->mDozing:Z

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->temp_peek_source_value:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    const/16 p3, 0x8

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :try_start_0
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p3

    const v0, 0x7f0d02be

    invoke-virtual {p3, v0, p0, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const p3, 0x7f0a074a

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/LinearLayout;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const p3, 0x7f0a074b

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const p3, 0x7f0a0749

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const p3, 0x7f0a0745

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    const p3, 0x7f0a0747

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const p3, 0x7f0a0746

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const p3, 0x7f0a0743

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaButtonRegion:Landroid/widget/RelativeLayout;

    const p3, 0x7f0a0744

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/RelativeLayout;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaTextReion:Landroid/widget/RelativeLayout;

    const p3, 0x7f0a0736

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/keyguard/taboola/SwipeHintView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintView:Lcom/android/keyguard/taboola/SwipeHintView;

    const p3, 0x7f0a0737

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    const p3, 0x7f0a074c

    invoke-virtual {p0, p3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->mMultiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string v0, "TaboolaView"

    const-string v1, "Error Inflating Taboola Tagline"

    invoke-static {v0, v1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p3, Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-direct {p3, p1}, Lcom/android/keyguard/taboola/TaboolaObserver;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {p3}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string v0, "motorola_customize_other_pictorial_available"

    invoke-virtual {p3, p1, v0}, Lcom/android/keyguard/taboola/TaboolaObserver;->ObserverFactory(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/keyguard/taboola/TaboolaObserver$1;

    move-result-object v1

    iput-object v1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->killSwicthObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    const-string v1, "motorola_customize_pictorial_apply"

    invoke-virtual {p3, p1, v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->ObserverFactory(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/keyguard/taboola/TaboolaObserver$1;

    move-result-object v2

    iput-object v2, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->mainSwicthObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    const-string v2, "mobile_data_pictorial_support"

    invoke-virtual {p3, p1, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->ObserverFactory(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/keyguard/taboola/TaboolaObserver$1;

    move-result-object v3

    iput-object v3, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->useMobileObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    const-string v3, "motorola_customize_pictorial_auto_play"

    invoke-virtual {p3, p1, v3}, Lcom/android/keyguard/taboola/TaboolaObserver;->ObserverFactory(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/keyguard/taboola/TaboolaObserver$1;

    move-result-object v4

    iput-object v4, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->showLockObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    const-string v4, "pictorial_activate_not_show"

    invoke-virtual {p3, p1, v4}, Lcom/android/keyguard/taboola/TaboolaObserver;->ObserverFactory(Landroid/content/ContentResolver;Ljava/lang/String;)Lcom/android/keyguard/taboola/TaboolaObserver$1;

    move-result-object v5

    iput-object v5, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->noReactObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    invoke-virtual {p3, p1, v0, p4}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {p3, p1, v1, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {p3, p1, v2, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {p3, p1, v3, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    invoke-virtual {p3, p1, v4, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v0, "motorola_lockscreen_integration_type"

    invoke-virtual {p3, p1, v0, p4}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v0, "need_show_taboola_setup_wizard"

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v0, "DontShowAgain_Switch_state"

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v0, "hint_Swith_state"

    invoke-virtual {p3, p1, v0, p4}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string/jumbo v0, "should_Onboarding_state"

    invoke-virtual {p3, p1, v0, p4}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    const-string v0, "FisrstOnboarded_state"

    invoke-virtual {p3, p1, v0, p2}, Lcom/android/keyguard/taboola/TaboolaObserver;->initSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    iget-object v0, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->killSwicthObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    iget-object v1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->killSwitchURI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->mainSwicthObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    iget-object v1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->mainSwitchURI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->useMobileObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    iget-object v1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->useMobileURI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->showLockObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    iget-object v1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->showLockURI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->noReactObserver:Lcom/android/keyguard/taboola/TaboolaObserver$1;

    iget-object v1, p3, Lcom/android/keyguard/taboola/TaboolaObserver;->noReactURI:Landroid/net/Uri;

    invoke-virtual {p1, v1, p2, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string p1, "need_show_Wallpaper"

    invoke-virtual {p3, p2, p1}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    const-string p3, "keyguard"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance p1, Lcom/android/keyguard/taboola/TaboolaView$UnlockReceiver;

    invoke-direct {p1, p0, p4}, Lcom/android/keyguard/taboola/TaboolaView$UnlockReceiver;-><init>(Lcom/android/keyguard/taboola/TaboolaView;I)V

    new-instance p3, Landroid/content/IntentFilter;

    invoke-direct {p3}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.LOCKED_BOOT_COMPLETED"

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v0, 0x3e8

    invoke-virtual {p3, v0}, Landroid/content/IntentFilter;->setPriority(I)V

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaView$UnlockReceiver;

    invoke-direct {v0, p0, p2}, Lcom/android/keyguard/taboola/TaboolaView$UnlockReceiver;-><init>(Lcom/android/keyguard/taboola/TaboolaView;I)V

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_PRESENT"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "is_first_time"

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->isFirstTime:I

    iget-object p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v3, p4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance p1, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    iget-object p2, p0, Lcom/android/keyguard/taboola/TaboolaView;->mMultiRippleView:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;

    invoke-direct {p1, p2}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;-><init>(Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;)V

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    return-void
.end method

.method public static notifyImageHasShown(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    const-string v0, "content://com.taboola.ody.data.provider/keyguard_buried_point"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "eventname"

    const-string v3, "notify_visible"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "imageId"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string/jumbo v2, "timestamp"

    invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public final declared-synchronized NormalCardClicked(Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaView;->startAnim()V

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mDozing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "TaboolaTouchWakeUp"

    const v2, 0x1000001a

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->temp_peek_source_value:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "imageId"

    iget-object v2, p0, Lcom/android/keyguard/taboola/TaboolaView;->arrayImage:[[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    aget-object v2, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "peek_source"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "com.taboola.ody.intent.action.SEE_PICTORIAL_DETAILS"

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetReadBarrier(J)V

    iget-object p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput v3, p1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaView;->closeReadHint()V

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaView;->showNormalCard()V

    iget p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cover:I

    const/16 v0, 0x1f4

    if-gt p1, v0, :cond_1

    const-string v0, "con_lnc"

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Lcom/android/systemui/util/Utils;->setValueForCheckin(Landroid/content/Context;Ljava/lang/String;I)V

    iget p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cover:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cover:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final closeCarouselHint()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintView:Lcom/android/keyguard/taboola/SwipeHintView;

    iget-boolean v1, v0, Lcom/android/keyguard/taboola/SwipeHintView;->mIsRunning:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iput-boolean v3, v0, Lcom/android/keyguard/taboola/SwipeHintView;->mIsRunning:Z

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintView:Lcom/android/keyguard/taboola/SwipeHintView;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final closeOOBEUnacceptReactiveHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    return-void
.end method

.method public final closeReactiveHint()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    return-void
.end method

.method public final closeReadHint()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {p0, v1, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public final closeSetupWizardCardHint()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const v2, 0x7f130864

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const v2, 0x7f130861

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const v2, 0x7f130862

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "need_show_card"

    invoke-virtual {v0, v1, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "need_show_taboola_setup_wizard"

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const-string v0, "onb_dms"

    iget-object v2, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/android/systemui/util/Utils;->setValueForCheckin(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput v1, v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iput-boolean v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    return-void
.end method

.method public final getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 2

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "r"

    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const-string p0, "TaboolaView"

    const-string p1, "error getDrawable"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final setNotificationBackGroundColor(Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/16 v1, 0x10

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v3, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const-string v1, "default"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "#99000000"

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final showNormalCard()V
    .locals 7

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v0, v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v0, v0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->arrayImage:[[Ljava/lang/String;

    aget-object v4, v4, v2

    const/4 v5, 0x5

    aget-object v4, v4, v5

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->arrayImage:[[Ljava/lang/String;

    aget-object v4, v4, v2

    aget-object v3, v4, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    new-array v4, v3, [I

    invoke-virtual {v0, v4}, Landroid/view/View;->getLocationOnScreen([I)V

    new-instance v0, Landroid/graphics/Point;

    aget v5, v4, v2

    aget v4, v4, v1

    invoke-direct {v0, v5, v4}, Landroid/graphics/Point;-><init>(II)V

    new-instance v4, Landroid/view/GestureDetector;

    iget-object v5, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/keyguard/taboola/TaboolaView$3;

    invoke-direct {v6, p0, v0, v2}, Lcom/android/keyguard/taboola/TaboolaView$3;-><init>(Lcom/android/keyguard/taboola/TaboolaView;Landroid/graphics/Point;I)V

    invoke-direct {v4, v5, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v5, Lcom/android/keyguard/taboola/TaboolaView$4;

    invoke-direct {v5, v4, v2}, Lcom/android/keyguard/taboola/TaboolaView$4;-><init>(Landroid/view/GestureDetector;I)V

    iget-object v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/android/keyguard/taboola/TaboolaView;->arrayImage:[[Ljava/lang/String;

    aget-object v5, v5, v2

    const/16 v6, 0x9

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardNeedShowing:Z

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/keyguard/taboola/TaboolaView;->updateCCVisibility(I)V

    :cond_3
    new-instance v2, Landroid/view/GestureDetector;

    iget-object v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    new-instance v5, Lcom/android/keyguard/taboola/TaboolaView$3;

    invoke-direct {v5, p0, v0, v1}, Lcom/android/keyguard/taboola/TaboolaView$3;-><init>(Lcom/android/keyguard/taboola/TaboolaView;Landroid/graphics/Point;I)V

    invoke-direct {v2, v4, v5}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v4, Lcom/android/keyguard/taboola/TaboolaView$4;

    invoke-direct {v4, v2, v1}, Lcom/android/keyguard/taboola/TaboolaView$4;-><init>(Landroid/view/GestureDetector;I)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/keyguard/taboola/TaboolaView$3;

    invoke-direct {v4, p0, v0, v3}, Lcom/android/keyguard/taboola/TaboolaView$3;-><init>(Lcom/android/keyguard/taboola/TaboolaView;Landroid/graphics/Point;I)V

    invoke-direct {v1, v2, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    new-instance v0, Lcom/android/keyguard/taboola/TaboolaView$4;

    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/taboola/TaboolaView$4;-><init>(Landroid/view/GestureDetector;I)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaTextReion:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaButtonRegion:Landroid/widget/RelativeLayout;

    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final showOTAActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.taboola.ody.action.START_OOBE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.taboola.ody"

    const-string v2, "com.taboola.ody.ui.OobeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "screen"

    const-string v2, "ota"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public final showReactiveHint()V
    .locals 4

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const v3, 0x7f13085f

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const v1, 0x7f13085e

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const v1, 0x7f13085c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    const v1, 0x7f13085d

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/taboola/TaboolaView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/taboola/TaboolaView;I)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    new-instance v1, Lcom/android/keyguard/taboola/TaboolaView$10;

    invoke-direct {v1, p0}, Lcom/android/keyguard/taboola/TaboolaView$10;-><init>(Lcom/android/keyguard/taboola/TaboolaView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final startAnim()V
    .locals 14

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->mMultiRippleController:Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;

    const/high16 v7, 0x43160000    # 150.0f

    const-wide/16 v2, 0x12c

    const/16 v10, 0xff

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    new-instance v12, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    new-instance v13, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;

    iget v4, p0, Lcom/android/keyguard/taboola/TaboolaView;->animX:F

    iget v5, p0, Lcom/android/keyguard/taboola/TaboolaView;->animY:F

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget v8, p0, Landroid/util/DisplayMetrics;->density:F

    const/4 v9, -0x1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v11

    move-object v1, v13

    move v6, v7

    invoke-direct/range {v1 .. v11}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;-><init>(JFFFFFIIF)V

    invoke-direct {v12, v13}, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;-><init>(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimationConfig;)V

    invoke-virtual {v0, v12}, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleController;->play(Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;)V

    return-void
.end method

.method public final updateCCVisibility(I)V
    .locals 7

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardNeedShowing:Z

    iput p1, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardVisible:I

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v1

    const/16 v2, 0x8

    if-nez v1, :cond_0

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz v1, :cond_b

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x3

    const-string v5, "current_visibility"

    if-eq v4, v1, :cond_2

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    if-ne v4, v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "need_show_taboola_setup_wizard"

    invoke-virtual {v1, v4}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "need_show_card"

    invoke-virtual {v1, v6}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v3, :cond_4

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->arrayImage:[[Ljava/lang/String;

    aget-object v1, v1, v0

    const/16 v6, 0x9

    aget-object v1, v1, v6

    if-nez v1, :cond_6

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_5

    move v0, v3

    :cond_5
    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardNeedShowing:Z

    return-void

    :cond_6
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v4}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "should_Onboarding_state"

    invoke-virtual {v1, v4, v3}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_7
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v4, :cond_8

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    return-void

    :cond_8
    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v5}, Lcom/android/keyguard/taboola/TaboolaObserver;->get(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    return-void

    :cond_9
    if-nez p1, :cond_a

    move v0, v3

    :cond_a
    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardIsShowing:Z

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    :cond_b
    :goto_0
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_c

    move v0, v3

    :cond_c
    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaView;->cardNeedShowing:Z

    return-void
.end method
