.class public final Lcom/android/keyguard/taboola/TaboolaViewController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 99bb965a40b05feef6ba43b5089f9d62fc4f0b137f243b0f0564e64d90932134"


# instance fields
.field public final NetworkChangedReceiver:Lcom/android/keyguard/taboola/TaboolaViewController$1;

.field public TaboolaState:I

.field public isnotConnected:Z

.field public lastState:I

.field public mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

.field public mClPicture:Landroid/view/View;

.field public mClPictureDrawable:Landroid/widget/ImageView;

.field public mContext:Landroid/content/Context;

.field public mLockIconView:Landroid/view/View;

.field public mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field public final mNetworkChangedFilter:Landroid/content/IntentFilter;

.field public mNotificationContainerParent:Landroid/view/View;

.field public final mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

.field public final mScreenStatusFilter:Landroid/content/IntentFilter;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public mTaboolaFrame:Landroid/view/View;

.field public final mTaboolaReceiver:Lcom/android/keyguard/taboola/TaboolaViewController$1;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/keyguard/taboola/TaboolaViewController$3;

.field public timeBeforeSync:J


# direct methods
.method public constructor <init>(Lcom/android/keyguard/taboola/TaboolaView;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mScreenStatusFilter:Landroid/content/IntentFilter;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mNetworkChangedFilter:Landroid/content/IntentFilter;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->timeBeforeSync:J

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->isnotConnected:Z

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaViewController$1;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/keyguard/taboola/TaboolaViewController$1;-><init>(Lcom/android/keyguard/taboola/TaboolaViewController;I)V

    iput-object v2, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->NetworkChangedReceiver:Lcom/android/keyguard/taboola/TaboolaViewController$1;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaViewController$1;

    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/taboola/TaboolaViewController$1;-><init>(Lcom/android/keyguard/taboola/TaboolaViewController;I)V

    iput-object v2, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mTaboolaReceiver:Lcom/android/keyguard/taboola/TaboolaViewController$1;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaViewController$3;

    invoke-direct {v2, p0}, Lcom/android/keyguard/taboola/TaboolaViewController$3;-><init>(Lcom/android/keyguard/taboola/TaboolaViewController;)V

    iput-object v2, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mWakefulnessObserver:Lcom/android/keyguard/taboola/TaboolaViewController$3;

    const/4 v2, -0x2

    iput v2, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->lastState:I

    iput v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    iget-object v1, p1, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    iput-object v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    iput-object p1, v1, Lcom/android/keyguard/taboola/TaboolaObserver;->mView:Lcom/android/keyguard/taboola/TaboolaView;

    iput-object p2, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p3, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    const-string p0, "android.intent.action.TIME_SET"

    invoke-virtual {v0, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final onViewAttached()V
    .locals 10

    const-string v0, "TaboolaController"

    const-string v1, "onViewAttached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mWakefulnessObserver:Lcom/android/keyguard/taboola/TaboolaViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->started:Z

    const-string v1, "TaboolaHintAnimator"

    iget-boolean v2, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-nez v0, :cond_4

    const-string v0, "animator started"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->started:Z

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v0, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    const-string/jumbo v3, "taboola_last_read_time"

    const-wide/16 v4, -0x1

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    const-string/jumbo v3, "taboola_read_check_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->read(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get read time. last read time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    invoke-static {v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " read state:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v3, "taboola_last_carousel_time"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    const-string/jumbo v3, "taboola_carousel_check_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->read(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "get carousel time. last carousel time: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    invoke-static {v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " carousel state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v3, "taboola_last_reactive_time"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    const-string/jumbo v3, "taboola_reactive_check_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v6, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->read(Ljava/lang/String;)V

    const-string v6, " reactive state: "

    if-eqz v2, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get reactive time. last reactive time: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-static {v8, v9}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v3, "taboola_last_OOBEUnaccept_reactive_time"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    const-string/jumbo v3, "taboola_OOBEUnaccept_reactive_check_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v7, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v7, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->read(Ljava/lang/String;)V

    if-eqz v2, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v7, "get OOBEUnacceptReactive time. last reactive time: "

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    invoke-static {v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v3, "taboola_last_SetupWizardCard_time"

    invoke-static {v0, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    const-string/jumbo v3, "taboola_SetupWizardCard_check_state"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v3, v0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->read(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "get SetupWizardCardTime time. last reactive time: "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    invoke-static {v3, v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v2, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "animator  has started? "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean p0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->started:Z

    invoke-static {v0, p0, v1}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final onViewDetached()V
    .locals 2

    const-string v0, "TaboolaController"

    const-string v1, "onViewDetached()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v0}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mWakefulnessObserver:Lcom/android/keyguard/taboola/TaboolaViewController$3;

    iget-object v1, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "TaboolaHintAnimator"

    const-string v1, "animator stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->started:Z

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReadTime()V

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setCarouselTime()V

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReactiveTime()V

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setOOBEUnacceptReactiveTime()V

    invoke-virtual {p0}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setSetupWizardCardTime()V

    :cond_0
    return-void
.end method

.method public final updateCCVisibility(I)V
    .locals 2

    const-string v0, "TaboolaViewController : updateCCVisibility = "

    const-string v1, "TaboolaController"

    invoke-static {v0, p1, v1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;ILjava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/taboola/TaboolaView;->updateCCVisibility(I)V

    return-void
.end method

.method public final updateTaboola()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->updateTaboolaState()I

    move-result v2

    iput v2, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-boolean v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/keyguard/taboola/TaboolaObserver;->ReHintStatus:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v5}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setDontShowAgainSwitch(Z)V

    :cond_0
    iget v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    const-string v6, "TaboolaHintAnimator"

    const/4 v7, 0x6

    const-wide/16 v8, -0x1

    if-ne v4, v7, :cond_1

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-wide v10, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    cmp-long v7, v10, v8

    if-nez v7, :cond_1

    iput-wide v2, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setSetupWizardCardTime()V

    const-string v4, "reset SetupWizardCard barrier"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, v1, Lcom/android/keyguard/taboola/TaboolaObserver;->Active:Ljava/util/ArrayList;

    iget v7, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->lastState:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string v7, "reset reactive barrier"

    if-eqz v4, :cond_2

    iget-object v4, v1, Lcom/android/keyguard/taboola/TaboolaObserver;->InActive:Ljava/util/ArrayList;

    iget v8, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput-wide v2, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReactiveTime()V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput v5, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    :cond_2
    iget v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    const-string v8, "TaboolaViewController : getBitmapDrawable()"

    iget-object v9, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const-string v10, "TaboolaController"

    const/4 v11, 0x1

    const-string v12, " DontShowAgainSwitch:"

    const-string v13, "launch_screen_mode"

    const-string v14, "need_show_card"

    const-string v15, "need_show_Wallpaper"

    packed-switch v4, :pswitch_data_0

    const-string/jumbo v1, "\u65e0\u6548\u9009\u62e9"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    :pswitch_0
    const-string v4, "case 8:First Onboarding,OOBEUnaccept"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetCarouselBarrier(J)V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetReadBarrier(J)V

    const-string v4, "FisrstOnboarded_state"

    invoke-virtual {v1, v4, v5}, Lcom/android/keyguard/taboola/TaboolaObserver;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v1, Lcom/android/keyguard/taboola/TaboolaObserver;->cr:Landroid/content/ContentResolver;

    invoke-static {v7, v4, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-wide v7, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    const-wide/16 v16, -0x1

    cmp-long v7, v7, v16

    if-nez v7, :cond_4

    iput-wide v2, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setOOBEUnacceptReactiveTime()V

    const-string v4, "reset OOBEUnacceptReactive barrier"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput v5, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    :cond_4
    invoke-virtual {v1, v5, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "canStartOOBEUnacceptReactiveHint(now) : HintSwith :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "OOBEUnacceptReactive start check isHinted: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lastOOBEUnacceptReactiveTime: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    invoke-static {v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-nez v4, :cond_7

    iget-wide v12, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    const-wide/16 v14, -0x1

    cmp-long v4, v12, v14

    if-nez v4, :cond_5

    goto :goto_0

    :cond_5
    invoke-static {v2, v3, v12, v13}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v12

    if-eqz v7, :cond_6

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v8, "OOBEUnacceptReactive hint gap between last reactive days: "

    invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4, v12, v13}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->judge(J)Z

    move-result v4

    goto :goto_1

    :cond_7
    :goto_0
    move v4, v5

    :goto_1
    if-eqz v4, :cond_8

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    if-ne v4, v11, :cond_8

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    if-nez v4, :cond_8

    iput-wide v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveHintStartTime:J

    const/4 v2, 0x4

    iput v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const-string/jumbo v1, "start OOBEUnacceptReactive hint"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    const/4 v4, 0x4

    iget v8, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-ne v8, v4, :cond_b

    iget-wide v12, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveHintStartTime:J

    const-wide/16 v14, -0x1

    cmp-long v4, v12, v14

    if-nez v4, :cond_9

    goto :goto_2

    :cond_9
    invoke-static {v2, v3, v12, v13}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v12

    if-eqz v7, :cond_a

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stop OOBEUnacceptReactive hint gap between last start hours: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const-wide/16 v7, 0x1

    cmp-long v4, v12, v7

    if-ltz v4, :cond_c

    move v4, v11

    goto :goto_3

    :cond_b
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "canStopOOBEUnacceptReactiveHint: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveHintStartTime:J

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "isHinted :"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-static {v4, v7, v6}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_c
    move v4, v5

    :goto_3
    if-nez v4, :cond_d

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    if-eqz v4, :cond_d

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    if-ne v4, v11, :cond_e

    :cond_d
    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastOOBEUnacceptReactiveTime:J

    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v2

    iget-object v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->crossLine(J)V

    iput v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const-string/jumbo v1, "stop OOBEUnacceptReactive hint"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_4
    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_f

    invoke-virtual {v0, v5}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const v3, 0x7f13085f

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const v2, 0x7f13085e

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const v2, 0x7f13085c

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    const v2, 0x7f13085d

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaXClose:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;

    const/4 v3, 0x2

    invoke-direct {v2, v9, v3}, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/taboola/TaboolaView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;

    const/4 v3, 0x3

    invoke-direct {v2, v9, v3}, Lcom/android/keyguard/taboola/TaboolaView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/taboola/TaboolaView;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaView$11;

    invoke-direct {v2, v9}, Lcom/android/keyguard/taboola/TaboolaView$11;-><init>(Lcom/android/keyguard/taboola/TaboolaView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_19

    :cond_f
    iput v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->closeOOBEUnacceptReactiveHint()V

    goto/16 :goto_19

    :pswitch_1
    const-string v2, "case 7"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    invoke-virtual {v1, v5, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const-string v2, "motorola_customize_pictorial_apply"

    invoke-virtual {v1, v5, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const-string v2, "mobile_data_pictorial_support"

    invoke-virtual {v1, v5, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const-string v2, "motorola_customize_pictorial_auto_play"

    invoke-virtual {v1, v5, v2}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mContext:Landroid/content/Context;

    iget v2, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    iput v2, v9, Lcom/android/keyguard/taboola/TaboolaView;->taboolaState:I

    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/keyguard/taboola/TaboolaView$9;

    invoke-direct {v4, v9, v1, v2}, Lcom/android/keyguard/taboola/TaboolaView$9;-><init>(Lcom/android/keyguard/taboola/TaboolaView;Landroid/content/Context;I)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v3, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    goto/16 :goto_19

    :pswitch_2
    const-string v4, "case 6:ShowSetupCard"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-boolean v8, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->ShouldOnboarding:Z

    if-eqz v8, :cond_10

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setShouldOnboarding()V

    :cond_10
    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v8, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput-wide v2, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReactiveTime()V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v11, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "canStartSetupWizardCardHint(now) : HintSwith :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    invoke-static {v4, v7, v6}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v4, :cond_11

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "SetupWizardCard start check isHinted: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lastSetupWizardCardTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v12, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    invoke-static {v12, v13}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-nez v7, :cond_14

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    const-wide/16 v12, -0x1

    cmp-long v12, v7, v12

    if-nez v12, :cond_12

    goto :goto_5

    :cond_12
    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v7

    if-eqz v4, :cond_13

    new-instance v12, Ljava/lang/StringBuilder;

    const-string v13, "SetupWizardCard hint gap between last reactive days: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    iget-object v12, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v12, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->judge(J)Z

    move-result v7

    goto :goto_6

    :cond_14
    :goto_5
    move v7, v5

    :goto_6
    const/4 v8, 0x5

    if-eqz v7, :cond_15

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setSetupWizardCardTime()V

    iput v8, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iput-wide v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardHintStartTime:J

    goto :goto_9

    :cond_15
    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-ne v7, v8, :cond_18

    iget-wide v12, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardHintStartTime:J

    const-wide/16 v14, -0x1

    cmp-long v7, v12, v14

    if-nez v7, :cond_16

    goto :goto_7

    :cond_16
    invoke-static {v2, v3, v12, v13}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v12

    if-eqz v4, :cond_17

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v7, "stop SetupWizardCardTime hint gap between last start hours: "

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_17
    const-wide/16 v6, 0x1

    cmp-long v4, v12, v6

    if-ltz v4, :cond_18

    goto :goto_8

    :cond_18
    :goto_7
    move v11, v5

    :goto_8
    if-eqz v11, :cond_19

    iput v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iget-wide v6, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastSetupWizardCardTime:J

    invoke-static {v2, v3, v6, v7}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v2

    iget-object v1, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->SetupWizardCardRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->crossLine(J)V

    :cond_19
    :goto_9
    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-ne v2, v8, :cond_1a

    const-string v1, "case 6:showSetupWizardCardHint"

    invoke-static {v10, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v5}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const v2, 0x7f130862

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const v2, 0x7f130864

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const v2, 0x7f130861

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaView$1;

    invoke-direct {v2, v9}, Lcom/android/keyguard/taboola/TaboolaView$1;-><init>(Lcom/android/keyguard/taboola/TaboolaView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    new-instance v2, Lcom/android/keyguard/taboola/TaboolaView$2;

    invoke-direct {v2, v9}, Lcom/android/keyguard/taboola/TaboolaView$2;-><init>(Lcom/android/keyguard/taboola/TaboolaView;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_19

    :cond_1a
    iput v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->closeSetupWizardCardHint()V

    goto/16 :goto_19

    :pswitch_3
    const-string v4, "case 5:TurnOnTaboolaOnlyCardOFF"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetCarouselBarrier(J)V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetReadBarrier(J)V

    invoke-virtual {v1, v5, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mClPicture:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    check-cast v6, Lcom/android/keyguard/taboola/TaboolaView;

    iput v4, v6, Lcom/android/keyguard/taboola/TaboolaView;->taboolaState:I

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/keyguard/taboola/TaboolaView$9;

    invoke-direct {v8, v6, v1, v4}, Lcom/android/keyguard/taboola/TaboolaView$9;-><init>(Lcom/android/keyguard/taboola/TaboolaView;Landroid/content/Context;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->runReactiveHint(J)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1b

    invoke-virtual {v0, v5}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->showReactiveHint()V

    goto/16 :goto_19

    :cond_1b
    iput v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->closeReactiveHint()V

    goto/16 :goto_19

    :pswitch_4
    const-string v4, "case 4:TurnOnTaboola"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-boolean v5, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->ShouldOnboarding:Z

    if-eqz v5, :cond_1c

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setShouldOnboarding()V

    :cond_1c
    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    move-object/from16 v16, v12

    iget-wide v11, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    const-wide/16 v17, -0x1

    cmp-long v5, v11, v17

    if-nez v5, :cond_1d

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetCarouselBarrier(J)V

    :cond_1d
    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-wide v11, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    cmp-long v5, v11, v17

    if-nez v5, :cond_1e

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetReadBarrier(J)V

    :cond_1e
    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v5, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->OOBEUnacceptReactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v5}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->reactiveRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iput-wide v2, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReactiveTime:J

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReactiveTime()V

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    invoke-virtual {v1, v4, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const/4 v4, 0x2

    invoke-virtual {v1, v4, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mClPicture:Landroid/view/View;

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mContext:Landroid/content/Context;

    iget v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v9

    check-cast v5, Lcom/android/keyguard/taboola/TaboolaView;

    iput v4, v5, Lcom/android/keyguard/taboola/TaboolaView;->taboolaState:I

    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lcom/android/keyguard/taboola/TaboolaView$9;

    invoke-direct {v8, v5, v1, v4}, Lcom/android/keyguard/taboola/TaboolaView$9;-><init>(Lcom/android/keyguard/taboola/TaboolaView;Landroid/content/Context;I)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    const/16 v1, 0xa

    invoke-virtual {v7, v1}, Ljava/lang/Thread;->setPriority(I)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "canStartCarouselHint(now) : HintSwith :"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-object/from16 v5, v16

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    invoke-static {v4, v7, v6}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v4, :cond_1f

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "carousel hint start check isHinted: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " lastCarouselTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v10, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    invoke-static {v10, v11}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1f
    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-nez v7, :cond_22

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-nez v10, :cond_20

    goto :goto_a

    :cond_20
    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v7

    if-eqz v4, :cond_21

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "carousel hint gap between last swipe days: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    iget-object v10, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v10, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->judge(J)Z

    move-result v7

    goto :goto_b

    :cond_22
    :goto_a
    const/4 v7, 0x0

    :goto_b
    if-eqz v7, :cond_23

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    const/4 v8, 0x1

    if-ne v7, v8, :cond_24

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    if-nez v7, :cond_24

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setCarouselTime()V

    iput v8, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iput-wide v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselHintStartTime:J

    goto :goto_f

    :cond_23
    const/4 v8, 0x1

    :cond_24
    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-ne v7, v8, :cond_28

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselHintStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v10, v7, v10

    if-nez v10, :cond_25

    goto :goto_d

    :cond_25
    iget-boolean v10, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->UnlockORSleepCarousel:Z

    if-eqz v10, :cond_26

    const-string/jumbo v4, "stop by UnlockORSleepCarousel "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    :cond_26
    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v7

    if-eqz v4, :cond_27

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v10, "stop carousel hint gap between last start hours: "

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    const-wide/16 v10, 0x1

    cmp-long v4, v7, v10

    if-ltz v4, :cond_28

    :goto_c
    const/4 v4, 0x1

    goto :goto_e

    :cond_28
    :goto_d
    const/4 v4, 0x0

    :goto_e
    if-nez v4, :cond_29

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    if-eqz v4, :cond_29

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    const/4 v7, 0x1

    if-ne v4, v7, :cond_2a

    :cond_29
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastCarouselTime:J

    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v7

    iget-object v10, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v10, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->crossLine(J)V

    iput-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->UnlockORSleepCarousel:Z

    :cond_2a
    :goto_f
    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v7, "canStartReadHint(now) : HintSwith :"

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    invoke-static {v4, v5, v6}, Lcom/android/keyguard/KeyguardSimLockManagerImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DEBUG:Z

    if-eqz v4, :cond_2b

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "read hint start check isHinted: "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " lastReadTime: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    invoke-static {v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->dateDebug(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2b
    iget v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-nez v5, :cond_2e

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    const-wide/16 v10, -0x1

    cmp-long v5, v7, v10

    if-nez v5, :cond_2c

    goto :goto_10

    :cond_2c
    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v7

    if-eqz v4, :cond_2d

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "read hint gap between last tap days: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2d
    iget-object v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v5, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->judge(J)Z

    move-result v5

    goto :goto_11

    :cond_2e
    :goto_10
    const/4 v5, 0x0

    :goto_11
    if-eqz v5, :cond_2f

    iget-boolean v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    const/4 v7, 0x1

    if-ne v5, v7, :cond_2f

    iget-boolean v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    if-nez v5, :cond_2f

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->setReadTime()V

    const/4 v4, 0x2

    iput v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iput-wide v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readHintStartTime:J

    const-string/jumbo v1, "start read hint"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_2f
    const/4 v5, 0x2

    iget v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    if-ne v7, v5, :cond_33

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readHintStartTime:J

    const-wide/16 v10, -0x1

    cmp-long v5, v7, v10

    if-nez v5, :cond_30

    goto :goto_13

    :cond_30
    iget-boolean v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->UnlockORSleepRead:Z

    if-eqz v5, :cond_31

    const-string/jumbo v4, "stop by UnlockORSleepRead "

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_12

    :cond_31
    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v7

    if-eqz v4, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "stop read hint gap between last start hours: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_32
    const-wide/16 v4, 0x1

    cmp-long v4, v7, v4

    if-ltz v4, :cond_33

    :goto_12
    const/4 v4, 0x1

    goto :goto_14

    :cond_33
    :goto_13
    const/4 v4, 0x0

    :goto_14
    if-nez v4, :cond_34

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->HintSwith:Z

    if-eqz v4, :cond_34

    iget-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->DontShowAgainSwitch:Z

    const/4 v5, 0x1

    if-ne v4, v5, :cond_35

    :cond_34
    const/4 v4, 0x0

    iput v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    iget-wide v7, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->lastReadTime:J

    invoke-static {v2, v3, v7, v8}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->calculateDayGap(JJ)J

    move-result-wide v2

    iget-object v5, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v5, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->crossLine(J)V

    iput-boolean v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->UnlockORSleepRead:Z

    const-string/jumbo v1, "stop read hint"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_35
    :goto_15
    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v1, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_38

    move-object v1, v9

    check-cast v1, Lcom/android/keyguard/taboola/TaboolaView;

    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v3}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v3

    if-nez v3, :cond_36

    goto :goto_17

    :cond_36
    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintView:Lcom/android/keyguard/taboola/SwipeHintView;

    iget-boolean v4, v3, Lcom/android/keyguard/taboola/SwipeHintView;->mIsRunning:Z

    if-nez v4, :cond_37

    iput-boolean v2, v3, Lcom/android/keyguard/taboola/SwipeHintView;->mIsRunning:Z

    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {v3}, Lcom/android/keyguard/taboola/SwipeHintView;->animateStart()V

    goto :goto_16

    :cond_37
    const/4 v2, 0x0

    :goto_16
    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintView:Lcom/android/keyguard/taboola/SwipeHintView;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaHintViewParrent:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaContent:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v3, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v2, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaLeft:Landroid/widget/TextView;

    const v3, 0x7f130861

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaAddition:Landroid/widget/TextView;

    const v3, 0x7f130865

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, v1, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_17

    :cond_38
    move-object v1, v9

    check-cast v1, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaView;->closeCarouselHint()V

    :goto_17
    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v1, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3a

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    invoke-virtual {v1}, Lcom/android/keyguard/taboola/TaboolaObserver;->isTaboolaCarrier()Z

    move-result v1

    if-nez v1, :cond_39

    goto/16 :goto_19

    :cond_39
    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    iget-object v2, v9, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    const v3, 0x7f080a8f

    invoke-static {v3, v2}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iget-object v2, v9, Lcom/android/keyguard/taboola/TaboolaView;->mContext:Landroid/content/Context;

    const v3, 0x7f130860

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    iget-object v3, v9, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    iget-object v3, v3, Lcom/android/keyguard/taboola/TaboolaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    const/16 v4, 0xa

    int-to-float v4, v4

    mul-float/2addr v4, v3

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v3

    mul-int/lit8 v4, v3, 0x2

    int-to-float v4, v4

    add-float/2addr v4, v1

    float-to-int v4, v4

    iget-object v5, v9, Lcom/android/keyguard/taboola/TaboolaView;->mObserver:Lcom/android/keyguard/taboola/TaboolaObserver;

    iget-object v5, v5, Lcom/android/keyguard/taboola/TaboolaObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v5, v5, Landroid/util/DisplayMetrics;->density:F

    const/16 v6, 0x14

    int-to-float v6, v6

    mul-float/2addr v6, v5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v1, v5

    float-to-int v1, v1

    iget-object v5, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setMinWidth(I)V

    iget-object v4, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setMinHeight(I)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaRight:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2, v3, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v1, v9, Lcom/android/keyguard/taboola/TaboolaView;->TaboolaNotificationCard:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_19

    :cond_3a
    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->closeReadHint()V

    goto/16 :goto_19

    :pswitch_5
    const-string v4, "case 3:TurnOffMainTaboolaAndCardAndCoursel"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetCarouselBarrier(J)V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetReadBarrier(J)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->runReactiveHint(J)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3b

    invoke-virtual {v0, v4}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->showReactiveHint()V

    goto :goto_19

    :cond_3b
    iput v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->closeReactiveHint()V

    goto :goto_19

    :pswitch_6
    const-string v4, "case 2:TurnOffMainTaboola"

    invoke-static {v10, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->readRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget-object v4, v4, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->carouselRule:Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;

    invoke-virtual {v4}, Lcom/android/keyguard/taboola/TaboolaHintAnimator$Rule;->resetPosition()V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetCarouselBarrier(J)V

    iget-object v4, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v4, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->resetReadBarrier(J)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v4, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v1, v5, v13}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mClPicture:Landroid/view/View;

    const/16 v5, 0x8

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->runReactiveHint(J)V

    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mAnimator:Lcom/android/keyguard/taboola/TaboolaHintAnimator;

    iget v2, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3c

    invoke-virtual {v0, v4}, Lcom/android/keyguard/taboola/TaboolaViewController;->updateCCVisibility(I)V

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->showReactiveHint()V

    goto :goto_18

    :cond_3c
    iput v4, v1, Lcom/android/keyguard/taboola/TaboolaHintAnimator;->isHinted:I

    check-cast v9, Lcom/android/keyguard/taboola/TaboolaView;

    invoke-virtual {v9}, Lcom/android/keyguard/taboola/TaboolaView;->closeReactiveHint()V

    :goto_18
    iget-object v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->mMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v2}, Lcom/android/systemui/statusbar/NotificationMediaManager;->updateMediaMetaData(ZZ)V

    goto :goto_19

    :pswitch_7
    const-string v2, "case 1:unAdminTurnOffAllTaboola"

    invoke-static {v10, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v5, v15}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    invoke-virtual {v1, v5, v14}, Lcom/android/keyguard/taboola/TaboolaObserver;->set(ILjava/lang/String;)V

    :goto_19
    iget v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->TaboolaState:I

    iput v1, v0, Lcom/android/keyguard/taboola/TaboolaViewController;->lastState:I

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
